<?php
session_start();
include 'header.php';
include 'koneksi.php';
if(isset($_POST['submit'])){
  $uname = $_POST['username'];
  $pass = $_POST['password'];
  $data = $conn->query("SELECT * FROM akun WHERE username='$uname' AND password='$pass'");
  if($data->num_rows>0){
    $_SESSION['username'] = $uname;
    $_SESSION['nama']=$data->fetch_assoc()['nama'];
    header('location:index.php');
  }else{
    $_SESSION['gagal'] = 'Login gagal! password atau username salah!';
  }
}
?>

<body>
  <div id="app">
    <section class="section">
      <div class="container mt-5">
        <div class="row">
          <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">

            <div class="card card-primary">
              <div class="card-header">
                <h4>Login</h4>
              </div>
              
              <div class="card-body">
              <?php
              if(isset($_SESSION['message'])){?>
                <div class="alert alert-success">
                  <?= $_SESSION['message'] ?>
                </div>
              <?php 
              unset($_SESSION['message']);  
            }
            if(isset($_SESSION['gagal'])){?>
              <div class="alert alert-danger">
                <?= $_SESSION['gagal'] ?>
              </div>
            <?php 
            unset($_SESSION['gagal']);  
          }
              ?>
                <form method="POST" action="#" class="needs-validation" novalidate="">
                  <div class="form-group">
                    <label for="email">Username</label>
                    <input id="email" type="text" class="form-control" name="username" tabindex="1" required autofocus>
                    <div class="invalid-feedback">
                      Please fill in your email
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="d-block">
                      <label for="password" class="control-label">Password</label>
                    </div>
                    <input id="password" type="password" class="form-control" name="password" tabindex="2" required>
                    <div class="invalid-feedback">
                      please fill in your password
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" name="remember" class="custom-control-input" tabindex="3" id="remember-me">
                    </div>
                  </div>

                  <div class="form-group">
                    <button type="submit" name="submit" class="btn btn-primary btn-lg btn-block" tabindex="4">
                      Login
                    </button>
                  </div>
                </form>
              </div>
            </div>
            </div>
          </div>
          <div class="mt-5 text-muted text-center">
            Don't have an account? <a href="register.php">Create One</a </div>
            <div class="simple-footer">
            </div>
      </div>
        </div>
      </div>
  </div>
  </section>
  </div>

  <!-- General JS Scripts -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <script src="js/script.js"></script>

</body>

</html>

<!-- Template JS File -->
<script src="../dist/js/scripts.js"></script>
<script src="../dist/js/custom.js"></script>
</body>

</html>