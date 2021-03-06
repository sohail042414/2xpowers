<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Tree_model extends CI_Model{
	
	public $generation_level = 1;

    function __construct() {

    }
/*
    |--------------------------------------------------------------
    |   BUY PACKAGE 
    |--------------------------------------------------------------
    */
	public function create_user($data = array())
	{

		$this->db->trans_start(); // Query will be rolled back
		//$this->db->query('AN SQL QUERY...');
        $package_id = $data['package_id'];
        $sponsor_id = $data['sponsor_id'];
        $parent_id = $data['parent'];
		unset($data['package_id']);

		$package=  $this->db->select('*')
		->from('package')
		->where('package_id', $package_id)
		->get()
		->row();

		$data['points'] = $package->points;
		$data['business_points'] = 0;

		$data['created'] = date("Y-m-d H:i:s");
        $data['modified'] = date("Y-m-d H:i:s");    

		$this->db->insert('user_registration', $data);

		$id = $this->db->insert_id();

		$user = $this->single($id);

		//$sponser_user = $this->get_by_user_id($user->sponsor_id);

		$sponsor_investment = $this->db->select('*')
		->from('investment')
		->where('user_id', $user->sponsor_id)
		->get()
		->row();

		$sponsor_package =  $this->db->select('*')
		->from('package')
		->where('package_id', $sponsor_investment->package_id)
		->get()
		->row();

		$transfar = array(
			'sender_user_id' => $user->sponsor_id,
			'receiver_user_id' => $user->user_id,
			'amount' => $package->package_amount,
			'fees' =>0,
			'request_ip' => $this->input->ip_address(),
			'date' => date('Y-m-d h:i:s'),
			'comments' => 'Initial account create transfer from parent to child',
			'status' => 1,
		);

		$this->db->insert('transfer', $transfar);
		$transfer_id = $this->db->insert_id();

		//each transfer has two transactions

		$transection_sender = array(
			'user_id'                   => $user->sponsor_id,
			'transection_category'      => 'transfer',
			'releted_id'                => $transfer_id,
			'amount'                    => $package->package_amount,
			'comments'                  => 'Initial transfer to '.$user->user_id.' on account creation from parent',
			'transection_date_timestamp'=> date('Y-m-d h:i:s')
		);
		
		$this->db->insert('transections', $transection_sender);

		$transections_reciver = array(
			'user_id'                   => $user->user_id,
			'transection_category'      => 'reciver',
			'releted_id'                => $transfer_id,
			'amount'                    => $package->package_amount,
			'comments'                  => 'Initial transfer to '.$user->user_id.' on account creation from parent',
			'transection_date_timestamp'=> date('Y-m-d h:i:s')
		);

		$this->db->insert('transections', $transections_reciver);

		$investment = [
			'user_id' => $user->user_id,
			'sponsor_id' => $user->sponsor_id,
			'package_id' => $package_id,
			'amount' => $package->package_amount,
			'invest_date' => date('Y-m-d'),
			'day' => 1
		];

		$this->db->insert('investment', $investment);

		$investment_id = $this->db->insert_id();

		$transection = [
			'user_id' => $user->user_id,
			'transection_category' => 'investment',
			'releted_id' => $investment_id,
			'amount' => $package->package_amount,
			'transection_date_timestamp' => date('Y-m-d'),
			'status' => 1,
			'comments' => 'User '.$user->user_id. " Added",
		];

		$this->db->insert('transections', $transection);

		$saveLevel = array(
			'user_id'           => $user->user_id,
			'sponser_commission'=> 0.0,
			'team_commission'   => 0.0,
			'level'             => 1,
			'last_update'       => date('Y-m-d h:i:s')
		);

		/*********************************
		*   Data Store Details Table
		**********************************/
		$this->db->insert('team_bonus_details',$saveLevel);
		$this->db->insert('team_bonus',$saveLevel);

		//commission data save
		$commission_amount = ($package->package_amount/100)*$sponsor_package->direct_bonus;
		$commission = array(
			'user_id'       => $user->sponsor_id,
			'Purchaser_id'  => $user->user_id,
			'earning_type'  => 'type1',
			'package_id'    => $package->package_id,
			'amount'        => $commission_amount,
			'date'          => date('Y-m-d'),
			
		);

        $this->db->insert('earnings',$commission);
        
        //starting team (binary bounas from here.)
		
		//add points to all parents, based on package. 
		//$this->add_binary_points($user,$package);

		$parent = $this->get_by_user_id($parent_id);

        //continue only if there is grand parent, parent of parent is nto empty
        // if(empty($parent->parent)){
		// 	$this->db->trans_complete();
        //     return true;
		// }

		$this->add_binary_bonus($parent,$package,TRUE);
		
		/*


        $grand_parent = $this->get_by_user_id($parent->parent);

        $g_parent_investment = $this->db->select('*')
		->from('investment')
		->where('user_id', $parent_id)
		->get()
		->row();

		$g_parent_package =  $this->db->select('*')
		->from('package')
		->where('package_id', $g_parent_investment->package_id)
		->get()
        ->row();
        
        $team_bonus = $this->db->select('*')
        ->from('team_bonus')
        ->where('user_id',$grand_parent->user_id)
        ->get()
        ->row();

		$binary_bonus = (int) $package->package_amount*(10/100);

        if($team_bonus!=NULL){

			$sponsor_comission = @$team_bonus->sponser_commission + $binary_bonus;
			$team_commssion = @$team_bonus->team_commission + $binary_bonus;
			
			$sdata = array(
                'sponser_commission'=>$sponsor_comission,
                'team_commission'=>$team_commssion,
                'last_update'=>date('Y-m-d h:i:s')
			);
			
            $detailsdata = array(
                'user_id'=>$grand_parent->user_id,
                'sponser_commission'=>$sponsor_comission,
                'team_commission'=>$team_commssion,
                'last_update'=>date('Y-m-d h:i:s')
            );


            // Data Store Details Table
            $this->db->insert('team_bonus_details',$detailsdata);
            $this->db->where('user_id',$sponsor_id)->update('team_bonus',$sdata);

        } else {

            $sponsor_comission = $binary_bonus;
			$team_commssion = $binary_bonus;
			
			$sdata = array(
                'user_id'=>$grand_parent->user_id,
                'sponser_commission'=>$sponsor_comission,
                'team_commission'=>$team_commssion,
                'last_update'=>date('Y-m-d h:i:s')
            );

            //  Data Store Details Table
            
            $this->db->insert('team_bonus_details',$sdata);
            $this->db->insert('team_bonus',$sdata);

		}
		
		$this->add_parent_bonus($grand_parent);
		*/

		$this->db->trans_complete();

		return true;
	}


	private function add_binary_bonus($user,$package,$pts=FALSE){

		//left child
		$left = $this->db->select('*')
		->from('user_registration')
		->where('parent',$user->user_id)
		->where('position','left') 
		->get()
		->row();

		//right child.

		$right = $this->db->select('*')
		->from('user_registration')
		->where('parent',$user->user_id)
		->where('position','right') 
		->get()
		->row();

		// echo '<pre>Left';
		// print_r($left);
		// //exit; 

		// echo '<pre>Right';
		// print_r($right);
		//exit; 

		//if has ony left node, add businiss points what is on left.
		if(is_object($left) && !is_object($right)){

			if($this->generation_level == 1){

				$update_from_left = array(
					'business_points' => $left->points
				);

			}else{

				$update_from_left = array(
					'business_points' => (int)$left->points+(int)$left->business_points
				);
			}

			$this->db->where('user_id',$user->user_id)->update('user_registration',$update_from_left);
		}

		//if has ony right node, add businiss points what is on right.
		if(is_object($right) && !is_object($left)){

			if($this->generation_level == 1){
				$update_from_right = array(
					'business_points' => $right->points
				);
			}else{

				$update_from_right = array(
					'business_points' => (int)$right->points+(int)$right->business_points,
				);
			}
			
			$this->db->where('user_id',$user->user_id)->update('user_registration',$update_from_right);
		}

		//echo $this->db->last_query();

		// echo "<br> Here after abc ";
		// exit;

		//check if both nodes exist.
		if(is_object($left) && is_object($right) && $this->generation_level <= 10){

			$user_investment = $this->db->select('*')
			->from('investment')
			->where('user_id', $user->user_id)
			->get()
			->row();

			$user_package =  $this->db->select('*')
			->from('package')
			->where('package_id', $user_investment->package_id)
			->get()
			->row();

			if($this->generation_level ==1){
		
				$pts_type = ($pts) ? 'points':'business_points';
				$week_side = 'left';
				$points = $left->{$pts_type};
				$diff = $right->{$pts_type} - $left->{$pts_type};
				
				if($right->points < $points){
					$points = $right->{$pts_type};
					$week_side = 'right';
					$diff = $left->{$pts_type} - $right->{$pts_type};
				}

				$team_bonus = $this->db->select('*')
				->from('team_bonus')
				->where('user_id',$user->user_id)
				->get()
				->row();
		
				//$binary_bonus = (int) $package->package_amount*($user_package->indirect_bonus/100);
				$binary_bonus = (int) $points*($user_package->indirect_bonus/100);
		
				$update = array(
					'business_points' =>abs($diff),
				);
		
				$this->db->where('user_id',$user->user_id)->update('user_registration',$update);
				
				

				if($team_bonus!=NULL){
		
					$sponsor_comission = @$team_bonus->sponser_commission + $binary_bonus;
					$team_commssion = @$team_bonus->team_commission + $binary_bonus;
					
					$sdata = array(
						'sponser_commission'=>$sponsor_comission,
						'team_commission'=>$team_commssion,
						'last_update'=>date('Y-m-d h:i:s')
					);
					
					$detailsdata = array(
						'user_id'=>$user->user_id,
						'sponser_commission'=>$sponsor_comission,
						'team_commission'=>$team_commssion,
						'last_update'=>date('Y-m-d h:i:s')
					);
		
					// Data Store Details Table
					$this->db->insert('team_bonus_details',$detailsdata);
					$this->db->where('user_id',$user->user_id)->update('team_bonus',$sdata);
		
				} else {
		
					$sponsor_comission = $binary_bonus;
					$team_commssion = $binary_bonus;
					
					$sdata = array(
						'user_id'=>$user->user_id,
						'sponser_commission'=>$sponsor_comission,
						'team_commission'=>$team_commssion,
						'last_update'=>date('Y-m-d h:i:s')
					);
		
					//  Data Store Details Table
					
					$this->db->insert('team_bonus_details',$sdata);
					$this->db->insert('team_bonus',$sdata);
		
				}
			}else{

				$pts_type = ($pts) ? 'points':'business_points';
				$week_side = 'left';
				$points = $left->{$pts_type};
				$diff = $right->{$pts_type} - $left->{$pts_type};
				
				if($right->points < $points){
					$points = $right->{$pts_type};
					$week_side = 'right';
					$diff = $left->{$pts_type} - $right->{$pts_type};
				}

				$team_bonus = $this->db->select('*')
				->from('team_bonus')
				->where('user_id',$user->user_id)
				->get()
				->row();
		
				//$binary_bonus = (int) $package->package_amount*($user_package->indirect_bonus/100);
				$binary_bonus = (int) $points*($user_package->indirect_bonus/100);
		
				$update = array(
					'business_points' =>abs($diff),
				);
		
				$this->db->where('user_id',$user->user_id)->update('user_registration',$update);
				
				

				if($team_bonus!=NULL){
		
					$sponsor_comission = @$team_bonus->sponser_commission + $binary_bonus;
					$team_commssion = @$team_bonus->team_commission + $binary_bonus;
					
					$sdata = array(
						'sponser_commission'=>$sponsor_comission,
						'team_commission'=>$team_commssion,
						'last_update'=>date('Y-m-d h:i:s')
					);
					
					$detailsdata = array(
						'user_id'=>$user->user_id,
						'sponser_commission'=>$sponsor_comission,
						'team_commission'=>$team_commssion,
						'last_update'=>date('Y-m-d h:i:s')
					);
		
					// Data Store Details Table
					$this->db->insert('team_bonus_details',$detailsdata);
					$this->db->where('user_id',$user->user_id)->update('team_bonus',$sdata);
		
				} else {
		
					$sponsor_comission = $binary_bonus;
					$team_commssion = $binary_bonus;
					
					$sdata = array(
						'user_id'=>$user->user_id,
						'sponser_commission'=>$sponsor_comission,
						'team_commission'=>$team_commssion,
						'last_update'=>date('Y-m-d h:i:s')
					);
		
					//  Data Store Details Table
					
					$this->db->insert('team_bonus_details',$sdata);
					$this->db->insert('team_bonus',$sdata);
		
				}



			}
		}

		$parent = $this->get_by_user_id($user->parent);

		if(is_object($parent)){
			$this->generation_level++;
			$this->add_binary_bonus($parent,$package,FALSE);
		}

		return true;		
	}

	private function add_parent_bonus_old($user){

		if(empty($user->parent)){
			return true;
		}

		$parent = $this->get_by_user_id($user->parent);
		        
        $team_bonus = $this->db->select('*')
        ->from('team_bonus')
        ->where('user_id',$parent->user_id)
        ->get()
		->row();
		
		$binary_bonus = 10;

        if($team_bonus!=NULL){

			$sponsor_comission = @$team_bonus->sponser_commission + $binary_bonus;
			$team_commssion = @$team_bonus->team_commission + $binary_bonus;
			
			$sdata = array(
                'sponser_commission'=>$sponsor_comission,
                'team_commission'=>$team_commssion,
                'last_update'=>date('Y-m-d h:i:s')
			);
			
            $detailsdata = array(
                'user_id'=>$parent->user_id,
                'sponser_commission'=>$sponsor_comission,
                'team_commission'=>$team_commssion,
                'last_update'=>date('Y-m-d h:i:s')
            );

            /******************************
            *   Data Store Details Table
            ******************************/
            $this->db->insert('team_bonus_details',$detailsdata);
            $this->db->where('user_id',$parent->user_id)->update('team_bonus',$sdata);

        } else {

            $sponsor_comission = $binary_bonus;
			$team_commssion = $binary_bonus;
			
			$sdata = array(
                'user_id'=>$parent->user_id,
                'sponser_commission'=>$sponsor_comission,
                'team_commission'=>$team_commssion,
                'last_update'=>date('Y-m-d h:i:s')
            );

            /******************************
            *   Data Store Details Table
            ******************************/
            $this->db->insert('team_bonus_details',$sdata);
            $this->db->insert('team_bonus',$sdata);

		}

		return $this->add_parent_bonus_old($parent);
		
	}
	/**
	 * 
	 */

	private function add_binary_points($user,$package){

		if(empty($user->parent)){
			return true;
		}

		$parent = $this->get_by_user_id($user->parent);

		

		$update = array(
			'points' => (int)$parent->points +(int)$package->points,
		);

		$this->db->where('user_id',$parent->user_id)->update('user_registration',$update);


		//$this->add_binary_points($parent,$package);

	}

	public function single($uid = null)
	{
		return $this->db->select('*')
			->from('user_registration')
			->where('uid', $uid)
			->get()
			->row();
    }
    
    public function get_by_user_id($user_id = null)
	{
		return $this->db->select('*')
			->from('user_registration')
			->where('user_id', $user_id)
			->get()
			->row();
	}
}
