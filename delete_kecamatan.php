<?php
include 'koneksi.php';
session_start();
$id = $_GET['id'];
$query = $conn->query("DELETE FROM kecamatan WHERE id='$id'");
if($query){
  $_SESSION['pesan'] = 'Data kecamatan dihapus!';
  echo "<script>
  window.location.href = 'kecamatan.php';
  </script>";
}

?>