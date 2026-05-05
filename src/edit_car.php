<?php
require_once 'auth.php';

$id = isset($_GET['id']) ? (int)$_GET['id'] : 0;

$stmt = $conn->prepare("SELECT * FROM cars WHERE id = ?");
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();
$car = $result->fetch_assoc();

if (!$car) {
    die("Autot ei leitud.");
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $brand = trim($_POST['brand'] ?? '');
    $model = trim($_POST['model'] ?? '');
    $engine = trim($_POST['engine'] ?? '');
    $fuel = trim($_POST['fuel'] ?? '');
    $price = trim($_POST['price'] ?? '');

    $stmt = $conn->prepare("UPDATE cars SET brand = ?, model = ?, engine = ?, fuel = ?, price = ? WHERE id = ?");
    $stmt->bind_param("ssssdi", $brand, $model, $engine, $fuel, $price, $id);
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
    <title>Muuda autot</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container py-4">
    <h1 class="mb-4">Muuda autot</h1>

    <form method="post" class="card card-body shadow-sm">
        <div class="mb-3">
            <label class="form-label">Mark</label>
            <input type="text" name="brand" class="form-control" value="<?php echo htmlspecialchars($car['brand']); ?>" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Mudel</label>
            <input type="text" name="model" class="form-control" value="<?php echo htmlspecialchars($car['model']); ?>" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Mootor</label>
            <input type="text" name="engine" class="form-control" value="<?php echo htmlspecialchars($car['engine']); ?>" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Kütus</label>
            <input type="text" name="fuel" class="form-control" value="<?php echo htmlspecialchars($car['fuel']); ?>" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Hind (€)</label>
            <input type="number" step="0.01" name="price" class="form-control" value="<?php echo htmlspecialchars($car['price']); ?>" required>
        </div>

        <div>
            <button type="submit" class="btn btn-primary">Uuenda</button>
            <a href="admin.php" class="btn btn-secondary">Tagasi</a>
        </div>
    </form>
</div>
</body>
</html>
