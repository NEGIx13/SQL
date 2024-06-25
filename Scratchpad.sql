# STATUS;

# DESCRIBE classroom;
SHOW DATABASES;
SHOW TABLES;

USE world;
USE school;
USE mysql;

DESCRIBE country;
DESCRIBE db;
DESCRIBE employee;
DESCRIBE classroom;
DESCRIBE vehicle;
DESCRIBE password_history;

ALTER TABLE classroom DROP timepass;

SELECT * FROM classroom;
SELECT * FROM student; 
SELECT * FROM employee;
SELECT * FROM vehicle; 
SELECT * FROM password_history; 
SELECT * FROM country;

CREATE TABLE classroom (
    roll_no INT,
    student_name VARCHAR,
    maths_marks INT,
    science_marks INT,
    cs_marks INT
    PRIMARY KEY(roll_no)
);

UPDATE employee
set name = "ryxman"
WHERE dcode = "D02";

##############################
SELECT POW(roll_no,3)
FROM classroom;
# WHERE roll_no = 3\

SELECT round(maths_marks/2.5,0)
FROM classroom
WHERE roll_no = 2;

SELECT MOD(science_marks,5)
FROM classroom;

SELECT UPPER(student_name) 
FROM classroom;

SELECT LOWER(student_name)
FROM classroom;

SELECT MID(student_name,8,4)
FROM classroom;

SELECT LEFT(student_name,6)
FROM classroom;

SELECT RIGHT(student_name,4)
FROM classroom;

SELECT INSTR(student_name,"a")
FROM classroom;

SELECT LTRIM(student_name)
FROM classroom;

SELECT RTRIM(student_name)
FROM classroom;

SELECT TRIM(student_name)
FROM classroom;

#######DAT4 AND TIME FUNC///################
SELECT NOW();

SELECT MONTH(doj)
FROM employee;

SELECT MONTHNAME(doj)
FROM employee;

SELECT YEAR(dob)
FROM employee;

SELECT DAY(doj)
FROM employee;

SELECT DAYNAME(doj)
FROM employee;

#################AGGREGATE FUNCTIONS####################
SELECT MAX(maths_marks)
FROM classroom;

SELECT MIN(name)
FROM employee;

SELECT SUM(cs_marks)
FROM classroom
#WHERE maths_marks>90;

SELECT COUNT(*)
FROM vehicle;

SELECT ROUND(AVG(salary),1)  #round added
FROM emp;

# GROUP BY 

SELECT vcode,count(vehicle_type) AS "number of teams"
FROM vehicle
GROUP BY vcode;

SELECT vcode,count(vehicle_type)
FROM vehicle
GROUP BY vcode
HAVING count(vehicle_type)> 1;

#### RELATIONS OPERATORS ####
# IN ORDER TO USE RELATIONS OPERATIONS WE NEED TO MAKE SURE THAT
# BOTH TABLES HAVE THE SAME NO OF ATTRIBULES WHCIH ARE IN THE SAME DOPMAIN

SELECT * FROM classroom
UNION 
SELECT * FROM employee;

# INTERSECT
SELECT * FROM classroom
WHERE classroom.name IN(SELECT employee.name FROM employee);

# MINUS
SELECT * FROM classroom
WHERE classroom.name NOT IN(SELECT employee.name FROM employee);

# CARTISIAN PRODUCT (dont need same attributes)
SELECT * FROM classroom,employee;

# JOIN AKA CARTISIAN PRODUCT WITH CONDITIONS
# 2 TYPES [EQUI AND NATURAL]
SELECT * FROM classroom AS C,employee AS E
WHERE C.roll_no = E.eno;

# EQUI JOIN (USE JOIN AND ON INSTEAD OF WHERE)
SELECT * FROM classroom AS C JOIN employee AS E
ON C.roll_no = E.eno;

# NATURAL JOIN (remove repeated attributes)
SELECT * FROM classroom NATURAL JOIN employee;  

# TIMEPASS 
CREATE TABLE toppers(
    s_no int(10),
    name varchar(20),
    HS int(10)
);

INSERT INTO school VALUES(2,"JIA",300);

SELECT * FROM toppers;

SELECT SUM(s_no), name,SUM(HS) FROM toppers 
GROUP BY name
HAVING SUM(HS) > 12000;

SELECT COUNT(DISTINCT(name)) AS uniquue_names FROM toppers;
# GROUP BY name;

ALTER TABLE toppers ADD discount int(5); 
ALTER TABLE toppers MODIFY discount int(5) PRIMARY KEY; 
ALTER TABLE school MODIFY roll_no int(100);
DESCRIBE school;
SELECT * FROM toppers;
ORDER BY student_name DESC;

ALTER TABLE classroom RENAME school;

DELETE FROM school
WHERE roll_no = 1;

UPDATE school
SET student_name="maulik",
science_marks=74
WHERE roll_no = 2;

DESC toppers;
DESC school;


INSERT INTO toppers VALUE();

SELECT student_name, name FROM school
NATURAL JOIN toppers;