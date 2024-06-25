SHOW TABLES;
SHOW DATABASES;

USE school;







CREATE TABLE classroom (
    roll_no INT(11) ,
    student_name VARCHAR(15) NOT NULL,
    maths_marks INT,
    science_marks INT,
    cs_marks INT,
 #   timepass VARCHAR(   10) NULL DEFAULT(NULL),
    PRIMARY KEY(roll_no)
);

DESCRIBE classroom;

DROP TABLE classroom;

INSERT INTO classroom VALUES(1,'maulik negi', 90, 88, NULL);
INSERT INTO classroom VALUES(3,'aashir', 90, 88, 95);
INSERT INTO classroom VALUES(4,'cat', 90, 88, 95);
INSERT INTO classroom VALUES(2,'rohan', 90, 88, 95);
INSERT INTO classroom VALUES(5,'rocky', 90, 88, 95);
INSERT INTO classroom VALUES(6,'kartos', 90, 88, 95);
INSERT INTO classroom (roll_no, student_name, maths_marks)VALUES(7, 'kartos', 90);
INSERT INTO classroom VALUES(8,'laghvi', 94, 95, 100);

SELECT * FROM classroom;


CREATE TABLE emp(
    Emp_no INT PRIMARY KEY,
    name VARCHAR(15),
    dept VARCHAR(10),
    salary INT
);

DESCRIBE emp;

INSERT INTO emp VALUE(1, 'ravi', 'sales', 24000);
INSERT INTO emp VALUE(2, 'sunny', 'sales', 35000);
INSERT INTO emp VALUE(3, 'shobit', 'IT', 30000);
INSERT INTO emp VALUE(4, 'vikram', 'IT', 27000);
INSERT INTO emp VALUE(5, 'nitin', 'HR', 45000);

SELECT * FROM emp;

SELECT 10*2;

ALTER TABLE classroom
ADD timepass INT DEFAULT 69;

ALTER TABLE classroom
MODIFY timepass DECIMAL(6,2);

ALTER TABLE classroom
CHANGE timepass beerhouse DECIMAL(6,2);

UPDATE salery FROM emp  

SELECT 100 + 200 
FROM DUAL;

SELECT CURTIME()FROM DUAL;

SELECT CURDATE()FROM DUAL;

SELECT salary, dept AS paisa FROM emp;

SELECT name, 'works in department',dept, 'and getting salery rs..',salary FROM emp;

CREATE TABLE emp (
    emp_no INT ,
    name VARCHAR(15) NOT NULL,
    dept VARCHAR(10),
    salary INT,
#    cs_marks INT,
#   timepass VARCHAR(10) DEFAULT('testing'),
    PRIMARY KEY(emp_no)
);

INSERT INTO emp VALUE(1, 'ravi', 'sales', 24000);
INSERT INTO emp VALUE(2, 'sunny', 'sales', 35000);
INSERT INTO emp VALUE(3, 'shobit', 'IT', 30000);
INSERT INTO emp VALUE(4, 'vikram', 'IT', 27000);
INSERT INTO emp VALUE(5, 'nitin', 'HR', 45000);

UPDATE emp
SET salary = NULL
WHERE Emp_no = 1;

Select Emp_no,name,
IFNULL(Salary ,80000) from emp;

#   practice 

CREATE TABLE CONSIGNOR (
cnorID CHAR(4) ,
cnorname VARCHAR(15) NOT NULL,
cnoraddress CHAR(20),
city VARCHAR(12),
PRIMARY KEY(cnorID)
);
CREATE TABLE CONSIGNEE (
cneeID CHAR(4) ,
cnorID CHAR(4), 
cneename VARCHAR(20),
cneeaddress VARCHAR(20),
CNEECITY CHAR(12)
);

DESCRIBE CONSIGNEE;
DESCRIBE CONSIGNOR;

INSERT INTO CONSIGNOR VALUE('ND01', 'r_singhal', '24, ABC Enclave',  'new delhi');
INSERT INTO CONSIGNOR VALUE('ND02', 'amit kumar', '123, Palm  Avenue', 'new delhi');
INSERT INTO CONSIGNOR VALUE('MU15', 'r kohli', '5/A, South Street', 'mumbai');
INSERT INTO CONSIGNOR VALUE('MU50', 's kaur', '27-K, Westend', 'mumbai');

