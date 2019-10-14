select * from reboot.dbo.employees

insert into employees values (15, 'Ivanov','IT',2,'2019-05-14',75000,0,1)

alter table employees
	alter column hired_on datetime;

alter table employees	add test time null;
alter table employees	drop column test;

alter table employees
	alter column hired_on date;

select getdate() as current_datetime


create table t2(
	c1 int primary key identity,-- גלוסעמ AUTOINCREMENT
	c2 varchar(2),
	c3 date not null
);
go;
insert into t2 (c2,c3) values ('MV','2018-10-17');
insert into t2 (c2,c3) values ('SV','2005-06-26');
insert into t2 (c2,c3) values ('ab','2019-10-17');

alter table t2
	drop row where c2='ab'
	 
select * from t2

/*
https://www.w3schools.com/sql/trysql.asp?filename=trysql_op_in
*/
create table t3(
	id integer primary key identity--autoincrement,
	,created_at date
);
go;
insert into t3 (created_at) values ('2019-11-15');
insert into t3 (created_at) values ('2019-11-16');
insert into t3 (created_at) values ('2020-01-19');

update t3
set created_at='2019-01-19'
where created_at='2020-01-19'

select * from t3


create table t4 as
	select id, created_at, getdate()+id as cur_date from t3
;

/*
SELECT * FROM tempdb.sys.objects
SELECT * FROM tempdb.sys.columns
SELECT * FROM tempdb.sys.database_files
*/

/*
create view v_customers as
	select 
		CustomerID
		,CustomerName
		,ContactName
		,Address
		,PostalCode
		,Country 
	from customers where city='London'
*/
create view v_employees as
select *
	from employees where designation like 'MANAGER'

select * from v_employees

--2:04