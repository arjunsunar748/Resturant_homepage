CREATE DATABASE restaurant_db;

USE restaurant_db;

-- Table for admin users
CREATE TABLE admin_users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Table for menu items
CREATE TABLE menu (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10, 2),
    category VARCHAR(50)
);

-- Insert a default admin user (password: admin123, hashed later in PHP)
INSERT INTO admin_users (username, password)
VALUES ('admin', MD5('admin123'));