SELECT * FROM CONSIGNOR;

INSERT INTO CONSIGNEE VALUE('MU05', 'ND01', 'rahul kishore', '5, park avenue', 'Mumbai');
INSERT INTO CONSIGNEE VALUE('ND08', 'ND02', 'P dhingra', '16/J moore enclave', 'new delhi');
INSERT INTO CONSIGNEE VALUE('KO19', 'MU15', 'A.P Roy', '2A, central avenue', 'Kolkata');
INSERT INTO CONSIGNEE VALUE('MU32', 'ND02', 'S.mittal', 'P 245,AB colony', 'Mumbai');
INSERT INTO CONSIGNEE VALUE('ND48', 'MU50', 'B.P jain', '13, block-d,A vihar', 'new delhi');

SELECT * FROM CONSIGNEE;


SELECT cnorname FROM CONSIGNOR;

SELECT cnee1D, cnorname, cnoraddress, cneename, cneeaddress FROM CONSIGNOR AND CONSIGNEE;

#3)
SELECT * FROM CONSIGNEE ORDER BY cneename;
#4)
SELECT COUNT(cneecity) FROM CONSIGNEE WHERE cneecity = 'mumbai';
SELECT COUNT(cneecity) FROM CONSIGNEE WHERE cneecity = 'new delhi';
SELECT COUNT(cneecity) FROM CONSIGNEE WHERE cneecity = 'kolkata';
#5)
ALTER TABLE CONSIGNOR ADD contactno INT DEFAULT NULL;

DROP TABLE CONSIGNEE;
DROP TABLE CONSIGNOR;

CREATE TABLE student(
    roll_no INT,
    student_name VARCHAR(20),
    gender VARCHAR(1),
    marks INT,
    DOB DATE,
    mobile_no INT NULL,
    PRIMARY KEY (roll_no)
);



DESCRIBE student;
# need to rework the values
INSERT INTO student VALUE(1, 'ND01', 'rahul kishore', '5, park avenue', 'Mumbai');
INSERT INTO student VALUE(2, 'ND02', 'P dhingra', '16/J moore enclave', 'new delhi');
INSERT INTO student VALUE(3, 'MU15', 'A.P Roy', '2A, central avenue', 'Kolkata');
INSERT INTO student VALUE(4, 'ND02', 'S.mittal', 'P 245,AB colony', 'Mumbai');
INSERT INTO student VALUE(5, 'MU50', 'B.P jain', '13, block-d,A vihar', 'new delhi');
INSERT INTO student VALUE(6, 'ND01', 'rahul kishore', '5, park avenue', 'Mumbai');
INSERT INTO student VALUE(7, 'ND02', 'P dhingra', '16/J moore enclave', 'new delhi');
INSERT INTO student VALUE(8, 'MU15', 'A.P Roy', '2A, central avenue', 'Kolkata');
INSERT INTO student VALUE(9, 'ND02', 'S.mittal', 'P 245,AB colony', 'Mumbai');
INSERT INTO student VALUE(10, 'MU50', 'B.P jain', '13, block-d,A vihar', 'new delhi');

# Q1 hhw
CREATE TABLE CONSIGNOR (
cnorID CHAR(4) ,
cnorname VARCHAR(15) NOT NULL,
cnoraddress CHAR(20),
city VARCHAR(12),
PRIMARY KEY(cnorID)
);

CREATE TABLE CONSIGNEE (
cneeID CHAR(4) ,
cnorID CHAR(4), 
cneename VARCHAR(20),
cneeaddress VARCHAR(20),
CNEECITY CHAR(12)
);

INSERT INTO CONSIGNOR VALUE('ND01', 'r_singhal', '24, ABC Enclave',  'new delhi');
INSERT INTO CONSIGNOR VALUE('ND02', 'amit kumar', '123, Palm  Avenue', 'new delhi');
INSERT INTO CONSIGNOR VALUE('MU15', 'r kohli', '5/A, South Street', 'mumbai');
INSERT INTO CONSIGNOR VALUE('MU50', 's kaur', '27-K, Westend', 'mumbai');

