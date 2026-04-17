<?php
require 'config.php';

if (!isset($_GET['id'])) {
    die("ID puudub.");
}

$id = $_GET['id'];

$stmt = $conn->prepare("SELECT * FROM autod WHERE id = :id");
$stmt->execute([':id' => $id]);
$auto = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$auto) {
    die("Andmeid ei leitud.");
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $mark = $_POST['mark'];
    $mudel = $_POST['mudel'];
    $hind = $_POST['hind'];

    $sql = "UPDATE autod SET mark = :mark, mudel = :mudel, hind = :hind WHERE id = :id";
    $stmt = $conn->prepare($sql);
    $stmt->execute([
        ':mark' => $mark,
        ':mudel' => $mudel,
        ':hind' => $hind,
        ':id' => $id
    ]);

    header("Location: index.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <title>Muuda autot</title>
</head>
<body>
    <h1>Muuda auto andmeid</h1>

    <form method="post">
        <label>Mark:</label><br>
        <input type="text" name="mark" value="<?= htmlspecialchars($auto['mark']) ?>" required><br><br>

        <label>Mudel:</label><br>
        <input type="text" name="mudel" value="<?= htmlspecialchars($auto['mudel']) ?>" required><br><br>

        <label>Hind:</label><br>
        <input type="number" step="0.01" name="hind" value="<?= $auto['hind'] ?>" required><br><br>

        <button type="submit">Uuenda</button>
    </form>

    <br>
    <a href="index.php">Tagasi</a>
</body>
</html>