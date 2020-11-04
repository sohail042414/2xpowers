<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h2><?php echo (!empty($title)?$title:null) ?></h2>
                </div>
            </div>
            <div class="panel-body">
                <?php echo form_open_multipart("customer/user/user/form/$user->uid",array('name'=> 'user_form')) ?>
                <?php echo form_hidden('uid', $user->uid) ?>
                <?php echo form_hidden('user_id', $user->user_id) ?>
                <?php $user_id = $this->db->select('user_id')->where('sponsor_id', 0)->get('user_registration')->row(); ?>
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-12">
                            <div class="form-group">
                                <label><?php echo display("username") ?> *</label>
                                <input type="text" value="<?php echo $user->username ?>" class="form-control" name="username" placeholder="<?php echo display("username") ?>">
                            </div>
                            <div class="form-group">
                                <label><?php echo display("firstname") ?> *</label>
                                <input type="text" value="<?php echo $user->f_name ?>" class="form-control" name="f_name" placeholder="<?php echo display("firstname") ?>">
                            </div>
                            <div class="form-group">
                                <label><?php echo display("lastname") ?> *</label>
                                <input type="text" value="<?php echo $user->l_name ?>" class="form-control" name="l_name" placeholder="<?php echo display("lastname") ?>">
                            </div>
                            <div class="form-group">
                                <label><?php echo display("email") ?> *</label>
                                <input type="text" value="<?php echo $user->email ?>" class="form-control" name="email" placeholder="<?php echo display("email") ?>">
                            </div>          
                            <div class="form-group">
                                <label><?php //echo display("country") ?>Country *</label>
                                <select name="country" id="country" class="form-control">
                                    <?php foreach($countries as $country){ ?>
                                    <option data-code="<?php echo $country->phonecode; ?>" value="<?php echo $country->id; ?>" ><?php echo $country->nicename; ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label><?php echo display("mobile") ?> *</label>
                                <div class="row">
                                    <div class=" form-group col-lg-3 col-md-3 col-sm-3" style="margin-right:0px; padding-right:1px;">
                                        <input readonly type="text" class="form-control" name="mobile_code" id="mobile_code" value="" placeholder="Code" >
                                    </div>
                                    <div class="form-group col-lg-9 col-md-9 col-sm-9" style="margin-left:0px; padding-left:1px;">
                                        <input type="text" value="<?php echo $user->phone ?>" id="mobile" class="form-control" name="mobile" placeholder="<?php echo display("mobile") ?>">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-lg-4 col-md-4 col-sm-12">

                            <div class="form-group">
                                <label><?php echo display("password") ?> *</label>
                                <input type="password" value="" class="form-control" name="password" placeholder="<?php echo display("password") ?>">
                            </div>
                            <div class="form-group">
                                <label><?php echo display("conf_password") ?> *</label>
                                <input type="password" value="" class="form-control" name="conf_password" placeholder="<?php echo display("conf_password") ?>">
                            </div>

                            <div class="form-group">
                                <label><?php echo display("parent") ?> *</label>
                                <?php /* ?>
                                <input type="text" value="<?php echo $user->sponsor_id!=''?$user->sponsor_id:$user_id->user_id ?>" class="form-control" <?php echo $user->uid?'readonly':'' ?> name="sponsor_id" placeholder="<?php echo display("sponsor_name") ?>">
                                <?php */ ?>
                                <select name="parent" class="form-control">
                                    <?php foreach($parents as $id => $name){ ?>
                                    <option value="<?php echo $id; ?>" ><?php echo $name; ?></option>
                                    <?php } ?>
                                </select>
                            </div>

                            <div class="form-group">
                                <label><?php echo display("position") ?> *</label>
                                <select name="position" class="form-control">
                                    <?php foreach($positions as $id => $name){ ?>
                                    <option value="<?php echo $id; ?>" ><?php echo $name; ?></option>
                                    <?php } ?>
                                </select>
                            </div>

                            <div class="form-group">
                                <label><?php echo display("package_id") ?> *</label>
                                <select name="package_id" class="form-control">
                                    <?php foreach($packages as $id => $name){ ?>
                                    <option value="<?php echo $id; ?>" ><?php echo $name; ?></option>
                                    <?php } ?>
                                </select>
                            </div>

                            <div class="form-group">
                                <label><?php echo display("sponsor_id") ?> *</label>
                                <?php /* ?>
                                <input type="text" value="<?php echo $user->sponsor_id!=''?$user->sponsor_id:$user_id->user_id ?>" class="form-control" <?php echo $user->uid?'readonly':'' ?> name="sponsor_id" placeholder="<?php echo display("sponsor_name") ?>">
                                <?php */ ?>
                                <select name="sponsor_id" id="sponsor_id" class="form-control">
                                    <?php foreach($sponsers as $id => $name){ ?>
                                    <option value="<?php echo $id; ?>" ><?php echo $name; ?></option>
                                    <?php } ?>
                                </select>
                            </div>     

                            <?php /* ?>
                            <div class="form-group col-lg-12">
                                <label for="status" class="col-sm-3 col-form-label">Status *</label>
                                <div class="col-sm-9">
                                    <label class="radio-inline">
                                        <?php echo form_radio('status', '1', (($user->status==1 || $user->status==null)?true:false)); ?><?php echo display('active') ?>
                                    </label>
                                    <label class="radio-inline">
                                        <?php echo form_radio('status', '0', (($user->status=="0")?true:false) ); ?><?php echo display('inactive') ?>
                                    </label> 
                                </div>
                            </div>
                            <?php */ ?>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-12">
                            <h2>Use Balances From </h2>
                            <div class="form-group">
                                <label><?php //echo display("") ?>Company Balance (min 50%) *</label>                                
                                <div class="row">
                                    <div class="form-group col-lg-6 col-md-6 col-sm-6" style="margin-right:0px; padding-right:1px;">
                                        <input type="hidden" name="company_balance_available" id="company_balance_available" value=" <?php echo $vallet['company_balance']; ?>" >
                                        <input readonly type="text" class="form-control" name="company_balance_display" id="company_balance_display" value="" placeholder="Available : <?php echo "$".$vallet['company_balance']; ?>" >
                                    </div>
                                    <div class="form-group col-lg-6 col-md-6 col-sm-6" style="margin-left:0px; padding-left:1px;">
                                        <input type="text" value="<?php //echo $user->l_name ?>" class="form-control" name="company_balance_used" placeholder="80">
                                    </div>
                                </div>
                            </div>  
                            
                            <div class="form-group">
                                <label><?php //echo display("") ?>Promotion Balance (max 20%) </label>                                
                                <div class="row">
                                    <div class="form-group col-lg-6 col-md-6 col-sm-6" style="margin-right:0px; padding-right:1px;">
                                        <input type="hidden" name="promotion_balance_available" id="promotion_balance_available" value=" <?php echo $vallet['promotion_balance']; ?>" >
                                        <input readonly type="text" class="form-control" name="promotion_balance_display" id="promotion_balance_display" value="" placeholder="Available : <?php echo "$".$vallet['promotion_balance']; ?>" >
                                    </div>
                                    <div class="form-group col-lg-6 col-md-6 col-sm-6" style="margin-left:0px; padding-left:1px;">
                                        <input type="text" value="<?php //echo $user->l_name ?>" class="form-control" name="promotion_balance_used" placeholder="0">
                                    </div>
                                </div>
                            </div>  

                            <div class="form-group">
                                <label><?php //echo display("") ?>Commission </label>                                
                                <div class="row">
                                    <div class="form-group col-lg-6 col-md-6 col-sm-6" style="margin-right:0px; padding-right:1px;">
                                        <input type="hidden" name="commission_available" id="commission_available" value=" <?php echo $vallet['commission']; ?>" >
                                        <input readonly type="text" class="form-control" name="commission_display" id="commission_display" value="" placeholder="Available : <?php echo "$".$vallet['commission']; ?>" >
                                    </div>
                                    <div class="form-group col-lg-6 col-md-6 col-sm-6" style="margin-left:0px; padding-left:1px;">
                                        <input type="text" value="<?php //echo $user->l_name ?>" class="form-control" name="commission_used" placeholder="0">
                                    </div>
                                </div>
                            </div>  

                            <div class="form-group">
                                <label><?php //echo display("") ?>ROI </label>                                
                                <div class="row">
                                    <div class="form-group col-lg-6 col-md-6 col-sm-6" style="margin-right:0px; padding-right:1px;">
                                        <input type="hidden" name="roi_available" id="roi_available" value=" <?php echo $vallet['my_earns']; ?>" >
                                        <input readonly type="text" class="form-control" name="roi_display" id="roi_display" value="" placeholder="Available : <?php echo "$".$vallet['my_earns']; ?>" >
                                    </div>
                                    <div class="form-group col-lg-6 col-md-6 col-sm-6" style="margin-left:0px; padding-left:1px;">
                                        <input type="text" value="" class="form-control" name="roi_used" placeholder="0">
                                    </div>
                                </div>
                            </div>  
                            

                            <div class="form-group">
                                <label><?php //echo display("") ?>Binary Bonus </label>                                
                                <div class="row">
                                    <div class="form-group col-lg-6 col-md-6 col-sm-6" style="margin-right:0px; padding-right:1px;">
                                        <input type="hidden" name="binary_available" id="binary_available" value=" <?php echo $vallet['binary_bonus']; ?>" >
                                        <input readonly type="text" class="form-control" name="binary_display" id="binary_display" value="" placeholder="Available : <?php echo "$".$vallet['binary_bonus']; ?>" >
                                    </div>
                                    <div class="form-group col-lg-6 col-md-6 col-sm-6" style="margin-left:0px; padding-left:1px;">
                                        <input type="text" value="" class="form-control" name="binary_used" placeholder="0">
                                    </div>
                                </div>
                            </div>  
                            
                        </div>
                    </div> 
                    <div>
                        <a href="<?php echo base_url('admin'); ?>" class="btn btn-primary"><?php echo display("cancel") ?></a>
                        <button type="submit" class="btn btn-success"><?php echo $user->uid?display("update"):display("register") ?></button>
                    </div>

                <?php echo form_close() ?>

            </div>
        </div>
    </div>
</div>
<script>
$(document).ready(function(){
    $('#country').on('change',function(){
        var c_code = $('option:selected', this).attr('data-code');
        $('#mobile_code').val(c_code);
    });

    $('#sponsor_id').on('change',function(){
        var sponsor_id = $('option:selected', this).val();

        var csrf_test_name = document.forms['user_form'].elements['csrf_test_name'].value;

        $.ajax({
            type : 'POST',
            url : '<?php echo base_url('customer/ajaxload/sponsorbalance'); ?>',
            data: {'user_id': sponsor_id,'csrf_test_name':csrf_test_name },
            dataType : 'json',
            success : function(response){
                $('#company_balance_display').attr('placeholder','Available : $'+response.company_balance);
                $('#company_balance_available').val(response.company_balance);

                $('#promotion_balance_display').attr('placeholder','Available : $'+response.promotion_balance);
                $('#promotion_balance_available').val(response.promotion_balance);

                $('#commission_display').attr('placeholder','Available : $'+response.commission);
                $('#commission_available').val(response.commission);

                $('#roi_display').attr('placeholder','Available : $'+response.my_earns);
                $('#roi_available').val(response.my_earns);

                $('#binary_display').attr('placeholder','Available : $'+response.binary_bonus);
                $('#binary_available').val(response.binary_bonus);
                
            }
        }); 

        /*
        var csrf_test_name = document.forms['transfer_form'].elements['csrf_test_name'].value;

        $.ajax({

            'url': '<?php echo base_url('customer/ajaxload/checke_reciver_id'); ?>',
            'type': 'POST', //the way you want to send data to your URL
            'data': {'receiver_id': receiver_id,'csrf_test_name':csrf_test_name },
            success: function(data) { 
                
                if(data!=0){

                    $('#receiver_id').css("border","1px green solid");
                    $('.suc').css("border","1px green solid");
                    $('button[type=submit]').prop('disabled', false);

                } else {

                    $('button[type=submit]').prop('disabled', true);
                    $('#receiver_id').css("border","1px red solid");
                    $('.suc').css("border","1px red solid");
                
                }  
            },
        });
        */

    });
})
</script>

 