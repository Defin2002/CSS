
CREATE DATABASE LibraryDB;
USE LibraryDB;


CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100)
);


CREATE TABLE borrowers (
    borrower_id INT PRIMARY KEY,
    name VARCHAR(50),
    book_id INT,
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);


INSERT INTO books (book_id, title) VALUES
(1, 'The Alchemist'),
(2, 'The Power of Now'),
(3, 'Think and Grow Rich'),
(4, 'Clean Code');


INSERT INTO borrowers (borrower_id, name, book_id) VALUES
(101, 'Alice', 1),
(102, 'Bob', 2),
(103, 'Charlie', NULL);


SELECT
    b.book_id,
    b.title,
    br.name AS borrower_name
FROM books b
LEFT JOIN borrowers br
ON b.book_id = br.book_id;


SELECT
    br.borrower_id,
    br.name,
    b.book_id,
    b.title
FROM borrowers br
LEFT JOIN books b
ON br.book_id = b.book_id;


SELECT
    b.book_id,
    b.title
FROM books b
LEFT JOIN borrowers br
ON b.book_id = br.book_id
WHERE br.book_id IS NULL;


SELECT
    br.borrower_id,
    br.name,
    b.book_id,
    b.title
FROM borrowers br
LEFT JOIN books b
ON br.book_id = b.book_id;