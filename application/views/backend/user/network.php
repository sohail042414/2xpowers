<link href="<?php echo base_url() ?>assets/plugins/jq-og-charts/jquery.orgchart.css" rel="stylesheet" type="text/css"/>

<style>
div#left {
    font-size        : small;
    position         : fixed;
    left             : 0;
    top              : 0;
    width            : 300px;
}

div.text {
    padding          : 10px;
}

div#left a {
    color            : #0000a0;
}

div.orgChart a {
    color            : black;
    text-decoration  : none;
}

div.orgChart a:hover {
    color            : black;
    text-decoration  : underline;
}

img.star {
    width            : 16px;
    height           : 16px;
}

.node {
    background: #5b69bc;
    height: 160px !important;
    width: 160px !important;
    border: 1px solid #e1e6ef;
    font-family: sans-serif;
    font-size: smaller;
    color: #fff;
}
</style>
<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h2><?php echo (!empty($title)?$title:null) ?> | Total points: <?php echo $total_points; ?></h2>
                </div>
            </div>
            <div class="panel-body">
 
                <div class="table-responsive">

                <?php echo $network_tree_html; ?>
                
            <div id="main">
            
            </div>

                </div>
            </div> 
        </div>
    </div>
</div>
<script src="<?php echo base_url('assets/plugins/jq-og-charts/jquery.orgchart.min.js') ?>" type="text/javascript"></script>

<script type="text/javascript">

$("#organisation").orgChart({container: $("#main")});

</script>

