<?php
session_start();
if (isset($_SESSION['username'])) {
  $_SESSION['message'] = "logout berhasil";
  unset($_SESSION['username']);
  unset($_SESSION['nama']);
  header('location:login.php');
}
