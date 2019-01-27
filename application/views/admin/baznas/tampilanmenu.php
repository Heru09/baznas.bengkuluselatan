<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<?php echo base_url()."ElaAdmin/"?>images/favicon.png">
    <title>Ela - Bootstrap Admin Dashboard Template</title>

    <link href="<?php echo base_url()."ElaAdmin/"?>css/lib/chartist/chartist.min.css" rel="stylesheet">
	<link href="<?php echo base_url()."ElaAdmin/"?>css/lib/owl.carousel.min.css" rel="stylesheet" />
    <link href="<?php echo base_url()."ElaAdmin/"?>css/lib/owl.theme.default.min.css" rel="stylesheet" />
    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url()."ElaAdmin/"?>css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<?php echo base_url()."ElaAdmin/"?>css/helper.css" rel="stylesheet">
    <link href="<?php echo base_url()."ElaAdmin/"?>css/style.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:** -->
    <!--[if lt IE 9]>
    <script src="https:**oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https:**oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header fix-sidebar">
    <!-- Preloader - style you can find in spinners.css -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
			<circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    <!-- Main wrapper  -->
    <div id="main-wrapper">
        <!-- header header  -->
        <div class="header">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <!-- Logo -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">                  
                        <b><img src="<?php echo base_url()."ElaAdmin/"?>images/garuda.png" alt="homepage" class="dark-logo" /></b>
                    </a>
                </div>
                <!-- End Logo -->
                <div class="navbar-collapse">
                    <!-- toggle and nav items -->
                    <ul class="navbar-nav mr-auto mt-md-0">
                        <!-- This is  -->
                        <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up text-muted  " href="javascript:void(0)"><i class="mdi mdi-menu"></i></a> </li>
                        <li class="nav-item m-l-10"> <a class="nav-link sidebartoggler hidden-sm-down text-muted  " href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
                        <!-- Messages -->
                        <li class="nav-item dropdown mega-dropdown"> <a class="nav-link dropdown-toggle text-muted  " href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-th-large"></i></a>
                            <div class="dropdown-menu animated zoomIn">
                                HAI INI ADALAH LAYANAN BAZNAS KABUPATEN BENGKULU SELATAN
                                <!-- <ul class="mega-dropdown-menu row">
                                    <li class="col-lg-3  m-b-30">
                                        <h4 class="m-b-20">CONTACT US</h4>
                                        <form>
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="exampleInputname1" placeholder="Enter Name"> </div>
                                            <div class="form-group">
                                                <input type="email" class="form-control" placeholder="Enter email"> </div>
                                            <div class="form-group">
                                                <textarea class="form-control" id="exampleTextarea" rows="3" placeholder="Message"></textarea>
                                            </div>
                                            <button type="submit" class="btn btn-info">Submit</button>
                                        </form>
                                    </li>
                                </ul> -->
                            </div>
                        </li>
                        <!-- End Messages -->
                    </ul>
                    <!-- User profile and search -->
                    <ul class="navbar-nav my-lg-0">

                        <!-- Search -->
                        <li class="nav-item hidden-sm-down search-box"> <a class="nav-link hidden-sm-down text-muted  " href="javascript:void(0)"><i class="ti-search"></i></a>
                            <form class="app-search">
                                <input type="text" class="form-control" placeholder="Search here"> <a class="srh-btn"><i class="ti-close"></i></a> </form>
                        </li>
                        <!-- Comment -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted text-muted  " href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-bell"></i>
								<div class="notify"> <span class="heartbit"></span> <span class="point"></span> </div>
							</a>
                            <div class="dropdown-menu dropdown-menu-right mailbox animated zoomIn">
                                <ul>
                                    <li>
                                        <div class="drop-title">Notifications</div>
                                    </li>
                                    <li>
                                        <div class="message-center">
                                            <!-- Message -->
                                            <a href="#">
                                                <div class="btn btn-danger btn-circle m-r-10"><i class="fa fa-link"></i></div>
                                                <div class="mail-contnet">
                                                    <h5>DATA MUSTAHIK</h5> <span class="mail-desc">TIDAK BISA DIHAPUS</span> <span class="time">9:30 AM</span>
                                                </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="#">
                                                <div class="btn btn-success btn-circle m-r-10"><i class="ti-calendar"></i></div>
                                                <div class="mail-contnet">
                                                    <h5>HUBUNGI BAZNAS JIKA</h5> <span class="mail-desc">INGIN HAPUS MUSTAHIK</span> <span class="time">9:10 AM</span>
                                                </div>
                                            </a>
                                             <!-- Message -->
                                            <a href="#">
                                                <div class="btn btn-success btn-circle m-r-10"><i class="ti-calendar"></i></div>
                                                <div class="mail-contnet">
                                                    <h5>GURU MENGAJI DAFTAR</h5> <span class="mail-desc">DI KANTOR BAZNAS B/S</span> <span class="time">9:10 AM</span>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <a class="nav-link text-center" href="javascript:void(0);"> <strong>Check all notifications</strong> <i class="fa fa-angle-right"></i> </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <!-- End Comment -->
                        <!-- Messages -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted  " href="#" id="2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-envelope"></i>
								<div class="notify"> <span class="heartbit"></span> <span class="point"></span> </div>
							</a>
                            <div class="dropdown-menu dropdown-menu-right mailbox animated zoomIn" aria-labelledby="2">
                                <ul>
                                    <li>
                                        <div class="drop-title">You have new messages</div>
                                    </li>
                                    <li>
                                        <div class="message-center">
                                            <!-- Message -->
                                            <a href="#">
                                            <div class="btn btn-success btn-circle m-r-10"><i class="ti-calendar"></i></div>
                                                <div class="mail-contnet">
                                                    <h5>ALAMAT KANTOR</h5> <span class="mail-desc">JL OPRT GHALIB</span> <span class="time">9:30 AM</span>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <a class="nav-link text-center" href="javascript:void(0);"> <strong>See all e-Mails</strong> <i class="fa fa-angle-right"></i> </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <!-- End Messages -->
                        <!-- Profile -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted  " href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="<?php echo base_url()."ElaAdmin/"?>images/chat-person-add.png" alt="user" class="profile-pic" /></a>
                            <div class="dropdown-menu dropdown-menu-right animated zoomIn">
                                <ul class="dropdown-user">
                                    <li><a href="<?php echo base_url()?>login/keluar"><i class="fa fa-power-off"></i> KELUAR</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- End header header -->
        <!-- Left Sidebar  -->
        <div class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="nav-devider"></li>
                        <li class="nav-label">Home</li>
                        <li> <a href="<?php echo base_url()?>admadminbaznas/" aria-expanded="false"><i class="fa fa-tachometer"></i><span class="hide-menu">Dashboard </span></span></a>
                           
                        </li>
                        <li class="nav-label">Data</li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-envelope"></i><span class="hide-menu">Laporan</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="<?php echo base_url()?>admadminbaznas/laporan">Mustahik</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </div>
        <!-- End Left Sidebar  -->
        <!-- Page wrapper  -->
        <div class="page-wrapper">
            <!-- Bread crumb -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">WELCOME <?php  echo $this->session->userdata('namauser');?></h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
            </div>
            <!-- End Bread crumb -->
            <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->
               <?php $this->load->view($content);?>
                <!-- End PAge Content -->
            </div>
            <!-- End Container fluid  -->
            <!-- footer -->
            <footer class="footer"> © 2018 SIM. SISTEM INFORMASI MUSTAHIK <a href="#">BAZNAS KABUPATEN BENGKULU SELATAN</a></footer>
            <!-- End footer -->
        </div>
        <!-- End Page wrapper  -->
    </div>
    <!-- End Wrapper -->
    <!-- All Jquery -->
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/jquery/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/bootstrap/js/popper.min.js"></script>
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="<?php echo base_url()."ElaAdmin/"?>js/jquery.slimscroll.js"></script>
    <!--Menu sidebar -->
    <script src="<?php echo base_url()."ElaAdmin/"?>js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>


    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/datamap/d3.min.js"></script>
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/datamap/topojson.js"></script>
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/datamap/datamaps.world.min.js"></script>
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/datamap/datamap-init.js"></script>

    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/weather/jquery.simpleWeather.min.js"></script>
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/weather/weather-init.js"></script>
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/owl-carousel/owl.carousel.min.js"></script>
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/owl-carousel/owl.carousel-init.js"></script>


    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/chartist/chartist.min.js"></script>
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/chartist/chartist-plugin-tooltip.min.js"></script>
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/chartist/chartist-init.js"></script>
    <!--Custom JavaScript -->
    <script src="<?php echo base_url()."ElaAdmin/"?>js/custom.min.js"></script>

    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/vector-map/jquery.vmap.js"></script>
    <!-- scripit init-->
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/vector-map/jquery.vmap.min.js"></script>
    <!-- scripit init-->
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/vector-map/jquery.vmap.sampledata.js"></script>
    <!-- scripit init-->
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/vector-map/country/jquery.vmap.world.js"></script>
    <!-- scripit init-->

    <!-- Form validation -->
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/form-validation/jquery.validate.min.js"></script>
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/form-validation/jquery.validate-init.js"></script>

    <!-- Data Table -->
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/datatables/datatables.min.js"></script>
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
    <script src="http://localhost/localhost/bengkuluselatan.baznas/ElaAdmin/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/datatables/cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/datatables/datatables-init.js"></script>
   

</body>

</html>