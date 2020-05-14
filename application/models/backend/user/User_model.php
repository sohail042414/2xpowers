<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {
 
	public function create($data = array())
	{

		$package_id = $data['package_id'];
		unset($data['package_id']);

		$this->db->insert('user_registration', $data);

		$id = $this->db->insert_id();

		$user = $this->single($id);

		$package=  $this->db->select('*')
		->from('package')
		->where('package_id', $package_id)
		->get()
		->row();

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
		unset($data['package_id']);
		return $this->db->where('user_id', $data["user_id"])
			->update("user_registration", $data);
	}

	public function delete($user_id = null)
	{
		return $this->db->where('user_id', $user_id)
			->delete("user_registration");
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

	public function get_positions(){
		return [
			'left' => 'Left',
			'right' => 'Right'
		];
	}

	public function get_sponser_list(){

		$data = $this->db->select("*")
			->from('user_registration')
			->order_by('f_name', 'asc')
			->get()
			->result();

		$list = array();

		foreach($data as $item){
			$list[$item->user_id] = $item->f_name.' '.$item->l_name."(".$item->user_id.")";
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

	public function get_network_tree_html($user_id){

		$tree = array();
		$user = $this->get_by_user_id($user_id);

		$tree['user'] = $user;		
		$children = $this->get_children($user_id);

		$tree_html = '<ul id="organisation" style="display:none;">';
		$tree_html.= '<li><em>'.$user->f_name.' '.$user->l_name.'</em>';
		$tree_html.= '<ul>';

		foreach($children as $child){			
			$tree_html.= '<li>';
			$tree_html.='<em>'.$child->f_name.' '.$child->l_name.'</em>';
			$tree_html.=$this->get_child_tree_html($child);
			//$tree['children'][] = $this->get_child_tree($child);
			$tree_html.='</li>';
		}

		$tree_html .= '</ul>';
		$tree_html .='</li>';
		$tree_html.= '</ul>';

		//echo $tree_html; exit;
		return $tree_html;

	}

	public function get_child_tree_html($user){

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
				$tree_html.='<em>'.$child->f_name.' '.$child->l_name.'</em>';
				$tree_html.=$this->get_child_tree_html($child);
				//$data['children'][] = $this->get_child_tree_html($child);
				$tree_html.='</li>';
			}
			$tree_html.='</ul>';
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

}
