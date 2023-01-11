let baseLayers = [
{
group: "Tipe maps",
layers:[
{
name:"light",
layer: layermap
},
{
name:"street",
layer:L.tileLayer('https://tile.openstreetmap.org'+
'/{z}/{x}/{y}.png', {
attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">'+
  'OpenStreetMap</a> contributors'
})
},
{
name:"dark",
layer:L.tileLayer('https://api.mapbox.com/styles/v1/mapbox/dark-v10'+
'/tiles/{z}/{x}/{y}?'+
'access_token=pk.eyJ1IjoibWVycnlza2FjIiwiYSI6ImNreTgwcmUyNDFhbjEz'+
'MWxxb3M1OWs5emcifQ.4oskRh8WEmGkxBz38lTeww', {
attribution: '© <a href="https://www.mapbox.com/feedback/">Mapbox</a> © <a href='+
          '"http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
})
}
]
},
]

let layerGroupMantikulore = L.layerGroup()
let layerGroupPaluTimur = L.layerGroup()
let layerGroupPaluBarat = L.layerGroup()
let layerGroupPaluSelatan = L.layerGroup()
let layerGroupPaluUtara = L.layerGroup()
let layerGroupTatanga = L.layerGroup()
let layerGroupTawaeli = L.layerGroup()
let layerGroupUlujadi = L.layerGroup()

<?php
$query = $conn->query("SELECT * FROM makan WHERE kecamatan='Mantikulore'");
if ($query->num_rows > 0) {
  while ($row = $query->fetch_assoc()) { ?>
    marker = L.marker([<?= $row['latitude'] ?>,<?= $row['longitude'] ?>]).bindPopup('<?= $row['nama'] ?> (<?= $row['alamat'] ?>, <?= $row['kecamatan'] ?>)<br><a class="btn btn-outline-info btn-sm" href="detail_rm.php?id=<?= $row['id'] ?>">Detail</a>');
    layerGroupMantikulore.addLayer(marker);
  <?php
  }
}
$query = $conn->query("SELECT * FROM makan WHERE kecamatan='Tatanga'");
if ($query->num_rows > 0) {
  while ($row = $query->fetch_assoc()) { ?>
    marker = L.marker([<?= $row['latitude'] ?>,<?= $row['longitude'] ?>]).bindPopup('<?= $row['nama'] ?> (<?= $row['alamat'] ?>, <?= $row['kecamatan'] ?>)<br><a class="btn btn-outline-info btn-sm" href="detail_rm.php?id=<?= $row['id'] ?>">Detail</a>');
    layerGroupTatanga.addLayer(marker);
  <?php
  }
}
$query = $conn->query("SELECT * FROM makan WHERE kecamatan='Ulujadi'");
if ($query->num_rows > 0) {
  while ($row = $query->fetch_assoc()) { ?>
    marker = L.marker([<?= $row['latitude'] ?>,<?= $row['longitude'] ?>]).bindPopup('<?= $row['nama'] ?> (<?= $row['alamat'] ?>, <?= $row['kecamatan'] ?>)<br><a class="btn btn-outline-info btn-sm" href="detail_rm.php?id=<?= $row['id'] ?>">Detail</a>');
    layerGroupUlujadi.addLayer(marker);
  <?php
  }
}
$query = $conn->query("SELECT * FROM makan WHERE kecamatan='Tawaeli'");
if ($query->num_rows > 0) {
  while ($row = $query->fetch_assoc()) { ?>
    marker = L.marker([<?= $row['latitude'] ?>,<?= $row['longitude'] ?>]).bindPopup('<?= $row['nama'] ?> (<?= $row['alamat'] ?>, <?= $row['kecamatan'] ?>)<br><a class="btn btn-outline-info btn-sm" href="detail_rm.php?id=<?= $row['id'] ?>">Detail</a>');
    layerGroupTawaeli.addLayer(marker);
  <?php
  }
}


