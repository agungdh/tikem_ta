<div class="app-title">
  <div>
    <h1><i class="fa fa-users"></i> Mahasiswa</h1>
  </div>
  <ul class="app-breadcrumb breadcrumb">
    <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
    <li class="breadcrumb-item">Mahasiswa</li>
  </ul>
</div>
<div class="row">
  <div class="col-md-12">
    <div class="tile">
      <h3 class="tile-title">Ubah Mahasiswa</h3>
      <div class="tile-body">
        <form method="post" action="<?php echo base_url('mahasiswa/aksi_ubah'); ?>">
          
          <input type="hidden" name="where[id]" value="<?php echo $data['mahasiswa']->id; ?>">

          <div class="form-group">
            <label class="control-label">NIP</label>
            <input class="form-control" type="text" required placeholder="Masukan NIP" name="data[nip]" value="<?php echo $data['mahasiswa']->nip; ?>">
          </div>

          <div class="form-group">
            <label class="control-label">Nama</label>
            <input class="form-control" type="text" required placeholder="Masukan Nama" name="data[nama]" value="<?php echo $data['mahasiswa']->nama; ?>">
          </div>
          
          <div class="form-group">
            <label class="control-label">Prodi</label>
            <select class="form-control select2" required name="data[prodi_id]">
             <?php
             foreach ($this->db->get('fakultas')->result() as $item) {
               ?>
               <optgroup label="<?php echo $item->nama; ?>">
                 <?php
                 foreach ($this->db->get_where('prodi', ['fakultas_id' => $item->id])->result() as $item2) {
                   if ($item2->id == $data['mahasiswa']->prodi_id) {
                     ?>
                     <option selected value="<?php echo $item2->id; ?>"><?php echo $item2->nama; ?></option>
                     <?php                    
                   } else {
                     ?>
                     <option value="<?php echo $item2->id; ?>"><?php echo $item2->nama; ?></option>
                     <?php
                   }
                 }
                 ?>
               </optgroup>
               <?php
             }
             ?>
            </select>
          </div>

          </div>
          <div class="tile-footer">
            <button id="simpan" class="btn btn-primary" type="button"><i class="fa fa-fw fa-lg fa-check-circle"></i>Simpan</button>
            &nbsp;&nbsp;&nbsp;
            <a class="btn btn-secondary" href="<?php echo base_url('mahasiswa'); ?>"><i class="fa fa-fw fa-lg fa-times-circle"></i>Batal</a> <input type="submit" style="visibility: hidden;">
          </div>
        </form>
    </div>
  </div>
</div>