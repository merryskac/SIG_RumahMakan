<?php require_once 'header.php';
require_once 'navbar.php';
include 'koneksi.php';
session_start();
if(isset($_POST['simpan'])){
  $id = $_GET['id'];
  $nama = $_POST['nama'];
  $pemilik = $_POST['pemilik'];
  $alamat = $_POST['alamat'];
  $kecamatan = $_POST['kecamatan'];
  $latitude = $_POST['latitude'];
  $longitude = $_POST['longitude'];
  $query = $conn->query("UPDATE makan SET nama='$nama',pemilik='$pemilik',alamat='$alamat',kecamatan='$kecamatan',latitude='$latitude',longitude='$longitude' WHERE id='$id'");
  if($query){
    $_SESSION['pesan']='Data berhasill diubah';
    echo'<script>window.location.href = "rumah_makan.php"</script>';
  }else{
    echo "<script>alert('gagal diubah')</script>";
  }
}
?>
<div class="row">
  <div class="col-lg-12 mb-2">
    <div id="maps" style="height:400px;"></div>
  </div>
  <div class="col-lg-12">
    <div class="card">
      <div class="card-header">Edit Input data</div>
    </div>
    <div class="card-body">
      <?php
      $id = $_GET['id'];
      $query = $conn->query("SELECT * FROM makan WHERE id='$id'");
      $latitude = '';
      $longitude= '';
      if ($query->num_rows > 0 ){$row = $query->fetch_row();
      $latitude = $row[4];
      $longitude = $row[5];
    }
      ?>
      <form action="" method="post">
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="">Nama</label>
            <input type="text" name="nama" id="" class="form-control" placeholder="Nama" required value="<?= $row[1] ?>">
          </div>
          <div class="form-group col-md-6">
            <label for="">pemilik</label>
            <input type="text" name="pemilik" id="" class="form-control" placeholder="pemilik" required value="<?= $row[6] ?>">
          </div>
          <div class="form-group col-md-6">
            <label for="">Alamat</label>
            <input type="text" name="alamat" id="" class="form-control" placeholder="Alamat" required value="<?= $row[2] ?>">
          </div>
          <div class="form-group col-md-4">
            <label for="">Kecamatan</label>
            <select name="kecamatan" id="inputState" class="form-control">
              <?php $kecamatan = $row[3] ?>
              <option selected><?$row[3]?></option>
              <?php
              $kec = $conn->query("SELECT * FROM kecamatan");
              if($kec->num_rows >0){
                while($row = $kec->fetch_row()){
                  ?>
                  <option <?php echo $row[1]===$kecamatan? 'selected':'' ?>><?=$row[1]?></option>
                  <?php
                }
              }
              ?>
            </select>
          </div>
          <div class="form-group col-md-4">
              <label for="">Latitude</label>
              <input type="text" name="latitude" id="latitude" class="form-control" value="<?= $latitude ?>">
          </div>
          <div class="form-group col-md-4">
              <label for="">Longitude</label>
              <input type="text" name="longitude" id="longitude" class="form-control" value="<?= $longitude ?>">
          </div>
        </div>
        <button type="submit" class="btn btn-info"name="simpan">Simpan</button>
      </form>
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