$query = $conn->query("SELECT * FROM makan WHERE kecamatan='Palu Utara'");
if ($query->num_rows > 0) {
  while ($row = $query->fetch_assoc()) { ?>
    marker = L.marker([<?= $row['latitude'] ?>,<?= $row['longitude'] ?>]).bindPopup('<?= $row['nama'] ?> (<?= $row['alamat'] ?>, <?= $row['kecamatan'] ?>)<br><a class="btn btn-outline-info btn-sm" href="detail_rm.php?id=<?= $row['id'] ?>">Detail</a>');
    layerGroupPaluUtara.addLayer(marker);
<?php
  }
}
?>
<?php
$query = $conn->query("SELECT * FROM makan WHERE kecamatan='Palu Timur'");
if ($query->num_rows > 0) {
  while ($row = $query->fetch_assoc()) { ?>
    marker = L.marker([<?= $row['latitude'] ?>,<?= $row['longitude'] ?>]).bindPopup('<?= $row['nama'] ?> (<?= $row['alamat'] ?>, <?= $row['kecamatan'] ?>)<br><a class="btn btn-outline-info btn-sm" href="detail_rm.php?id=<?= $row['id'] ?>">Detail</a>');
    layerGroupPaluTimur.addLayer(marker);
<?php
  }
}
?>
<?php
$query = $conn->query("SELECT * FROM makan WHERE kecamatan='Palu barat'");
if ($query->num_rows > 0) {
  while ($row = $query->fetch_assoc()) { ?>
    marker = L.marker([<?= $row['latitude'] ?>,<?= $row['longitude'] ?>]).bindPopup('<?= $row['nama'] ?> (<?= $row['alamat'] ?>, <?= $row['kecamatan'] ?>)<br><a class="btn btn-outline-info btn-sm" href="detail_rm.php?id=<?= $row['id'] ?>">Detail</a>');
    layerGroupPaluBarat.addLayer(marker);
<?php
  }
}
?>
<?php
$query = $conn->query("SELECT * FROM makan WHERE kecamatan='Palu Selatan'");
if ($query->num_rows > 0) {
  while ($row = $query->fetch_assoc()) { ?>
    marker = L.marker([<?= $row['latitude'] ?>,<?= $row['longitude'] ?>]).bindPopup('<?= $row['nama'] ?> (<?= $row['alamat'] ?>, <?= $row['kecamatan'] ?>)');
    layerGroupPaluSelatan.addLayer(marker);
<?php
  }
}
?>

