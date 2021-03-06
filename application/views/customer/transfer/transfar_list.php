<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 lobipanel-parent-sortable ui-sortable" data-lobipanel-child-inner-id="zvTmPK6RKK">
        <div class="panel panel-bd lobidrag lobipanel lobipanel-sortable" data-inner-id="zvTmPK6RKK" data-index="0">
            <div class="panel-heading ui-sortable-handle">
                <div class="panel-title" style="max-width: calc(100% - 180px);">
                    <h4><?php echo display('transfer_list');?></h4>
                </div>
            </div>
            <div class="panel-body">
                <div class="border_preview">
                    <div class="table-responsive">
                        <table class="datatable2 table table-striped table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th> Sender ID <?php //echo display('name');?></th>
                                    <th> Receiver ID <?php //echo display('name');?></th>
                                    <th><?php echo display('type');?></th>
                                    <th><?php echo display('amount');?></th>
                                    <th>Balance type</th>
                                    <th><?php echo display('date');?></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if($transfer!=NULL){ 
                                    $user_id = $this->session->userdata('user_id');
                                    foreach ($transfer as $key => $value) {  

                                ?>
                                <tr>
                                    <td><?php echo $value->sender_user_id; ?></td>
                                    <td><?php echo $value->receiver_user_id; ?></td>
                                    <td><?php echo ($value->receiver_user_id==$user_id?'<b class="text-success">'.display('receive').'</b>':'<b class="text-danger">'.display('send').'</b>');?></td>
                                    <td><?php echo $value->amount;?></td>
                                    <td><?php echo ucwords(str_replace("_", " ", $value->transfer_type));?></td>
                                    <td><?php echo $value->date;?></td>
                                </tr>
                                <?php } } ?>

                            </tbody>
                        </table>
                        <?php echo $links; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>