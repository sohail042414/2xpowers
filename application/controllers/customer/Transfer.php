<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Transfer extends CI_Controller 
{
    
	public function __construct()
	{
		parent::__construct();
  
        if (!$this->session->userdata('isLogIn')) 
        redirect('customer'); 
 
		$this->load->model(array(
            'common_model',
            'customer/Profile_model',
            'customer/transfer_model',
            'customer/package_model', 
            'customer/transections_model', 
             
        ));
        $this->load->library('sms_lib');

	}

    /*
    |-----------------------------------
    |   View transfer 
    |-----------------------------------
    */
    public function index()
    {   

        $this->load->model('customer/deshboard_model');
        $vallets = $this->deshboard_model->get_cata_wais_transections();
        $data['vallets'] = array(
            'roi_balance' => "Daily ROI ($". $vallets['my_earns'].")",
            'commission' => "Commission ($".$vallets['commission'].")",
            'company_balance' => "Company Balance ($".$vallets['company_balance'].")",
            'promotion_balance' => "Promotion Balance ($".$vallets['promotion_balance'].")",            
        );
        $data['title']   = display('transfer'); 
        $data['content'] = $this->load->view('customer/transfer/transfar', $data, true);
        $this->load->view('customer/layout/main_wrapper', $data);  
    }

    /*
    |-----------------------------------
    |   View transfer list
    |-----------------------------------
    */
    public function transfer_list()
    {
        $user_id = $this->session->userdata('user_id');
        $data['title']   = display('transfer_list');
        #-------------------------------#
        #
        #pagination starts
        #
        $config["base_url"] = base_url('customer/transfer/transfar/transfer_list');
        $config["total_rows"] = $this->db->select('transfer.*,user_registration.*')
        ->from('transfer')
        ->join('user_registration','user_registration.user_id=transfer.receiver_user_id')
        ->where('transfer.sender_user_id',$user_id)
        ->or_where('transfer.receiver_user_id',$user_id)
        ->order_by('transfer.date',"DESC")
        ->get()->num_rows();
        $config["per_page"] = 25;
        $config["uri_segment"] = 4;
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
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $data['transfer'] = $this->db->select('transfer.*,user_registration.*')
        ->from('transfer')
        ->join('user_registration','user_registration.user_id=transfer.receiver_user_id')
        ->where('transfer.sender_user_id',$user_id)
        ->or_where('transfer.receiver_user_id',$user_id)
        ->order_by('transfer.date',"DESC")
        ->limit($config["per_page"], $page)
        ->get()
        ->result();
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #
        $data['content'] = $this->load->view('customer/transfer/transfar_list', $data, true);
        $this->load->view('customer/layout/main_wrapper', $data);  
    }



    public function send_details($id=NULL)
    {

        $data['title']   = display('transfar_recite'); 
        $data['send'] = $this->transfer_model->get_send($id);
        $data['my_info'] = $this->Profile_model->my_info();
        $data['content'] = $this->load->view('customer/transfer/send_recite', $data, true);
        
        $this->load->view('customer/layout/main_wrapper', $data);

    }


    public function receive_details($id=NULL)
    {

        $data['title']   = display('transfar_recite'); 
        $data['send']    = $this->transfer_model->get_recieved($id);
        $data['my_info'] = $this->Profile_model->my_info();

        $data['content'] = $this->load->view('customer/transfer/recived_recite', $data, true);
        $this->load->view('customer/layout/main_wrapper', $data);
    
    }



    /*
    |-----------------------------------
    |   transfer  submit
    |-----------------------------------
    */

    public function store()
    {


        $this->form_validation->set_rules('receiver_id', display('receiver_id'), 'required'); 
        $this->form_validation->set_rules('amount', display('amount'), 'required'); 
        $this->form_validation->set_rules('varify_media', 'OTP Send To', 'required'); 

        $balance_type = $this->input->post('balance_type');
        //$this->form_validation->set_rules('username', display("username"), "required|max_length[100]|callback_username_check[$uid]|trim"); 

        if($this->form_validation->run()){

            $varify_media = $this->input->post('varify_media');
            $receiver_id = $this->input->post('receiver_id');
            $amount = $this->input->post('amount');
            $varify_code = $this->randomID();

            
            #----------------------------
            // check balance 
            //$blance = $this->check_balance($amount);
            $blance = $this->check_balance_all();
            $appSetting = $this->common_model->get_setting();
            #----------------------------
            if($blance!=true){

                $this->session->set_flashdata('exception', display('balance_is_unavailable'));
                redirect('customer/transfer');
            
            } else {


                    if($varify_media==2){

                        #----------------------------
                        #      email verify smtp mail
                        #----------------------------
                        $post = array(
                            'title'             => $appSetting->title,
                            'subject'           => 'Transfer Verification!',
                            'to'                => $this->session->userdata('email'),
                            'message'           => 'You are about to transfar $'.$amount.' to the account '.$receiver_id.'. 
                            Your code is <h1>'.$varify_code.'</h1>',
                        );
                        $code_send = $this->common_model->send_email($post);

                        #-----------------------------

                    } else {
                        
                        #----------------------------
                        #      SMS verify
                        #----------------------------
                        $this->load->library('sms_lib');
                        $template = array( 
                            'name'          => $this->session->userdata('fullname'),
                            'amount'        => $amount,
                            'receiver_id'   => $receiver_id,
                            'code'          => $varify_code
                        );
                        $code_send = $this->sms_lib->send(array(
                            'to'                => $this->session->userdata('phone'), 
                            'template'          => 'You are about to transfar $%amount%, to the account %receiver_id%, Your code is %code%',
                            'template_config'   => $template,
                        ));

                    }


            if(isset($code_send)){
                
            $fees = $this->fees_load($amount,'transfer');

                $transfar_data = array(
                    'sender_user_id' => trim($this->session->userdata('user_id')),
                    'receiver_user_id' => trim($this->input->post('receiver_id')),
                    'amount' => $this->input->post('amount'),
                    'fees' => @$fees,
                    'request_ip' => $this->input->ip_address(),
                    'date' => date('Y-m-d h:i:s'),
                    'comments' => $this->input->post('comments'),
                    'status' => 1,
                    'balance_type' => $balance_type,
                );

                $varify_data = array(

                    'ip_address' => $this->input->ip_address(),
                    'user_id' => $this->session->userdata('user_id'),
                    'session_id' => $this->session->userdata('isLogIn'),                   
                    'verify_code' => $varify_code,
                    'data' => json_encode($transfar_data)

                );

                $result = $this->transfer_model->save_transfer_verify($varify_data);
         
                redirect('customer/transfer/confirm_transfer/'.$result['id']);
                
                } 
            }

        } else {

            $data['old'] = (object)$_POST;
            $data['title']   = display('transfar'); 
            $data['content'] = $this->load->view('customer/transfer/transfar', $data, true);
            $this->load->view('customer/layout/main_wrapper', $data); 
        }
    }


/*
|---------------------------------
|   Fees Load and deposit amount 
|---------------------------------
*/
    public function fees_load($amount=null,$level)
    {   

        $result = $this->db->select('*')
        ->from('fees_tbl')
        ->where('level',$level)
        ->get()
        ->row();

       return $fees = ($amount/100)*$result->fees;
        
    }

    /*
    |-----------------------------------
    |   transfer verify
    |-----------------------------------
    */

    public function confirm_transfer($id = null)
    {

        $data = $this->transfer_model->get_verify_data($id);

        if($data!=NULL){

        $data['token'] = $data['v']->verify_code;

        $data['title']   = display('transfar_verify'); 

        $data['content'] = $this->load->view('customer/transfer/transfar_verify', $data, true);
        
        $this->load->view('customer/layout/main_wrapper', $data);

        } else {
            redirect('customer/transfer/');
        }
    }


    /*
    |-----------------------------------
    |   verify the code
    |-----------------------------------
    */
    public function transfer_verify()
    {

        $code = $this->input->post('code');
        $id = $this->input->post('id');

        $data = $this->db->select('*')
        ->from('verify_tbl')
        ->where('verify_code',$code)
        ->where('id',$id)
        ->where('session_id',$this->session->userdata('isLogIn'))
        ->where('status', 1)
        ->get()
        ->row();

        if($data!=NULL) {
        
        $t_data = ((array) json_decode($data->data));
        
        $balance_type = $t_data['balance_type'];
        unset($t_data['balance_type']);

        $result = $this->transfer_model->transfer($t_data);

        $appSetting = $this->common_model->get_setting();
        $set = $this->common_model->email_sms('email');

        if($balance_type == 'company_balance'){

            //deduct from sender
            $deposit_data = array(
                'user_id'           => $this->session->userdata('user_id'),
                'deposit_amount'    => (0-$t_data['amount']),
                'deposit_method'    => 'admin',
                'deposit_type'    => 'normal_credit',
                'fees'              => 0.0,
                'comments'          => 'Transfer of Company Balance',
                'deposit_date'      => date('Y-m-d h:i:s'),
                'deposit_ip'        => $this->input->ip_address(),
                'status'            => 1
            );

            $insert_deposit = $this->db->insert('deposit',$deposit_data);
            $insert_id = $this->db->insert_id();

            if($insert_id){

                $transections_data = array(
                'user_id'                   => $this->session->userdata('user_id'),
                'transection_category'      => 'deposit',
                'releted_id'                => $insert_id,
                'amount'                    => (0-$t_data['amount']),
                'comments'                  => 'Transfer of Company Balance',
                'transection_date_timestamp'=> date('Y-m-d h:i:s')
                );
                $this->db->insert('transections',$transections_data);

            }

            //add to receiver
            $deposit_data_recv = array(
                'user_id'           => $t_data['receiver_user_id'],
                'deposit_amount'    => $t_data['amount'],
                'deposit_method'    => 'admin',
                'deposit_type'    => 'normal_credit',
                'fees'              => 0.0,
                'comments'          => 'Transfer of Company Balance',
                'deposit_date'      => date('Y-m-d h:i:s'),
                'deposit_ip'        => $this->input->ip_address(),
                'status'            => 1
            );

            $insert_deposit = $this->db->insert('deposit',$deposit_data_recv);
            $insert_id = $this->db->insert_id();

            if($insert_id){

                $transections_data_recv = array(
                'user_id'                   => $t_data['receiver_user_id'],
                'transection_category'      => 'deposit',
                'releted_id'                => $insert_id,
                'amount'                    => $t_data['amount'],
                'comments'                  => 'Transfer of Company Balance',
                'transection_date_timestamp'=> date('Y-m-d h:i:s')
                );
                $this->db->insert('transections',$transections_data_recv);

            }
        }else if($balance_type == 'promotion_balance'){

            //deduct from sender
            $deposit_data = array(
                'user_id'           => $this->session->userdata('user_id'),
                'deposit_amount'    => (0-$t_data['amount']),
                'deposit_method'    => 'admin',
                'deposit_type'    => 'promotion_credit',
                'fees'              => 0.0,
                'comments'          => 'Transfer of Promotion Balance',
                'deposit_date'      => date('Y-m-d h:i:s'),
                'deposit_ip'        => $this->input->ip_address(),
                'status'            => 1
            );

            $insert_deposit = $this->db->insert('deposit',$deposit_data);
            $insert_id = $this->db->insert_id();

            if($insert_id){

                $transections_data = array(
                'user_id'                   => $this->session->userdata('user_id'),
                'transection_category'      => 'deposit',
                'releted_id'                => $insert_id,
                'amount'                    => (0-$t_data['amount']),
                'comments'                  => 'Transfer of Promotion Balance',
                'transection_date_timestamp'=> date('Y-m-d h:i:s')
                );
                $this->db->insert('transections',$transections_data);

            }

            //add to receiver
            $deposit_data_recv = array(
                'user_id'           => $t_data['receiver_user_id'],
                'deposit_amount'    => $t_data['amount'],
                'deposit_method'    => 'admin',
                'deposit_type'    => 'promotion_credit',
                'fees'              => 0.0,
                'comments'          => 'Transfer of Promotion Balance',
                'deposit_date'      => date('Y-m-d h:i:s'),
                'deposit_ip'        => $this->input->ip_address(),
                'status'            => 1
            );

            $insert_deposit = $this->db->insert('deposit',$deposit_data_recv);
            $insert_id = $this->db->insert_id();

            if($insert_id){

                $transections_data_recv = array(
                'user_id'                   => $t_data['receiver_user_id'],
                'transection_category'      => 'deposit',
                'releted_id'                => $insert_id,
                'amount'                    => $t_data['amount'],
                'comments'                  => 'Transfer of Promotion Balance',
                'transection_date_timestamp'=> date('Y-m-d h:i:s')
                );
                $this->db->insert('transections',$transections_data_recv);

            }


        }else if($balance_type == 'roi_balance'){
            //deduct from sender
            $paydata1 = array(
                'user_id'       => $this->session->userdata('user_id'),
                'Purchaser_id'  => $t_data['receiver_user_id'],
                'earning_type'  => 'type2',
                'package_id'    => 0,
                'order_id'      => 0,
                'amount'        => (0-$t_data['amount']),
                'date'          => date('Y-m-d'),
            );

            $this->db->insert('earnings',$paydata1);
            //add to receiver
            $paydata = array(
                'user_id'       => $t_data['receiver_user_id'],
                'Purchaser_id'  => $this->session->userdata('user_id'),
                'earning_type'  => 'type2',
                'package_id'    => 0,
                'order_id'      => 0,
                'amount'        => $t_data['amount'],
                'date'          => date('Y-m-d'),
            );

            $this->db->insert('earnings',$paydata);

        }else if($balance_type =='commission'){
            //deduct from sender
            $paydata1 = array(
                'user_id'       => $this->session->userdata('user_id'),
                'Purchaser_id'  => $t_data['receiver_user_id'],
                'earning_type'  => 'type1',
                'package_id'    => 0,
                'order_id'      => 0,
                'amount'        => (0-$t_data['amount']),
                'date'          => date('Y-m-d'),
            );

            $this->db->insert('earnings',$paydata1);
             //add to receiver
            $paydata = array(
                'user_id'       => $t_data['receiver_user_id'],
                'Purchaser_id'  => $this->session->userdata('user_id'),
                'earning_type'  => 'type1',
                'package_id'    => 0,
                'order_id'      => 0,
                'amount'        => $t_data['amount'],
                'date'          => date('Y-m-d'),
            );

            $this->db->insert('earnings',$paydata);

        }

            $transections_data = array(
                'user_id'                   => $this->session->userdata('user_id'),
                'transection_category'      => 'transfer',
                'releted_id'                => $result['transfer_id'],
                'amount'                    => $t_data['amount'],
                'comments'                  => $t_data['comments'],
                'transection_date_timestamp'=> date('Y-m-d h:i:s')
            );

            $transections_reciver_data = array(
                'user_id'                   => $t_data['receiver_user_id'],
                'transection_category'      => 'reciver',
                'releted_id'                => $result['transfer_id'],
                'amount'                    => $t_data['amount'],
                'comments'                  => $t_data['comments'],
                'transection_date_timestamp'=> date('Y-m-d h:i:s')
            );

            $this->transections_model->save_transections($transections_data);
            
            $this->transections_model->save_transections($transections_reciver_data);

            $this->db->set('status',0)
            ->where('id', $id)
            ->where('session_id',$this->session->userdata('isLogIn'))
            ->update('verify_tbl');
           

            if($set->transfer!=NULL){

                $balance = $this->transections_model->get_cata_wais_transections();
                #----------------------------
                #      email verify smtp
                #----------------------------
                 $post = array(

                    'title'           => $appSetting->title,
                    'subject'           => display('transfer'),
                    'to'                => $this->session->userdata('email'),
                    'message'           => 'You successfully transfer The amount $'.$t_data['amount'].' to the account '.$t_data['receiver_user_id'].'. Your new balance is $'.$balance['balance']
                   
                );
                $send_email = $this->common_model->send_email($post);

                if($send_email){

                    $n = array(
                        'user_id'                => $this->session->userdata('user_id'),
                        'subject'                => display('transfer'),
                        'notification_type'      => 'transfer',
                        'details'                => 'You successfully transfer The amount $'.$t_data['amount'].' to the account '.$t_data['receiver_user_id'].'. Your new balance is $'.$balance['balance'],
                        'date'                   => date('Y-m-d h:i:s'),
                        'status'                 => '0'
                    );
                    $this->db->insert('notifications',$n);    
                }

                #------------------------------
                #   SMS Sending Confirmation
                #------------------------------
                $template = array( 
                    'name'      => $this->session->userdata('fullname'),
                    'amount'    =>$t_data['amount'],
                    'new_balance'=>$balance['balance'],
                    'receiver_id'=>$t_data['receiver_user_id'],
                    'date'      => date('d F Y')
                );

                $send_sms = $this->sms_lib->send(array(
                    'to'              => $this->session->userdata('phone'), 
                    'subject'         => 'Transfer', 
                    'template'        => 'You successfully transfer the amount $%amount% to the account %receiver_id%. Your balence is $%new_balance%.', 
                    'template_config' => $template, 
                ));

                if($send_sms){

                    $message_data = array(
                        'sender_id' =>1,
                        'receiver_id' => $this->session->userdata('user_id'),
                        'subject' => 'Transfer',
                        'message' => 'You successfully transfer the amount $'.$t_data['amount'].' to the account '.$t_data['receiver_user_id'].'. Your new balance is $'.$balance['balance'],
                        'datetime' => date('Y-m-d h:i:s'),
                    );

                    $this->db->insert('message',$message_data);    

                }
                

            }
        echo $result['transfer_id'];


        } else {

            echo 0;

        }
        
    }


    /*
    |-----------------------------------
    |   Balance Check
    |-----------------------------------
    */

    public function transfer_recite($id=NULL)
    {

       $data = $this->transfer_model->get_verify_data($id);



        $data['title']   = display('transfar_recite'); 
        $data['my_info'] = $this->Profile_model->my_info();
        $data['content'] = $this->load->view('customer/transfer/transfer_recite', $data, true);
        
        $this->load->view('customer/layout/main_wrapper', $data);
    }



    /*
    |-----------------------------------
    |   Balance Check
    |-----------------------------------
    */

    public function check_balance($amount=NULL)
    {
        $data = $this->transections_model->get_cata_wais_transections();
        $amount += $this->fees_load($amount,'transfer');

        if($amount < $data['balance']){
            $new = $data['balance']-$amount;
            return $balence = array('new_balance'=>$new,'balance'=>$data['balance']);
        } else {
            return false;
        }
    }

    public function check_balance_all(){

        $this->load->model('customer/deshboard_model');
        $vallets = $this->deshboard_model->get_cata_wais_transections();
        
        $amount = $this->input->post('amount');
        $balance_type = $this->input->post('balance_type');

        if($balance_type =='roi_balance' && $amount > $vallets['my_earns']){
            return FALSE;
        }else if($balance_type == 'commission' && $amount > $vallets['commission']){
            return FALSE;
        }else if($balance_type == 'company_balance' && $amount > $vallets['company_balance']){
            return FALSE;
        }else if($balance_type == 'promotion_balance' && $amount > $vallets['promotion_balance']){
            return FALSE;
        }
        return true;
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