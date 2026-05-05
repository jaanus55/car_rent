<?php require_once 'auth.php'; ?>
<!DOCTYPE html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin vaade</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container py-4">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h1>Admin vaade</h1>
        <div>
            <span class="me-3">Sisse logitud: <?php echo htmlspecialchars($_SESSION['admin_username']); ?></span>
            <a href="logout.php" class="btn btn-outline-danger">Logi välja</a>
        </div>
    </div>

    <div class="mb-3">
        <a href="add_car.php" class="btn btn-success">Lisa uus auto</a>
        <a href="index.php" class="btn btn-secondary">Vaata avalehte</a>
    </div>

    <div class="table-responsive">
        <table class="table table-bordered table-striped align-middle">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Mark</th>
                    <th>Mudel</th>
                    <th>Mootor</th>
                    <th>Kütus</th>
                    <th>Hind</th>
                    <th>Pilt</th>
                    <th>Tegevused</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $result = $conn->query("SELECT * FROM cars ORDER BY id DESC");
                if ($result && $result->num_rows > 0):
                    while ($car = $result->fetch_assoc()):
                ?>
                <tr>
                    <td><?php echo $car['id']; ?></td>
                    <td><?php echo htmlspecialchars($car['brand']); ?></td>
                    <td><?php echo htmlspecialchars($car['model']); ?></td>
                    <td><?php echo htmlspecialchars($car['engine']); ?></td>
                    <td><?php echo htmlspecialchars($car['fuel']); ?></td>
                    <td><?php echo htmlspecialchars($car['price']); ?> €</td>
                    <td><?php echo htmlspecialchars($car['image'] ?? ''); ?></td>
                    <td>
                        <a href="edit_car.php?id=<?php echo $car['id']; ?>" class="btn btn-sm btn-primary">Muuda</a>
                        <a href="delete_car.php?id=<?php echo $car['id']; ?>" class="btn btn-sm btn-danger" onclick="return confirm('Kas kustutada see auto?')">Kustuta</a>
                    </td>
                </tr>
                <?php
                    endwhile;
                else:
                ?>
                <tr>
                    <td colspan="8" class="text-center">Autosid ei leitud.</td>
                </tr>
                <?php endif; ?>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
