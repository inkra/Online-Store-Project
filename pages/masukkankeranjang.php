<?php
session_start();
if($_POST){
include "koneksi.php";
$qry_get_produk=mysqli_query($conn,"select * from produk where id_produk = '".$_GET['id_produk']."'");
$dt_produk=mysqli_fetch_array($qry_get_produk);
$_SESSION['cart'][]=array(
'id_produk'=>$dt_produk['id_produk'],
'nama_produk'=>$dt_produk['nama_produk'],
'harga' =>$dt_produk['harga'],
'qty'=>$_POST['jumlah_beli']
);
}
header('location: keranjang.php');
?>