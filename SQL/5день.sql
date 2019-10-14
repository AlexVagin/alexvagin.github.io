/*
https://www.w3schools.com/sql/trysql.asp?filename=trysql_update_2

create table Persons (
	PersonID	int primary key,
	LastName	varchar(255) not null,
	FirstName	varchar(255) not null,
	[Address]		varchar(255),
	City		varchar(255)
);

select * from Persons
*/

iif (select count(*) as check_column from [reboot].[sys].[objects] where type='U' and name='Products', drop table dbo.Products, 0);


create table dbo.Products (
	[id]	int primary key,
	[name]	varchar(255) not null,
	[description]	varchar(255) not null,
	[price]			float,
	[created_at]	datetime
);

insert into Products values (1,'õëåá','áåëûé', 27.6, CURRENT_TIMESTAMP);
insert into Products values (2,'ìîëîêî','æèðíîå', 45, 2019-10-13)



select * from products
go