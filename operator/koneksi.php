<?php

$kon = mysqli_connect('localhost', 'root', '', 'ayotenis');

if (!$kon) {
    die("Koneksi Gagal : " . mysqli_connect_error());
}