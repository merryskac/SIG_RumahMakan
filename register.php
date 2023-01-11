<?php
session_start();
include 'header.php';
include 'koneksi.php' ?>
<?php
if (isset($_POST['submit']) && ($_POST['nama'] !== "" && $_POST['username'] !== "" && $_POST['password'] !== "")) {
  $nama = $_POST['nama'];
  $username = $_POST['username'];
  $password = $_POST['password'];

  $cek = $conn->query("SELECT * FROM akun WHERE username='$username'");
  if ($cek->num_rows < 1) {
    $conn->query("INSERT INTO akun(nama,username,`password`) VALUES ('$nama','$username','$password')");

    $_SESSION['message'] = 'Register berhasil!';
    header('location:login.php');
  } else {
    $_SESSION['gagal'] = 'Registrasi gagal! Username sudah terdaftar';
  }
} else {
  $_SESSION['gagal'] = 'Harap isi semua field!';
}

?>

<body>
  <div id="app">
    <section class="section">
      <div class="container mt-5">
        <div class="row">
          <div class="col-12 col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-8 offset-lg-2 col-xl-8 offset-xl-2">

            <div class="card card-primary">
              <div class="card-header">
                <h4>Register</h4>
              </div>
              <div class="card-body">
                <?php
                if (isset($_SESSION['gagal'])) {
                ?>
                  <div class="alert alert-danger">
                    <?= $_SESSION['gagal'] ?>

                  </div>
                <?php
                }
                unset($_SESSION['gagal']);
                ?>
                <form method="POST">
                  <div class="row">
                    <div class="form-group col-12">
                      <label for="frist_name">Nama</label>
                      <input name="nama" id="frist_name" type="text" class="form-control" name="frist_name" autofocus>
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="email">Username</label>
                    <input name="username" id="email" type="text" class="form-control" name="email">
                    <div class="invalid-feedback">
                    </div>
                  </div>

                  <div class="row">
                    <div class="form-group col-12">
                      <label for="password" class="d-block">Password</label>
                      <input id="password" name="password" type="password" class="form-control pwstrength" data-indicator="pwindicator" name="password">
                      <div id="pwindicator" class="pwindicator">
                        <div class="bar"></div>
                        <div class="label"></div>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <button type="submit" name="submit" class="btn btn-primary btn-lg btn-block">
                      Register
                    </button>
                  </div>
                </form>
              </div>
            </div>
            <div class="simple-footer">
              Copyright &copy; Kelompok I
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

  <!-- General JS Scripts -->
  <?php include 'footer.php' ?>
</body>

</html>