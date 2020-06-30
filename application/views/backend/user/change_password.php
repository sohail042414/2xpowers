<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h2><?php echo $title; ?></h2>
                </div>
            </div>
            <div class="panel-body">
                <?php echo form_open_multipart("backend/user/user/change_password/$user->uid") ?>
                <?php echo form_hidden('uid', $user->uid) ?>
                    <div class="row">
                        <div class="form-group col-lg-6">
                            <label><?php echo display("password") ?> *</label>
                            <input type="password" value="" class="form-control" name="password" placeholder="<?php echo display("password") ?>">
                        </div>
                        <div class="form-group col-lg-6">
                            <label><?php echo display("conf_password") ?> *</label>
                            <input type="password" value="" class="form-control" name="conf_password" placeholder="<?php echo display("conf_password") ?>">
                        </div>
                    </div> 
                    <div>
                        <a href="<?php echo base_url('admin'); ?>" class="btn btn-primary"><?php echo display("cancel") ?></a>
                        <input type="submit" class="btn btn-success" name="submit" value="Update">
                    </div>

                <?php echo form_close() ?>

            </div>
        </div>
    </div>
</div>

 