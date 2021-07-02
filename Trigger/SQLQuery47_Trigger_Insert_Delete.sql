
create table tblEmployee
(
    id int primary key,
    Name varchar(255),
    Salary varchar(255),
    Gender varchar(255),
    DepartmentId int
);

create table tblEmployee_Total
(
    id int primary key,
    AuditData int
)

select *from tblEmployee;
select *from tblEmployee_Total;


create trigger tbl_Emp_Insert
ON tblEmployee
FOR INSERT
AS
BEGIN
Declare @id int
select @id=id from inserted

insert into tblEmployee_Total
values('New employee with id =' +Cast(@id as nvarchar(5))+' is added at ' +cast(GETDATE() as nvarchar(20))
end;



insert into tblEmployee values (1,'Rony',1200,'Male',5);

