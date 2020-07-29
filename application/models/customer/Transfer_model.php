<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Transfer_model extends CI_Model {


	/**
	 * 
	 * <pre>Array
		(
			[sender_user_id] => 2xpowr
			[receiver_user_id] => QCT2D8
			[amount] => 101
			[fees] => 0
			[request_ip] => 127.0.0.1
			[date] => 2020-07-21 07:58:39
			[comments] => testing 101 commeents
			[status] => 1
			[transfer_type] => company_balance
		)

	 */
	
	public function make_transfer($t_data){

		$result = $this->transfer($t_data);		
		$transfer_type = $t_data['transfer_type'];

		if($transfer_type == 'company_balance' || $transfer_type =='promotion_balance'){

			$transections_data = array(
				'user_id'                   => $t_data['sender_user_id'],
				'transection_category'      => 'transfer',
				'releted_id'                => $result['transfer_id'],
				'amount'                    => $t_data['amount'],
				'comments'                  => $t_data['comments'],
				'transection_date_timestamp'=> date('Y-m-d h:i:s')
			);
			$this->db->insert('transections',$transections_data);

			$transections_reciver_data = array(
				'user_id'                   => $t_data['receiver_user_id'],
				'transection_category'      => 'reciver',
				'releted_id'                => $result['transfer_id'],
				'amount'                    => $t_data['amount'],
				'comments'                  => $t_data['comments'],
				'transection_date_timestamp'=> date('Y-m-d h:i:s')
			);

			$this->db->insert('transections',$transections_reciver_data);
		
		} else if($transfer_type == 'daily_roi'){
            //deduct from sender
            $paydata1 = array(
                'user_id'       => $t_data['sender_user_id'],
                'Purchaser_id'  => 0,
                'earning_type'  => 'type2',
                'package_id'    => 0,
                'order_id'      => $result['transfer_id'],
                'amount'        => (0-$t_data['amount']),
                'date'          => date('Y-m-d'),
            );

			$this->db->insert('earnings',$paydata1);
			
            //add to receiver
            $paydata = array(
                'user_id'       => $t_data['receiver_user_id'],
                'Purchaser_id'  => 0,
                'earning_type'  => 'type2',
                'package_id'    => 0,
                'order_id'      => $result['transfer_id'],
                'amount'        => $t_data['amount'],
                'date'          => date('Y-m-d'),
            );

            $this->db->insert('earnings',$paydata);

        }else if($transfer_type =='commission'){
            //deduct from sender
            $paydata1 = array(
                'user_id'       => $t_data['sender_user_id'],
                'Purchaser_id'  => $t_data['receiver_user_id'],
                'earning_type'  => 'type1',
                'package_id'    => 0,
                'order_id'      => $result['transfer_id'],
                'amount'        => (0-$t_data['amount']),
                'date'          => date('Y-m-d'),
            );

            $this->db->insert('earnings',$paydata1);
            //add to receiver
            $paydata = array(
                'user_id'       => $t_data['receiver_user_id'],
                'Purchaser_id'  =>0,
                'earning_type'  => 'type1',
                'package_id'    => 0,
                'order_id'      => $result['transfer_id'],
                'amount'        => $t_data['amount'],
                'date'          => date('Y-m-d'),
            );
            $this->db->insert('earnings',$paydata);

		}
		
		return $result;




	}
	


	
	
	
	public function transfer($data)
	{
		$this->db->insert('transfer',$data);
		return array('transfer_id'=>$this->db->insert_id());
	}



	public function save_transfer_verify($data)
	{
		$this->db->insert('verify_tbl',$data);
		return array('id'=>$this->db->insert_id());
	}

	public function get_verify_data($id)
	{

		$v = $this->db->select('*')
		->from('verify_tbl')
		->where('id',$id)
		->where('session_id', $this->session->userdata('isLogIn'))
		->where('ip_address', $this->input->ip_address())
		->where('status',1)
		->get()
		->row();

		if($v!=NULL){

		$data = (json_decode($v->data)); 
		$u =$this->db->select('user_id,f_name,l_name,email,phone')
		->from('user_registration')
		->where('user_id',@$data->receiver_user_id)
		->get()
		->row();
		return array('v' =>$v,'u'=>$u);
		} else {

			return 0;

		}
		
	}


	public function get_send($id){
		return $this->db->select('transfer.*,user_registration.*')
		->from('transfer')
		->join('user_registration','user_registration.user_id=transfer.receiver_user_id')
		->where('transfer.sender_user_id',$this->session->userdata('user_id'))
		->where('transfer.transfer_id',$id)
		->get()->row();
	}

	public function get_recieved($id){

		return $this->db->select('transfer.*,user_registration.*')
		->from('transfer')
		->join('user_registration','user_registration.user_id=transfer.sender_user_id')
		->where('transfer.receiver_user_id',$this->session->userdata('user_id'))
		->where('transfer.transfer_id',$id)
		->get()->row();
		
	}


}
 