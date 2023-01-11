<?php require_once('header.php');
require_once('navbar.php');
?>
<?php 
session_start();
if(!isset($_SESSION['nama'])&&!isset($_SESSION['username'])){
  $_SESSION['gagal'] = 'Login terlebih dahulu!';
  header('location:login.php');
}
?>
<?php
?>

<?php
include('koneksi.php');
$data = $conn->query('SELECT * FROM makan');
$banyakData = $data->num_rows;
$dataPerPage = 10;
$numPagination = ceil($banyakData / $dataPerPage);
$counter = 0;
$halaman = isset($_GET['halaman']) ? (int)$_GET['halaman'] : 1;
$numDataAwal = $halaman > 1 ? ($halaman * $dataPerPage) - $dataPerPage : 0;
$query = $conn->query("SELECT * FROM makan LIMIT $numDataAwal,$dataPerPage");
$prev = $halaman - 1;
$next = $halaman + 1;
?>
<div class="page-content p-5" id="content">
  <div class="data-pesan" data-pesan="<?php if (isset($_SESSION['pesan'])) {
                                        echo $_SESSION['pesan'];
                                      }
                                      unset($_SESSION['pesan']) ?>"></div>
  <div class="row">
    <div class="col-lg-12 mb-2">
      <!-- <div id="map" style="height: 500px; width:100%"></div><br> <br> <br> <br> -->
      <h2>Halo, <?= $_SESSION['nama'] ?></h2>
      <h5>So lapar kah?</h5>
      <?php if($_SESSION['username']==="admin"){?>
      <a href="input_rm.php" class="btn btn-info">Tambah</a>
      <?php } ?>
    
    </div>
    <div class="col-lg-12">
      <div class="card">
        <div class="card-header">
          <b>Data Rumah Makan di Kota Palu</b>

        </div>
        <div class="card-body">
          <nav class="">
            <form method="GET" action="" class="form-inline">
              <input class="form-control mr-sm-2" style="width: 85%; display:flex" name="cari" type="search" placeholder="Cari rumah makan" aria-label="Search">
              <button style="width: 10%;" class="btn btn-primary my-2 my-sm-0" type="submit">Cari</button>
            </form>
          </nav>
          <br>
          <div class="table">
            <table>
              <thead>
                <tr>
                  <?php
                  if(isset($_GET['cari']) && $_GET['cari']!=null){
                    $query = $conn->query("SELECT * FROM makan WHERE nama LIKE '%".$_GET['cari']."%'");
                  }
                  ?>
                  <th scope="col">No</th>
                  <th scope="col">Nama</th>
                  <th scope="col">Pemilik</th>
                  <th scope="col">Alamat</th>
                  <th scope="col">Kecamatan</th>
                  <?php if($_SESSION['username']==="admin"){?>
                  <th scope="col">
                    <center>Action</center>
                  </th>
                  <?php } ?>
                </tr>
              </thead>
              <tbody>
                <?php

                $no = $halaman * $dataPerPage - $dataPerPage;
                if ($query->num_rows > 0) {
                  while ($row = $query->fetch_row()) {
                ?>
                    <tr>
                      <td><?= $no += 1; ?></td>
                      <td><?= $row[1] ?></td>
                      <td><?= $row[6] ?></td>
                      <td><?= $row[2] ?></td>
                      <td><?= $row[3] ?></td>
                      <?php if($_SESSION['username']==="admin"){?>
                      <td>
                        <a href="edit_rm.php?id=<?= $row[0] ?>" class="btn btn-info"><i class="fa fa-pencil-square-o"></i></a>
                        <?php if($_SESSION['nama']=="admin"){ ?>
                        <a href="delete_rm.php?id=<?= $row[0] ?>" class="btn btn-danger btn-hapus-rm"><i class="fa-solid fa-trash"></i></a>
                        <?php } ?>
                      </td>
                      <?php } ?>
                    </tr>
                <?php
                  }
                }else{
                  echo "No Data <br>";
                }
                ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    <div class="col"></div><br>
    <div class="col-lg-6">
      <?php if(!isset($_GET['cari']) || $_GET['cari']==null){ ?>
      <nav aria-label="Page navigation example">
        <ul class="pagination">

          <li class="page-item"><a class="page-link" <?= $halaman > 1 ? "href='?halaman=$prev'" : "disabled" ?>">Previous</a></li>
          <?php
          
          while ($counter <= $numPagination) {
            $halaman;
            $counter += 1 ?>
            <li class="page-item"><a class="page-link" href="?halaman=<?= $counter ?>"><?= $counter ?></a></li>
          <?php }
          ?>
          <li class="page-item"><a class="page-link" href="?halaman=<?= $next ?>">Next</a></li>
          
        </ul>
      </nav>
      <?php } ?>
    </div>
  </div>
  <script>
    let pesan = $('.data-pesan').data('pesan');

    if (pesan) {
      Swal.fire({
        icon: 'success',
        title: pesan,
        showConfirmButton: false,
        timer: 1500
      })
    }

    $('.btn-hapus-rm').on('click', function(e) {
      e.preventDefault();
      const href = $(this).attr('href');

      Swal.fire({
        title: 'Yakin?',
        text: "data rumah makan akan dihapus?",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: "#d33",
        confirmButtonText: 'Hapus data!'
      }).then((result) => {
        if (result.value) {
          document.location.href = href;
        }
      })
    });
  </script>


  </script>
</div>
<?php require_once('footer.php'); ?>