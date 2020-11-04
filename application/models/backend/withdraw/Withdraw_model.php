<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Withdraw_model extends CI_Model {
 
	public function create($data = array())
	{
		return $this->db->insert('package', $data);
	}

	public function read($limit, $offset)
	{
		return $this->db->select("withdraw.*,user_registration.bank_account")
			->from('withdraw')
			->join('user_registration', 'user_registration.user_id = withdraw.user_id')
			->order_by('withdraw_id', 'DESC')
			->limit($limit, $offset)
			->get()
			->result();
	}

	public function single($package_id = null)
	{
		return $this->db->select('*')
			->from('package')
			->where('package_id', $package_id)
			->get()
			->row();
	}

	public function pending_withdraw()
	{
		return $this->db->select("*")
			->from('withdraw')
			->where('status',1)
			->get()
			->result();
	}
 


}
