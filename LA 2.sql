#QUERY 1

INSERT INTO student VALUES(10, "Nidhi", 18, "Delhi", 9999911111);
INSERT INTO student VALUES(11, "Ankit", 19, "Gurugram", 9888881111);
INSERT INTO student VALUES(12, "Chetan", 18, "Noida", 9777772222);

INSERT INTO dept VALUES(1, "VSIT", "Block A");
INSERT INTO dept VALUES(2, "VJMC", "Block B");
INSERT INTO dept VALUES(3, "VSBS", "Block B");
INSERT INTO dept VALUES(4, "DSB", "Block A");
INSERT INTO dept VALUES(5, "SCIENCE", "Block A");

INSERT INTO faculty VALUES(1, "Vidhi Kapoor", "1990-01-15", "Delhi", "F");
INSERT INTO faculty VALUES(2, "Ansh Juneja", "1994-10-13", "Gurugram", "M");
INSERT INTO faculty VALUES(3, "Sourabh Singh", "1987-03-09", "Noida", "M");

#QUERY 2
SELECT * FROM student;

#QUERY 3
SELECT * FROM dept;

#QUERY 4
SELECT * FROM faculty;

#QUERY 5
SELECT * FROM student 
WHERE age = 18;

#QUERY 6
DELETE FROM dept
WHERE deptno = 5;

#QUERY 7
SELECT * FROM faculty 
WHERE gender = "M";