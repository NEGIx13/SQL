CREATE database maulik;

use maulik;

#PART I
CREATE TABLE S (
    SNO 	Varchar(5)	Primary key,
    SNAME	varchar(25)	NOT NULL,
    STATUS	int	NOT NULL,
    CITY	varchar(20)	NOT NULL
);      		             

CREATE TABLE P(
    PNO	    Varchar(6)	Primary key,
    PNAME	varchar(25)	NOT NULL,
    COLOR	varchar(10)	NOT NULL,
    WEIGHT	Numeric(5,1)	NOT NULL,
    CITY	varchar(20)	NOT NULL 
);

CREATE TABLE J(
    JNO    varchar(6) Primary key,
    JNAME  varchar(25) NOT NULL,
    CITY   varchar(20) NOT NULL
);

CREATE TABLE SPJ(
    SNO	Varchar(5)	NOT NULL, Foreign key (SNO )references S(sno),
    PNO	Varchar(6)	NOT NULL, Foreign key (PNO) references P(pno),
    JNO	varchar(6)	NOT NULL, Foreign key  (JNO) references J(jno),
    QTY	int	NOT NULL 
);


#PART II
INSERT into S VALUES ('S1',	'SMITH',	20	,'LONDON');
INSERT into S VALUES ('S2'	,'JONES'	,10,	'PARIS');
INSERT into S VALUES ('S3',	'BLAKE'	,30,	'PARIS');
INSERT into S VALUES ('S4',	'CLARK'	,20	,'LONDON');
INSERT into S VALUES ('S5'	,'ADAMS',	30,	'ATHENS');

INSERT into P VALUES ('P1',	'NUT',	'RED',	12,	'LONDON');
INSERT into P VALUES ('P2'	,'BOLT'	,'GREEN',	17,	'PARIS');
INSERT into P VALUES ('P3',	'SCREW',	'BLUE',	17,	'ROME');
INSERT into P VALUES ('P4',	'SCREW',	'RED',	14,	'LONDON');
INSERT into P VALUES ('P5',	'CAM',	'BLUE',	12,	'PARIS');
INSERT into P VALUES ('P6',	'COG',	'RED',	19,	'LONDON');

INSERT into J VALUES ('J1'	,'SORTER'	,'PARIS');
INSERT into J VALUES ('J2',	'DISPLAY',	'ROME');
INSERT into J VALUES ('J3',	'OCR',	'ATHENS');
INSERT into J VALUES ('J4',	'CONSOLE',	'ATHENS');
INSERT into J VALUES ('J5',	'RAID',	'LONDON');							
INSERT into J VALUES ('J6',	'EDS',	'OSLO');
INSERT into J VALUES ('J7',	'TAPE',	'LONDON');


INSERT into SPJ VALUES ('S2',	'P3',	'J3',	200);
INSERT into SPJ VALUES ('S2'	,'P3',	'J4', 500);
INSERT into SPJ VALUES ('S2',	'P3',	'J5',	600);
INSERT into SPJ VALUES ('S2',	'P3',	'J6',	400);
INSERT into SPJ VALUES ('S2',	'P3',	'J7',	800);
INSERT into SPJ VALUES ('S2',	'P5',	'J2',	100);
INSERT into SPJ VALUES ('S2',	'P3',	'J1',	400);
INSERT into SPJ VALUES ('S2',	'P3','J2',	200);
INSERT into SPJ VALUES ('S1', 'P1',	'J1',	200);
INSERT into SPJ VALUES ('S1',	'P1',	'J4', 700);
INSERT into SPJ VALUES ('S1',	'P3',	'J3',	200);
INSERT into SPJ VALUES ('S1'	,'P3',	'J4', 500);
INSERT into SPJ VALUES ('S1',	'P3',	'J5',	600);
INSERT into SPJ VALUES ('S2',	'P2',	'J6',	400);
INSERT into SPJ VALUES ('S2',	'P2',	'J7',	800);
INSERT into SPJ VALUES ('S1',	'P5',	'J2',	100);
INSERT into SPJ VALUES ('S1',	'P3',	'J1',	400);
INSERT into SPJ VALUES ('S1',	'P3','J2',	200);
INSERT into SPJ VALUES ('S1', 'P2',	'J1',	200);
INSERT into SPJ VALUES ('S1',	'P2',	'J4', 700);
INSERT into SPJ VALUES ('S1',	'P3',	'J2',	200);
INSERT into SPJ VALUES ('S1'	,'P3',	'J1', 500);
INSERT into SPJ VALUES ('S1',	'P3',	'J2',	600);
INSERT into SPJ VALUES ('S2',	'P2',	'J3',	400);
INSERT into SPJ VALUES ('S2',	'P3',	'J7',	800);
INSERT into SPJ VALUES ('S1',	'P5',	'J2',	300);
INSERT into SPJ VALUES ('S1',	'P3',	'J1',	250);
INSERT into SPJ VALUES ('S1',	'P3','J2',	100);
INSERT into SPJ VALUES ('S1', 'P2',	'J1',	240);
INSERT into SPJ VALUES ('S1',	'P2',	'J4', 760);
INSERT into SPJ VALUES ('S1',	'P3',	'J5',	200);
INSERT into SPJ VALUES ('S1',	'P2',	'J3',	200);

