

create table Students_Demo_Table(
stid int IDENTITY(1,1) PRIMARY KEY,

name varchar(50),
age int,
ClassStandard int
)

insert into Students_Demo_Table values('Atif',10,16);
insert into Students_Demo_Table values('Arun',8,10);
insert into Students_Demo_Table values('Rumi',8,10);
insert into Students_Demo_Table values('Arun',12,18);
insert into Students_Demo_Table values('Prem',12,19);
insert into Students_Demo_Table values('Shinde',12,20);

delete from Students_Demo_Table where stid=7;
delete from Students_Demo_Table where ClassStandard=818;
select *from Students_Demo_Table;

-----------------------------------------------
create table Students_Age_GreaterThan10(
stid int PRIMARY KEY,
name varchar(50),
age int,
ClassStandard int
)

--------------------------------------------------
create table Students_Age_LessThan18(
stid int PRIMARY KEY,
name varchar(50),
age int,
ClassStandard int
)

---------------------------------------------
create table Students_Age_InRange(
stid int PRIMARY KEY,
name varchar(50),
age int,
ClassStandard int
)


---------------------------------------------------------
insert into [dbo].[Students_Age_GreaterThan10] (stid,name,age,ClassStandard)
select *from [dbo].[Students_Demo_Table] where age>10;

insert into [dbo].[Students_Age_LessThan18] (stid,name,age,ClassStandard)
select *from [dbo].[Students_Demo_Table] where age<18;

insert into Students_Age_InRange (stid,name,age,ClassStandard)
select *from [dbo].[Students_Demo_Table] where age>=12 and age<=18;


select *from [dbo].[Students_Age_GreaterThan10];
select *from [dbo].[Students_Age_LessThan18];
select *from [dbo].[Students_Demo_Table]
select *from Students_Age_InRange;


--------------------------------------------
-------------------------------




