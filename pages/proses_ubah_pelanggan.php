<?php
    if($_POST){
        $id_pelanggan=$_POST['id_pelanggan'];
        $nama=$_POST['nama'];
        $alamat=$_POST['alamat'];
        $telp=$_POST['telp'];
            if(empty($nama)){
                echo "<script>alert('nama pelanggan tidak boleh kosong');location.href='../pages/ubah_pelanggan.php';</script>";
            } elseif(empty($alamat)){
                echo "<script>alert('alamat tidak boleh kosong');location.href='../pages/ubah_pelanggan.php';</script>";
            } elseif(empty($telp)){
                echo "<script>alert('telp tidak boleh kosong');location.href='../pages/ubah_pelanggan.php';</script>";
            } else {
                include "koneksi.php";
                $update=mysqli_query($conn,"update pelanggan set nama='".$nama."',alamat='".$alamat."',
                telp='".$telp."',id_pelanggan='".$id_pelanggan."' where id_pelanggan = '".$id_pelanggan."'") or die(mysqli_error($conn));
            if($update){
                echo "<script>alert('Sukses update pelanggan');location.href='../pages/pelanggan.php';</script>";
            } else {
                echo "<script>alert('Gagal update pelanggan');location.href='../pages/ubah_pelanggan.php?id_petugas=".$id_pelanggan."';</script>";
            }
        }
    }
?>