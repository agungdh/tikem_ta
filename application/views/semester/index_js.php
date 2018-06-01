<script type="text/javascript">
$(function() {
	geser();
});

$('.simpan').click(function(){
  $("input[type='submit']").click();
});

$("#formControlRange").on('input', function() {
	geser();
});

function geser() {
	var nilai = $("#formControlRange").val();

	nilai2 = nilai;

	for (var i = 1; i <= 5; i++) {
		if (nilai2 == 12) {
			nilai2 = 1;
		} else {
			nilai2++;
		}
	}

	$("valGanjil").text(nilai + ' - ' + nilai2);

	if (nilai2 == 12) {
		nilai3 = 1;
	} else {
		nilai3 = nilai2 + 1;
	}

	nilai4 = nilai3;

	for (var i = 1; i <= 5; i++) {
		if (nilai4 == 12) {
			nilai4 = 1;
		} else {
			nilai4++;
		}
	}	

	$("valGenap").text(nilai3 + ' - ' + nilai4);
}
</script>