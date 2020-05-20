<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {
 	
 	public function __construct()
 	{
 		parent::__construct();
 		$this->load->model(array(
 			'backend/user/user_model'  
 		));
 		
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

		//parent can only be one selected from tree
		$parent = $this->user_model->get_by_user_id($parent);
		$data['parents'] = [
			$parent->user_id => $parent->f_name.' '.$parent->l_name."(".$parent->user_id.")"
		];

		$data['title']  = display('add_user');
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
				if ($this->user_model->create($userdata)) {
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

	public function network(){

		$user_id = $this->session->userdata('user_id');
		$data['user'] = $this->user_model->get_by_user_id($user_id);
		
		$data['network_tree'] = $this->user_model->get_network_tree($user_id);
		$data['network_tree_html'] = $this->user_model->get_network_tree_html($user_id);

		// // echo "I am herere"; 
		// echo '<pre>';
		// print_r($data['network_tree']);
		// exit; 

		$data['title'] = 'Network Tree';
		$data['content'] = $this->load->view("customer/user/network", $data, true);
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

}
