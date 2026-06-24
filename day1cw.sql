
CREATE DATABASE online_store;


USE online_store;


CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    in_stock VARCHAR(3)
);


INSERT INTO products (id, name, category, price, in_stock) VALUES
(1, 'Laptop', 'Electronics', 55000.00, 'Yes'),
(2, 'Mouse', 'Electronics', 450.00, 'Yes'),
(3, 'Keyboard', 'Electronics', 1200.00, 'No'),
(4, 'Notebook', 'Stationery', 80.00, 'Yes'),
(5, 'Printer', 'Electronics', 8500.00, 'No'),
(6, 'Pen', 'Stationery', 20.00, 'Yes'),
(7, 'Office Chair', 'Furniture', 4500.00, 'Yes'),
(8, 'Table', 'Furniture', 12000.00, 'No');


SELECT DISTINCT category
FROM products;


SELECT *
FROM products
WHERE in_stock = 'Yes'
AND price < 500;


SELECT *
FROM products
WHERE in_stock = 'No'
OR price > 1000;


SELECT name, price
FROM products
ORDER BY price DESC;

SELECT
    name,
    price * 1.18 AS price_with_tax
FROM products;