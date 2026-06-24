
CREATE DATABASE BookStore;
USE BookStore;


CREATE TABLE books (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    price DECIMAL(10,2),
    stock_status VARCHAR(20),
    genre VARCHAR(50)
);


INSERT INTO books (id, title, author, price, stock_status, genre) VALUES
(1, 'The Alchemist', 'Paulo Coelho', 350.00, 'In Stock', 'Fiction'),
(2, 'Atomic Habits', 'James Clear', 450.00, 'In Stock', 'Self Help'),
(3, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 300.00, 'Out of Stock', 'Finance'),
(4, 'Harry Potter', 'J.K. Rowling', 800.00, 'In Stock', 'Fantasy'),
(5, 'The Psychology of Money', 'Morgan Housel', 650.00, 'In Stock', 'Finance'),
(6, 'Wings of Fire', 'A.P.J. Abdul Kalam', 250.00, 'Out of Stock', 'Biography'),
(7, 'Think and Grow Rich', 'Napoleon Hill', 750.00, 'In Stock', 'Self Help'),
(8, 'The Hobbit', 'J.R.R. Tolkien', 550.00, 'In Stock', 'Fantasy');


SELECT DISTINCT genre
FROM books;


SELECT *
FROM books
WHERE stock_status = 'In Stock'
  AND price < 400;


SELECT *
FROM books
WHERE stock_status = 'Out of Stock'
   OR price > 700;

SELECT
    title,
    price,
    price * 1.10 AS price_with_gst
FROM books;


SELECT
    title,
    price,
    stock_status
FROM books
ORDER BY price DESC;