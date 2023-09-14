<?= $this->extend('main/layout') ?>
<?= $this->section('isi') ?>
<form action="/Admin/sendEmail" method="post">
<div class="row mb-3">
                    <label for="judul" class="col-sm-2 col-form-label">Nama Lengkap</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="judul" name="nama_lengkap" autofocus value="<?= $buku['nama_lengkap']; ?>">
                        <div id="validationServer03Feedback" class="invalid-feedback">
                        </div>
                    </div>
                </div>
                
                    <div class="row mb-3">
                    <label for="penerbit" class="col-sm-2 col-form-label">Email</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="penerbit" name="email" value="<?= $buku['email']; ?>">
                    </div>
                </div>
  <td>
  <button type="submit" class="btn btn-primary">Kirim Email</button>
    <a href="/Admin/index" class="btn btn-info">Kembali</a>
  </td>
</form>
<?= $this->section('script') ?>
<script>
    <?php if (session()->getFlashdata('berhasil')) : ?>
        Swal.fire(
            'Berhasil',
            '<?= session()->getFlashdata('berhasil') ?>',
            'success'
        )
    <?php endif ?>
    <?php if (session()->getFlashdata('gagal')) : ?>
        Swal.fire(
            'Gagal!',
            '<?= session()->getFlashdata('gagal') ?>',
            'error'
        )
    <?php endif ?>
</script>
<?= $this->endSection() ?>
<?= $this->endSection() ?>