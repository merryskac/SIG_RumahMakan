<?php
require_once 'header.php';
require_once 'navbar.php';
include 'koneksi.php';
?>
<?php 
session_start();
if(!isset($_SESSION['nama'])&&!isset($_SESSION['username'])){
  $_SESSION['gagal'] = 'Login terlebih dahulu!';
  header('location:login.php');
}
?>
<div class="page-content p-5" id="content">
  <div class="row">
    <div class="col-lg-12">
      <?php
      if (!isset($_GET['rute'])) {
      ?>
        <div class="form-row">
          <div class="form-group">
            <form action="pemetaan.php" method="get">
              <b>Pilih jenis rute</b> <br>
              <input type="radio" name="rute" value="lokasiSaya" id=""> Dari lokasi saya <br>
              <input type="radio" name="rute" value="rumahMakan"> Dari rumah makan lain
              <br>
              <input type="radio" name="rute" value="koordinat"> Dari koordinat tertentu <br><br>
              <button type="submit" class="btn btn-primary">Submit</button>
            </form>
          </div>
        </div>
      <?php } else if ($_GET['rute'] === 'lokasiSaya') {
      ?>
        <a href="pemetaan.php"> <?= htmlentities('<') ?> Kembali</a>
      <?php
        include 'pemetaan_lokasiSaya.php';
      } else if ($_GET['rute'] === 'rumahMakan') {
      ?>
        <a href="pemetaan.php"><?= htmlentities('<') ?> Kembali</a>
        <?php
        include 'pemetaan_res2res.php';
        ?>

      <?php
      } else if ($_GET['rute'] === 'koordinat') {
      ?>
        <a href="pemetaan.php"> <?= htmlentities('<') ?> Kembali</a>
      <?php
        include 'pemetaan_koordinat.php';
      } ?>
      <div class="col-lg-12">
        <div id="map" style="height: 500px; border:2px solid black"></div>
      </div>
    </div>
  </div>
</div>

<script>
  let map = L.map('map').setView([-0.8828804972219374, 119.85731606079105], 14)
  let layermap = L.tileLayer('https://api.mapbox.com/styles/v1/mapbox/satellite-v9/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibWVycnlza2FjIiwiYSI6ImNreTgwcmUyNDFhbjEzMWxxb3M1OWs5emcifQ.4oskRh8WEmGkxBz38lTeww', {
    attribution: '© <a href="https://www.mapbox.com/feedback/">Mapbox</a> © <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
  })
  map.addLayer(layermap)

  <?php if (isset($_GET['rute']) && $_GET['rute'] === 'koordinat') { ?>
    let latlang = [-0.8828804972219374, 119.85731606079105]

    let marker = new L.marker(latlang, {
      draggable: 'true'
    })

    marker.on('dragend', (event) => {
      let position = event.target._latlng;
      console.log(position.lng)
      $('#lokasi_awal').val(position.lat + ',' + position.lng)
    })
    map.addLayer(marker);

  <?php } ?>
  <?php
  $hasil = $conn->query('SELECT * FROM kecamatan');
  if ($hasil->num_rows > 0) {
    while ($row = $hasil->fetch_assoc()) {
  ?>
      var drawItems = L.geoJson(<?= $row['poligon'] ?>, {
        style: {
          color: "<?= $row['warna'] ?>"
        }
      }).bindPopup('Kecamatan <?= $row['nama'] ?>').addTo(map);
  <?php }
  }
  ?> <?php
      $query = $conn->query("SELECT * FROM kecamatan");
      if ($query->num_rows > 0) {
        while ($row = $hasil->fetch_assoc()) {
      ?> console.log("<?= $row ?>") var drawItems = L.geoJson(<?= $row['poligon'] ?>, {
        style: {
          color: "<?= $row['warna'] ?>"
        }
      }).addTo(map);
  <?php
        }
      }
  ?>
  //tempat legenda
  <?php include 'zlegend.php' ?>

  let btn = false;
  $('#rute').on('click', function() {
    if (btn === false) {
      let lc = document.getElementsByClassName('leaflet-panel-layers')
      try {

        lc[0].parentNode.removeChild(lc[0]);
      } catch (err) {
        btn = false;
        console.log(err)
      }
      let btnRute = document.getElementById('rute');
      btnRute.textContent = 'tutup rute';
      let awal = $('#lokasi_awal').val();
      let awalLatLng = awal.split(',')
      let tujuan = $('#lokasi_tujuan').val();
      let tujuanLatLng = tujuan.split(',')
      $(".leaflet-marker-icon").remove();
      $(".leaflet-marker-shadow").remove();
      let control = L.routing.control({
        waypoints: [
          L.latLng(awalLatLng[0], awalLatLng[1]),
          L.latLng(tujuanLatLng[0], tujuanLatLng[1])
        ],
        routeWhileDragging: false
      }).addTo(map);
      map.removeLayer(layerGroupMantikulore)
      map.removeLayer(layerGroupPaluUtara)
      map.removeLayer(layerGroupPaluBarat)
      map.removeLayer(layerGroupPaluTimur)
      map.removeLayer(layerGroupPaluSelatan)
      map.removeLayer(layerGroupUlujadi)
      map.removeLayer(layerGroupTawaeli)
      map.removeLayer(layerGroupTatanga)
      map.removeLayer(layerGroupUlujadi)

    } else {
      <?php if (isset($_GET['rute'])) { ?>
        window.location.href = 'pemetaan.php?rute='+'<?= $_GET['rute'] ?>'

      <?php } ?>
      // window.location.href = 'pemetaan.php'
    }
    btn = true;
  })
</script>
</script>