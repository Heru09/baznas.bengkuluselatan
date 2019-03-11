<!-- Start Page Content -->
                <div class="row">
                    
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body p-b-0">
                                <h4 class="card-title"><h6 class="m-0 font-weight-bold text-primary"><?php  echo $_GET['nama'];?> <?php  echo $_GET['nik'];?></h6></h4>
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs customtab" role="tablist">
                                    <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#home2" role="tab"><span class="hidden-sm-up"><i class="ti-home"></i></span> <span class="hidden-xs-down">Home</span></a> </li>
                                    <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#profil" role="tab" id="getprofil"><span class="hidden-sm-up"><i class="ti-user"></i></span> <span class="hidden-xs-down">Profil</span></a> </li>
                                    <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#bantuan" role="tab" id="getbantuan"><span class="hidden-sm-up"><i class="ti-user"></i></span> <span class="hidden-xs-down">Bantuan</span></a> </li>
                                    <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#usulan" role="tab" id="getusulan"><span class="hidden-sm-up"><i class="ti-email"></i></span> <span class="hidden-xs-down">Usulan</span></a> </li>
                                    <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#lamaran" role="tab" id="getlamaran"><span class="hidden-sm-up"><i class="ti-email"></i></span> <span class="hidden-xs-down">Lamaran</span></a> </li>
                                </ul>
                                <!-- Tab panes -->
                                <div class="tab-content">


                                    <!-- .Tab Pane Menu Utama -->  
                                    <div class="tab-pane active" id="home2" role="tabpanel">
                                        <div class="p-20">
                                        <input type="hidden" id="getnik" name="getnik" value="<?php  echo $_GET['nik'];?>">
                                        <input type="hidden" id="getiduser" name="getiduser" value="<?php  echo $_GET['iduser'];?>">
                                        <input type="hidden" id="getnama" name="getnama" value="<?php  echo $_GET['nama'];?>">
                                        
                                            Silahkan Pilih Menu yang di Sediakan
                                        </div>
                                    </div>
                                    <!-- .End Tab Pane Menu Utama -->


                                    <!-- .Tab Pane Profil -->    
                                    <div class="tab-pane  p-20" id="profil" role="tabpanel">                             
                                        <!-- .table responsive -->
                                        <div class="table-responsive m-t-1">
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">KK
                                                <input type="text" name="kk" id="kk" class="form-control input-default " >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">Nama Asli
                                                <input type="text" name="namaasli" id="namaasli" class="form-control input-rounded" >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">Nama Panggilan
                                                <input type="text" name="namapanggilan" id="namapanggilan" class="form-control input-rounded" >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">NIK
                                                <input type="text" name="nik" id="nik" class="form-control input-focus" >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">Jenis Kelamin
                                                <input type="text" name="jk" id="jk" class="form-control input-rounded" >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">Tempat Lahir
                                                <input type="text" name="tempatlahir" id="tempatlahir" class="form-control input-rounded" >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">Tanggal Lahir
                                                <input type="text" name="tanggallahir" id="tanggallahir" class="form-control input-rounded" >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">Agama
                                                <input type="text" name="agama" id="agama" class="form-control input-rounded" >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">HP
                                                <input type="text" name="hp" id="hp" class="form-control input-rounded" >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">Alamat
                                                <input type="text" name="alamatlengkap" id="alamatlengkap" class="form-control input-rounded" >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">Terdaftar
                                                <input type="text" name="terdaftar" id="terdaftar" class="form-control input-rounded" >
                                            </div>
                                            <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Hapus</button>
                                        </div><!-- .End table responsive -->
                                    </div>
                                    <!-- .End Tab Pane Profil --> 


                                    <!-- .Tab Pane Bantuan --> 
                                    <div class="tab-pane  p-20" id="bantuan" role="tabpanel">
                                        <!-- .table responsive -->
                                        <div class="table">
                                        <form class=""  method="POST" >
                                        <table id="tablemustahik" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
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
                                             <!-- <tbody id="tablemustahik">
                                                
                                             </tbody>  -->
                                            </table>
                                            </form>
                                        </div><!-- .End table responsive -->
                                    </div>
                                    <!-- .End Tab Pane Bantuan --> 


                                    <!-- .Tab Pane Usulan --> 
                                    <div class="tab-pane p-20" id="usulan" role="tabpanel">
                                        <!-- .table responsive -->
                                        <div class="table">
                                        <div class="content">
                                            <div class="animated fadeIn">
                                                <div class="row">   
                                                    <div class="col-lg-6">
                                                            <div class="card">
                                                                <div class="card-header">
                                                                    <strong>Form Pilih Usulan</strong> <a href="" >.Download Petunjuk</a>
                                                                </div>
                                                                <div class="card-body card-block">

                                                                    <form>
                                                                    <div class="has-warning form-group">
                                                                        <label for="inputIsInvalid" class=" form-control-label"></label>
                                                                        <select id="bidang" name="bidang" class="form-control">
                                                                            <option value="">Pilih Bidang</option>
                                                                        </select>
                                                                    </div>
                                                                    </form>
                                                                    

                                                                    <div class="has-success form-group">
                                                                        <label for="inputIsInvalid" class=" form-control-label"></label>
                                                                        <select name="program" id="program" class="form-control">
                                                                            <option value="">Pilih Program</option>
                                                                        </select>
                                                                    </div>

                                                                    <div class="has-success form-group">
                                                                        <label for="inputIsInvalid" class=" form-control-label"></label>
                                                                        <select name="jenisbantuan" id="jenisbantuan" class="form-control">
                                                                            <option value="">Pilih Jenis Bantuan</option>
                                                                        </select>
                                                                    </div>

                                                                    <div class="has-success form-group">
                                                                        <label for="inputIsInvalid" class=" form-control-label"></label>
                                                                        <select name="jenisbarang" id="jenisbarang" class="form-control">
                                                                            <option value="">Pilih Jenis Barang</option>
                                                                        </select>
                                                                    </div>

                                                                    <div class="has-success form-group">
                                                                        <label for="inputIsInvalid" class=" form-control-label"></label>
                                                                        <select name="namabarang" id="namabarang" class="form-control">
                                                                            <option value="">Pilih Nama Barang</option>
                                                                        </select>
                                                                    </div>

                                                                    <div class="form-actions form-group">
                                                                    <button type="button" class="btn btn-primary"><i class="fa fa-star"></i>&nbsp; Pilih</button>
                                                                    <button type="button" class="btn btn-secondary"><i class="fa fa-lightbulb-o"></i>&nbsp; Ulang (Klik Pilih Bidang)</button>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                    </div>
                                                </div>
                                            </div><!-- .animated -->
                                        </div><!-- .content -->
                                        </div><!-- .End table responsive -->
                                    </div>
                                    <!-- .End Tab Pane Usulan --> 

                                    <!-- .Tab Pane Lamaran --> 
                                    <div class="tab-pane p-20" id="lamaran" role="tabpanel">
                                        Lamaran Anda
                                    </div>
                                    <!-- .End Tab Pane Lamaran -->

                                </div>
                            </div>
                        </div>
                    </div>    
                </div>
            <!-- End Page Content -->

