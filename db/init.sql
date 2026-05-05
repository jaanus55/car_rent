CREATE TABLE IF NOT EXISTS cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    brand VARCHAR(100) NOT NULL,
    model VARCHAR(100) NOT NULL,
    engine VARCHAR(100) NOT NULL,
    fuel VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    image VARCHAR(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS admins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

INSERT INTO admins (username, password)
VALUES
('admin', '$2y$10$8jK1Q5rYtJ2hJ4nQj5Pq7OW8V1HcZ4n4P8xQv6yTXi8j9wL6QmM4W');

INSERT INTO cars (brand, model, engine, fuel, price, image)
VALUES
('BMW', '320d', '2.0', 'Diisel', 55.00, NULL),
('Audi', 'A4', '2.0 TDI', 'Diisel', 60.00, NULL),
('Toyota', 'Corolla', '1.8 Hybrid', 'Hübriid', 50.00, NULL);
