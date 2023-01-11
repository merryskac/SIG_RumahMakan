<?php
include 'header.php'
;include 'navbar.php';
?>

<input type="text" name="latitude" id="awal">
<input type="text" name="longitude" id="longitude" >

<div class="map" id="map"style="height: 600px; border:1px solid black"></div>

<script>
  
  let mymap = L.map('map').setView([-0.8828804972219374, 119.85731606079105], 14)
  let layermap = L.tileLayer('https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibWVycnlza2FjIiwiYSI6ImNreTgwcmUyNDFhbjEzMWxxb3M1OWs5emcifQ.4oskRh8WEmGkxBz38lTeww', {
       attribution: '© <a href="https://www.mapbox.com/feedback/">Mapbox</a> © <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
})
mymap.addLayer(layermap)

let latlang = [0,0]
  if(latlang[0]==0 && latlang[1]==0){
    latlang = [-0.888027, 119.874639]
  }

let marker = new L.marker(latlang,{
  draggable:'true'
})

marker.on('dragend',function(event){
  let position = marker.getLatLng();
  marker.setLatLng(position).update()
  $("#awal").val(position.lat+','+position.lng);
  $("#longitude").val(position.lng);
})

mymap.addLayer(marker)
</script>
