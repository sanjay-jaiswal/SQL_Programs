-----------**************************************This is Trigger's CRUD Operations***************************************-----------


create table EmployeeWage_Details
(
    id int primary key,
    Name varchar(255),
    Salary varchar(255),
    Gender varchar(255),
    DepartmentId int
);

create table EmployeeWage_Total
(
    id int primary key,
    AuditData int
)
---------------------
alter table EmployeeWage_Total
ALTER COLUMN AuditData varchar(50);

-----------------------
select *from EmployeeWage_Details;
select *from EmployeeWage_Total;

alter TRIGGER  TR_EMPLOYEES_TABLE
ON EmployeeWage_Details
FOR INSERT
AS
BEGIN
	--select *from inserted
	Declare @id int
	select @id=id from inserted
insert into EmployeeWage_Total
values('New employee with id =' +Cast(@id as nvarchar(10))+' is added at ' + cast(GetDate() as nvarchar(20)))
END

--------------------------------
create trigger Tr_Emp_Details on EmployeeWage_Details
after insert
as
begin
	declare  @id int
	select @id=inserted.id
	from inserted
	insert into EmployeeWage_Total
	values(@id,'Inserted')
	end

--------------------------------------------------------------------------------
insert into EmployeeWage_Details values (1,'MSD',2500,'Male',7);
insert into EmployeeWage_Details values (3,'Tushar',1500,'Female',6);
insert into EmployeeWage_Details values (4,'Amit',1200,'Male',5);
insert into EmployeeWage_Details values (15,'Rahul',1100,'Male',6);
insert into EmployeeWage_Details values (16,'Rom',3600,'Male',8);

---------------------------------------------------Trigger for Delete-----------------------------------------------
create trigger Tr_Emp_Details_Delete on EmployeeWage_Details
AFTER DELETE
AS
BEGIN
		declare  @id int
		select @id=DELETED.id
		from DELETED

		insert into EmployeeWage_Total
		values(@id,'ID IS DELETED')
END
-------------------------------------------------------------
SELECT *FROM EmployeeWage_Details;

DELETE FROM EmployeeWage_Details WHERE id=4;
DELETE FROM EmployeeWage_Details WHERE Name='Rahul';
-------------------------------------------------------------------------

----------------------------------------------------UPDATE TRIGGER-----------------------------------------------------
CREATE TRIGGER Tr_Emp_Details_UPDATE on EmployeeWage_Details
AFTER UPDATE
AS
BEGIN
		DECLARE  @id int
		DECLARE @Action varchar(50)

		select @id=INSERTED.id
		from INSERTED

		IF UPDATE(id)
		SET @Action = 'Updated id'

		IF UPDATE(Name)
		SET @Action = 'Updated id'

		IF UPDATE(Salary)
		SET @Action = 'Salary Is Updated'

		IF UPDATE(Gender)
		SET @Action = 'Gender Is Updated'

		IF UPDATE(DepartmentId)
		SET @Action = 'Department Id Is Updated'

		insert into EmployeeWage_Total
		values(@id,@Action)
END
--------------------------------------------------------------
SELECT *FROM EmployeeWage_Details;
SELECT *FROM EmployeeWage_Total;

UPDATE EmployeeWage_Details SET Salary=6120 WHERE id=2;
UPDATE EmployeeWage_Details SET Salary=5555 WHERE Name='Sachin';
UPDATE EmployeeWage_Details SET Salary=9999 WHERE id=9;


-------------------------------------------------------------------------END TRIGGER--------------------------------------------------