INSERT INTO CONSIGNEE VALUE('MU05', 'ND01', 'rahul kishore', '5, park avenue', 'Mumbai');
INSERT INTO CONSIGNEE VALUE('ND08', 'ND02', 'P dhingra', '16/J moore enclave', 'new delhi');
INSERT INTO CONSIGNEE VALUE('KO19', 'MU15', 'A.P Roy', '2A, central avenue', 'Kolkata');
INSERT INTO CONSIGNEE VALUE('MU32', 'ND02', 'S.mittal', 'P 245,AB colony', 'Mumbai');
INSERT INTO CONSIGNEE VALUE('ND48', 'MU50', 'B.P jain', '13, block-d,A vihar', 'new delhi');

SELECT * FROM CONSIGNOR
WHERE city = 'mumbai';

SELECT cneeID, cnorname, cnoraddress, cneename, cneeaddress FROM CONSIGNOR NATURAL JOIN CONSIGNEE;

SELECT * FROM CONSIGNEE
ORDER BY cneename ASC;

SELECT COUNT(*) FROM CONSIGNOR
WHERE city = 'new delhi';
SELECT COUNT(*) FROM CONSIGNOR
WHERE city = 'mumbai';

SELECT DISTINCT cneeCity FROM CONSIGNEE;

SELECT A.cnorname, B.cneename FROM    CONSIGNOR A, CONSIGNEE B
WHERE A.cnorID = B.cnorID AND B.cneecity = 'mumbai';

SELECT CneeName, CneeAddress
FROM Consignee
WHERE CneeCity NOT IN ('mumbai', 'kolkata');

SELECT CneelD, CneeName
FROM Consignee
WHERE CnorID='MU15' OR CnorID='ND01';

#Q2
CREATE TABLE Watches(
    watchID VARCHAR(4),
    watchname CHAR(20),
    price INT,
    Type CHAR(10),
    qty_store INT
);

CREATE TABLE sale(
    watchID varchar(4),
    qty_sold int,
    quater INT 
);

INSERT INTO Watches VALUE('W001', 'hightime', 10000, 'unisex', 100);
INSERT INTO Watches VALUE('W002', 'lifetime', 15000, 'ladies', 150);
INSERT INTO Watches VALUE('W003', 'wave', 20000, 'gents', 200);
INSERT INTO Watches VALUE('W004', 'highfashion', 7000, 'unisex', 250);
INSERT INTO Watches VALUE('W005', 'goldentime', 25000, 'gents', 100);

INSERT INTO sale VALUE("W001", 10,1);
INSERT INTO sale VALUE("W003", 5,1);
INSERT INTO sale VALUE("W002", 20,2);
INSERT INTO sale VALUE("W003", 10,2);
INSERT INTO sale VALUE("W001", 15,3);
INSERT INTO sale VALUE("W002", 20,3);
INSERT INTO sale VALUE("W005", 10,3);
INSERT INTO sale VALUE("W003", 15,4);

DESCRIBE Watches;
DESCRIBE sale;

SELECT * FROM Watches;
SELECT * FROM sale;

SELECT * FROM Watches # need to work on this
WHERE watchname = 'time';

SELECT watchname FROM Watches
WHERE price BETWEEN 5000 AND 15000;

SELECT  SUM (qty_store) FROM Watches
WHERE type = 'unisex';

SELECT watchname, qty_sold FROM Watches NATURAL JOIN sale
WHERE quater = 1;

select max(price), min(qty_store) from watches;

select quater, sum(qty_sold) from sale group by quater;

select watchname,price,type from watches w, sale s 
where w.watchid!=s.watchid;

select watchname, qty_store, sum(qty_sold), qty_store-sum(qty_sold) "Stock" from watches w, sale s 
where w.watchid=s.watchid 
group by s.watchid;

#Q3
CREATE TABLE vehicle (
    vcode varchar(3),
    vehicle_type char(20),
    per_km INT
);

CREATE TABLE travel(
    cno INT,
    cname char(20),
    travel_date date,
    km int,
    vcode varchar(3),
    no_p int
);

DESCRIBE vehicle;
DESCRIBE travel;

SELECT * FROM vehicle;
SELECT * FROM travel;

INSERT INTO vehicle VALUES ("V01", "VOLVO BUS", 150);
INSERT INTO vehicle VALUES ("V02", "AC DELUXE BUS", 125);
INSERT INTO vehicle VALUES ("V03", "ORDINARY BUS", 80);
INSERT INTO vehicle VALUES ("V04", "SUV", 30);
INSERT INTO vehicle VALUES ("V05", "CAR", 18);

