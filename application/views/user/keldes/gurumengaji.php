 <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Data Guru Mengaji <?php  echo $this->session->userdata('namauser');?> Kec. <?php  echo $this->session->userdata('kec');?></h4>
                                <h6 class="card-subtitle">Export data to Copy, CSV, Excel, PDF & Print</h6>
                                <div class="table-responsive m-t-40">
                                    <table id="example23" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
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
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Betty Karlina</td>
                                                <td>1701050909993</td>
                                                <td>P</td>
                                                <td>Suka Negeri</td>
                                                <td>09/09/1999</td>
                                                <td><button type="button" class="btn btn-success btn-sm m-b-10 m-l-5">Detail</button></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End PAge Content -->

            </div>
            <!-- End Container fluid  -->