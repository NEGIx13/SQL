#LAB ASSIGNMENT 1

CREATE DATABASE maulik;

USE maulik;
USE bca1;
SHOW databases;

SHOW tables;
#QUERY 1
CREATE TABLE student(
	roll numeric(3) PRIMARY KEY,
    sname varchar(20) NOT NULL,
    age int,
    city varchar(20)
);

CREATE TABLE dept(
	deptno numeric(2) PRIMARY KEY,
    dname varchar(20) NOT NULL
);

CREATE TABLE faculty(
	id int PRIMARY KEY auto_increment,
    NAME varchar(20),
    dob datetime,
    address varchar(50),
    gender char(1) 
);


#QUERY 2 #QUERY 6
DESCRIBE student;
DESCRIBE dept;
DESCRIBE faculty;

INSERT INTO student VALUES(1, "maulik", "20", "indirapuram");
INSERT INTO student VALUES(2, "ambika", "18", "delhi");
INSERT INTO student VALUES(3, "shef", "19", "south-delhi");

INSERT INTO dept VALUES(1, "binod");
INSERT INTO dept VALUES(2, "maulik");
INSERT INTO dept VALUES(3, "aman");

INSERT INTO faculty VALUES(101, "maulik", "12/10/2003", "804 c block", "M");
INSERT INTO faculty VALUES(102, "matthew", "2/04/2003", "707 a block", "M");
INSERT INTO faculty VALUES(103, "ambika", "25/11/2003", "1032 e block", "F");

SELECT * FROM student;
SELECT * FROM dept;
SELECT * FROM faculty;

#QUERY 3
ALTER TABLE student add column mobileno bigint;

#QUERY 4
ALTER TABLE dept add column location varchar(20);

#QUERY 5
ALTER TABLE faculty MODIFY NAME varchar(50);

DROP table student;
DROP table dept;
DROP table faculty;