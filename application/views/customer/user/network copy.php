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
</style>
<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h2><?php echo (!empty($title)?$title:null) ?></h2>
                </div>
            </div>
            <div class="panel-body">
 
                <div class="table-responsive">

                <ul id="organisation" style="display: none;">
                    <li>
                        <em>Batman</em>
                        <ul>
                            <li>Ra's Al Ghul</li>
                            <li>Carmine Falconi</li>
                        </ul>
                        
                    </li>
                    <li>The Dark Knight
                        <ul>
                            <li>Joker</li>
                            <li>Harvey Dent</li>
                        </ul>
                    </li>
                </ul>
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