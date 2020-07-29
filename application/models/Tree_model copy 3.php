<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Tree_model extends CI_Model{
	
	public $generation_level = 1;
	public $current_package = null;
	public $first_parent = null;
	public $total_points = 0;

    function __construct() {

    }
/*
    |--------------------------------------------------------------
    |   BUY PACKAGE 
    |--------------------------------------------------------------
    */
	public function create_user_old($data = array())
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

		$this->current_package = $package;



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
		$this->first_parent = $parent;

        //continue only if there is grand parent, parent of parent is nto empty
        // if(empty($parent->parent)){
		// 	$this->db->trans_complete();
        //     return true;
		// }

		$this->add_binary_bonus($parent,$package);
		
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

	
	public function create_user($data = array())
	{

		echo '<pre>';
		print_r($data);
		exit; 

		$post_data = $this->input->post();
		
		$package_id = $data['package_id'];
		unset($data['package_id']);

		$parent_id = $data['parent'];
		
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

		$sponser_user = $this->get_by_user_id($user->sponsor_id);

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

		//deduct from appropriate balances. 
		if($post_data['company_balance_used'] > 0){

			$transfer_data_company = array(
				'sender_user_id' => $user->sponsor_id,
				'receiver_user_id' => $user->user_id,
				'amount' => $post_data['company_balance_used'],
				'fees' =>0,
				'transfer_type' => 'company_balance',
				'request_ip' => $this->input->ip_address(),
				'date' => date('Y-m-d h:i:s'),
				'comments' => 'Initial account create transfer from parent to child from company balance',
				'status' => 1,
			);

			$this->transfer_model->make_transfer($transfer_data_company);

			$investment = [
				'user_id' => $user->user_id,
				'sponsor_id' => $user->sponsor_id,
				'package_id' => $package_id,
				'amount' => $post_data['company_balance_used'],
				'invest_date' => date('Y-m-d'),
				'day' => 1,
				'balance_type' => 'company_balance'
			];
	
			$this->db->insert('investment', $investment);
	
			$investment_id = $this->db->insert_id();
	
			$transection = [
				'user_id' => $user->user_id,
				'transection_category' => 'investment',
				'releted_id' => $investment_id,
				'amount' => $post_data['company_balance_used'],
				'transection_date_timestamp' => date('Y-m-d'),
				'status' => 1,
				'comments' => 'User '.$user->user_id. " Added",
			];
	
			$this->db->insert('transections', $transection);

		}

		if($post_data['promotion_balance_used'] > 0){

			$transfer_data_promotion = array(
				'sender_user_id' => $user->sponsor_id,
				'receiver_user_id' => $user->user_id,
				'amount' => $post_data['promotion_balance_used'],
				'fees' =>0,
				'transfer_type' => 'promotion_balance',
				'request_ip' => $this->input->ip_address(),
				'date' => date('Y-m-d h:i:s'),
				'comments' => 'Initial account create transfer from parent to child from promotion balance',
				'status' => 1,
			);

			$this->transfer_model->make_transfer($transfer_data_promotion);


			$investment = [
				'user_id' => $user->user_id,
				'sponsor_id' => $user->sponsor_id,
				'package_id' => $package_id,
				'amount' => $post_data['promotion_balance_used'],
				'invest_date' => date('Y-m-d'),
				'day' => 1,
				'balance_type' => 'promotion_balance'
			];
	
			$this->db->insert('investment', $investment);
	
			$investment_id = $this->db->insert_id();
	
			$transection = [
				'user_id' => $user->user_id,
				'transection_category' => 'investment',
				'releted_id' => $investment_id,
				'amount' => $post_data['promotion_balance_used'],
				'transection_date_timestamp' => date('Y-m-d'),
				'status' => 1,
				'comments' => 'User '.$user->user_id. " Added",
			];
	
			$this->db->insert('transections', $transection);

		}

		if($post_data['commission_used'] > 0){

			$transfer_data_com = array(
				'sender_user_id' => $user->sponsor_id,
				'receiver_user_id' => $user->user_id,
				'amount' => $post_data['commission_used'],
				'fees' =>0,
				'transfer_type' => 'commission',
				'request_ip' => $this->input->ip_address(),
				'date' => date('Y-m-d h:i:s'),
				'comments' => 'Initial account create transfer from parent to child from promotion balance',
				'status' => 1,
			);

			$this->transfer_model->make_transfer($transfer_data_com);

			$investment = [
				'user_id' => $user->user_id,
				'sponsor_id' => $user->sponsor_id,
				'package_id' => $package_id,
				'amount' => $post_data['commission_used'],
				'invest_date' => date('Y-m-d'),
				'day' => 1,
				'balance_type' => 'commission'
			];
	
			$this->db->insert('investment', $investment);
	
			$investment_id = $this->db->insert_id();
	
			$transection = [
				'user_id' => $user->user_id,
				'transection_category' => 'investment',
				'releted_id' => $investment_id,
				'amount' => $post_data['commission_used'],
				'transection_date_timestamp' => date('Y-m-d'),
				'status' => 1,
				'comments' => 'User '.$user->user_id. " Added",
			];	
			
			$this->db->insert('transections', $transection);

		}

		
		if($post_data['roi_used'] > 0){

			$transfer_data_roi = array(
				'sender_user_id' => $user->sponsor_id,
				'receiver_user_id' => $user->user_id,
				'amount' => $post_data['roi_used'],
				'fees' =>0,
				'transfer_type' => 'daily_roi',
				'request_ip' => $this->input->ip_address(),
				'date' => date('Y-m-d h:i:s'),
				'comments' => 'Initial account create transfer from parent to child from promotion balance',
				'status' => 1,
			);

			$this->transfer_model->make_transfer($transfer_data_roi);

			$investment = [
				'user_id' => $user->user_id,
				'sponsor_id' => $user->sponsor_id,
				'package_id' => $package_id,
				'amount' => $post_data['roi_used'],
				'invest_date' => date('Y-m-d'),
				'day' => 1,
				'balance_type' => 'daily_roi'
			];
	
			$this->db->insert('investment', $investment);
	
			$investment_id = $this->db->insert_id();
	
			$transection = [
				'user_id' => $user->user_id,
				'transection_category' => 'investment',
				'releted_id' => $investment_id,
				'amount' => $post_data['roi_used'],
				'transection_date_timestamp' => date('Y-m-d'),
				'status' => 1,
				'comments' => 'User '.$user->user_id. " Added",
			];	

			$this->db->insert('transections', $transection);
		}

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


		$parent = $this->get_by_user_id($parent_id);
		$this->first_parent = $parent;

		$this->add_binary_bonus($parent,$package);

		return true;

	}


	private function add_binary_bonus($user,$package){

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
		
		//if has ony left node, add businiss points what is on left.
		if(is_object($left) && !is_object($right)){

			if($this->generation_level == 1){

				$update_from_left = array(
					'business_points' => $left->points,
					'power_leg' => 'left'
				);

			}else{

				$update_from_left = array(
					'business_points' => (int)$left->points+(int)$left->business_points,
					'power_leg' => 'left'
				);
			}

			$this->db->where('user_id',$user->user_id)->update('user_registration',$update_from_left);
		}

		//if has ony right node, add businiss points what is on right.
		if(is_object($right) && !is_object($left)){

			if($this->generation_level == 1){
				$update_from_right = array(
					'business_points' => $right->points,
					'power_leg' => 'right'
				);
			}else{

				$update_from_right = array(
					'business_points' => (int)$right->points+(int)$right->business_points,
					'power_leg' => 'right'
				);
			}
			
			$this->db->where('user_id',$user->user_id)->update('user_registration',$update_from_right);
		}

		//check if both nodes exist.
		if(is_object($left) && is_object($right) && $this->generation_level <= 10){

			$total_points_left = $this->get_total_points($left);
			
			/*
			if($this->has_children($left)){
				$left_points = $left->business_points;
			}else{
				$left_points = $left->points;
			}
			
			if($this->has_children($right)){
				$right_points = $right->business_points;
			}else{
				$right_points = $right->points;
			}
			*/

			$left_points = $this->get_total_points($left);
			$right_points = $this->get_total_points($right);

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

			// echo "left Points : ".$left_points. ",  RIght point : ".$right_points;
			// exit;

			/*
			if($this->generation_level ==1){
				
				$power_leg = 'right';
				$points = $left->points;
				$diff = $user->business_points - $left->points;
				
				if($right->points < $left->points){
					$points = $right->points;
					$diff = $user->business_points - $right->points;
					$power_leg = 'left';					
				}				
				//when dealing first points business points
				if($left->points == $right->points){
					$power_leg = NULL;
					$diff = $user->business_points - $left->points;
					$points= $left->points;
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
					'power_leg' => $power_leg,
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
				*/

				if($left_points == $right_points){
					$bonus_points = $left_points;
					$diff = $user->business_points - $bonus_points;
					$power_leg = NULL;	
				}else if($left_points < $right_points){

					$bonus_points = $left_points;
					$diff = $user->business_points - $bonus_points;
					$power_leg = 'right';	

				}else{
					$bonus_points = $right_points;
					$diff = $user->business_points - $bonus_points;
					$power_leg = 'left';	
				}

				$team_bonus = $this->db->select('*')
				->from('team_bonus')
				->where('user_id',$user->user_id)
				->get()
				->row();
		
				//$binary_bonus = (int) $package->package_amount*($user_package->indirect_bonus/100);
				$binary_bonus = (int) $bonus_points*($user_package->indirect_bonus/100);
		
				$update = array(
					'business_points' =>abs($diff),
					'power_leg' => $power_leg
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

			//}
		}

		$parent = $this->get_by_user_id($user->parent);

		if(is_object($parent)){
			$this->generation_level++;
			$this->add_binary_bonus($parent,$package);
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

	public function has_children($user){

		$children = $this->db->select('*')
		->from('user_registration')
		->where('parent',$user->user_id)		
		->get()
		->result();

		if(empty($children)){
			return false;
		}

		return true;

	}

	public function get_total_points($user){

		$this->total_points =0;
		$this->get_sub_total($user);
		return $this->total_points;
	}

	
	private function get_sub_total($user){

		$children = $this->db->select('*')
		->from('user_registration')
		->where('parent',$user->user_id)		
		->get()
		->result();

		if(!empty($children)){
			
			foreach($children as $child){
				$this->total_points+=$child->points;
			}
			

		}

		return;
		 
	}
}
