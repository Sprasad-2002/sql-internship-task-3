
SHOW DATABASES;
use intern_training_db;

CREATE TABLE students2 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    email VARCHAR(100),
    city VARCHAR(50),
    marks INT
);

INSERT INTO students2 (id, name, age, email, city, marks) VALUES
(1, 'Amit Kumar', 21, 'amit@gmail.com', 'Delhi', 78),
(2, 'Rohit Sharma', 23, 'rohit@yahoo.com', 'Mumbai', 85),
(3, 'Sneha Patel', 20, 'sneha@gmail.com', 'Ahmedabad', 90),
(4, 'Anjali Singh', 22, NULL, 'Bangalore', 88),
(5, 'Nitin Verma', 19, 'nitin@gmail.com', 'Pune', 72);

select * from students2;

SELECT * 
FROM students2
WHERE age > 20;

-- AND
SELECT *
FROM students2
WHERE age > 18 AND city = 'Bangalore';


-- OR
SELECT *
FROM students2
WHERE city = 'Delhi' OR city = 'Mumbai';

Names starting with 'A'
SELECT *
FROM students2
WHERE name LIKE 'A%';

Names ending with 'n'
SELECT *
FROM students2
WHERE name LIKE '%n';

Exactly 5-letter names
SELECT *
FROM students2
WHERE name LIKE '_____';

IN
SELECT *
FROM students2
WHERE city IN ('Delhi', 'Chennai', 'Pune');

BETWEEN
SELECT *
FROM students2
WHERE age BETWEEN 18 AND 25;

SELECT *
FROM students2
WHERE email IS NULL;

SELECT *
FROM students2
WHERE email IS NOT NULL;

SELECT *
FROM students2
WHERE email LIKE '%gmail.com';

SELECT 
    name AS Student_Name,
    age AS Student_Age,
    city AS City
FROM students2
WHERE age >= 21;

SELECT city, COUNT(*) AS total_students
FROM students2
WHERE age > 18
GROUP BY city
HAVING COUNT(*) > 2
ORDER BY total_students DESC;