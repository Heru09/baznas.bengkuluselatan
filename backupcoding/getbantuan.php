$('#getbantuan').on('click',function(){
            var getnik = $('#getnik').val();
            var getiduser = $('#getiduser').val();

            $.ajax({
               url: '<?php echo base_url('Userkeldesbantuanmustahik/get_bantuan')?>',
               type: 'POST',
               data:{
                   getnik: $("#getnik").val(),
                   getiduser: $("#getiduser").val()
               },
               success:function(data){
                console.log(data); 
                $('#tablemustahik').DataTable( {
                    "destroy": true,
                    "columns": [
                        { "data": "no" },
                        { "data": "nik" },
                        { "data": "bantuan" },
                        { "data": "satuan" },
                        { "data": "rp" },
                        { "data": "tgl" },
                        { "data": "via" },
                        { "data": "ket" }
                    ]
                } );
               
               }
            });

        });







      $('#getbantuan').on('click',function(){
            var getnik = $('#getnik').val();
            var getiduser = $('#getiduser').val();
            $('#tablemustahik').DataTable( {
                ajax: "<?php echo base_url('Userkeldesbantuanmustahik/get_bantuan')?>",
                type: 'POST',
                data:{
                   getnik: $("#getnik").val(),
                   getiduser: $("#getiduser").val()
                },
                success:function(data){
                    console.log(data); 
                    columns: 
                    [
                        { "data": "no" },
                        { "data": "nik" },
                        { "data": "bantuan" },
                        { "data": "satuan" },
                        { "data": "rp" },
                        { "data": "tgl" },
                        { "data": "via" },
                        { "data": "ket" }
                    ]
                }
            } );
        });
        <script src="<?php echo base_url()."ElaAdmin/"?>js/jquery-3.3.1.js"></script>
<script src="<?php echo base_url()."ElaAdmin/"?>js/jquery.dataTables.js"></script>

<!-- <script src="<?php echo base_url()."ElaAdmin/"?>js/jquery-2.2.3.min.js"></script> -->

        /* var getnik = $('#getnik').val();
            var getiduser = $('#getiduser').val();
           // console.log(getnik);
           var table = $('#tablemustahik').DataTable( {
                "ajax":{
                "url": "<?php echo base_url('Userkeldesbantuanmustahik/get_bantuan')?>",
                "type": "POST",
                "data":{
                   getnik: $('#getnik').val(),
                   getiduser: $('#getiduser').val(),
                },
                    "columns": [
                            { "data": "no" },
                            { "data": "bantuan" },
                            { "data": "satuan" },
                            { "data": "rp" },
                            { "data": "tgl" },
                            { "data": "via" },
                            { "data": "nik" },
                            { "data": "ket" }
                    ]
                }
            }); */