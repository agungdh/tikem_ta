<div class="app-title">
  <div>
    <h1><i class="fa fa-users"></i> Kegiatan</h1>
  </div>
  <ul class="app-breadcrumb breadcrumb">
    <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
    <li class="breadcrumb-item">Kegiatan</li>
  </ul>
</div>
<div class="row">
  <div class="col-md-12">
    <div class="tile">
      <h3 class="tile-title">Tambah Kegiatan</h3>
      <div class="tile-body">
        <form method="post" action="<?php echo base_url('kegiatan/aksi_tambah'); ?>">
          
          <div class="form-group">
            <label class="control-label">Nama Kegiatan</label>
            <input class="form-control" type="text" required placeholder="Masukan Nama Kegiatan" name="data[nama]">
          </div>

          <div class="form-group">
            <label class="control-label">Tingkat</label>
            <select class="form-control select2" type="text" required name="data[tingkat_id]">
              <?php
              foreach ($this->db->get('tingkat')->result() as $item) {
                ?>
                <option value="<?php echo $item->id; ?>"><?php echo $item->tingkat; ?></option>
                <?php
              }
              ?>              
            </select>
          </div>
          
          <div class="form-group">
            <label class="control-label">Kategori</label>
            <select class="form-control select2" type="text" required name="data[kategori_id]">
              <?php
              foreach ($this->db->get('kategori')->result() as $item) {
                ?>
                <option value="<?php echo $item->id; ?>"><?php echo $item->kategori; ?></option>
                <?php
              }
              ?>              
            </select>
          </div>
          
          <div class="form-group">
            <label class="control-label">Waktu Kegiatan</label>
            <input class="form-control" type="text" required placeholder="Masukan Waktu Kegiatan" id="waktuKegiatan" name="data[nama]">
            <input type="hidden" name="data[tanggal_awal_lomba]" id="waktuAwal">
            <input type="hidden" name="data[tanggal_akhir_lomba]" id="waktuAkhir">
          </div>

          <div class="form-group">
            <label class="control-label">Semester</label>
            <select class="form-control select2" type="text" required name="data[semester_id]" id="semester">
              <?php
              foreach ($this->db->get('semester')->result() as $item) {
                ?>
                <option value="<?php echo $item->id; ?>"><?php echo $item->semester; ?></option>
                <?php
              }
              ?>              
            </select>
          </div>

          </div>
          <div class="tile-footer">
            <button id="simpan" class="btn btn-primary" type="button"><i class="fa fa-fw fa-lg fa-check-circle"></i>Simpan</button>
            &nbsp;&nbsp;&nbsp;
            <a class="btn btn-secondary" href="<?php echo base_url('kegiatan'); ?>"><i class="fa fa-fw fa-lg fa-times-circle"></i>Batal</a> <input type="submit" style="visibility: hidden;">
          </div>
        </form>
    </div>
  </div>
</div>