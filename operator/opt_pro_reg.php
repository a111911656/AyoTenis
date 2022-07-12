<?php 
session_start();
include ("../koneksi.php");
// jika tombol daftar di klik maka akan mengeksekusi code pada file ini
if(isset($_POST['submit'])){
		$username = $_POST['username'];    // pemberian nilai variabel
		$nama_opt = $_POST['nama_opt'];    // setiap variabel berisi apa yang telah diinputkan user
		$nama_lapangan = $_POST['nama_lapangan'];
		$email = $_POST['email'];
		$password = $_POST['password'];
		$alamat = $_POST['alamat'];
		$kota = $_POST['kota'];

		$cek = mysqli_num_rows(mysqli_query($koneksi,"SELECT * FROM operator WHERE email='$email'"));
		$cek2 = mysqli_num_rows(mysqli_query($koneksi,"SELECT * FROM operator WHERE username='$username'"));
		$cek3 = mysqli_num_rows(mysqli_query($koneksi,"SELECT * FROM member WHERE email='$email'"));
		$cek4 = mysqli_num_rows(mysqli_query($koneksi,"SELECT * FROM member WHERE username_member='$username'"));
		//untuk mengecek apakah username maupun email telah terdaftar sebelumnya atau tidak pada database
		if ($cek > 0 || $cek3 > 0){
			echo "<script>window.alert('Email yang anda masukan sudah ada')
			window.location='opt_daftar.php'</script>";
		} elseif($cek2 > 0 || $cek4 > 0){
			echo "<script>window.alert('Username yang anda masukan sudah ada')
			window.location='opt_daftar.php'</script>";
		} elseif($_POST['username'] == ''){
			echo "<script>window.alert('Username belum diisi')
			window.location='opt_daftar.php'</script>";
		} elseif($_POST['email'] == ''){
			echo "<script>window.alert('Email belum diisi')
			window.location='opt_daftar.php'</script>";
		} else {
			//jika tidak terdapat username maupun email yang sama pada database
			//akan menyimpan data yang telah diinputkan
			//Upload Foto
			$filename = $_FILES['foto']['name'];
			$lokasi = $_FILES['foto']['tmp_name'];
			copy($lokasi, "assets/foto_opt/".$filename);
			//untuk menyimpan data
			$sql2 = "INSERT INTO operator VALUES ('$username', '$nama_opt','$nama_lapangan', '$email','$password','$alamat','$kota','$filename')";
        	$result2 = mysqli_query($koneksi,$sql2) or die(mysqli_error());

        if($result2)
            {
				// menampilkan alert jika berhasil
                echo "<script> alert(\"Akun Berhasil Dibuat\"); window.location = \"../index.php\"; </script>";
            }
            else
            {
				// menampilkan alert jika gagal
                echo "<script> alert(\"Maaf!! Silakan Cek Kembali Form Yang Telah Anda Isi\"); window.location = \"opt_daftar.php\"; </script>";
            }
		}
		}
?>