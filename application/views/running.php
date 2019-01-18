
<!DOCTYPE html>
<html lang="en">

<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <style>
    .AutoScroll {      
    position: relative;
    max-height: 500px;
    overflow-y: scroll;
    }
    table{
    width:100%;
    table-layout: fixed;
    }

    ::-webkit-scrollbar {
        width: 1px;
    } 
    </style>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="<?php echo base_url()."ElaAdmin/"?>image/png" sizes="16x16" href="<?php echo base_url()."ElaAdmin/"?>images/favicon.png">
    <title>Data User dan Admin BAZNAS KAB.</title>
    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url()."ElaAdmin/"?>css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<?php echo base_url()."ElaAdmin/"?>css/helper.css" rel="stylesheet">
    <link href="<?php echo base_url()."ElaAdmin/"?>css/style.css" rel="stylesheet">
</head>

<body class="fix-header fix-sidebar">
   
   
        
            <!-- Bread crumb -->
            <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->
                <!-- Start Page Content -->
                <div class="row">
                    <div class="col-md-3">
                        <div class="card bg-primary p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="ti-bag f-s-40"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white">1108</h2>
                                    <p class="m-b-0">MUSTAHIK</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card bg-pink p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="ti-comment f-s-40"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white">27</h2>
                                    <p class="m-b-0">CALON MUSTAHIK</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card bg-success p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="ti-vector f-s-40"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white">150</h2>
                                    <p class="m-b-0">UPZ OPD</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card bg-danger p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="ti-location-pin f-s-40"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white">278</h2>
                                    <p class="m-b-0">UPZ SWASTA</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Start Page Content -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive m-t-40">    
                                    <div class="tbl-header">
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th width="80">NO</th>
                                            <th>KECAMATAN</th>
                                            <th>KEL/DESA</th>
                                            <th>NAMA</th>
                                            <th>BANTUAN</th>
                                            <th>Rp</th>
                                            <th>TANGGAL</th>
                                            <th>NIK</th>
                                        </tr>
                                    </thead>
                                    </table>
                                    </div>
                                    <div class="AutoScroll scroller" id="id" data-config='{"delay" : 1500 , "amount" : 50}'>
                                    <div class="tbl-content">
                                    <table class="table table-bordered">
                                        <tbody>
                                            <?php 
                                            $no = 1;
                                            foreach($mustahik->result() as $getdetbantuan){
                                            echo '
                                            <tr>
                                            <th scope="row" width="80">'.$no++.'</th>
                                            <td><font color="blue">'.$getdetbantuan->kec.'</font></td>
                                            <td><font color="blue">'.$getdetbantuan->keldes.'</font></td>
                                            <td><font color="blue">'.substr($getdetbantuan->nama,0,10).'</font></td>
                                            <td><font color="blue">'.$getdetbantuan->bantuan.'</font></td>
                                            <td><font color="blue">'.$getdetbantuan->rp.'</font></td>
                                            <td><font color="blue">'.$getdetbantuan->tgl.'</font></td>
                                            <td><font color="blue">'.$getdetbantuan->nik.'</font></td>
                                            </tr>  ';
                                            }
                                            ?>
                                    </tbody>
                                    </table>
                                    </div>
                                    </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End PAge Content -->


            </div>
            <!-- End Container fluid  -->
            
    <!-- All Jquery -->
    <!-- Bootstrap tether Core JavaScript -->
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/bootstrap/js/popper.min.js"></script>
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="<?php echo base_url()."ElaAdmin/"?>js/jquery.slimscroll.js"></script>
    <!--Menu sidebar -->
    <script src="<?php echo base_url()."ElaAdmin/"?>js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="<?php echo base_url()."ElaAdmin/"?>js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <!--Custom JavaScript -->
    <script src="<?php echo base_url()."ElaAdmin/"?>js/custom.min.js"></script>
    <script src="<?php echo base_url()."ElaAdmin/"?>js/scrolly/autoscroll.js"></script>
    <script type="text/javascript">
      $(".id-2").scroller();
    </script>
</body>
</html>
