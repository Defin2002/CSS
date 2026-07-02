
CREATE DATABASE BookStoreDB;


USE BookStoreDB;


CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(100)
);


CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    price DECIMAL(10,2),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);


INSERT INTO authors (author_id, name, country)
VALUES
(1, 'R.K. Narayan', 'India'),
(2, 'J.K. Rowling', 'United Kingdom'),
(3, 'Chetan Bhagat', 'India');


SELECT * FROM authors;


INSERT INTO books (book_id, title, price, author_id)
VALUES
(101, 'Malgudi Days', 350.00, 1),
(102, 'Harry Potter', 650.00, 2),
(103, 'Five Point Someone', 300.00, 3);


SELECT * FROM books;


ALTER TABLE books
ADD published_year INT;


UPDATE books
SET published_year = 1943
WHERE book_id = 101;

UPDATE books
SET published_year = 1997
WHERE book_id = 102;

UPDATE books
SET published_year = 2004
WHERE book_id = 103;

SELECT * FROM books;


DELETE FROM books;


SELECT * FROM books;


DROP DATABASE BookStoreDB;