#PART III
DESCRIBE S;
DESCRIBE P;
DESCRIBE J;
DESCRIBE SPJ;

#PART IV
#Based on Simple Queries:
#QUERY 1
SELECT * FROM S;

#QUERY 2
SELECT * FROM P;

#QUERY 3
SELECT * FROM J;

#QUERY 4
SELECT * FROM SPJ;

#QUERY 5
SELECT * FROM P
WHERE CITY = "LONDON";

#QUERY 6
SELECT * FROM spj 
WHERE qty BETWEEN 300 AND 750;

#QUERY 7
SELECT SNO, STATUS FROM s 
WHERE CITY ='PARIS' 
order by STATUS desc;

#QUERY 8
SELECT PNO FROM P 
WHERE COLOR = 'red' and WEIGHT >= 14;

#QUERY 9
SELECT SNO FROM SPJ
WHERE JNO="J1";

#QUERY 10
SELECT SNO FROM SPJ
WHERE JNO="J1" 
order by SNO;

# Based on Aggregate Functions:
#QUERY 11
SELECT count(SNAME) FROM S;

#QUERY 12
SELECT PNO, min(QTY), max(QTY) 
FROM SPJ group by PNO;

#QUERY 13
SELECT PNO, min(QTY), max(QTY) 
FROM SPJ where PNO="P2";

#QUERY 14
SELECT PNO FROM SPJ 
group by PNO having avg(QTY) > 350;

#QUERY 15
SELECT count(jno) FROM SPJ 
where SNO="s1";

#QUERY 16
SELECT sum(QTY) FROM SPJ
where PNO="P1" AND SNO="S1";


#QUERY 17
SELECT PNO, sum(qty) from SPJ
group by PNO;

#QUERY 18
SELECT PNO, JNO, sum(QTY) 
from SPJ group by PNO;	

#QUERY 19
SELECT PNO, count(distinct SNO) from SPJ 
group by SNO;


#QUERY 20
SELECT PNO, count(distinct SNO) from SPJ 
group by SNO having count(SNO)> 2 ;

# Based on Joins Queries:
#QUERY 21
SELECT S.SNAME from SPJ 
inner join S ON SPJ.SNO = S.SNO 
where PNO='p3';

#QUERY 22
SELECT distinct SNAME from SPJ 
inner join S ON SPJ.SNO = S.SNO and PNO='P3';

#QUERY 23
SELECT S.SNO , SNAME from SPJ 
inner join S ON SPJ.SNO = S.SNO 
where JNO='J1';

#QUERY 24
SELECT distinct PNO from SPJ 
inner join S on SPJ.SNO = S.SNO 
where CITY='London';

#QUERY 25


# Based on Special Data 
#QUERY 26
SELECT * FROM SPJ 
WHERE QTY IS NOT NULL; 

#QUERY 27
SELECT PNO , CITY FROM P 
WHERE CITY LIKE '_O%';

# Based on Subqueries
#QUERY 28
SELECT JNAME from J  
inner join SPJ on J.JNO=SPJ.JNO
where SNO = 'S1';

#QUERY 29
SELECT COLOR FROM P 
where PNO in (select PNO from SPJ
where SNO='S1');	

#QUERY 30
SELECT distinct PNO, JNO from SPJ where JNO 
in(select JNO from J where CITY='LONDON');

#QUERY 31
SELECT JNO FROM J where JNO 
in (SELECT JNO from SPJ where SNO='S1');

#QUERY 32
SELECT SNO FROM SPJ where PNO in 
(select PNO from P where COLOR="RED");

#QUERY 33
SELECT SNO FROM S where STATUS <
(select STATUS from S where SNO='S1') ;

#QUERY 34
SELECT PNO from P where CITY 
in (select min(CITY) from P order by CITY );	
SELECT JNO from j where CITY 
in (select min(CITY) from J order by CITY);

#QUERY 35
SELECT PNAME ,max(WEIGHT) from P 
where WEIGHT < (select max(WEIGHT) from P) ;

#QUERY 36
SELECT min(STATUS) from S 
where STATUS > (select min(STATUS) from S) ;

# Based on EXISTS   
#QUERY 37
SELECT PNO FROM SPJ inner join 
J on SPJ.JNO = J.JNO and CITY ='LONDON';


DROP TABLE S;
DROP TABLE P;
DROP TABLE J;
DROP TABLE SPJ;