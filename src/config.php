<?php
$host = 'db';
$dbname = 'car_rent';
$user = 'caruser';
$pass = 'carpass';

$conn = new mysqli($host, $user, $pass, $dbname);

if ($conn->connect_error) {
    die("Andmebaasi ühenduse viga: " . $conn->connect_error);
}

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
?>
