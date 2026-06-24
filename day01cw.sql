
CREATE DATABASE CollegeDB;
USE CollegeDB;


CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    grade INT
);


INSERT INTO students (id, name, age, department, grade) VALUES
(1, 'Arun Kumar', 21, 'Computer Science', 85),
(2, 'Priya Sharma', 19, 'Physics', 90),
(3, 'Rahul Verma', 22, 'Mathematics', 78),
(4, 'Sneha Reddy', 20, 'Computer Science', 72);


SELECT *
FROM students
WHERE age > 20;


SELECT *
FROM students
WHERE department = 'Computer Science'
   OR department = 'Physics';


SELECT *
FROM students
WHERE grade = 90;


SELECT *
FROM students
WHERE grade BETWEEN 70 AND 90;