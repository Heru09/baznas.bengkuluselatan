<!-- Start Page Content -->
                <div class="row">
                    
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body p-b-0">
                                <h4 class="card-title">Data Mustahik Dan Data Usulan Calon Mustahik</h4>
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs customtab" role="tablist">
                                    <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#home2" role="tab"><span class="hidden-sm-up"><i class="ti-home"></i></span> <span class="hidden-xs-down">Home</span></a> </li>
                                    <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#profil" role="tab" id="getprofil"><span class="hidden-sm-up"><i class="ti-user"></i></span> <span class="hidden-xs-down">Profil</span></a> </li>
                                    <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#bantuan" role="tab" id="getbantuan"><span class="hidden-sm-up"><i class="ti-user"></i></span> <span class="hidden-xs-down">Bantuan</span></a> </li>
                                    <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#usulan" role="tab" id="getusulan"><span class="hidden-sm-up"><i class="ti-email"></i></span> <span class="hidden-xs-down">Usulan</span></a> </li>
                                </ul>
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home2" role="tabpanel">
                                        <div class="p-20">
                                            Silahkan Pilih Menu yang di Sediakan
                                        </div>
                                    </div>

                                    <div class="tab-pane  p-20" id="profil" role="tabpanel">
                                        <div class="table-responsive m-t-1">
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">Nama
                                                <input type="text" name="nama" id="nama" value="" class="form-control input-default " >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">Nama Panggilan
                                                <input type="text" name="nik" id="nik" value="" class="form-control input-rounded" >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">NIK
                                                <input type="text" name="kec" id="kec" value="" class="form-control input-focus" >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">Jenis Kelamin
                                                <input type="text" name="kec" id="kec" value="" class="form-control input-rounded" >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">Tempat Lahir
                                                <input type="text" name="kec" id="kec" value="" class="form-control input-rounded" >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">Tanggal Lahir
                                                <input type="text" name="kec" id="kec" value="" class="form-control input-rounded" >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">Agama
                                                <input type="text" name="kec" id="kec" value="" class="form-control input-rounded" >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">HP
                                                <input type="text" name="kec" id="kec" value="" class="form-control input-rounded" >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">Alamat
                                                <input type="text" name="kec" id="kec" value="" class="form-control input-rounded" >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">Terdaftar
                                                <input type="text" name="kec" id="kec" value="" class="form-control input-rounded" >
                                            </div>
                                            <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Hapus</button>
                                        </div>
                                    </div>


                                    <div class="tab-pane  p-20" id="bantuan" role="tabpanel">
                                    <div class="table-responsive m-t-1">
                                    <form class=""  method="POST" >
                                    <table id="table" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>NO</th>
                                                <th>BANTUAN</th>
                                                <th>SATUAN</th>
                                                <th>RP</th>
                                                <th>TANGGAL</th>
                                                <th>VIA</th>
                                                <th>NIK</th>
                                                <th>KET</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>NO</th>
                                                <th>BANTUAN</th>
                                                <th>SATUAN</th>
                                                <th>RP</th>
                                                <th>TANGGAL</th>
                                                <th>VIA</th>
                                                <th>NIK</th>
                                                <th>KET</th>
                                            </tr>
                                        </tfoot>
                                        <tbody id="table">
                                            
                                        </tbody> 
                                    </table>
                                    </form>
                                    </div>
                                    </div>
                                    <div class="tab-pane p-20" id="usulan" role="tabpanel">
                                    <div class="content">
                                        <div class="animated fadeIn">
                                            <div class="row">   
                                                <div class="col-lg-6">
                                                        <div class="card">
                                                            <div class="card-header">
                                                                <strong>Form Pilih Usulan</strong>
                                                            </div>
                                                            <div class="card-body card-block">
                                                                <div class="has-warning form-group">
                                                                    <label for="inputIsInvalid" class=" form-control-label"></label>
                                                                    <select name="select" id="select" class="form-control">
                                                                        <option value="0">Bidang.....</option>
                                                                        <option value="1">Ekonomi</option>
                                                                        <option value="2">Pendidikan</option>
                                                                        <option value="3">Kesehatan</option>
                                                                        <option value="4">Kemanusiaan</option>
                                                                        <option value="5">Dakwah-Advokasi</option>
                                                                    </select>
                                                                </div>
                                                                <div class="has-success form-group">
                                                                    <label for="inputIsInvalid" class=" form-control-label"></label>
                                                                    <select name="select" id="select" class="form-control">
                                                                        <option value="0">Program......</option>
                                                                        <option value="1">Zakat Community Development</option>
                                                                        <option value="2">Program Pemberdayaan Ekonomi</option>
                                                                    </select>
                                                                </div>
                                                                <div class="has-success form-group">
                                                                    <label for="inputIsInvalid" class=" form-control-label"></label>
                                                                    <select name="select" id="select" class="form-control">
                                                                        <option value="0">Jenis Bantuan....</option>
                                                                        <option value="1">Zakat ZCD 1</option>
                                                                        <option value="2">Zakat ZCD 2</option>
                                                                        <option value="3">Program Modal Usaha</option>
                                                                        <option value="4">Program Pelatihan Usaha</option>
                                                                        <option value="5">Koperasi Mustahik</option>
                                                                        <option value="6">Pemberdayaan Ekonomi</option>
                                                                    </select>
                                                                </div>
                                                                <div class="form-actions form-group">
                                                                    <button type="submit" class="btn btn-primary btn-sm">Submit</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                </div>
                                                <div class="col-lg-6">
                                                        <div class="card">
                                                            <div class="card-header">
                                                                <strong><em>Form Usulan Yang Dipilih</em></strong>
                                                            </div>
                                                            <div class="card-body card-block">
                                                                <div class="has-success form-group">
                                                                    <label for="inputSuccess2i" class=" form-control-label"></label>
                                                                    <input type="text" id="inputSuccess2i" class="form-control-success form-control">
                                                                </div>
                                                            </div>
                                                        </div>
                                                </div>
                                            </div>
                                        </div><!-- .animated -->
                                    </div><!-- .content -->
                                    
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                </div>
            <!-- End Page Content -->
<script src="<?php echo base_url()."ElaAdmin/"?>js/jquery-2.2.3.min.js"></script>

<script type="text/javascript">
    $(document).ready(function(){

        $('#getbantuan').on('click',function(){
            var table;
             table = $('#table').DataTable({ 
                 "processing": true, 
                 "serverSide": true, 
                 "order": [], 
                 "destroy": true,
                "ajax":{
                    "url": "<?php echo base_url('mbantuan/get_data_bantuan')?>",
                    "type": "POST",
                    "dataType": "json",
                    "data":function(data){
                        data.nik = $('#nik').val();
                    }
                },

                 "columnDefs": [
                 { 
                     "targets": [ 0, 1, 2, 3, 4, 5, 6, 7], 
                     "orderable": false, 
                 },
                 ],
             }); 
        });

        $('#getusulan').on('click',function(){
            console.log("Usulan");
        });

    });
</script>