<?php require_once('header.php') ?>
<?php require_once('navbar.php') ?>

<?php include 'koneksi.php';
session_start();
if (isset($_POST['simpan'])) {
  $nama = htmlentities($_POST['nama']) ;
  $pemilik = $_POST['pemilik'];
  $alamat = htmlentities($_POST['alamat']) ;
  $kecamatan = $_POST['kecamatan'];
  $latitude = $_POST['latitude'];
  $longitude = $_POST['longitude'];

  $query = $conn->query("INSERT INTO makan(nama, pemilik, alamat, kecamatan, latitude, longitude) VALUES('$nama','$pemilik','$alamat','$kecamatan','$latitude','$longitude')");

  if ($query) {
    $_SESSION['simpan'] = 'Data berhasil ditambahkan';
    echo "<script>window.location.href='rumah_makan.php'</script>";
  }
}
?>
<div class="page-content p-5" id="content">
  <div class="row">
    </div>
    <div id="maps" style="height: 400px; ">
    </div>
    <br>
  <div class="col-lg-12 mb-12">
    <div class="card">
      <div class="card-header">
        Input Data
      </div>
      <div class="card-body">
        <form action="" method="post">
          <div class="form-row">
          <div class="form-group col-md-6">
              <label for="">Nama</label>
              <input type="text" name="nama" required id="" class="form-control" placeholder="Nama">
            </div>
            <div class="form-group col-md-6">
              <label for="">Pemilik</label>
              <input type="text" name="pemilik" placeholder="Pemilik" required id="" class="form-control">
            </div>
            <div class="form-group col-md-6">
              <label for="">Alamat</label>
              <input type="text" name="alamat" required id="" class="form-control" placeholder="Masukkan alamat">
            </div>
            <div class="form-group col-md-6">
              <label for="inputState">Kecamatan</label>
              <select name="kecamatan" id="inputState" class="form-control">
                <option value="" disabled selected>--Silakan Pilih--</option>
                <?php
                $kec = $conn->query("SELECT *FROM kecamatan");
                if ($kec->num_rows > 0) {
                  while ($row = $kec->fetch_row()) {
                ?>
                    <option value="<?= $row[1] ?>"><?= $row[1] ?></option>
                <?php
                  }
                }
                ?>
              </select>
            </div>
            <div class="form-group col-md-4">
              <label for="">Latitude</label>
              <input type="text" name="latitude" id="latitude" class="form-control">
            </div>
            <div class="form-group col-md-4">
              <label for="">Longitude</label>
              <input type="text" name="longitude" id="longitude" class="form-control">
            </div>
          </div>
          <button type="submit" class="btn btn-info" name="simpan">Simpan</button>
        </form>
      </div>
    </div>
  </div>
</div>
<script>
  let latlang = [0,0]
  if(latlang[0]==0 && latlang[1]==0){
    latlang = [-0.888027, 119.874639]
  }
  let mymap = L.map('maps').setView([-0.8828804972219374, 119.85731606079105], 14)
  let layermap = L.tileLayer('https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibWVycnlza2FjIiwiYSI6ImNreTgwcmUyNDFhbjEzMWxxb3M1OWs5emcifQ.4oskRh8WEmGkxBz38lTeww', {
       attribution: '© <a href="https://www.mapbox.com/feedback/">Mapbox</a> © <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
})
mymap.addLayer(layermap)
let marker = new L.marker(latlang,{
  draggable:'true'
})
marker.on('dragend',function(event){
  let position = marker.getLatLng();
  marker.setLatLng(position).update()
  $("#latitude").val(position.lat);
  $("#longitude").val(position.lng);
})
mymap.addLayer(marker);
</script>
<?php require_once('footer.php') ?>