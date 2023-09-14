
<?= $this->extend('main/layout') ?>
<?= $this->section('isi') ?>
<div class="container">

    <div class="row">
        <div class="col-8  mb-10">
            <h2 class="my-3">Form Ubah Data Pendaftar</h2>
            <form action="/Admin/update/<?= $buku['id']; ?>" method="POST">
                <!-- CSRF (Cross Site Request Forgery) merupakan salah satu teknik penetrasi pada celah keamanan website. -->
                <?= csrf_field(); ?>
                <input type="hidden" name="alias" value="<?= $buku['alias']; ?>">
                <div class="row mb-3">
                    <label for="judul" class="col-sm-2 col-form-label">Nama Lengkap</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="judul" name="nama_lengkap" autofocus value="<?= $buku['nama_lengkap']; ?>">
                        <div id="validationServer03Feedback" class="invalid-feedback">
                        </div>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="penulis" class="col-sm-2 col-form-label">Alamat</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="penulis" name="alamat" value="<?= $buku['alamat']; ?>">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="penerbit" class="col-sm-2 col-form-label">No Handphone</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" id="penerbit" name="no_hp" value="<?= $buku['no_hp']; ?>">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="penerbit" class="col-sm-2 col-form-label">Asal Sekolah</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="harga" name="asal_sekolah" value="<?= $buku['asal_sekolah']; ?>">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="cover" class="col-sm-2 col-form-label">Jurusan</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="cover" name="jurusan" value="<?= $buku['jurusan']; ?>">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="cover" class="col-sm-2 col-form-label">Email</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" id="cover" name="email" value="<?= $buku['email']; ?>">
                    </div>
                </div>
                <div class="row mb-3">
                                    <label for="paket" class="col-sm-2 col-form-label">Paket</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" id="paket" name="paket" value="<?= $buku['paket']; ?>">
                                            <option value="">=== Pilih Paket ===</option>
                                            <option value="Regular">Regular</option>
                                            <option value="Class Rangking">Class Rangking</option>
                                            <option value="Private class">Private Class</option>
                                            <!-- Tambahkan opsi lain sesuai kebutuhan -->
                                        </select>
                                    </div>

                                </div>
                <button type="submit" class="btn btn-primary">Ubah Data</button>
                <a href="/Admin" class="btn btn-info">Kembali</a>
            </form>
        </div>
    </div>
</div>
<?= $this->section('script') ?>
<script>
    <?php if (session()->getFlashdata('berhasil')) : ?>
        Swal.fire(
            'Berhasil',
            '<?= session()->getFlashdata('berhasil') ?>',
            'success'
        )
    <?php endif ?>
</script>
<?= $this->endSection() ?>
<?= $this->endSection() ?>