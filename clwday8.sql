
CREATE DATABASE GroceryShop;


USE GroceryShop;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);


INSERT INTO products (product_id, product_name, price)
VALUES
(1, 'Rice', 60.00),
(2, 'Sugar', 45.00),
(3, 'Milk', 30.00);


SELECT * FROM products;

ALTER TABLE products
ADD category VARCHAR(50);


UPDATE products
SET category = 'Groceries'
WHERE product_id = 1;

UPDATE products
SET category = 'Groceries'
WHERE product_id = 2;

UPDATE products
SET category = 'Dairy'
WHERE product_id = 3;

SELECT * FROM products;


TRUNCATE TABLE products;

SELECT * FROM products;

DROP DATABASE GroceryShop;