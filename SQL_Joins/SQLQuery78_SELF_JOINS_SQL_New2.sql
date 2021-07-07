
-----------=====================SELF JOIN IN SQL=====================-------------------

SELECT  a.ID, b.FirstName, a.Salary
FROM Employee a, Employee b
WHERE a.Salary < b.Salary;

select *from Employee;