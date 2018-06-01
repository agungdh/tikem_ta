<script type="text/javascript">
$('#simpan').click(function(){
  $("input[type='submit']").click();
});

$(".select2").select2();

$("#semester").select2();

$('#waktuKegiatan').daterangepicker({
	locale: {
      format: 'DD-MM-YYYY'
    }
});

$("#waktuKegiatan").change(function() {
	waktuKegiatan();
});

$(function() {
	waktuKegiatan();

	$("#taKegiatanAwal").val(new Date().getFullYear());
	$("#taKegiatanAkhir").val(parseInt(new Date().getFullYear()) + 1);
});

function waktuKegiatan() {
	var waktu = $('#waktuKegiatan').val().split(' - ');
	
	var waktuAwal = waktu[0].split('-');
	var waktuAkhir = waktu[1].split('-');

	var waktuAwalJadi = waktuAwal[2] + '-' + waktuAwal[1] + '-' + waktuAwal[0];
	var waktuAkhirJadi = waktuAkhir[2] + '-' + waktuAkhir[1] + '-' + waktuAkhir[0];

	$("#waktuAwal").val(waktuAwalJadi);
	$("#waktuAkhir").val(waktuAkhirJadi);

	$.ajax({
	    url: "<?php echo base_url('kegiatan/ajax_semester'); ?>",
	    type: 'post',
	    data: {
	    	bulan: waktuAwal[1]
	    },
	    success: function(respone){ 
	      respon = JSON.parse(respone);

	      if (respon.semester_id != null) {
	        $("#semester").val(respon.semester_id);
	        $("#semester").select2();

			$("#taKegiatanAwal").val(parseInt(waktuAwal[2]) - 1);
        	$("#taKegiatanAkhir").val(parseInt(waktuAwal[2]));
	      } else {
	        swal('ERROR !!!', 'Ada Kesalahan !!!', 'error');
	      }
	    },
	    error: function(respone){
	      swal('ERROR !!!', 'Ada Kesalahan !!!', 'error');
	    }
	});
}

$("#taKegiatanAwal").on('input', function() {
	$("#taKegiatanAkhir").val(parseInt($("#taKegiatanAwal").val()) + 1);
});

$("#taKegiatanAkhir").on('input', function() {
	$("#taKegiatanAwal").val(parseInt($("#taKegiatanAkhir").val()) - 1);
});
</script>