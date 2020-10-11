<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Tree_model extends CI_Model{
	
	public $generation_level = 1;
	public $current_package = null;
	public $current_user = null;
	public $first_parent = null;
	public $total_points = 0;

    function __construct() {

    }
/*
    |--------------------------------------------------------------
    |   BUY PACKAGE 
    |--------------------------------------------------------------
    */

	
	public function create_user($data = array())
	{

		$post_data = $this->input->post();
		
		$package_id = $data['package_id'];
		unset($data['package_id']);

		$parent_id = $data['parent'];
		
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

		$this->current_user = $user;

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

		$this->set_points($parent);

		//echo "<br> STarting on binary bonus<br>";
		
		$this->set_binary_bonus($parent);

		//echo "<br> <br> All done"; exit;

		return true;

	}



	public function set_points($user){

		$update_data = array();

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

		//if no children switch to parent. 
		if(!is_object($left) && !is_object($right)){
			$parent = $this->get_by_user_id($user->parent);
			$this->set_points($parent);
		}

		//if only left child
		if(is_object($left) && !is_object($right)){
			
			$update_data = array(
				'business_points' => (int)$left->points+(int)$left->business_points,
				'power_leg' => 'left'
			);

		}

		//if only right child
		if(!is_object($left) && is_object($right)){
	
			$update_data = array(
				'business_points' => (int)$right->points+(int)$right->business_points,
				'power_leg' => 'right'
			);

		}

		//if both nodes exist.
		if(is_object($left) && is_object($right)){
	
			$left_sum = (int)$left->points+(int)$left->business_points;

			$right_sum = (int)$right->points+(int)$right->business_points;

			if($left_sum > $right_sum){
				$power_leg = 'left';
			}else if ($right_sum > $left_sum){
				$power_leg = 'right';
			}else{
				$power_leg = '';				
			}

			$update_data = array(
				'business_points' => $left_sum +$right_sum,
				'power_leg' => $power_leg
			);			
		}
		
		if(!empty($update_data)){

			//echo "<br> <br> Upadting user : ".$user->user_id." , setting business_points = ".$update_data['business_points']." , power = ".$update_data['power_leg']; 
			$this->db->where('user_id',$user->user_id)->update('user_registration',$update_data);
		}

		$parent = $this->get_by_user_id($user->parent);

		if(is_object($parent) && $parent->user_id != $user->user_id){
			$this->set_points($parent);
		}

		return true;
	}

	public function set_binary_bonus($user){



		$update_data = array();

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

		//if no children switch to parent. 
		/*
		if(is_object($left) && is_object($right)){
			$parent = $this->get_by_user_id($user->parent);
			if(is_object($parent)){
				$this->set_binary_bonus($parent);
			}
		}

		//if only left child
		if(is_object($left) && !is_object($right)){
			$parent = $this->get_by_user_id($user->parent);
			if(is_object($parent)){
				$this->set_binary_bonus($parent);
			}
		}

		//if only right child
		if(!is_object($left) && is_object($right)){
			$parent = $this->get_by_user_id($user->parent);
			if(is_object($parent)){
				$this->set_binary_bonus($parent);
			}
		}
		*/

		//if both nodes exist.
		if(is_object($left) && is_object($right)){
	
			$left_sum = (int)$left->points+(int)$left->business_points;

			$right_sum = (int)$right->points+(int)$right->business_points;

			$diff = 0;
			$bonus_points = 0;

			if($left_sum > $right_sum){
				$power_leg = 'left';

				if($right_sum > 0){
					$diff = $left_sum - $right_sum;
					$bonus_points = $right_sum;
				}

			}else if ($right_sum > $left_sum){
				$power_leg = 'right';							
				if($left_sum > 0){
					$diff = $right_sum - $left_sum;
					$bonus_points = $left_sum;
				}

			}else{
				$power_leg = '';
				
				if($left_sum > 0 && $right_sum > 0 && $left_sum == $right_sum){
					//both are same, 
					$bonus_points = $left_sum;

				}
			}

			//consider already used points
			$bonus_points = $bonus_points - $user->used_points;

			if($bonus_points > 0){

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


				$bonus_amount = (int) $bonus_points*($user_package->indirect_bonus/100);

				//echo "<br> Adding binary bonus for user".$user->user_id;

				$binary_commission = array(
					'user_id'       => $user->user_id,
					'Purchaser_id'  => $this->current_user->user_id,
					'earning_type'  => 'type3',
					'package_id'    => $this->current_package->package_id,
					'amount'        => $bonus_amount,
					'comments' => 'Binary bonus on addition of user '.$this->current_user->user_id,
					'date'          => date('Y-m-d'),
					
				);
		
				$this->db->insert('earnings',$binary_commission);

				$user_update = array(
					'used_points' => $user->used_points + $bonus_points 
				);

				$this->db->where('user_id',$user->user_id)->update('user_registration',$user_update);
				
			}
		
		}

		$parent = $this->get_by_user_id($user->parent);

		if(is_object($parent) && $parent->user_id != $user->user_id){
			$this->set_binary_bonus($parent);
		}

		return true;
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


	public function correct_user($user_id)
	{	

		$user = $this->get_by_user_id($user_id);

		if($user->processed == 1){
			echo "<br> ".$user_id." Already processed ";
			return false;
		}

		$parent_id = $user->parent;
		
		$bk_investment = $this->db->select('*')
		->from('bk_investment')
		->where('user_id', $user->user_id)
		->get()
		->row();

		if(!is_object($bk_investment)){
			echo '<pre>It does not have investment';
			print_r($user);
			exit; 
		}

		$package_id = $bk_investment->package_id;

		$package=  $this->db->select('*')
		->from('package')
		->where('package_id', $package_id)
		->get()
		->row();

		$user_update = array(
			'points' => $package->points,
			'business_points'=> 0,
			'used_points' => 0
		);

		$this->db->where('user_id',$user->user_id)->update('user_registration',$user_update);


		$this->current_package = $package;

		$date_short = $bk_investment->invest_date;

		$date_time = date('Y-m-d h:i:s',strtotime($bk_investment->invest_date));

		$this->current_user = $user;

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

		$post_data = array(
			'company_balance_used' => 0,
			'promotion_balance_used' => 0,
			'commission_used' => 0,
			'roi_used' => 0,
		);


		$post_data['company_balance_used'] = $package->package_amount;

		//deduct from appropriate balances. 
		if($post_data['company_balance_used'] > 0){

			$transfer_data_company = array(
				'sender_user_id' => $user->sponsor_id,
				'receiver_user_id' => $user->user_id,
				'amount' => $post_data['company_balance_used'],
				'fees' =>0,
				'transfer_type' => 'company_balance',
				'request_ip' => $this->input->ip_address(),
				'date' => $date_time,
				'comments' => 'Initial account create transfer from parent to child from company balance',
				'status' => 1,
			);

			$this->transfer_model->make_transfer($transfer_data_company);

			$investment = [
				'user_id' => $user->user_id,
				'sponsor_id' => $user->sponsor_id,
				'package_id' => $package_id,
				'amount' => $post_data['company_balance_used'],
				'invest_date' => $date_short,
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
				'transection_date_timestamp' => $date_short,
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
				'date' => $date_time,
				'comments' => 'Initial account create transfer from parent to child from promotion balance',
				'status' => 1,
			);

			$this->transfer_model->make_transfer($transfer_data_promotion);


			$investment = [
				'user_id' => $user->user_id,
				'sponsor_id' => $user->sponsor_id,
				'package_id' => $package_id,
				'amount' => $post_data['promotion_balance_used'],
				'invest_date' => $date_short,
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
				'transection_date_timestamp' => $date_short,
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
				'date' => $date_time,
				'comments' => 'Initial account create transfer from parent to child from promotion balance',
				'status' => 1,
			);

			$this->transfer_model->make_transfer($transfer_data_com);

			$investment = [
				'user_id' => $user->user_id,
				'sponsor_id' => $user->sponsor_id,
				'package_id' => $package_id,
				'amount' => $post_data['commission_used'],
				'invest_date' => $date_short,
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
				'transection_date_timestamp' =>$date_short,
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
				'date' => $date_time,
				'comments' => 'Initial account create transfer from parent to child from promotion balance',
				'status' => 1,
			);

			$this->transfer_model->make_transfer($transfer_data_roi);

			$investment = [
				'user_id' => $user->user_id,
				'sponsor_id' => $user->sponsor_id,
				'package_id' => $package_id,
				'amount' => $post_data['roi_used'],
				'invest_date' => $date_short,
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
				'transection_date_timestamp' => $date_short,
				'status' => 1,
				'comments' => 'User '.$user->user_id. " added",
			];	

			$this->db->insert('transections', $transection);
		}
				
		//commission data save
		$commission_amount = ($package->package_amount/100)*$sponsor_package->direct_bonus;
		$commission = array(
			'user_id'       => $user->sponsor_id,
			'Purchaser_id'  => $user->user_id,
			'earning_type'  => 'type1',
			'package_id'    => $package->package_id,
			'amount'        => $commission_amount,
			//'date'          => date('Y-m-d'),
			'date'          => $date_short,

		);

		$this->db->insert('earnings',$commission);

		//$parent = $this->get_by_user_id($parent_id);
		
		//$this->first_parent = $parent;

		//$this->set_points($parent);

		//echo "<br> STarting on binary bonus<br>";
		
		//$this->set_binary_bonus($parent);

		//echo "<br> <br> All done"; exit;

		return true;

	}


	public function correct_points($user_id)
	{	

		$user = $this->get_by_user_id($user_id);

		// if($user->processed == 1){
		// 	echo "<br> ".$user_id." Already processed ";
		// 	return false;
		// }

		$parent_id = $user->parent;
		
		$bk_investment = $this->db->select('*')
		->from('bk_investment')
		->where('user_id', $user->user_id)
		->get()
		->row();

		if(!is_object($bk_investment)){
			echo '<pre>It does not have investment';
			print_r($user);
			exit; 
		}

		$package_id = $bk_investment->package_id;

		$package=  $this->db->select('*')
		->from('package')
		->where('package_id', $package_id)
		->get()
		->row();

		$this->current_user = $user;
		$this->current_package = $package;

		$this->set_points($user);

		return true;

	}


	public function correct_binary_bonus($user_id)
	{	

		$user = $this->get_by_user_id($user_id);

		// if($user->processed == 1){
		// 	echo "<br> ".$user_id." Already processed ";
		// 	return false;
		// }

		$parent_id = $user->parent;
		
		$bk_investment = $this->db->select('*')
		->from('bk_investment')
		->where('user_id', $user->user_id)
		->get()
		->row();

		if(!is_object($bk_investment)){
			echo '<pre>It does not have investment';
			print_r($user);
			exit; 
		}

		$package_id = $bk_investment->package_id;

		$package=  $this->db->select('*')
		->from('package')
		->where('package_id', $package_id)
		->get()
		->row();

		$this->current_user = $user;
		$this->current_package = $package;

		$this->set_binary_bonus($user);
		
		return true;

	}


}
