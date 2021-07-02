CREATE TABLE Employee (
    EMPID int,
    FirstName varchar(255),
    LastName varchar(255),
    Address varchar(255),
    Salary bigint
);

select *from Employee

ALTER TABLE Employee ADD ID INT IDENTITY(1,1)

insert into Employee values('Sanju','Jaiswal','Margao',5000)
select *from Employee

-----inserting more data
insert into Employee (FirstName,LastName,Address,Salary)
values
('Tushar','Atole','Pune',3100),
('Akshay','Atole','Pune',3300),
('Priyanshu','Singh','Chennai',4500);

select *from Employee;




