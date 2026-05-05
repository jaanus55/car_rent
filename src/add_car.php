<?php
require_once 'auth.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $brand = trim($_POST['brand'] ?? '');
    $model = trim($_POST['model'] ?? '');
    $engine = trim($_POST['engine'] ?? '');
    $fuel = trim($_POST['fuel'] ?? '');
    $price = trim($_POST['price'] ?? '');
    $imageName = null;

    if (!empty($_FILES['image']['name'])) {
        $imageName = time() . '_' . basename($_FILES['image']['name']);
        $targetPath = "uploads/" . $imageName;
        move_uploaded_file($_FILES['image']['tmp_name'], $targetPath);
    }

    $stmt = $conn->prepare("INSERT INTO cars (brand, model, engine, fuel, price, image) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssds", $brand, $model, $engine, $fuel, $price, $imageName);
    $stmt->execute();

    header("Location: admin.php");
    exit;
}
?>
<!DOCTYPE html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lisa auto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container py-4">
    <h1 class="mb-4">Lisa uus auto</h1>

    <form method="post" enctype="multipart/form-data" class="card card-body shadow-sm">
        <div class="mb-3">
            <label class="form-label">Mark</label>
            <input type="text" name="brand" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Mudel</label>
            <input type="text" name="model" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Mootor</label>
            <input type="text" name="engine" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Kütus</label>
            <input type="text" name="fuel" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Hind (€)</label>
            <input type="number" step="0.01" name="price" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Pilt</label>
            <input type="file" name="image" class="form-control">
        </div>

        <div>
            <button type="submit" class="btn btn-success">Salvesta</button>
            <a href="admin.php" class="btn btn-secondary">Tagasi</a>
        </div>
    </form>
</div>
</body>
</html>
