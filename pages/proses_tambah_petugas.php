<?php
if($_POST){
$id_petugas=$_POST['id_petugas'];
$nama_petugas=$_POST['nama_petugas'];
$username=$_POST['username'];
$password=$_POST['password'];
$level=$_POST['level'];

if(empty($id_petugas)){
    echo "<script>alert('id petugas tidak boleh
    kosong');location.href='../pages/petugas.php';</script>";
    } elseif(empty($nama_petugas)){
    echo "<script>alert('nama petugas tidak boleh
    kosong');location.href='../pages/petugas.php';</script>";
    } elseif(empty($username)){
    echo "<script>alert('username tidak boleh
    kosong');location.href='../pages/petugas.php';</script>";
    } else {
    include "koneksi.php";
    $insert=mysqli_query($conn,"insert into petugas
    (id_petugas,nama_petugas, username, password, level)
    value
    ('".$id_petugas."','".$nama_petugas."','".$username."','".$password."','".$level."')") or
    die(mysqli_error($conn));
if($insert){
    echo "<script>alert('Sukses menambahkan petugas');location.href='../pages/petugas.php';</script>";
} else {
    echo "<script>alert('Gagal menambahkan petugas');location.href='../pages/petugas.php';</script>";
}
}
}
?>