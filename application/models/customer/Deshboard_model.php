<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Deshboard_model extends CI_Model {

	public function get_cata_wais_transections($user_id =NULL)
	{
		if($user_id == NULL){
			$user_id = $this->session->userdata('user_id');
		}
		
		// My Payout
		$my_payout = $this->db->select("sum(amount) as earns2")
			->from('earnings')
			->where('user_id',$user_id)
			->where('earning_type','type2')
			->where('amount >',0)
			->get()
			->row();

		$pay = $my_payout->earns2;

		// Deductions fro ROI's (negative transections)
		$negative_payout = $this->db->select("sum(amount) as negative_earning")
		->from('earnings')
		->where('user_id',$user_id)
		->where('earning_type','type2')
		->where('amount <',0)
		->get()
		->row();

		$negative_roi_sum = abs($negative_payout->negative_earning);

		$pay = $pay - $negative_roi_sum;

		//Package Commission
		$commission = $this->db->select("sum(amount) as earns1")
			->from('earnings')
			->where('user_id',$user_id)
			->where('earning_type','type1')
			->where('amount > ',0)
			->get()
			->row();


		$pack_commission = $commission->earns1;

		// Deductions from Commission (negative transections)
		$negative_commission = $this->db->select("sum(amount) as negative_earning")
		->from('earnings')
		->where('user_id',$user_id)
		->where('earning_type','type1')
		->where('amount < ',0)
		->get()
		->row();
		//
		$negative_com_sum = abs($negative_commission->negative_earning);

		$pack_commission = $pack_commission - $negative_com_sum;

		//user lavel bonus
		$bonus = $this->db->select("sum(bonus) as bonuss")
			->from('user_level')
			->where('user_id',$user_id)
			->get()
			->row();

		$team_bonus = $bonus->bonuss;

		//total earning
		//@$total_earn = @$pay + @$pack_commission + @$team_bonus;
		@$total_earn = @$pay + @$pack_commission;

		//team bonus
		$teambonus = $this->db->select("*")
			->from('team_bonus')
			->where('user_id',$user_id)
			->get()
			->row();

		$sponser_commission = @$teambonus->sponser_commission;
		$team_commission = @$teambonus->team_commission;
			
		

		//Binary Bonuse 
		$binary_query  = $this->db->select("sum(amount) as binary_sum")
			->from('earnings')
			->where('user_id',$user_id)
			->where('earning_type','type3')
			->where('amount > ',0)
			->get()
			->row();
		
		$binary_bonus = $binary_query->binary_sum;


		// Deductions from binary (negative transections)
		$negative_binary_query = $this->db->select("sum(amount) as binary_negative")
		->from('earnings')
		->where('user_id',$user_id)
		->where('earning_type','type3')
		->where('amount < ',0)
		->get()
		->row();
		//
		$negative_binary_sum = abs($negative_binary_query->binary_negative);

		$binary_bonus = $binary_bonus-$negative_binary_sum;

		$data = $this->db->select('*')
		->from('transections')
		->where('user_id',$user_id)
		->where('status',1)
		->where('amount > ',0)
		->get()
		->result();

		$dep = 0;
		$dep_f = 0;
		$w_f = 0;
		$t_f = 0;
		$we = 0;
		$invest = 0;
		$tras = 0;
		$reciver = 0;
		$individule = array();
		$company_balance =0;
		$promotion_balance =0;
		$transfer = 0;

		$company_balance_used = 0;
		$promotion_balance_used = 0;

		$commission_used= 0;
		$roi_used= 0;

		foreach ($data as $value) {

			if(@$value->transection_category=='deposit'){

				$deposit = $this->getFees('deposit',$value->releted_id);
				@$dep_f = $dep_f + $deposit->fees;
				$individule['d_fees'] = $dep_f;

				$dep = $dep + $value->amount;
				

				if(is_object($deposit) && $deposit->deposit_type == 'company_balance'){
					$company_balance+=$value->amount; 
				}else if(is_object($deposit) && $deposit->deposit_type == 'promotion_balance'){
					$promotion_balance+=$value->amount; 
				}

			}

			if(@$value->transection_category=='withdraw'){

				$withdraw = $this->getFees('withdraw',$value->releted_id);
				@$w_f = $w_f + $withdraw->fees;
				$individule['w_fees'] = $w_f;

				$we = $we+$value->amount;
				$individule['withdraw'] = $we;

			}

			if(@$value->transection_category=='transfer'){

				$transfer = $this->getFees('transfer',$value->releted_id);
				@$t_f = $t_f + $transfer->fees;
				$individule['t_fees'] = $t_f;

				$tras = $tras+$value->amount;
				$individule['transfar'] = $tras;
				
				if(is_object($transfer) && $transfer->transfer_type == 'company_balance'){
					$company_balance_used+=$value->amount; 
				}else if(is_object($transfer) && $transfer->transfer_type == 'promotion_balance'){
					$promotion_balance_used+=$value->amount; 
				}
				

			}
			
			if(@$value->transection_category=='investment'){

				$invest = $invest+$value->amount;
				$individule['investment'] = $invest;

				$investment = $this->db->select('*')
				->from('investment')
				->where('order_id',$value->releted_id)
				->get()
				->row();

				if(is_object($investment) && $investment->balance_type == 'company_balance'){
					$company_balance_used+=$value->amount; 
				}else if(is_object($investment) && $investment->balance_type == 'promotion_balance'){
					$promotion_balance_used+=$value->amount; 
				}else if(is_object($investment) && $investment->balance_type == 'commission'){
					//could cause issue. 
					$commission_used +=$value->amount;
				}else if(is_object($investment) && $investment->balance_type == 'daily_roi'){
					//can have issue. 
					$roi_used +=$value->amount;
				}

			}

			if(@$value->transection_category=='reciver'){
				
				$reciver = $reciver+$value->amount;
				$individule['reciver'] = $reciver;

				$transfer = $this->getFees('transfer',$value->releted_id);
				
				if(is_object($transfer) && $transfer->transfer_type == 'company_balance'){
					$company_balance+=$value->amount; 
				}else if(is_object($transfer) && $transfer->transfer_type == 'promotion_balance'){
					$promotion_balance+=$value->amount; 
				}

			}
		}

		$individule['deposit'] = $dep;

		// $data = $this->db->select('*')
		// 	->from('transections')
		// 	->where('user_id',$user_id)
		// 	->where('status',1)
		// 	->where('amount < ',0)
		// 	->get()
		// 	->result();


			
		// 	foreach ($data as $value) {

		// 		if(@$value->transection_category=='deposit'){

		// 			$deposit = $this->getFees('deposit',$value->releted_id);
	
		// 			if(is_object($deposit) && $deposit->deposit_type == 'normal_credit'){
		// 				$company_balance_used+= abs($value->amount); 
		// 			}else if(is_object($deposit) && $deposit->deposit_type == 'promotion_credit'){
		// 				$promotion_balance_used+= abs($value->amount); 
		// 			}
		// 		}
		// 	}


			$individule['commission'] = empty(@$pack_commission) ? 0: $pack_commission-$commission_used;
			$individule['my_earns'] = empty(@$pay) ? 0 : $pay -$roi_used;
			$individule['team_bonus'] = @$team_bonus;
			$individule['team_commission'] = @$team_commission;
			$individule['sponser_commission'] = @$sponser_commission;
			$individule['promotion_balance'] = $promotion_balance - $promotion_balance_used;
			$individule['company_balance'] = $company_balance-$company_balance_used;

			//TOTAL FEES
			$total_fees = (@$individule['d_fees']+@$individule['w_fees']+@$individule['t_fees']);
			#-----------------------
			
			
			//$individule['balance'] = (@$individule['deposit']+@$total_earn+@$individule['reciver'])-(@$individule['withdraw']+@$individule['investment']+@$individule['transfar']+@$total_fees);						
			$individule['balance'] = (@$individule['deposit']+@$total_earn+@$individule['reciver'])-(@$individule['withdraw']+@$individule['investment']+@$individule['transfar']+@$total_fees);			

			$individule['negative_roi_sum'] = $negative_roi_sum;
			$individule['negative_com_sum'] = $negative_com_sum;

			$individule['binary_bonus'] = $binary_bonus;
			$individule['balance'] = $individule['balance'] + $binary_bonus;

			return $individule;
		
	}

	public function getFees($table,$id)
	{
		return $this->db->select('*')
		->from($table)
		->where($table.'_id',$id)
		->get()
		->row();
	}


	public function all_package()
	{
		return $this->db->select("*")
			->from('package')
			->get()
			->result();
	}

	public function my_info()
	{
		$user_id = $this->session->userdata('user_id');

		$my_info = $this->db->select('*')
		->from('user_registration')
		->where('user_id',$user_id)
		->get()
		->row();
		
	

		$sponser_info = $this->db->select('*')
		->from('user_registration')
		->where('user_id',@$my_info->sponsor_id)
		->get()
		->row();
		

		return array('my_info'=>$my_info,'sponser_info'=>$sponser_info);
	}	


	public function my_sales()
	{
		$user_id = $this->session->userdata('user_id');
		$result1 = $this->db->select("*")
			->from('user_registration')
			->where('sponsor_id',$user_id)
			->limit(5)
			->order_by('created', 'DESC')
			->get()
			->result();
		return $result1;		
	}


	public function my_payout()
	{
		$user_id = $this->session->userdata('user_id');
		
		$result1 = $this->db->select("*")
			->from('earnings')
			->where('user_id',$user_id)
			->where('earning_type','type2')
			->limit(5)
			->order_by('date', 'DESC')
			->get()
			->result();

		return $result1;		
	}	


	public function my_bangk_info()
	{
		$user_id = $this->session->userdata('user_id');
		$result1 = $this->db->select("*")
			->from('bank_info')
			->where('user_id',$user_id)
			->get()
			->row();
		return $result1;		
	}


	public function my_total_investment($user_id)
	{
		$result = $this->db->select("sum(amount) as total_amount")
			->from('investment')
			->where('user_id',$user_id)
			->get()
			->row();
		return $result;		
	}

	public function pending_withdraw()
	{
		$user_id = $this->session->userdata('user_id');
		return $this->db->select("*")
			->from('withdraw')
			->where('status',1)
			->where('user_id',$user_id)
			->limit(5)
			->order_by('request_date', 'DESC')
			->get()
			->result();
	}	

	public function my_level_information($user_id)
	{
		
		return $this->db->select('level')
			->from('team_bonus')
			->where('user_id',$user_id)
			->get()
			->row();
	}

				

}
 