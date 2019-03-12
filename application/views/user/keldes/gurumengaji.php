 <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Guru Mengaji <?php  echo $this->session->userdata('namauser');?> Kec. <?php  echo $this->session->userdata('kec');?> Honorarium dari BAZNAS BS</h4>
                                <h6 class="card-subtitle">Export data to Copy, CSV, Excel, PDF & Print</h6>
                                <div class="table">
                                <form class=""  method="POST" >
                                    <table id="table" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>NO</th>
                                                <th>NAMA</th>
                                                <th>NIK/NO.DOMISILI	</th>
                                                <th>JK</th>
                                                <th>TEMPAT LAHIR</th>
                                                <th>TANGGAL LAHIR</th>
                                                <th>ACTION</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>NO</th>
                                                <th>NAMA</th>
                                                <th>NIK/NO.DOMISILI	</th>
                                                <th>JK</th>
                                                <th>TEMPAT LAHIR</th>
                                                <th>TANGGAL LAHIR</th>
                                                <th>ACTION</th>
                                            </tr>
                                        </tfoot>
                                        <tbody id="table">
                                            
                                        </tbody> 
                                    </table>
                                </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End PAge Content -->

            </div>
            <!-- End Container fluid  -->

            <script src="<?php echo base_url()."ElaAdmin/"?>js/jquery-2.2.3.min.js"></script>

<script type="text/javascript">
var table;
$(document).ready(function() {

    table = $('#table').DataTable({ 

        "processing": true, 
        "serverSide": true, 
        "order": [], 
        
        "ajax": {
            "url": "<?php echo 'Userkeldesgurumengaji/get_data_gurumengaji'?>",
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