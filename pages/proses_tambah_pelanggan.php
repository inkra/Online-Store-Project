<?php
if($_POST){
$id_pelanggan=$_POST['id_pelanggan'];
$nama=$_POST['nama'];
$alamat=$_POST['alamat'];
$telp=$_POST['telp'];

if(empty($id_pelanggan)){
    echo "<script>alert('id pelanggan tidak boleh
    kosong');location.href='../pages/pelanggan.php';</script>";
    } elseif(empty($nama)){
    echo "<script>alert('nama pelanggan tidak boleh
    kosong');location.href='../pages/pelanggan.php';</script>";
    } elseif(empty($telp)){
    echo "<script>alert('no telp tidak boleh
    kosong');location.href='../pages/pelanggan.php';</script>";
    } else {
    include "koneksi.php";
    $insert=mysqli_query($conn,"insert into pelanggan
    (id_pelanggan,nama, alamat, telp)
    value
    ('".$id_pelanggan."','".$nama."','".$alamat."','".$telp."')") or
    die(mysqli_error($conn));
if($insert){
    //header("location : tambah_pelanggan.php");
    echo "<script>alert('Sukses menambahkan pelanggan');location.href='../pages/pelanggan.php';</script>";
} else {
    echo "<script>alert('Gagal menambahkan pelanggan');location.href='../pages/pelanggan.php';</script>";
}
}
}
?>