<?php
require 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $mark = $_POST['mark'];
    $mudel = $_POST['mudel'];
    $hind = $_POST['hind'];

    $sql = "INSERT INTO autod (mark, mudel, hind) VALUES (:mark, :mudel, :hind)";
    $stmt = $conn->prepare($sql);
    $stmt->execute([
        ':mark' => $mark,
        ':mudel' => $mudel,
        ':hind' => $hind
    ]);

    header("Location: index.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <title>Lisa auto</title>
</head>
<body>
    <h1>Lisa uus auto</h1>

    <form method="post">
        <label>Mark:</label><br>
        <input type="text" name="mark" required><br><br>

        <label>Mudel:</label><br>
        <input type="text" name="mudel" required><br><br>

        <label>Hind:</label><br>
        <input type="number" step="0.01" name="hind" required><br><br>

        <button type="submit">Salvesta</button>
    </form>

    <br>
    <a href="index.php">Tagasi</a>
</body>
</html>