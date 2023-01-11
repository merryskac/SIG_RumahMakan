<?php require_once 'header.php';
require_once 'navbar.php';
include 'koneksi.php';

$id = $_GET['id'];
$query = $conn->query("SELECT * FROM makan WHERE id='$id'");
$row = $query->fetch_assoc();
?>
<div class="page-content p-5" id="content">
  <div class="row">
    <div class="col-lg-12 mb-2">
      <a href="pemetaan.php" class="btn btn-info">Kembali</a>
    </div>
    <div class="col-lg-12">
      <div class="card">
        <div class="card-header">
          Data Rumah Makan
        </div>
        <div class="card-body">
          <ul class="list-group list-group-flush">
            <li class="list-group-item">Nama: <?= $row['nama'] ?></li>
            <li class="list-group-item">Pemilik: <?= $row['pemilik'] ?></li>
            <li class="list-group-item">Alamat: <?= $row['alamat'] ?></li>
            <li class="list-group-item">Kecamatan: <?= $row['kecamatan'] ?></li>
            <li class="list-group-item">Latitude: <?= $row['latitude'] ?></li>
            <li class="list-group-item">Longitude: <?= $row['longitude'] ?></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<?php require_once 'footer.php' ?>