<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Operations extends CI_Controller 
{
	public function __construct()
	{
		parent::__construct();
		
		if (!$this->session->userdata('isAdmin')) 
        redirect('logout');
  
        if (!$this->session->userdata('isLogIn')) 
        redirect('admin'); 
 
		$this->load->model(array(
            'backend/dashboard/home_model',
            'backend/dashboard/dashboard_model',
            'backend/dashboard/operations_model',
		));
	}

    public function daily_roi(){

    }
    
}