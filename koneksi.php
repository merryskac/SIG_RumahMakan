<?php
$conn = new mysqli('localhost','root','','rumah_makan');
if(mysqli_connect_error()){
  echo ('Belum terkoneksi dengan DB');
}
?>