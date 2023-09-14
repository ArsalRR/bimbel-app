<?= $this->extend('main/layout') ?>

<?= $this->section('judul') ?>
<h1 class="text-center">Data Pendaftar</h1>
<?= $this->endSection('judul') ?>
<?= $this->section('subjudul') ?>
<?= $this->endSection('subjudul') ?>
<?= $this->section('isi') ?>
<!-- searching -->
<form action="" method="post">
  <div class="input-group mb-3">
    <input type="text" class="form-control" placeholder="Cari data Pendaftar" aria-label="Cari data kategori" aria-describedby="button-addon2" name="cari">
    <button class="btn btn-outline-primary" type="submit" id="tombol cari" name="tombolcari">
      <i class="fa fa-search"></i>
    </button>
  </div>
</form>

<table class="table table-bordered table-striped" style="width: 100%;">
  <thead>
    <tr>
      <th style="width: 5%;">No</th>
      <th>Nama Lengkap</th>
      <th>Alamat</th>
      <th>Email</th>
      <th>No Hp</th>
      <th>Asal Sekolah</th>
      <th>Paket</th>
      <th>Jurusan</th>
      <th>Bukti Transfer</th>
      <th style="width: 15%;">Aksi</th>
    </tr>
  </thead>
  <tbody>
    <?php $nomor = 1 + (($nohalaman - 1) * 5); ?>
    <?php foreach ($buku as $row) : ?>
      <tr>
        <td><?= $nomor++; ?></td>
        <td><?= $row['nama_lengkap'] ?></td>
        <td><?= $row['alamat'] ?></td>
        <td><?= $row['email'] ?></td>
        <td><?= $row['no_hp'] ?></td>
        <td><?= $row['asal_sekolah'] ?></td>
        <td><?= $row['paket'] ?></td>
        <td><?= $row['jurusan'] ?></td>
        <td>
            <?php if ($row['bukti_trasfer']): ?>
                <img src="<?= base_url('uploads/' . $row['bukti_trasfer']) ?>" alt="Tanda Tangan" style="max-width: 200px; max-height: 200px;">
            <?php else: ?>
                Tidak ada tanda tangan
            <?php endif; ?>
        </td>
        <td>

          <a href="/Admin/formedit/<?= $row['alias'] ?>" class="btn btn-warning">Edit</a>
          
          <a href="<?= site_url('Admin/delete/' . $row['id']) ?>" onclick="return confirm('Are you sure?')" class="btn btn-danger ml-2">Hapus</a>
          <a href="/Admin/formemail/<?= $row['alias'] ?>" class="btn btn-success mt-2">konfirmasi</a>
        </td>
      </tr>

    <?php endforeach; ?>
  </tbody>
</table>
<!-- pagination -->
<div class="float-center">
  <?= $pager->links('daftar', 'paging'); ?>
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
<script>
    <?php if (session()->getFlashdata('berhasil')) : ?>
        Swal.fire(
            'Berhasil',
            '<?= session()->getFlashdata('berhasil') ?>',
            'success'
        )
    <?php endif ?>
</script>
<?= $this->section('script') ?>
<?= $this->endSection() ?>