<?php
include 'koneksi.php';
session_start();
$id = $_GET['id'];
$query = $conn->query("DELETE FROM makan WHERE id='$id'");
if($query){
  $_SESSION['pesan'] = 'Data Telah dihapus';
  echo"<script>
  window.location.href = 'rumah_makan.php';
  </script>";
}?>