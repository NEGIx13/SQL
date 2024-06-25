#QUERY 1
CREATE TABLE customers(
    id INT PRIMARY KEY,
    name VARCHAR(15),
    age INT,
    address VARCHAR(25),
    salary DECIMAL(8,0)
);

INSERT INTO customers VALUES(1, "Nidhi", 38, "Delhi", 2000);
INSERT INTO customers VALUES(2, "Ankit", 25, "Mumbai", 1500);
INSERT INTO customers VALUES(3, "Chetan", 31, "Noida", 2000);
INSERT INTO customers VALUES(4, "Hardik", 22, "MP", 6500);
INSERT INTO customers VALUES(5, "Komal", 23, "Bhopal", 8500);
INSERT INTO customers VALUES(6, "Muffy", 27, "Kota", 4500);
INSERT INTO customers VALUES(7, "Kaushik", 21, "Indore", 10000);

SELECT * FROM customers;

#QUERY 2
SELECT * FROM customers
WHERE salary > 5000;

#QUERY 3
SELECT * FROM customers
WHERE salary = 2000;

#QUERY 4
SELECT * FROM customers
WHERE salary != 2000;

#QUERY 5
SELECT * FROM customers
WHERE salary >= 6500;

#QUERY 6
SELECT * FROM customers
WHERE age >= 25 AND salary >= 6500;

#QUERY 7
SELECT * FROM customers
WHERE age >= 25 OR salary >= 6500;

#QUERY 8
SELECT name, age, salary FROM customers 
WHERE age >= 25;

DROP TABLE customers;