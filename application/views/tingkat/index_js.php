<script type="text/javascript">
var table = $('.datatable').DataTable( {
    "processing": true,
    "serverSide": true,
    "ajax": {
        "url": "<?php echo base_url('tingkat/ajax'); ?>",
        "type": "POST"
    },
    columnDefs: [
        { targets: [1], orderable: false}
    ],
    "scrollX": true,
    "autoWidth": false,
});

function hapus(id) {
    swal({
        title: 'Apakah anda yakin?',
        text: "Data akan dihapus!",
        type: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Hapus!'
    }).then(function(result) {
        if (result.value) {
            $.get("<?php echo base_url('tingkat/aksi_hapus/') ?>" + id, function(data, status){
                table.ajax.reload();
            });
        }
    });
};

$('body').tooltip({selector: '[data-toggle="tooltip"]'});
</script>