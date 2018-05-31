<script type="text/javascript">
var table = $('.datatable').DataTable( {
    "processing": true,
    "serverSide": true,
    "ajax": {
        "url": "<?php echo base_url('prodi/ajax/' . $data['fakultas']->id); ?>",
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
            $.get("<?php echo base_url('prodi/aksi_hapus/') ?>" + id, function(data, status){
                table.ajax.reload();
            });
        }
    });
};
</script>