                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Data Export</h4>
                                <h6 class="card-subtitle">Export data to Copy, CSV, Excel, PDF & Print</h6>
                                <div class="table-responsive m-t-40">
                                    <table id="example23" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>NO</th>
                                                <th>KEL/DESA</th>
                                                <th>ALAMAT</th>
                                                <th>NAMA</th>
                                                <th>JK</th>
                                                <th>TEMPAT LAHIR</th>
                                                <th>TANGGAL LAHIR</th>
                                                <th>PEKERJAAN</th>
                                                <th>USULAN</th>
                                                <th>SKTM</th>
                                                <th>KK/NO.DOMISIL</th>
                                                <th>NIK/NO.DOMISIL</th>
                                                <th>NO PENGANTAR DESA</th>
                                                <th>KEC</th>
                                               
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>     
                                                <th>NO</th>
                                                <th>KEL/DESA</th>
                                                <th>ALAMAT</th>
                                                <th>NAMA</th>
                                                <th>JK</th>
                                                <th>TEMPAT LAHIR</th>
                                                <th>TANGGAL LAHIR</th>
                                                <th>PEKERJAAN</th>
                                                <th>USULAN</th>
                                                <th>SKTM</th>
                                                <th>KK</th>
                                                <th>NIK</th>
                                                <th>NO PENGANTAR DESA</th>
                                                <th>KEC</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <?php 
                                             $no = 1;
                                            foreach ($datamustahik as $data) {
                                           echo"
                                            <tr>
                                                <td>".$no++."</td>
                                                <td>".$data['keldes']."</td>
                                                <td>".$data['alamatlengkap']."</td>
                                                <td>".$data['nama']."</td>
                                                <td>".$data['jk']."</td>
                                                <td>".$data['tempatlahir']."</td>
                                                <td>".$data['tanggallahir']."</td>
                                                <td>".$data['pekerjaan']."</td>
                                                <td>".$data['usulan']."</td>
                                                <td>".$data['sktm']."</td>
                                                <td>'".$data['kk']."</td>
                                                <td>'".$data['nik']."</td>
                                                <td>".$data['nopengantar']."</td>
                                                <td>".$data['kec']."</td>
                                               
                                            </tr>
                                            ";
                                                 }
                                              ?>
                                        </tbody>
                                    </table>

                                </div>
                            </div>
                        </div></div>
<!--                             <script src="<?php //echo base_url()."ElaAdmin/"?>js/jquery-2.2.3.min.js"></script> -->
<!--     <script type="text/javascript">
    var table;
    $(document).ready(function() {

        //datatables
        table = $('#table').DataTable({ 

            "processing": true, 
            "serverSide": true, 
            "order": [], 
            
            "ajax": {
                "url": "<?php //echo 'http://localhost/bengkuluselatan.baznas/admin/get_data_mustahik'?>",
                "type": "POST"
            },

            
            "columnDefs": [
            { 
                "targets": [ 0 ], 
                "orderable": false, 
            },
            ],

        });

    });

</script> -->



