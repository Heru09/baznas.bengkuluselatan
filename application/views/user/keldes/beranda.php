<div class="row">
                    <div class="col-md-3">
                        <div class="card bg-primary p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="ti-bag f-s-40"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white">0</h2>
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
                                    <h2 class="color-white">0</h2>
                                    <p class="m-b-0">UPZ OPD</p>
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
                                    <h2 class="color-white">0</h2>
                                    <p class="m-b-0">UPZ SWASTA</p>
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
                                    <h2 class="color-white">0</h2>
                                    <p class="m-b-0">MEMAKMURKAN MASJID</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
 <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <p>Persyaratan Calon Mustahik</p>
                                <p class="text-danger">Update 01 Juli 2018<a href=""> Download</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End PAge Content -->
            </div>
            <!-- End Container fluid  -->

                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Daftar Calon Mustahik <?php  echo $this->session->userdata('namauser');?> Kec. <?php  echo $this->session->userdata('kec');?></h4>
                                <div class="table">
                                    <form class=""  method="POST" >
                                    <table id="table" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>NO</th>
                                                <th>NAMA</th>
                                                <th>NIK/NO.DOMISILI</th>
                                                <th>JK</th>
                                                <th>TEMPAT LAHIR</th>
                                                <th>TANGGAL LAHIR</th>
                                                <th>TERDAFTAR</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>NO</th>
                                                <th>NAMA</th>
                                                <th>NIK/NO.DOMISILI</th>
                                                <th>JK</th>
                                                <th>TEMPAT LAHIR</th>
                                                <th>TANGGAL LAHIR</th>
                                                <th>TERDAFTAR</th>
                                            </tr>
                                        </tfoot>
                                        <tbody id="table">
                                            
                                        </tbody> 
                                    </table>
                                    </form>
                                </div>
                            </div>
                        </div></div>

<script src="<?php echo base_url()."ElaAdmin/"?>js/jquery-2.2.3.min.js"></script>

    <script type="text/javascript">
    var table;
    $(document).ready(function() {

        table = $('#table').DataTable({ 

            "processing": true, 
            "serverSide": true, 
            "order": [], 
            
            "ajax": {
                "url": "<?php echo 'Userkeldesberanda/get_data_calonmustahik'?>",
                "type": "POST"
            },

            
            "columnDefs": [
            { 
                "targets": [ 0, 1, 2, 3, 4, 5, 6], 
                "orderable": false, 
            },
            ],

        }); 
    });
</script>

    