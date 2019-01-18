<!-- Start Page Content -->
                <div class="row">
                    
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body p-b-0">
                                <h4 class="card-title">Data Pribadi</h4>
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs customtab" role="tablist">
                                    <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#home2" role="tab"><span class="hidden-sm-up"><i class="ti-home"></i></span> <span class="hidden-xs-down">Home</span></a> </li>
                                    <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#profile2" role="tab" id="getbantuan"><span class="hidden-sm-up"><i class="ti-user"></i></span> <span class="hidden-xs-down">Bantuan</span></a> </li>
                                    <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#messages2" role="tab" id="getusulan"><span class="hidden-sm-up"><i class="ti-email"></i></span> <span class="hidden-xs-down">Usulan</span></a> </li>
                                </ul>
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home2" role="tabpanel">
                                        <div class="p-20">
                                            <form>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">Nama
                                                <input type="text" name="nama" id="nama" value="<?php echo $_GET['nama'];?>" class="form-control input-default " >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">NIK
                                                <input type="text" name="nik" id="nik" value="<?php echo $_GET['nik'];?>" class="form-control input-focus" >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">KECAMATAN
                                                <input type="text" name="kec" id="kec" value="<?php echo $this->session->userdata('kec');?>" class="form-control input-rounded" >
                                            </div>
                                            <div class="form-group">
                                                <p class="text-muted m-b-15 f-s-12">KELURAHAN/DESA
                                                <input type="text" name="kec" id="kec" value="<?php echo $this->session->userdata('keldes');?>" class="form-control input-rounded" >
                                            </div>
                                            </form>

                                        </div>
                                    </div>
                                    <div class="tab-pane  p-20" id="profile2" role="tabpanel">
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
                                    <div class="tab-pane p-20" id="messages2" role="tabpanel">
                                            Data Usulan
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