let overLayers = [
{
group:"Berdasarkan Kecamatan",
layers:[
{
name: 'Mantikulore',
active: false,
layer: layerGroupMantikulore
},
{
name: 'Palu Timur',
active: false,
layer: layerGroupPaluTimur
},
{
name: 'Palu Barat',
active: false,
layer: layerGroupPaluBarat
},
{
name: 'Palu Selatan',
active: false,
layer: layerGroupPaluSelatan
},
{name: 'Palu Utara',
  active: false,
layer: layerGroupPaluUtara},
{
name: 'Tatanga',
active: false,
layer: layerGroupTatanga
},
{
name: 'Tawaeli',
active: false,
layer: layerGroupTawaeli
},
{
name: 'Ulujadi',
active: false,
layer: layerGroupUlujadi
},

]
},
{
group:"Mantikulore",
collapsed: true,
layers:[
<?php
$query = $conn->query("SELECT * FROM makan WHERE kecamatan='Mantikulore'");
if ($query->num_rows > 0) {
  while ($row = $query->fetch_assoc()) { ?>{
name: '<?= $row['nama'] ?>',
layer: L.marker([<?= $row['latitude'] ?>,<?= $row['longitude'] ?>]).bindPopup('<?= $row['nama'] ?> (<?= $row['alamat'] ?>, <?= $row['kecamatan'] ?>)')
},
<?php
  }
}
?>
]
},
{
group:"Palu Timur",
collapsed: true,
layers:[
<?php
$query = $conn->query("SELECT * FROM makan WHERE kecamatan='Palu Timur'");
if ($query->num_rows > 0) {
  while ($row = $query->fetch_assoc()) { ?>{
name: '<?= $row['nama'] ?>',
layer: L.marker([<?= $row['latitude'] ?>,<?= $row['longitude'] ?>]).bindPopup('<?= $row['nama'] ?> (<?= $row['alamat'] ?>, <?= $row['kecamatan'] ?>)')
},
<?php
  }
}
?>
]
},
{
group:"Palu Barat",
collapsed: true,
layers:[
<?php
$query = $conn->query("SELECT * FROM makan WHERE kecamatan='Palu Barat'");
if ($query->num_rows > 0) {
  while ($row = $query->fetch_assoc()) { ?>{
name: '<?= $row['nama'] ?>',
layer: L.marker([<?= $row['latitude'] ?>,<?= $row['longitude'] ?>]).bindPopup('<?= $row['nama'] ?> (<?= $row['alamat'] ?>, <?= $row['kecamatan'] ?>)')
},
<?php
  }
}
?>
]
},
{
group:"Palu Selatan",
collapsed: true,
layers:[
<?php
$query = $conn->query("SELECT * FROM makan WHERE kecamatan='Palu Selatan'");
if ($query->num_rows > 0) {
  while ($row = $query->fetch_assoc()) { ?>{
name: '<?= $row['nama'] ?>',
layer: L.marker([<?= $row['latitude'] ?>,<?= $row['longitude'] ?>]).bindPopup('<?= $row['nama'] ?> (<?= $row['alamat'] ?>, <?= $row['kecamatan'] ?>)')
},
<?php
  }
}
?>
]
},
{
group:"Palu Utara",
collapsed: true,
layers:[
<?php
$query = $conn->query("SELECT * FROM makan WHERE kecamatan='Palu Utara'");
if ($query->num_rows > 0) {
  while ($row = $query->fetch_assoc()) { ?>{
name: '<?= $row['nama'] ?>',
layer: L.marker([<?= $row['latitude'] ?>,<?= $row['longitude'] ?>]).bindPopup('<?= $row['nama'] ?> (<?= $row['alamat'] ?>, <?= $row['kecamatan'] ?>)')
},
<?php
  }
}
?>
]
},
{
group:"Tatanga",
collapsed: true,
layers:[
<?php
$query = $conn->query("SELECT * FROM makan WHERE kecamatan='Tatanga'");
if ($query->num_rows > 0) {
  while ($row = $query->fetch_assoc()) { ?>{
name: '<?= $row['nama'] ?>',
layer: a = L.marker([<?= $row['latitude'] ?>,<?= $row['longitude'] ?>]).bindPopup('<?= $row['nama'] ?> (<?= $row['alamat'] ?>, <?= $row['kecamatan'] ?>)')
},
<?php
  }
}
?>
]
},
{
group:"Tawaeli",
collapsed: true,
layers:[
<?php
$query = $conn->query("SELECT * FROM makan WHERE kecamatan='Tawaeli'");
if ($query->num_rows > 0) {
  while ($row = $query->fetch_assoc()) { ?>{
name: '<?= $row['nama'] ?>',
layer: L.marker([<?= $row['latitude'] ?>,<?= $row['longitude'] ?>]).bindPopup('<?= $row['nama'] ?> (<?= $row['alamat'] ?>, <?= $row['kecamatan'] ?>)')
},
<?php
  }
}
?>
]
},
{
group:"Ulujadi",
collapsed: true,
layers:[
<?php
$query = $conn->query("SELECT * FROM makan WHERE kecamatan='Ulujadi'");
if ($query->num_rows > 0) {
  while ($row = $query->fetch_assoc()) { ?>{
name: '<?= $row['nama'] ?>',
layer: a = L.marker([<?= $row['latitude'] ?>,<?= $row['longitude'] ?>]).bindPopup('<?= $row['nama'] ?> (<?= $row['alamat'] ?>, <?= $row['kecamatan'] ?>)')
},
<?php
  }
}
?>
]
},
]
layerControl = map.addControl(new L.Control.PanelLayers(baseLayers,overLayers,{collapsibleGroups: true}));