<script src="<?php echo base_url()."ElaAdmin/"?>js/jquery-2.2.3.min.js"></script>

<script type="text/javascript">
    $(document).ready(function(){

        // GetProfile    
        $('#getprofil').on('click',function(){
            var getnik = $('#getnik').val();
            var getiduser = $('#getiduser').val();
            var getnama = $('#getnama').val();

            $.ajax({
               url: '<?php echo base_url('Userkeldesprofilmustahik/get_profile')?>',
               type: 'POST',
               data:{
                   getnik: $("#getnik").val(),
                   getiduser: $("#getiduser").val()
               },
               success:function(data){
                var parsedData = JSON.parse(data);
                var ceknik = parsedData.nik;
                var ceknama = parsedData.nama;

                 if(ceknik == getnik && ceknama == getnama){
                    console.log("From Database :"+ceknik + " From URL: " +getnik+" From Database: "+ceknama +" From URL :"+getnama);
                    document.getElementById("kk").value = parsedData.kk;
                    document.getElementById("namaasli").value = parsedData.nama;
                    document.getElementById("namapanggilan").value = parsedData.namapanggilan;
                    document.getElementById("nik").value = parsedData.nik;
                    document.getElementById("jk").value = parsedData.jk;
                    document.getElementById("tempatlahir").value = parsedData.tempatlahir;
                    document.getElementById("tanggallahir").value = parsedData.tanggallahir;
                    document.getElementById("agama").value = parsedData.agama;
                    document.getElementById("hp").value = parsedData.hp;
                    document.getElementById("alamatlengkap").value = parsedData.alamatlengkap;
                    document.getElementById("terdaftar").value = parsedData.terdaftar;
                    console.log(data);
                 }else{
                     alert("085-238-138-038 W.A Kami, Portal Bermasalah");
                 }
               }
            });
        });
        // End GetProfile

        // GetBantuan
        $('#getbantuan').on('click',function(){
            var table;
            table = $('#tablemustahik').DataTable({ 

            "processing": true, 
            "serverSide": true, 
            "order": [], 
            "destroy": true,

            "ajax": {
                "url": "<?php echo 'Userkeldesbantuanmustahik/get_bantuan'?>",
                "type": "POST",
                "data": function(data){
                    data.getnik = $("#getnik").val();
                    data.getiduser = $('#getiduser').val();
                }
            },

            "columns": 
            [
                { "data": "no" },
                { "data": "bantuan" },
                { "data": "satuan" },
                { "data": "rp" },
                { "data": "tgl" },
                { "data": "via" },
                { "data": "nik" },
                { "data": "ket" }
            ]
            });
        });
        // End GetBantuan

        //Get Usulan
        $('#getusulan').on('click',function(){

            load_json_data('bidang');

            function load_json_data(id, parent_id){
                var html_code = '';
                $.getJSON('usulan.json', function(data){
                    html_code += '<option value= "">Pilih '+id+'</option>';
                    $.each(data, function(key, value){
                    if(id == 'bidang'){
                        if(value.parent_id == '0'){
                        html_code += '<option value="'+value.id+'">'+value.nama+'</option>';
                        }
                    }else{
                        if(value.parent_id == parent_id){
                        html_code += '<option value="'+value.id+'">'+value.nama+'</option>';
                        }
                    }
                    });
                    $('#'+id).html(html_code);
                });
            }

            $(document).on('change','#bidang', function(){
                var program_id = $(this).val();
                if(program_id != ''){
                    load_json_data('program', program_id);
                }else{
                    $('#program').html('<option value = "">Pilih Program</option>');
                    $('#jenisbantuan').html('<option value = "">Pilih Jenis Bantuan</option>');
                    $('#jenisbarang').html('<option value = "">Pilih Jenis Barang</option>');
                    $('#namabarang').html('<option value = "">Pilih Nama Barang</option>');
                }
            });

            $(document).on('change','#program', function(){
                var jenisbantuan_id = $(this).val();
                if(jenisbantuan_id != ''){
                    load_json_data('jenisbantuan', jenisbantuan_id);
                }else{
                    $('#jenisbantuan').html('<option value = "">Pilih Jenis Bantuan</option>');
                    $('#jenisbarang').html('<option value = "">Pilih Jenis Barang</option>');
                    $('#namabarang').html('<option value = "">Pilih Nama Barang</option>');
                }
            });

            $(document).on('change','#jenisbantuan', function(){
                var jenisbarang_id = $(this).val();
                if(jenisbarang_id != ''){
                    load_json_data('jenisbarang', jenisbarang_id);
                }else{
                    $('#namabarang').html('<option value = "">Pilih Nama Barang</option>');
                }
            });

            $(document).on('change','#jenisbarang', function(){
                var namabarang_id = $(this).val();
                if(namabarang_id != ''){
                    load_json_data('namabarang', namabarang_id);
                }else{
                   
                }
            });



        });
        //End Get Usulan
         
    });
</script>