INSERT INTO travel VALUES (101, "k.niwal", '2015/12/13', 200, "VO1", 32);
INSERT INTO travel VALUES (103, "fredrick sym", '2016/03/21', 120, "VO3", 45);
INSERT INTO travel VALUES (105, "hitesh jain", '2016/04/23', 450, "VO2", 42);
INSERT INTO travel VALUES (102, "ravi anish", '2016/01/13', 80, "VO2", 40);
INSERT INTO travel VALUES (107, "jhon malina", '2015/02/10', 65, "VO4", 2);
INSERT INTO travel VALUES (104, "sahanubhuti", '2016/01/28', 90, "VO5", 4);
INSERT INTO travel VALUES (106, "ramesh jaya", '2016/04/06', 100, "VO1", 25);

SELECT cno, cname, travel_date FROM travel
ORDER BY cno DESC;

SELECT cname, vcode FROM travel
WHERE vcode = 'VO1' OR vcode = 'VO2';

SELECT cno, cname FROM travel
WHERE travel_date BETWEEN '2015/05/01' AND '2015/12/31';

SELECT * FROM travel
WHERE km < 120
ORDER BY no_p ASC;

SELECT  COUNT(*) vcode  FROM  travel 
GROUP  BY  vcode  HAVING  COUNT(*)>1;

SELECT  DISTINCT  vcode  FROM  travel;

SELECT  A.vcode,cname,vehicle_type  FROM  travel  A,vehicle  B 
WHERE  A.vcode=B.vcode  AND  km<90;

SELECT cname,km*per_km FROM  travel A,vehicle  B
WHERE  A.vcode=B.vcode  AND  A.vcode='V05';

#Q4
CREATE TABLE dept(
    dcode varchar(3),
    department char(20),
    lacation char(15)
);

CREATE TABLE employee(
    eno INT,
    name char(20),
    doj date,
    dob date,
    gender char(6),
    dcode varchar(3)
);

DESCRIBE dept;
DESCRIBE employee;

SELECT * FROM dept;
SELECT * FROM employee;

INSERT INTO dept VALUES ('D01', 'infrastructure', 'delhi');
INSERT INTO dept VALUES ('D02', 'marketing', 'delhi');
INSERT INTO dept VALUES ('D03', 'media', 'mumbai');
INSERT INTO dept VALUES ('D0S', 'finance', 'kolkata');
INSERT INTO dept VALUES ('D04', 'human resource', 'mumbai');

INSERT INTO employee VALUES(1001, 'george.k', "2013-09-02", "1991-09-01", 'male', 'D01');
INSERT INTO employee VALUES(1002, 'rymasen', '2012/12/11', '1990/12/15', 'female', 'D03');
INSERT INTO employee VALUES(1003, 'mohitesh', '2013/02/03', '1987/09/04', 'male', 'D05');
INSERT INTO employee VALUES(1007, 'anil jha', '2014/01/17', '1984/10/19', 'male', 'D04');
INSERT INTO employee VALUES(1004, 'manila sahai', '2012/12/09', '1986/11/14', 'female', 'D01');
INSERT INTO employee VALUES(1005, 'r sahay', '2013/11/18', '1987/03/31', 'male', 'D02');
INSERT INTO employee VALUES(1006, 'jaya priya', '2014/06/09', '1985/06/23', 'female', 'D0S');

SELECT eno, name, gender FROM employee
ORDER BY eno ASC;

SELECT name FROM employee
WHERE gender = 'male';

SELECT eno, name FROM employee
WHERE dob BETWEEN '1987/01/01' AND '1991/12/01';

SELECT COUNT(gender) FROM employee
WHERE gender = 'female' AND doj > '1986/01/01';

SELECT COUNT (*), dcode FROM employee 
GROUP BY dcode HAVING COUNT(*)>l;

SELECT DISTINCT department FROM dept;

SELECT name, department FROM employee E, dept D 
WHERE E.dcode=D.dcode AND eno<1003;

SELECT MAX (doj), MIN (dob) FROM employee;

DROP TABLE CONSIGNEE;
DROP TABLE CONSIGNOR;
DROP TABLE watches;
DROP TABLE sale;
DROP TABLE vehicle;
DROP TABLE travel;
DROP TABLE dept;
DROP TABLE employee;







