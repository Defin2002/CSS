

CREATE DATABASE Mobile_Store;


USE Mobile_Store;
SET SQL_SAFE_UPDATES = 0;




CREATE TABLE mobiles (
    id INT PRIMARY KEY,
    brand VARCHAR(50),
    model VARCHAR(50),
    price INT,
    stock INT
);



INSERT INTO mobiles (id, brand, model, price, stock)
VALUES
(1, 'Samsung', 'Galaxy M14', 12000, 30),
(2, 'Redmi', 'Note 12', 15000, 25),
(3, 'Realme', 'Narzo 50', 13000, 20),
(4, 'Samsung', 'Galaxy A23', 18000, 10);


SELECT * FROM mobiles;


SELECT *
FROM mobiles
WHERE price > 13000
   OR stock < 15;



UPDATE mobiles
SET stock = stock + 5,
    price = 12500
WHERE model = 'Narzo 50';

SELECT * FROM mobiles
WHERE model = 'Narzo 50';




SET SQL_SAFE_UPDATES = 0;

DELETE FROM mobiles
WHERE id = 2;


SELECT * FROM mobiles;


SELECT
    MIN(price) AS Lowest_Price,
    MAX(price) AS Highest_Price
FROM mobiles;



SELECT
    SUM(stock) AS Total_Stock
FROM mobiles;



SELECT *
FROM mobiles
ORDER BY price DESC
LIMIT 2;



SELECT COUNT(*) AS Total_Mobiles
FROM mobiles;


SELECT AVG(price) AS Average_Price
FROM mobiles;



SELECT * FROM mobiles;