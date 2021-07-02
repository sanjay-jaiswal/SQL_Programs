---------Function-------------
create function Fun_Student(
@long decimal(9,6)
)
returns table as
return
select 
*from Employee;
where Employee.long>@long;


-----------
alter table Employee
add long decimal

-------------------------

CREATE FUNCTION east_or_west (
	@long DECIMAL(9,6)
)
RETURNS CHAR(4) AS
BEGIN
	DECLARE @return_value CHAR(4);
	SET @return_value = 'same';
    IF (@long > 0.00) SET @return_value = 'east';
    IF (@long < 0.00) SET @return_value = 'west';
 
    RETURN @return_value

END;


--------------------

SELECT dbo.east_or_west(0) AS argument_0, 
dbo.east_or_west(-1) AS argument_minus_1, 
dbo.east_or_west(1) AS argument_plus_1;



SELECT *, dbo.east_or_west(Employee.long) 
FROM Employee;

SELECT *, dbo.east_or_west(Employee.long) as position 
FROM Employee;



------------User defined function to return table----------------

CREATE FUNCTION east_from_long (
	@long DECIMAL(9,6)
)
RETURNS TABLE AS
RETURN
	SELECT *
	FROM Employee
	WHERE Employee.long > @long;

------------display--------
update Employee
set long=12.23
where ID=1;


SELECT *
FROM east_from_long(0.00);

select *from Employee;


--------------------
Create function Fun_EmployeeInformation()      
returns table       
as      
return(select * from Employee  )  

------------------
select *from Fun_EmployeeInformation()



----------------Function with two column join function--------
create function fun_JoinEmpColumnInfo  
(  
   @FirstName nchar(15),  
   @LastName nvarchar(50),  
   @Salary int  
)  
returns nvarchar(100)  
as  
begin return(select @FirstName+ ' ' +@LastName + ' ' + @Salary)  
end  

------------display function--------
select *from fun_JoinEmpColumnInfo(FirstName,LastName,Salary) as Details from where FirstName like 'Sanju';


----------------System defined function-----------------
select max(salary) as Salary from Employee  

select min(salary) as Salary from Employee  

select avg(salary) as Salary from Employee  

select sum(salary) as Salary from Employee  



------------Print function--------------
create function fun_PrintNumber()  
returns decimal(7,2)  
as  
begin  
    return 1000.13  
	end
--------------To display print function-------
print dbo.fun_PrintNumber()  
















