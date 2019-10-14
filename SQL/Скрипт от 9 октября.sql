/*
DROP TABLE employees;
CREATE TABLE employees( id          integer,  name    nvarchar(64),
                          designation nvarchar(64),     manager integer,
                          hired_on    date,     salary  nvarchar(255), --integer,
                          commission  float,    dept    integer);

  INSERT INTO employees VALUES (1,N'JOHNSON',N'ADMIN',6,'1990-12-17',N'18 000',NULL,4);
  INSERT INTO employees VALUES (2,N'HARDING',N'MANAGER',9,'1998-02-02',N'52 000',300,3);
  INSERT INTO employees VALUES (3,N'TAFT',N'SALES IALES',2,'1996-01-02',N'25.000,00',500,3);
  INSERT INTO employees VALUES (4,N'HOOVER',N'SALES ILES',2,'1990-04-02',N'27000',NULL,3);
  INSERT INTO employees VALUES (5,N'LINCOLN',N'TECH',6,'1994-06-23',N'22500',1400,4);
  INSERT INTO employees VALUES (6,N'GARFIELD',N'MANAGER',9,'1993-05-01',N'54000',NULL,4);
  INSERT INTO employees VALUES (7,N'POLK',N'TECH',6,'1997-09-22',N'25,000',NULL,4);
  INSERT INTO employees VALUES (8,N'GRANT',N'ENGINEER',10,'1997-03-30',N'32000',NULL,2);
  INSERT INTO employees VALUES (9,N'JACKSON',N'CEO',NULL,'1990-01-01',N'75000',NULL,4);
  INSERT INTO employees VALUES (10,N'FILLMORE',N'MANAGER',9,'1994-08-09',N'56000',NULL,2);
  INSERT INTO employees VALUES (11,N'ADAMS',N'ENGINEER',10,'1996-03-15',N'34000',NULL,2);
  INSERT INTO employees VALUES (12,N'WASHINGTON',N'ADMIN',6,'1998-04-16',N'18000',NULL,4);
  INSERT INTO employees VALUES (13,N'MONROE',N'ENGINEER',10,'2000-12-03',N'30000',NULL,2);
  INSERT INTO employees VALUES (14,N'ROOSEVELT',N'CPA',9,'1995-10-12',N'35000',NULL,1);

--SELECT designation,COUNT(*) AS nbr, (AVG(salary)) AS avg_salary FROM employees GROUP BY designation ORDER BY avg_salary DESC;
--SELECT name,hired_on FROM employees ORDER BY hired_on;
*/
--3.
/*
SELECT designation
,instr(designation, ' ') as spaceInd
,substr(designation, 0, instr(designation, ' ')) as word1
,substr(designation, instr(designation, ' ')+1, length(designation)) as word2
FROM employees;


--4.
SELECT designation
,instr(designation, ' ') as spaceInd
,case
	when instr(designation, ' ')=0
		then designation
	else	
		substr(designation, 0, instr(designation, ' '))	
end as word1
,case
	when instr(designation, ' ')=0
		then null
	else	
		substr(designation, instr(designation, ' ')+1, length(designation))	
end as word2
FROM employees;

*/

/*
--1.
select designation
, PATINDEX('% %',designation) as spaceInd
--,substring (name,2,5) as substr_name
from employees

--2.
select designation
, PATINDEX('% %',designation) as spaceInd
, substring(designation, 0, PATINDEX('% %',designation)) as word1
from employees

--3.
select designation
, PATINDEX('% %',designation) as spaceInd
, substring(designation, 0, PATINDEX('% %',designation)) as word1
, substring(designation, PATINDEX('% %',designation)+1, LEN(designation)) as word2
from employees
*/

--4.
select 
concat(name, ' ', designation) as tst3
,designation
, PATINDEX('% %',designation) as spaceInd
,case
	when PATINDEX('% %',designation)=0
		then designation
	else	
		substring(designation, 0, PATINDEX('% %',designation))	
end as word1
,case
	when PATINDEX('% %',designation)=0
		then null
	else	
		substring(designation, PATINDEX('% %',designation)+1, LEN(designation))	
end as word2
,salary
,replace(replace(salary, ' ','.'), '.','') as salary1
--,CAST(salary as int) as salaryInt
from employees