<?php
require 'config.php';

if (!isset($_GET['id'])) {
    die("ID puudub.");
}

$id = $_GET['id'];

$stmt = $conn->prepare("DELETE FROM autod WHERE id = :id");
$stmt->execute([':id' => $id]);

header("Location: index.php");
exit;
?>
