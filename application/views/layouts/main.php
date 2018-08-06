<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>NHFC INVENTORY</title>

    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url(); ?>/assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<?php echo base_url(); ?>/assets/css/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="<?php echo base_url(); ?>/assets/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<?php echo base_url(); ?>/assets/css/startmin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="<?php echo base_url(); ?>/assets/css/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<?php echo base_url(); ?>/assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link href="<?php echo base_url(); ?>/assets/css/jquery-ui.css" rel="stylesheet" type="text/css">
    
    
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/bootstrap-theme.min.css') ?>">

</head>
<body>
<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <a class="navbar-brand" href="<?php echo base_url(); ?>branch/dashboard">NHFC Inventory</a>
        </div>
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <!-- Top Navigation: Right Menu -->
        <ul class="nav navbar-right navbar-top-links">
            <li>
                <a href="<?php echo base_url(); ?>purchase/add_item"><i class="fa fa-list fa-fw"></i> PURCHASE</a>
            </li>
            <li>
                <a href="<?php echo base_url(); ?>item/index"><i class="fa fa-pencil-square"></i> ITEM</a>
            </li>
            <li>
                <a href="<?php echo base_url(); ?>branch/index"><i class="fa fa-institution"></i> BRANCH</a>
            </li>
            <li>
                <a href="<?php echo base_url(); ?>inventory/index_inventory"><i class="fa fa-sticky-note"></i> INVENTORY</a>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-sticky-note"></i> REPORTS <b class="caret"></b>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li>
                        <a href="<?php echo base_url(); ?>reports/index_transaction"><i class="fa fa-list fa-fw"></i>Transactions</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url(); ?>reports/index_technical"><i class="fa fa-gear fa-fw"></i>Technical</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url(); ?>reports/index_transmittal"><i class="fa fa-file fa-fw"></i>Transmittal</a>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i> <?php echo 'ADMIN' ?> <b class="caret"></b>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li>
                        <a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="<?php echo base_url();?>user/logout"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
                    </li>
                </ul>
            </li>
        </ul>
       
    </nav> 
    <!-- Page Content -->
    <div>
        <div class="container-fluid">
            <?php $this->load->view($main_content); ?> 
        </div>
    </div>

</div>


<!-- jQuery -->
<script src="<?php echo base_url(); ?>/assets/js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="<?php echo base_url(); ?>/assets/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="<?php echo base_url(); ?>/assets/js/metisMenu.min.js"></script>


<!-- Custom Theme JavaScript -->
<script src="<?php echo base_url(); ?>/assets/js/startmin.js"></script>

<script src="<?php echo base_url(); ?>/assets/js/jquery-ui.min.js"></script>

</body>
</html>