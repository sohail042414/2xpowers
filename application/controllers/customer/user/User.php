<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {
 	
 	public function __construct()
 	{
		 parent::__construct();
		 
		 $this->load->model('backend/user/user_model');		 
		 $this->load->model('customer/deshboard_model');
		 $this->load->model('common_model'); 	
		 $this->load->model('tree_model');

		 if (!$this->session->userdata('isLogIn')) 
		 redirect('login');
 
		 if (!$this->session->userdata('user_id')) 
		 redirect('login');  
 	}
 
	public function index()
	{  
		$data['title']  = display('user_list');
 		#-------------------------------#
        #
        #pagination starts
        #
        $config["base_url"] = base_url('customer/user/user/index');
        $config["total_rows"] = $this->db->count_all('user_registration');
        $config["per_page"] = 25;
        $config["uri_segment"] = 5;
        $config["last_link"] = "Last"; 
        $config["first_link"] = "First"; 
        $config['next_link'] = 'Next';
        $config['prev_link'] = 'Prev';  
        $config['full_tag_open'] = "<ul class='pagination col-xs pull-right'>";
        $config['full_tag_close'] = "</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tag_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
        /* ends of bootstrap */
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(5)) ? $this->uri->segment(5) : 0;
        $data['user'] = $this->user_model->read($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #  
		$data['content'] = $this->load->view("customer/user/list", $data, true);
		$this->load->view("customer/layout/main_wrapper", $data);
	}

	/*
    |----------------------------------------------
    |   Datatable Ajax data Pagination+Search
    |----------------------------------------------     
    */
	public function ajax_list()
	{
		$user_id = $this->session->userdata('user_id');

		$list = $this->user_model->get_datatables($user_id);
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $users) {
			$no++;
			$row = array();
			$row[] = $no;
			$row[] = '<a href="'.base_url("customer/user/user/user_details/$users->uid").'">'.$users->user_id.'</a>';
			$row[] = $users->sponsor_id;
			$row[] = '<a href="'.base_url("customer/user/user/user_details/$users->uid").'">'.$users->f_name." ".$users->l_name.'</a>';
			$row[] = '<a href="'.base_url("customer/user/user/user_details/$users->uid").'">'.$users->username.'</a>';
			$row[] = $users->email;
			$row[] = $users->phone;
			//$row[] = '<a href="'.base_url("customer/user/user/form/$users->uid").'"'.' class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="Update"><i class="fa fa-pencil" aria-hidden="true"></i></a>';

			$data[] = $row;
		}

		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->user_model->count_all($user_id),
				"recordsFiltered" => $this->user_model->count_filtered($user_id),
				"data" => $data,
			);
		//output to json format
		echo json_encode($output);
	}


    public function email_check($email, $uid)
    { 
        $emailExists = $this->db->select('email')
            ->where('email',$email) 
            ->where_not_in('uid',$uid) 
            ->get('user_registration')
            ->num_rows();

        if ($emailExists > 0) {
            $this->form_validation->set_message('email_check', 'The {field} is already registered.');
            return false;
        } else {
            return true;
        }
    } 

    public function username_check($username, $uid)
    { 
        $usernameExists = $this->db->select('username')
            ->where('username',$username) 
            ->where_not_in('uid',$uid) 
            ->get('user_registration')
            ->num_rows();

        if ($usernameExists > 0) {
            $this->form_validation->set_message('username_check', 'The {field} is already registered.');
            return false;
        } else {
            return true;
        }
	} 

	public function parent_check($parent,$position)
    { 
        $user_exists = $this->db->select('username')
            ->where('position',$position) 
            ->wherein('parent',$parent) 
            ->get('user_registration')
            ->num_rows();

        if ($user_exists > 0) {
            $this->form_validation->set_message('username_check', 'This parent {$parent} already has children at this position.');
            return false;
        } else {
            return true;
        }
    } 

	public function company_balance_check($company_balance_used,$package_id){

		$post_data = $this->input->post();

		$package = $this->db->from('package')->where('package_id',$package_id)->get()->row();

		$total_used = (int)$post_data['company_balance_used']+ (int)$post_data['promotion_balance_used']+(int)$post_data['commission_used']+(int)$post_data['roi_used']+(int)$post_data['binary_used'];
		
		if($total_used != $package->package_amount){
			$this->form_validation->set_message('company_balance_check', 'You should spend amount exactly equal to package amount ($'.$package->package_amount.') from balances.');
			return FALSE;
		}

		$percent50 = 0.5*$package->package_amount; 

		if($percent50 > $post_data['company_balance_available']){
			$this->form_validation->set_message('company_balance_check', 'Sponsor does not have enough company balance, required min $'.$percent50);
			return FALSE;
		}

		if($post_data['company_balance_used'] < $percent50){
			$this->form_validation->set_message('company_balance_check', 'Must use min 50% ($'.$percent50.') of company balance');
			return FALSE;
		}

		$percent20 = 0.2*$package->package_amount; 

		if($post_data['promotion_balance_used'] > $percent20){
			$this->form_validation->set_message('company_balance_check', 'Must use max 20% ($'.$percent20.') of promotion balance');
			return FALSE;
		}

		if($post_data['promotion_balance_used'] > $post_data['promotion_balance_available']){
			$this->form_validation->set_message('company_balance_check', 'Sponsor does not have enough promotion balance ($'.$post_data['promotion_balance_available'].')');
			return FALSE;
		}

		if($post_data['commission_used'] > $post_data['commission_available']){
			$this->form_validation->set_message('company_balance_check', 'Sponsor does not have enough commission balance ($'.$post_data['commission_used'].')');
			return FALSE;
		}

		if($post_data['roi_used'] > $post_data['roi_available']){
			$this->form_validation->set_message('company_balance_check', 'Sponsor does not have enough ROI balance ($'.$post_data['roi_used'].')');
			return FALSE;
		}

		if($post_data['binary_used'] > $post_data['binary_available']){
			$this->form_validation->set_message('company_balance_check', 'Sponsor does not have enough binary bonus ($'.$post_data['binary_used'].')');
			return FALSE;
		}

		return TRUE;
	}

	public function add_child(){

		$parent = $this->input->get('parent');

		if(!empty($parent)){
			$this->session->set_userdata('parent',$parent);
		}

		$position = $this->input->get('position');

		if(!empty($position)){
			$this->session->set_userdata('position',$position);
		}

		redirect("customer/user/user/form");
	}

 
	public function form($uid = null)
	{ 
		$user_id = $this->session->userdata('user_id');

		$this->load->model(array(
			'backend/package/package_model'  
		));

		$parent = $this->session->userdata('parent');
		$position = $this->session->userdata('position');

		$data['packages'] = $this->package_model->get_list();
		
		//$data['positions'] = $this->user_model->get_positions();
		//giv option to select only position choosen from tree, not all 
		$data['positions'] = $this->user_model->get_positions($position);
		//get sponsers based on parent selected. 
		$data['sponsers'] = $this->user_model->get_sponser_list($parent);

		$data['countries'] = $this->common_model->get_countries();

		$data['vallet'] = $this->deshboard_model->get_cata_wais_transections($parent);


		//parent can only be one selected from tree
		$parent = $this->user_model->get_by_user_id($parent);
		$data['parents'] = [
			$parent->user_id => $parent->f_name.' '.$parent->l_name."(".$parent->user_id.")"
		];

		$data['title']  = display('add_user');

		$package_id = $this->input->post('package_id');

		/*-----------------------------------*/
		$this->form_validation->set_rules('username', display('username'),'required|max_length[20]');
		$this->form_validation->set_rules('sponsor_id', display('sponsor_id'),'required|max_length[6]');
		$this->form_validation->set_rules('f_name', display('firstname'),'required|max_length[50]');
		$this->form_validation->set_rules('l_name', display('lastname'),'required|max_length[50]');
		
		#------------------------#
		if (!empty($uid)) {   
       		$this->form_validation->set_rules('username', display("username"), "required|max_length[100]|callback_username_check[$uid]|trim"); 
		} else {
			$this->form_validation->set_rules('username', display('username'),'required|is_unique[user_registration.username]|max_length[20]');
		} 
		#------------------------#
		if (!empty($uid)) {   
       		$this->form_validation->set_rules('email', 'Email Address', "required|valid_email|max_length[100]|callback_email_check[$uid]|trim"); 
		} else {
			$this->form_validation->set_rules('email', display('email'),'required|valid_email|is_unique[user_registration.email]|max_length[100]');
		}


		#------------------------#
		$this->form_validation->set_rules('password', display('password'),'required|min_length[6]|max_length[32]|md5');
		$this->form_validation->set_rules('conf_password', display('conf_password'),'required|min_length[6]|max_length[32]|md5|matches[password]');
		$this->form_validation->set_rules('mobile', display('mobile'),'max_length[30]');
		//$this->form_validation->set_rules('status', display('status'),'required|max_length[1]');
		/*-----------------------------------*/ 
		
		$this->form_validation->set_rules('company_balance_used', "Company Balance", "required|numeric|callback_company_balance_check[$package_id]|trim"); 

		if (empty($uid))
		{ 
			$data['user'] = (object)$userdata = array(
				'uid' 		  => $this->input->post('uid'),
				'user_id' 	  => $this->randomID(),
				'sponsor_id'  => $this->input->post('sponsor_id'),
				'package_id'  => $this->input->post('package_id'),
				'position'  => $this->input->post('position'),
				'parent'  => $this->input->post('parent'),
				'username'    => $this->input->post('username'),
				'f_name' 	  => $this->input->post('f_name'),
				'l_name' 	  => $this->input->post('l_name'),
				'email' 	  => $this->input->post('email'),
				'password' 	  => md5($this->input->post('password')),
				'country'	  => $this->input->post('country'),
				'phone' 	  => $this->input->post('mobile'),
				'reg_ip'      => $this->input->ip_address(),
				'status'      => 1,
			);
		}
		else
		{
			$data['user'] = (object)$userdata = array(
				'uid' 		  => $this->input->post('uid'),
				'user_id' 	  => $this->input->post('user_id'),
				'sponsor_id'  => $this->input->post('sponsor_id'),
				'package_id'  => $this->input->post('package_id'),
				'position'  => $this->input->post('position'),
				'parent'  => $this->input->post('parent'),
				'username'    => $this->input->post('username'),
				'f_name' 	  => $this->input->post('f_name'),
				'l_name' 	  => $this->input->post('l_name'),
				'email' 	  => $this->input->post('email'),
				'password' 	  => md5($this->input->post('password')),
				'country'	  => $this->input->post('country'),
				'phone' 	  => $this->input->post('mobile'),
				'reg_ip'      => $this->input->ip_address(),
				'status'      => $this->input->post('status'),
			);
		}
		/*-----------------------------------*/
		if ($this->form_validation->run()) 
		{

			$uid_query = $this->db->select('user_id')->where('user_id', $this->input->post('sponsor_id'))->get('user_registration')->row();
			if (!$uid_query) {
				$this->session->set_flashdata('exception', "Valid Sponsor Id Required");
				redirect("customer/user/user/form");
			}


			if (empty($uid)) 
			{
				//if ($this->user_model->create($userdata)) {
				if ($this->tree_model->create_user($userdata)) {
					$this->session->set_flashdata('message', display('save_successfully'));
				} else {
					$this->session->set_flashdata('exception', display('please_try_again'));
				}
				redirect("customer/user/user/form");

			} 
			else 
			{
				/*
				if ($this->user_model->update($userdata)) {
					$this->session->set_flashdata('message', display('update_successfully'));
				} else {
					$this->session->set_flashdata('exception', display('please_try_again'));
				}
				*/
				redirect("customer/user/user/form/$uid");
			}
		} 
		else 
		{ 
			if(!empty($uid)) {
				$data['title'] = display('edit_user');
				$data['user'] = (object)$userdata = array(
					'uid' 		  => '',
					'user_id' 	  => '',
					'sponsor_id'  => '',
					'package_id'  => '',
					'position'  => '',
					'parent'  => '',
					'username'    => '',
					'f_name' 	  => '',
					'l_name' 	  => '',
					'email' 	  => '',
					'password' 	  => '',
					'phone' 	  => '',
					'reg_ip'      => '',
					'status'      => '',
				);
				//$data['user']   = $this->user_model->single($uid);
			}
			
			$data['content'] = $this->load->view("customer/user/form", $data, true);
			$this->load->view("customer/layout/main_wrapper", $data);
		}
	}
	//shifted to other controller. 

	public function sponsorbalance(){

		$user_id = $this->input->post('user_id');
		$vallet = $this->deshboard_model->get_cata_wais_transections($user_id);
		print_r(json_encode($vallet));
		exit;
	}

	public function network(){

		//$test_user_id = 'E52O0P';
		//$test_user = $this->user_model->get_by_user_id($test_user_id);
		//$this->tree_model->set_points($test_user);
		//exit;

		$user_id = $this->session->userdata('user_id');
		$data['user'] = $this->user_model->get_by_user_id($user_id);
		
		$data['network_tree'] = $this->user_model->get_network_tree($user_id);
		$data['network_tree_html'] = $this->user_model->get_network_tree_html($user_id);

		// // echo "I am herere"; 
		// echo '<pre>';
		// print_r($data['network_tree']);
		// exit; 
		$data['total_points'] = $data['user']->business_points;

		$data['title'] = 'Network Tree';
		$data['content'] = $this->load->view("backend/user/network", $data, true);
		$this->load->view("customer/layout/main_wrapper", $data);

	}

	public function user_details($uid = null)
	{ 
		$data['title']  = display('details');

		if(!empty($uid)) {
			$data['user']   	= $this->user_model->single($uid);
			$data['deposit']   	= $this->db->select('*')->from('deposit')->limit(10)->where('user_id', $data['user']->user_id)->get()->result();
			$data['investment']   	= $this->db->select('*')->from('investment')->limit(10)->where('user_id', $data['user']->user_id)->get()->result();
		}
		
		$data['content'] = $this->load->view("customer/user/user_details", $data, true);
		$this->load->view("customer/layout/main_wrapper", $data);
	}


	public function delete($user_id = null)
	{  
		if ($this->user_model->delete($user_id)) {
			$this->session->set_flashdata('message', display('delete_successfully'));
		} else {
			$this->session->set_flashdata('exception', display('please_try_again'));
		}
		redirect("customer/user/user/");
	}

    /*
    |----------------------------------------------
    |        id genaretor
    |----------------------------------------------     
    */
    public function randomID($mode = 2, $len = 6)
    {
        $result = "";
        if($mode == 1):
            $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        elseif($mode == 2):
            $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        elseif($mode == 3):
            $chars = "abcdefghijklmnopqrstuvwxyz0123456789";
        elseif($mode == 4):
            $chars = "0123456789";
        endif;

        $charArray = str_split($chars);
        for($i = 0; $i < $len; $i++) {
                $randItem = array_rand($charArray);
                $result .="".$charArray[$randItem];
        }
        return $result;
    }
    /*
    |----------------------------------------------
    |         Ends of id genaretor
    |----------------------------------------------
    */

	public function all_reset(){
		die("Already done");

		$this->db->truncate('transfer');
		$this->db->truncate('deposit');
		$this->db->truncate('transections');
		$this->db->truncate('investment');

		$this->db->query("Delete from earnings where earning_type = 'type1' OR earning_type='type3'");

		$this->db->update('user_registration',array('processed' => 0,'used_points' => 0));


		$top_deposit = array(
			'user_id' => '2xpowr',
			'deposit_amount' => 100000,
			'deposit_method' => 'admin',
			'deposit_type' => 'company_balance',
			'fees' => '0',
			'comments' => 'Initial deposit from admin to top level user',
			'deposit_date' => '2020-05-01 00:00:00',
			'deposit_id' => '',
			'status' => 1			
		);

		$this->db->insert('deposit', $top_deposit);

		$depost_id = $this->db->insert_id();

		$transections_data = array(
			'user_id'                   => '2xpowr',
			'transection_category'      => 'deposit',
			'releted_id'                => $depost_id,
			'amount'                    => 100000,
			'comments'                  => 'Initial deposit from admin to top level user',
			'transection_date_timestamp'=> '2020-05-01 00:00:00'
		);
		
		$this->db->insert('transections',$transections_data);


		$investment = [
			'user_id' => '2xpowr',
			'sponsor_id' => '2xpowr',
			'package_id' => 16,
			'amount' => 10000,
			'invest_date' => '2020-05-01 00:00:00',
			'day' => 1,
			'balance_type' => 'company_balance'
		];

		$this->db->insert('investment', $investment);

		$investment_id = $this->db->insert_id();

		$inv_transections_data = array(
			'user_id'                   => '2xpowr',
			'transection_category'      => 'investment',
			'releted_id'                => $investment_id,
			'amount'                    => 10000,
			'comments'                  => 'Package activated for user 2xpowr',
			'transection_date_timestamp'=> '2020-05-01 00:00:00'
		);
		
		$this->db->insert('transections',$inv_transections_data);

		$users =  $this->db->select('*')
		->from('user_registration')
		->where('user_id !=','2xpowr')
		->order_by('uid','ASC')
		->get()->result();

		$this->db->trans_start();

		foreach($users as $user){
			echo "<br><br> Reprocessing User ".$user->user_id;		
			$this->tree_model->correct_user($user->user_id);

			$user_update = array(
				'processed' => 1
			);
	
			$this->db->where('user_id',$user->user_id)->update('user_registration',$user_update);
	
		}

		/*
		$users =  $this->db->select('*')
		->from('user_registration')
		->where('user_id !=','2xpowr')
		->order_by('uid','DESC')
		->get()->result();


		foreach($users as $user){
			echo "<br><br> Setting points for User ".$user->user_id;		
			$this->tree_model->correct_points($user->user_id);
		}



		foreach($users as $user){
			echo "<br><br> Setting binary User ".$user->user_id;		
			$this->tree_model->correct_binary_bonus($user->user_id);

			$user_update = array(
				'processed' => 1
			);
	
			$this->db->where('user_id',$user->user_id)->update('user_registration',$user_update);
	
		}
		*/

		$this->db->trans_complete();

		if ($this->db->trans_status() === FALSE)
		{
			echo "<br>Error<br>";
		}

		echo "<br> <br> End";
		exit;

	}


	public function reprocess(){

		die("Already done");

		$user_id = $this->input->get('user_id');

		$this->db->trans_start();

		//$this->tree_model->correct_user($user_id);
		$this->tree_model->correct_points($user_id);
		$this->tree_model->correct_binary_bonus($user_id);

		$this->db->trans_complete();

		if ($this->db->trans_status() === FALSE)
		{
			echo "Reprocessinng complete for  ".$user_id;
		}

		echo "End";
		exit;
	}
}
