<script type="text/javascript">
$('#simpan').click(function(){
  $("input[type='submit']").click();
});

$(".select2").select2();

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
});

function waktuKegiatan() {
	var waktu = $('#waktuKegiatan').val().split(' - ');
	
	var waktuAwal = waktu[0].split('-');
	var waktuAkhir = waktu[1].split('-');

	var waktuAwalJadi = waktuAwal[2] + '-' + waktuAwal[1] + '-' + waktuAwal[0];
	var waktuAkhirJadi = waktuAkhir[2] + '-' + waktuAkhir[1] + '-' + waktuAkhir[0];

	$("#waktuAwal").val(waktuAwalJadi);
	$("#waktuAkhir").val(waktuAkhirJadi);
}
</script>