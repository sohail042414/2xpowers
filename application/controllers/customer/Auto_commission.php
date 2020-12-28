<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auto_commission extends CI_Controller 
{
    public function __construct()
    {
        parent::__construct();
 
        $this->load->model(array(
            'customer/auth_model', 
            'customer/package_model', 
            'customer/transections_model', 
            'customer/investment_model', 
            'common_model', 
        ));

    }

    public function payout(){

        $log = '';

        $day = date('N');

        $investment = $this->db->select("DISTINCT(user_id),order_id,sponsor_id,package_id,amount,invest_date,day,balance_type")
        ->from('investment')
        ->where('balance_type','company_balance')
        ->order_by('order_id','DESC')
        ->get()
        ->result();            
        //if it is not saturday or sunday.

        if(($day < 6) && ($investment!=NULL)){

            foreach ($investment as  $value) {
               
                $user_info = $this->db->select('*')->from('user_registration')->where('user_id',$value->user_id)->get()->row();
                
                if((int) $user_info->roi_status == 1){
                
                    //current date.
                    $date_1 = date_create(date('Y-m-d'));
                    //$date_1 = date_create('2020-05-27');

                    $date_2 = date_create($value->invest_date);
                            
                    $diff = date_diff($date_2, $date_1);

                    //check if package has period set.
                    $package_periodp = $this->db->select('period')->from('package')->where('package_id',$value->package_id)->get()->row();                
                    if ($package_periodp) {
                        $package_period = $package_periodp->period;
                    }else{
                        $package_period = 0;                    
                    }

                    //if package period has not expired and at least 5 days passed since user subscribed for package.

                    if($diff->days >4  && $diff->days<=$package_period){             

                        //$rio = $this->db->select('package_id,weekly_roi')->from('package')->where('package_id',$value->package_id)->get()->row();
                        $rio = $this->db->select('package_id,daily_roi')->from('package')->where('package_id',$value->package_id)->get()->row();


                        //$amount = ($value->amount/100)*$rio->weekly_roi;
                        //$amount = $rio->weekly_roi;
                        $amount = $rio->daily_roi;

                        $paydata = array(
                            'user_id'       => $value->user_id,
                            'Purchaser_id'  => $value->user_id,
                            'earning_type'  => 'type2',
                            'package_id'    => $value->package_id,
                            'order_id'      => $value->order_id,
                            'amount'        => $amount,
                            //'date'          => date('Y-m-d'),
                            'date'          =>$date_1->format('Y-m-d'), 
                        );

                        //check if already not inserted for this user. 
                        $check = $this->db->select('*')
                        ->from('earnings')
                        ->where('package_id',$value->package_id)
                        ->where('order_id',$value->order_id)
                        ->where('user_id',$value->user_id)
                        ->where('earning_type','type2')
                        //->where('date',date('Y-m-d'))
                        ->where('date',$date_1->format('Y-m-d'))                    
                        ->get()->num_rows();

                        if(empty($check)){

                            $log .="<br> Adding ROI for user ".$paydata['user_id']." on Package ".$paydata['package_id']." for date ".$date_1->format('Y-m-d');

                            $this->db->insert('earnings',$paydata);

                            //get total balance
                            $balance = $this->common_model->get_all_transection_by_user($user_info->user_id);
                            #----------------------------
                            # sms send to commission received
                            #----------------------------
                            $this->load->library('sms_lib');

                            $template = array(
                                'name'      => $user_info->f_name.' '.$user_info->l_name,
                                'new_balance'=> $balance['balance'],
                                'date'      => date('d F Y')
                            );

                            $send_sms = $this->sms_lib->send(array(

                                'to'              => $user_info->phone, 
                                'template'        => 'You received your payout. Your new balance is $%new_balance%', 
                                'template_config' => $template,

                            ));
                            #----------------------------------
                            #   sms insert to received commission
                            #---------------------------------
                            if($send_sms){

                                $message_data = array(
                                    'sender_id' =>1,
                                    'receiver_id' => $user_info->user_id,
                                    'subject' => 'Payout',
                                    'message' => 'You received your payout. Your new balance is $'.$balance['balance'],
                                    //'datetime' => date('Y-m-d h:i:s'),
                                    'datetime' => $date_1->format('Y-m-d h:i:s'),
                                );

                                $this->db->insert('message',$message_data);
                            }
                            #------------------------------------- 

                            $set = $this->common_model->email_sms('email');
                            $appSetting = $this->common_model->get_setting();

                            #-----------------------------------------------------
                            $send_email = FALSE;

                            #----------------------------
                            #      email verify
                            #----------------------------
                            // $this->load->model('email_sender');
                            // $post = array(
                            //     'from'              => $appSetting->email,
                            //     'fromName'          => $appSetting->title,
                            //     'subject'           => 'Payout',
                            //     'to'                => $user_info->email,
                            //     'message'           => 'You received your payout. Your new balance is $'.$balance['balance'],
                            // );
                            // $send_email = $this->email_sender->send($post);

                            #----------------------------
                            #      email verify smtp
                            #----------------------------
                            $post = array(
                                'title'             => $appSetting->title,
                                'subject'           => 'Payout',
                                'to'                => $user_info->email,
                                'message'           => 'You received your payout. Your new balance is $'.$balance['balance'],
                            );                      
                            //$send_email = $this->common_model->send_email($post);
                            #-------------------------------

                            #----------------------------
                            #      email verify
                            #----------------------------
                            // $this->load->library('email_lib');
                            // $email_template = array( 
                            //     'balance'=> $balance['balance']
                            // );
                            
                            // $send_email = $this->email_lib->send(array(
                            //      'to'       => $this->session->userdata('email'), 
                            //      'subject'  =>  'Withdraw Verification!',
                            //      'template' => 'You received your payout. Your new balance is $%balance%',
                            //      'template_config' => $email_template
                            // ));

                            if($send_email){
                                    $n = array(
                                    'user_id'                => $user_info->user_id,
                                    'subject'                => 'Payout',
                                    'notification_type'      => 'Payout',
                                    'details'                => 'You received your payout. Your new balance is $'.$balance['balance'],
                                    'date'                   => date('Y-m-d h:i:s'),
                                    'status'                 => '0'
                                );
                                $this->db->insert('notifications',$n);    
                            }

                        }else{
                            $log.="<br> ROI already exists for user ".$paydata['user_id']." on Package ".$paydata['package_id']." for date ".$date_1->format('Y-m-d');
                        }
                    }
                
                }else{
                    $log .="<br> ROI disabled for user  ".$user_info->username.", Not processing this user.";
                }

            }
        }

        $cron_data = array(
            'name' => 'payout',
            'log' => $log
        );

        $this->db->insert('cron_jobs',$cron_data);

        echo $log; exit;
    }



    public function my_payout()
    {   
        $user_id = $this->session->userdata('user_id');

        $users = $this->db->select('*')->from('user_registration')->get()->result();
        
        foreach ($users as  $val) {
           
        $investment = $this->db->select("*")
        ->from('investment')
        ->where('user_id',$val->user_id)
        ->order_by('order_id','DESC')
        ->get()
        ->result();


            if($investment!=NULL){

                foreach ($investment as  $value) {

                    $diff = abs(strtotime(date('Y-m-d')) - strtotime($value->invest_date));
                    if($diff>0){

                        $years  = floor($diff / (365*60*60*24));
                        $months = floor(($diff - $years * 365*60*60*24) / (30*60*60*24));
                        $days   = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24))%7;
                    
                    } else {

                        $days = 1;

                    }
                    
                    if($days==0){

                        $rio = $this->db->select('package_id,weekly_roi')->from('package')->where('package_id',$value->package_id)->get()->row();
                        
                        $amount = ($value->amount/100)*$rio->weekly_roi;

                        $paydata = array(

                            'user_id'       => $val->user_id,
                            'earning_type'  => 'type2',
                            'package_id'    => $value->package_id,
                            'amount'        => $amount,
                            'date'          => date('Y-m-d'),

                        );


                        $check = $this->db->select('*')
                        ->from('earnings')
                        ->where('package_id',$value->package_id)
                        ->where('user_id',$val->user_id)
                        ->where('earning_type','type2')
                        ->where('date',date('Y-m-d'))
                        ->get()->num_rows();

                        if(empty($check)){

                            $this->db->insert('earnings',$paydata);

                        }
                    }
                }
            }
        }
    }
}