DROP TABLE IF EXISTS employees;
CREATE TABLE employees( id          integer,  name    text,
                          designation text,     manager integer,
                          hired_on    date,     salary  varchar(32),
                          commission  float,    dept    integer);

  INSERT INTO employees VALUES (1,'JOHNSON','ADMIN',6,'1990-12-17',"18 000",NULL,4);
  INSERT INTO employees VALUES (2,'HARDING','MANAGER',9,'1998-02-02',"52 000",300,3);
  INSERT INTO employees VALUES (3,'TAFT','SALES Instructor',2,'1996-01-02',"25.000,00",500,3);
  INSERT INTO employees VALUES (4,'HOOVER','SALES Instructor',2,'1990-04-02',"27000",NULL,3);
  INSERT INTO employees VALUES (5,'LINCOLN','TECH',6,'1994-06-23',"22500",1400,4);
  INSERT INTO employees VALUES (6,'GARFIELD','MANAGER',9,'1993-05-01',"54000",NULL,4);
  INSERT INTO employees VALUES (7,'POLK','TECH',6,'1997-09-22',"25,000",NULL,4);
  INSERT INTO employees VALUES (8,'GRANT','ENGINEER',10,'1997-03-30',"32000",NULL,2);
  INSERT INTO employees VALUES (9,'JACKSON','CEO',NULL,'1990-01-01',"75000",NULL,4);
  INSERT INTO employees VALUES (10,'FILLMORE','MANAGER',9,'1994-08-09',"56000",NULL,2);
  INSERT INTO employees VALUES (11,'ADAMS','ENGINEER',10,'1996-03-15',"34000",NULL,2);
  INSERT INTO employees VALUES (12,'WASHINGTON','ADMIN',6,'1998-04-16',"18000",NULL,4);
  INSERT INTO employees VALUES (13,'MONROE','ENGINEER',10,'2000-12-03',"30000",NULL,2);
  INSERT INTO employees VALUES (14,'ROOSEVELT','CPA',9,'1995-10-12',"35000",NULL,1);

SELECT
name||' '||designation as tst3
,designation
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
,salary
,replace(replace(replace(salary, ' ','.'), '.',''),',','') as salaryInt
,cast(salary as int) as salaryInt2
FROM employees;