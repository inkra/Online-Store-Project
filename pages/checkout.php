<?php
session_start();
include "koneksi.php";
$cart=@$_SESSION['cart'];
if(count($cart)>0){

$id=mysqli_insert_id($conn);

mysqli_query($conn, "insert into transaksi(id_petugas,tgl_transaksi) value('".$_SESSION['id_petugas']."','".date("Y/m/d")."')");

foreach ($cart as $key_produk => $val_produk) {
$subtotal = $val_produk['qty']*$val_produk['harga'];
mysqli_query($conn,"insert into detail_transaksi(id_detail_transaksi,id_transaksi,id_produk,qty,subtotal) value('".$id."','".$val_produk['id_produk']."','".$val_produk['id_produk']."','".$val_produk['qty']."','".$subtotal."')");
}
unset($_SESSION['cart']);
echo '<script>alert("Anda berhasil membeli produk");location.href="histori.php"</script>';
}
?>