<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {
	
	public function __construct()
	{
		$this->load->model('tree_model');
		$this->load->model('customer/transfer_model');
	}
	
	public function create($data = array())
	{

		$post_data = $this->input->post();
		
		$package_id = $data['package_id'];
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

		//echo $this->db->last_query();

		// echo "<br> Here after abc ";
		// exit;

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


	public function read($limit, $offset)
	{
		return $this->db->select("
				user_registration.*, 
				CONCAT_WS(' ', f_name, l_name) AS fullname 
			")
			->from('user_registration')
			->order_by('uid', 'desc')
			->limit($limit, $offset)
			->get()
			->result();
	}

	public function single($uid = null)
	{
		return $this->db->select('*')
			->from('user_registration')
			->where('uid', $uid)
			->get()
			->row();
	}

	public function update($data = array())
	{
		//unset($data['package_id']);
		return $this->db->where('user_id', $data["user_id"])
			->update("user_registration", $data);

		
	}

	public function delete($user_id = null)
	{
		return $this->db->where('user_id', $user_id)
			->delete("user_registration");
	}

	public function remove_user($uid){
		
		$user = $this->single($uid);

		//remove all transfers. 
		$transfers = $this->db->select('*')
		->from('transfer')
		->where('sender_user_id', $user->user_id)
		->or_where('receiver_user_id',$user->user_id)
		->get()
		->result();
		//

		foreach($transfers as $transfer){			
			$this->db->query("DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=$transfer->transfer_id");
		}

		//remove all investments 
		$this->db->where('sender_user_id', $user->user_id)
			->or_where('receiver_user_id',$user->user_id)
			->delete("transfer");

		//remove all investments 
		$this->db->where('user_id', $user->user_id)
			->delete("investment");

		//remove all investments transections
		$this->db->where('user_id', $user->user_id)
			->where('transection_category','investment')
			->delete("transections");

		//remove earnings 
		$this->db->where('user_id', $user->user_id)
		->delete("earnings");

		//remove team bunus detais
		$this->db->where('user_id', $user->user_id)
		->delete("team_bonus_details");

		//remove bonus
		$this->db->where('user_id', $user->user_id)
		->delete("team_bonus");

		//remove user
		$this->db->where('user_id', $user->user_id)
		->delete("user_registration");

		return true;

	}

	public function dropdown()
	{
		$data = $this->db->select("user_id, CONCAT_WS(' ', f_name, l_name) AS fullname")
			->from("user_registration")
			->where('status', 1)
			->get()
			->result();
		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->id] = $value->fullname;
			return $list;
		} else {
			return false; 
		}
	}


	/*
    |----------------------------------------------
    |   Datatable Ajax data Pagination+Search
    |----------------------------------------------     
    */
	var $table = 'user_registration';
	var $column_order = array(null, 'user_id','username','sponsor_id','f_name','l_name','email','phone','reg_ip','status','created','modified'); //set column field database for datatable orderable
	var $column_search = array('user_id','username','sponsor_id','f_name','l_name','email','phone','reg_ip','status','created','modified'); //set column field database for datatable searchable 

	var $order = array('uid' => 'asc'); // default order 

	private function _get_datatables_query()
	{
		$this->db->from($this->table);
		$i = 0;
		foreach ($this->column_search as $item) // loop column 
		{
			if($_POST['search']['value']) // if datatable send POST for search
			{
			
				if($i===0) // first loop
				{
					$this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->db->like($item, $_POST['search']['value']);
				}
				else
				{
					$this->db->or_like($item, $_POST['search']['value']);
				}

				if(count($this->column_search) - 1 == $i) //last loop
					$this->db->group_end(); //close bracket
			}
			$i++;
		}
		
		if(isset($_POST['order'])) // here order processing
		{
			$this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} 
		else if(isset($this->order))
		{
			$order = $this->order;
			$this->db->order_by(key($order), $order[key($order)]);
		}
	}

	function get_datatables($user_id = '0')
	{
		//echo $user_id; exit;

		$this->_get_datatables_query();
		if($_POST['length'] != -1)

		if($user_id !='0'){
			$this->db->where('sponsor_id',$user_id);
			$this->db->or_where('parent',$user_id);
		}

		$this->db->limit($_POST['length'], $_POST['start']);
		$query = $this->db->get();		
		$result = $query->result();
		return $result;
	}

	function count_filtered($user_id = '0')
	{
		$this->_get_datatables_query();

		if($user_id !='0'){
			$this->db->where('sponsor_id',$user_id)
			->or_where('parent',$user_id);
		}
		$query = $this->db->get();
		return $query->num_rows();
	}

	public function count_all($user_id = '0')
	{
		$this->db->from($this->table);
		
		if($user_id !='0'){
			$this->db->where('sponsor_id',$user_id)
			->or_where('parent',$user_id);
		}

		return $this->db->count_all_results();
	}
 
	public function get_by_user_id($user_id = null)
	{
		return $this->db->select('*')
			->from('user_registration')
			->where('user_id', $user_id)
			->get()
			->row();
	}

	public function get_positions($only=''){
		if($only==''){
			return [
				'left' => 'Left',
				'right' => 'Right'
			];
		}

		if($only=='right'){
			return [
				'right' => 'Right'
			];
		}
		
		return [
			'left' => 'Left'
		];
	}

	public function get_sponser_list($parent){

		$list = array();

		while($parent !='' OR $parent !=NULL){

			$item = $this->db->select("*")
			->from('user_registration')
			->where('user_id',$parent)
			->order_by('f_name', 'asc')
			->get()
			->row();
			
			$list[$item->user_id] = $item->f_name.' '.$item->l_name."(".$item->user_id.")";

			$parent = $item->parent;
		}

		return $list;

	}

	/**
	 * Get list of sponsers under a user.
	 */
	public function get_user_sponser_list($user_id){
		
		$list = array();

		$user = $this->get_by_user_id($user_id);

		$list[$user_id] = $user->f_name.' '.$user->l_name."(".$user->user_id.")";

		$data = $this->db->select("*")
			->from('user_registration')
			->where('sponsor_id',$user_id)
			->or_where('parent',$user_id)
			->order_by('f_name', 'asc')
			->get()
			->result();

		foreach($data as $item){
			$list[$item->user_id] = $item->f_name.' '.$item->l_name."(".$item->user_id.")";
		}

		return $list;

	}

	public function get_children($user_id){
		return $this->db->select("*")
		->from('user_registration')
		->where('parent',$user_id)
		->order_by('position', 'asc')
		->get()
		->result();
	}

	public function get_network_tree_html($user_id,$isAdmin=false){

		//echo $user_id; exit;

		$tree = array();
		$user = $this->get_by_user_id($user_id);

		$tree['user'] = $user;		
		$children = $this->get_children($user_id);

		$package = $this->get_user_package($user_id);

		$tree_html = '<ul id="organisation" style="display:none;">';
		$tree_html.= '<li>';

		//$tree_html.= '<em>'.$user->f_name.' '.$user->l_name.'(Pts:'.$user->business_points.')</em>';	
		$tree_html.= '<em>'.$user->f_name.' '.$user->l_name.'</em>';		
		
		if($package !=FALSE){

			$tree_html.= '<div class="row">';
			$tree_html.= '<div class="col-lg-12 col-sm-12 col-md-12">';
			$tree_html.= '<h3>'.$package->package_name.'($'.$package->package_amount.')</h3>';
			//$tree_html.='<h3>Power : '.$user->power_leg.'</h3>';
			//$tree_html.='<h3>Total : '.$this->tree_model->get_total_points($user).'</h3>';
			$tree_html.=$this->show_points($user,$children);
			$tree_html.= '</div>';
			$tree_html.= '</div>';
		}

				
		$tree_html.= '<div class="row">';
		$tree_html.= '<div class="col-lg-12 col-sm-12 col-md-12">';
		$tree_html.= '<p> ID : '.$user->user_id.'</p>';
		$tree_html.= '</div>';
		$tree_html.= '</div>';

		$tree_html.= '<div class="row">';
		$tree_html.= '<div class="col-lg-12 col-sm-12 col-md-12">';

		$tree_html.= $this->get_add_buttons($children,$user,$isAdmin);

		$tree_html.= '</div>';
		$tree_html.= '</div>';

		$tree_html.= '<ul>';

		// echo '<pre>';
		// print_r($children);
		// exit; 

		foreach($children as $child){			
			$tree_html.= '<li>';
			//$tree_html.='<em>'.$child->f_name.' '.$child->l_name.'</em>';
			$package = $this->get_user_package($child->user_id);

			$children = $this->get_children($child->user_id);

			//$tree_html.= '<em>'.$child->f_name.' '.$child->l_name.' (Pts:'.$child->business_points.')</em>';
			$tree_html.= '<em>'.$child->f_name.' '.$child->l_name.'</em>';
			
			if($package !=FALSE){

				//echo $child->user_id; exit;

				$tree_html.= '<div class="row">';
				$tree_html.= '<div class="col-lg-12 col-sm-12 col-md-12">';
				$tree_html.= '<h3>'.$package->package_name.'($'.$package->package_amount.')</h3>';
				$tree_html.='<h3>Power : '.$child->power_leg.'</h3>';
				//$tree_html.='<h3>Total : '.$this->tree_model->get_total_points($child).'</h3>';
				$tree_html.=$this->show_points($child, $children);
				$tree_html.= '</div>';
				$tree_html.= '</div>';
			}
			
				
			$tree_html.= '<div class="row">';
			$tree_html.= '<div class="col-lg-12 col-sm-12 col-md-12">';
			$tree_html.= '<p> ID : '.$child->user_id.'</p>';
			$tree_html.= '</div>';
			$tree_html.= '</div>';

			$tree_html.= '<div class="row">';
			$tree_html.= '<div class="col-lg-12 col-sm-12 col-md-12">';

			$tree_html.= $this->get_add_buttons($children,$child,$isAdmin);

			$tree_html.= '</div>';
			$tree_html.= '</div>';


			$tree_html.=$this->get_child_tree_html($child,$isAdmin);
			//$tree['children'][] = $this->get_child_tree($child);
			$tree_html.='</li>';
		}

		$tree_html .= '</ul>';
		$tree_html .='</li>';
		$tree_html.= '</ul>';

		//echo $tree_html; exit;
		return $tree_html;

	}

	public function get_child_tree_html($user,$isAdmin){

		//$data = array();
		//$data['user'] = $user;
		$tree_html = '';

		$children = $this->db->select("*")
			->from('user_registration')
			->where('parent',$user->user_id)
			->order_by('position', 'asc')
			->get()
			->result();

		if(count($children) > 0){
			$tree_html.= '<ul>';
			foreach($children as $child){
				$tree_html.= '<li>';
				//$tree_html.='<em>'.$child->f_name.' '.$child->l_name.'</em>';
					
				$package = $this->get_user_package($child->user_id);

				$children = $this->get_children($child->user_id);

				//$tree_html.= '<em>'.$child->f_name.' '.$child->l_name.'(Pts:'.$child->business_points.')</em>';
				$tree_html.= '<em>'.$child->f_name.' '.$child->l_name.'</em>';				
				if($package !=FALSE){
					$tree_html.= '<div class="row">';
					$tree_html.= '<div class="col-lg-12 col-sm-12 col-md-12">';
					$tree_html.= '<h3>'.$package->package_name.'($'.$package->package_amount.')</h3>';
					$tree_html.='<h3>Power : '.$child->power_leg.'</h3>';
					//$tree_html.='<h3>Total : '.$this->tree_model->get_total_points($child).'</h3>';
					$tree_html.=$this->show_points($child,$children);
					$tree_html.= '</div>';
					$tree_html.= '</div>';
				}
				$tree_html.= '<div class="row">';
				$tree_html.= '<div class="col-lg-12 col-sm-12 col-md-12">';

				
				$tree_html.= '<div class="row">';
				$tree_html.= '<div class="col-lg-12 col-sm-12 col-md-12">';
				$tree_html.= '<p> ID : '.$child->user_id.'</p>';
				$tree_html.= '</div>';
				$tree_html.= '</div>';
				
				$tree_html.= $this->get_add_buttons($children,$child,$isAdmin);
				

				$tree_html.= '</div>';
				$tree_html.= '</div>';
				
				$tree_html.=$this->get_child_tree_html($child,$isAdmin);
				//$data['children'][] = $this->get_child_tree_html($child);
				$tree_html.='</li>';
			}
			$tree_html.='</ul>';
		}

		return $tree_html;
		
	}

	
	public function show_points($user,$children){

		$html ='<h3>Total : '.$user->business_points.'</h3>';
		
		foreach($children as $child){
			//$html.='<h3>'.strtoupper(substr($child->position,0,1)).' : '.$this->tree_model->get_total_points($child).'</h3>';
			$html.='<h3>'.strtoupper(substr($child->position,0,1)).' : '.($child->points+$child->business_points).'</h3>';
		}

		return $html;
	}

	public function show_points_old($user,$children){
		
		$html ='<h3>Total : '.$this->tree_model->get_total_points($user).'</h3>';
		
		foreach($children as $child){
			//$html.='<h3>'.strtoupper(substr($child->position,0,1)).' : '.$this->tree_model->get_total_points($child).'</h3>';
			$html.='<h3>'.strtoupper(substr($child->position,0,1)).' : '.$child->points.'</h3>';
		}

		return $html;
	}

	private function get_add_buttons($children,$user,$isAdmin){

		$tree_html='';

		if(!$this->has_left($children)){ 
			if($isAdmin){
				$tree_html.= '<a href="'.base_url().'backend/user/user/add_child?parent='.$user->user_id.'&position=left" class="btn btn-xs btn-primary pull-left">Add Left </a>';
			}else{
				$tree_html.= '<a href="'.base_url().'customer/user/user/add_child?parent='.$user->user_id.'&position=left" class="btn btn-xs btn-primary pull-left">Add Left </a>';
			}

		} 
		if(!$this->has_right($children)){ 
			if($isAdmin){
				$tree_html.= '<a href="'.base_url().'backend/user/user/add_child?parent='.$user->user_id.'&position=right" class="btn btn-xs btn-primary pull-right">Add Right </a>';
			}else{
				$tree_html.= '<a href="'.base_url().'customer/user/user/add_child?parent='.$user->user_id.'&position=right" class="btn btn-xs btn-primary pull-right">Add Right </a>';
			}
		}

		return $tree_html;
	}

	public function get_network_tree($user_id){

		$tree = array();
		$user = $this->get_by_user_id($user_id);

		$tree['user'] = $user;		
		$children = $this->get_children($user_id);

		foreach($children as $child){
			$tree['children'][] = $this->get_child_tree($child);
		}

		return $tree;

	}

	public function get_child_tree($user){

		$data = array();

		$data['user'] = $user;
		
		$children = $this->db->select("*")
			->from('user_registration')
			->where('parent',$user->user_id)
			->order_by('position', 'asc')
			->get()
			->result();

		foreach($children as $child){
			$data['children'][] = $this->get_child_tree($child);
		}

		return $data;

	}


	public function get_user_package($user_id){

		$investment = $this->db->select('*')
		->from('investment')
		->where('user_id', $user_id)
		->get()
		->row();

		if(!is_object($investment)){
			return false;
		}

		$package= $this->db->select('*')
		->from('package')
		->where('package_id', $investment->package_id)
		->get()
		->row();

		if(!is_object($package)){
			return false;
		}

		return $package;

	}

	public function has_left($children){
		foreach($children as $child){
			if($child->position == 'left'){
				return true;
			}
		}
		return false;
	}

	public function has_right($children){
		foreach($children as $child){
			if($child->position == 'right'){
				return true;
			}
		}
		return false;
	}

	public function get_top_user(){
		return $this->db->select("*")
		->from('user_registration')
		->where('parent',NULL)
		->or_where('parent','')
		->get()
		->row();
	}

}
