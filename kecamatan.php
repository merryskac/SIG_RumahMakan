<?php require_once 'header.php';
require_once 'navbar.php';
include 'koneksi.php';
 
session_start();
if(!isset($_SESSION['nama'])&&!isset($_SESSION['username'])){
  $_SESSION['gagal'] = 'Login terlebih dahulu!';
  header('location:login.php');
}

// session_start();
if(isset($_POST['simpan'])){
  $nama = $_POST['nama'];
  $poligon = $_POST['poligon'];
  $warna = $_POST['warna'];

  $query = $conn->query("INSERT INTO kecamatan (nama, warna, poligon) VALUES ('$nama','$warna','$poligon')");
  if($query){
    $_SESSION['pesan'] = 'Data kecamatan ditambahkan';
  }
}
?>
<div class="page-content p-5" id="content">
  <div class="data_pesan" data-pesan = "<?php if(isset($_SESSION['pesan'])){
    echo $_SESSION['pesan'];
  } unset($_SESSION['pesan']) ?>">
  </div>
  <div class="row">
    <div class="col-lg-7">
      <div id="map" style="height: 500px; border: 2px solid black;"></div>
      </div>
      <?php if($_SESSION['username']==="admin"){?>
    <div class="col-lg-5">
      <br>
      <form action="" method="post">
        <div class="form-group row">
          <label  class="col-sm-4 com-form-label">Nama</label>
          <div class="col-sm-8">
            <input type="text" name="nama" id="" class="form-control" required>
          </div>
        </div>
        <div class="form-group row">
          <label  class="col-sm-4 com-form-label">Warna</label>
          <div class="col-sm-8">
            <input type="color" name="warna" id="" class="form-control" required>
          </div>
        </div>
        <div class="form-group row">
          <label  class="col-sm-4 com-form-label">Koordinat Poligon</label>
          <textarea name="poligon" id="poligon" cols="3" required rows="10" class="form-control col-sm-8"></textarea>
        </div>
        <button type="submit" class="btn btn-info" name="simpan">Simpan</button>
      </form>
    </div>
    <?php } ?>
    <div class="col-lg-12 mt-2">
      <div class="card">
        <div class="card-header">Data Kecamatan</div>
      </div>
      <div class="card-body">
        <table class="table">
          <thead>
            <tr>
              <th>No</th>
              <th>Nama Kecamatan</th>
              <?php if($_SESSION['username']==="admin"){?>
              <th>Action</th>
            <?php } ?>
            </tr>
          </thead>
          <tbody>
            <?php $query = $conn->query("SELECT * FROM kecamatan");
            $no = 0;
            if($query->num_rows >0){
              while($row = $query->fetch_row()){
                ?>
                <tr>
                  <td><?= $no +=1; ?></td>
                  <td><?= $row[1] ?></td>
                  <?php if($_SESSION['username']==="admin"){?>
                  <td>
                  <a href="delete_kecamatan.php?id=<?=$row[0]?>" class="btn btn-danger btn-hapus-kecamatan"><i class="fa-solid fa-trash"></i></a></td>
                  <?php } ?>
                </tr>
                <?php
              }
            }
             ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>

<script>
    let map = L.map('map').setView([-0.8828804972219374, 119.85731606079105],14)
  L.tileLayer('https://api.mapbox.com/styles'+
  '/v1/mapbox/streets-v11/tiles/{z}/{x}/{y}?'+
  'access_token=pk.eyJ1IjoibWVycnlza2FjIiwiYSI6ImNreTgwcmUyNDFhbj'
  +'EzMWxxb3M1OWs5emcifQ.4oskRh8WEmGkxBz38lTeww', {
       attribution: '© <a href="https://www.mapbox.com/feedback/">Mapbox</a>'+
       ' © <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

<?php
$hasil = $conn->query('SELECT * FROM kecamatan');
if($hasil->num_rows>0){
  while($row = $hasil->fetch_assoc()){
    ?>
    var drawItems = L.geoJson(<?= $row['poligon']?>, {style:{color:"<?=$row['warna']?>"}}).bindPopup("Kecamatan <?= $row['nama'] ?>").addTo(map);
    <?php
  }
}
?>
var drawnItems = new L.FeatureGroup();
map.addLayer(drawnItems);
<?php if($_SESSION['username']==="admin"){?>
var drawControl = new L.Control.Draw({
  draw:{
    polyline: false,
    rectangle: false,
    circle: false,
    marker: false,
    circlemarker:false
  },
  edit:{
    featureGroup: drawnItems
  }
});
map.addControl(drawControl);
<?php } ?>
map.on('draw:created', function(event){
  var layer = event.layer
  feature = layer.feature = layer.feature || {};
  feature.type = feature.type || "Feature";
  var props = feature.properties = feature.properties || {};
  drawnItems.addLayer(layer);

  var hasil = $('#poligon').val(JSON.stringify(drawnItems.toGeoJSON()));
});
let pesan = $('.data-pesan').data('pesan');
if(pesan){
  Swal.fire({
    icon: 'success',
    title: pesan,
    showConfirmButton: false,
    timer:1500
  })
}
$('.btn-hapus-kecamatan').on('click',function(e){
  e.preventDefault()
  const href = $(this).attr('href');

  Swal.fire({
    title: 'Yakin?',
    text:"Hapus Data kecamatan?",
    icon:"warning",
    showCancleButton:true,
    confirmButtonColor:'#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText:'Hapus data!'
  }).then((result)=>{
    if(result.value){
      document.location.href = href;
    }
  })
})
  </script>