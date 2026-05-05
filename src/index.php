<?php require_once 'config.php'; ?>
<!DOCTYPE html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Autorent</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container py-4">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h1>Autorendi autod</h1>
        <a href="login.php" class="btn btn-dark">Admin login</a>
    </div>

    <div class="row">
        <?php
        $result = $conn->query("SELECT * FROM cars ORDER BY id DESC");
        if ($result && $result->num_rows > 0):
            while ($car = $result->fetch_assoc()):
        ?>
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow-sm">
                    <?php if (!empty($car['image']) && file_exists("uploads/" . $car['image'])): ?>
                        <img src="uploads/<?php echo htmlspecialchars($car['image']); ?>" class="card-img-top" alt="Auto pilt">
                    <?php else: ?>
                        <div class="card-img-top bg-light d-flex align-items-center justify-content-center" style="height: 220px;">
                            <span class="text-muted">Pilt puudub</span>
                        </div>
                    <?php endif; ?>

                    <div class="card-body">
                        <h5 class="card-title"><?php echo htmlspecialchars($car['brand'] . ' ' . $car['model']); ?></h5>
                        <p class="card-text mb-1"><strong>Mootor:</strong> <?php echo htmlspecialchars($car['engine']); ?></p>
                        <p class="card-text mb-1"><strong>Kütus:</strong> <?php echo htmlspecialchars($car['fuel']); ?></p>
                        <p class="card-text"><strong>Hind:</strong> <?php echo htmlspecialchars($car['price']); ?> € / päev</p>
                    </div>
                </div>
            </div>
        <?php
            endwhile;
        else:
        ?>
            <p>Ühtegi autot ei leitud.</p>
        <?php endif; ?>
    </div>
</div>
</body>
</html>
