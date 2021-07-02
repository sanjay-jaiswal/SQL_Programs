CREATE TABLE EmployeeTriggerDemo(  
    Emp_ID int NOT NULL,  
    Emp_Name nvarchar(50) NOT NULL,  
    Emp_Salary int NOT NULL,  
    Emp_City nvarchar(50) NOT NULL,  
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED   
(  
 Emp_ID ASC  
)
)


Insert into EmployeeTriggerDemo  
Select 1,'Pankaj',25000,'Alwar' Union All  
Select 2,'Rahul',26000,'Alwar' Union All  
Select 3,'Sandeep',25000,'Alwar' Union All  
Select 4,'Sanjeev',24000,'Alwar' Union All  
Select 5,'Neeraj',28000,'Alwar' Union All  
Select 6,'Naru',20000,'Alwar' Union All  
Select 7,'Omi',23000,'Alwar'   

select *from EmployeeTriggerDemo;


SET NOCOUNT ON  
DECLARE @EMP_ID INT  
DECLARE @EMP_NAME NVARCHAR(MAX)  
DECLARE @EMP_SALARY INT  
DECLARE @EMP_CITY NVARCHAR(MAX)  
  
DECLARE EMP_CURSOR CURSOR  
LOCAL  FORWARD_ONLY  FOR  
SELECT * FROM EmployeeTriggerDemo  
OPEN EMP_CURSOR  
FETCH NEXT FROM EMP_CURSOR INTO  @EMP_ID ,@EMP_NAME,@EMP_SALARY,@EMP_CITY  
WHILE @@FETCH_STATUS = 0  
BEGIN  
PRINT  'EMP_ID: ' + CONVERT(NVARCHAR(MAX),@EMP_ID)+  '  EMP_NAME '+@EMP_NAME +'  EMP_SALARY '  +CONVERT(NVARCHAR(MAX),@EMP_SALARY)  +  '  EMP_CITY ' +@EMP_CITY  
FETCH NEXT FROM EMP_CURSOR INTO  @EMP_ID ,@EMP_NAME,@EMP_SALARY,@EMP_CITY  
END  
CLOSE EMP_CURSOR  
DEALLOCATE EMP_CURSOR 


----------Example of scroll cursor----------
SET NOCOUNT ON  
DECLARE @EMP_ID INT  
DECLARE @EMP_NAME NVARCHAR(MAX)  
DECLARE @EMP_SALARY INT  
DECLARE @EMP_CITY NVARCHAR(MAX)  
  
DECLARE EMP_CURSOR CURSOR  
LOCAL  SCROLL  FOR  
SELECT * FROM EmployeeTriggerDemo  
OPEN EMP_CURSOR  
FETCH NEXT FROM EMP_CURSOR INTO  @EMP_ID ,@EMP_NAME,@EMP_SALARY,@EMP_CITY  
  
FETCH RELATIVE 3 FROM EMP_CURSOR INTO  @EMP_ID ,@EMP_NAME,@EMP_SALARY,@EMP_CITY  
PRINT  'EMP_ID: ' + CONVERT(NVARCHAR(MAX),@EMP_ID)+  '  EMP_NAME '+@EMP_NAME +'  EMP_SALARY '  +CONVERT(NVARCHAR(MAX),@EMP_SALARY)  +  '  EMP_CITY ' +@EMP_CITY  
FETCH ABSOLUTE  3 FROM EMP_CURSOR INTO  @EMP_ID ,@EMP_NAME,@EMP_SALARY,@EMP_CITY  
  
PRINT  'EMP_ID: ' + CONVERT(NVARCHAR(MAX),@EMP_ID)+  '  EMP_NAME '+@EMP_NAME +'  EMP_SALARY '  +CONVERT(NVARCHAR(MAX),@EMP_SALARY)  +  '  EMP_CITY ' +@EMP_CITY  
FETCH FIRST FROM EMP_CURSOR INTO  @EMP_ID ,@EMP_NAME,@EMP_SALARY,@EMP_CITY  
PRINT  'EMP_ID: ' + CONVERT(NVARCHAR(MAX),@EMP_ID)+  '  EMP_NAME '+@EMP_NAME +'  EMP_SALARY '  +CONVERT(NVARCHAR(MAX),@EMP_SALARY)  +  '  EMP_CITY ' +@EMP_CITY  
FETCH LAST FROM EMP_CURSOR INTO  @EMP_ID ,@EMP_NAME,@EMP_SALARY,@EMP_CITY  
PRINT  'EMP_ID: ' + CONVERT(NVARCHAR(MAX),@EMP_ID)+  '  EMP_NAME '+@EMP_NAME +'  EMP_SALARY '  +CONVERT(NVARCHAR(MAX),@EMP_SALARY)  +  '  EMP_CITY ' +@EMP_CITY  
FETCH PRIOR FROM EMP_CURSOR INTO  @EMP_ID ,@EMP_NAME,@EMP_SALARY,@EMP_CITY  
PRINT  'EMP_ID: ' + CONVERT(NVARCHAR(MAX),@EMP_ID)+  '  EMP_NAME '+@EMP_NAME +'  EMP_SALARY '  +CONVERT(NVARCHAR(MAX),@EMP_SALARY)  +  '  EMP_CITY ' +@EMP_CITY  
FETCH NEXT FROM EMP_CURSOR INTO  @EMP_ID ,@EMP_NAME,@EMP_SALARY,@EMP_CITY  
PRINT  'EMP_ID: ' + CONVERT(NVARCHAR(MAX),@EMP_ID)+  '  EMP_NAME '+@EMP_NAME +'  EMP_SALARY '  +CONVERT(NVARCHAR(MAX),@EMP_SALARY)  +  '  EMP_CITY ' +@EMP_CITY  
  
  
CLOSE EMP_CURSOR  
DEALLOCATE EMP_CURSOR  



-------Static cursor------
SET NOCOUNT ON  
DECLARE @EMP_ID INT  
DECLARE @EMP_NAME NVARCHAR(MAX)  
DECLARE @EMP_SALARY INT  
DECLARE @EMP_CITY NVARCHAR(MAX)  
  
DECLARE EMP_CURSOR CURSOR  
 STATIC  FOR  
SELECT * FROM EmployeeTriggerDemo  
OPEN EMP_CURSOR  
FETCH NEXT FROM EMP_CURSOR INTO  @EMP_ID ,@EMP_NAME,@EMP_SALARY,@EMP_CITY  
WHILE @@FETCH_STATUS = 0  
BEGIN  
If @EMP_ID%2=0  
BEGIN  
PRINT  'EMP_ID: ' + CONVERT(NVARCHAR(MAX),@EMP_ID)+  '  EMP_NAME '+@EMP_NAME +'  EMP_SALARY '  +CONVERT(NVARCHAR(MAX),@EMP_SALARY)  +  '  EMP_CITY ' +@EMP_CITY  
END  
FETCH  FROM EMP_CURSOR INTO  @EMP_ID ,@EMP_NAME,@EMP_SALARY,@EMP_CITY  
END  
CLOSE EMP_CURSOR  
DEALLOCATE EMP_CURSOR  



-------------example-----------------
SET NOCOUNT ON  
DECLARE @EMP_ID INT  
DECLARE @EMP_NAME NVARCHAR(MAX)  
DECLARE @EMP_SALARY INT  
DECLARE @EMP_CITY NVARCHAR(MAX)  
  
DECLARE EMP_CURSOR CURSOR  
 STATIC  FOR  
SELECT * FROM EmployeeTriggerDemo  
OPEN EMP_CURSOR  
FETCH NEXT FROM EMP_CURSOR INTO  @EMP_ID ,@EMP_NAME,@EMP_SALARY,@EMP_CITY  
WHILE @@FETCH_STATUS = 0  
BEGIN  
If @EMP_ID%2=0  
BEGIN  
UPDATE EmployeeTriggerDemo SET Emp_Salary=15000 WHERE CURRENT OF EMP_CURSOR  
END  
FETCH  FROM EMP_CURSOR INTO  @EMP_ID ,@EMP_NAME,@EMP_SALARY,@EMP_CITY  
END  
CLOSE EMP_CURSOR  
DEALLOCATE EMP_CURSOR 



-------------Dynamic cursor----------------
SET NOCOUNT ON  
DECLARE @EMP_ID INT  
DECLARE @EMP_NAME NVARCHAR(MAX)  
DECLARE @EMP_SALARY INT  
DECLARE @EMP_CITY NVARCHAR(MAX)  
  
DECLARE EMP_CURSOR CURSOR  
 DYNAMIC  FOR  
SELECT * FROM EmployeeTriggerDemo  
OPEN EMP_CURSOR  
FETCH NEXT FROM EMP_CURSOR INTO  @EMP_ID ,@EMP_NAME,@EMP_SALARY,@EMP_CITY  
WHILE @@FETCH_STATUS = 0  
BEGIN  
If @EMP_ID%2=0  
BEGIN  
UPDATE EmployeeTriggerDemo SET Emp_Salary=15000 WHERE CURRENT OF EMP_CURSOR  
END  
FETCH  FROM EMP_CURSOR INTO  @EMP_ID ,@EMP_NAME,@EMP_SALARY,@EMP_CITY  
END  
CLOSE EMP_CURSOR  
DEALLOCATE EMP_CURSOR  
SELECT * FROM EmployeeTriggerDemo  



-------------Another dynamic exmple-------------
SET NOCOUNT ON  
DECLARE @EMP_ID INT  
DECLARE @EMP_NAME NVARCHAR(MAX)  
DECLARE @EMP_SALARY INT  
DECLARE @EMP_CITY NVARCHAR(MAX)  
  
DECLARE EMP_CURSOR CURSOR  
FAST_FORWARD  FOR  
SELECT * FROM EmployeeTriggerDemo  
OPEN EMP_CURSOR  
FETCH NEXT FROM EMP_CURSOR INTO  @EMP_ID ,@EMP_NAME,@EMP_SALARY,@EMP_CITY  
WHILE @@FETCH_STATUS = 0  
BEGIN  
If @EMP_ID%2=0  
BEGIN  
UPDATE EmployeeTriggerDemo SET Emp_Salary=15000 WHERE CURRENT OF EMP_CURSOR  
END  
FETCH  FROM EMP_CURSOR INTO  @EMP_ID ,@EMP_NAME,@EMP_SALARY,@EMP_CITY  
END  
CLOSE EMP_CURSOR  
DEALLOCATE EMP_CURSOR  




----------------fast forward cursor-----------
SET NOCOUNT ON  
DECLARE @EMP_ID INT  
DECLARE @EMP_NAME NVARCHAR(MAX)  
DECLARE @EMP_SALARY INT  
DECLARE @EMP_CITY NVARCHAR(MAX)  
  
DECLARE EMP_CURSOR1 CURSOR  
KEYSET scroll  
FOR  
SELECT  EMP_ID ,EMP_NAME,EMP_SALARY,EMP_CITY FROM EmployeeTriggerDemo  order by Emp_Id  
OPEN EMP_CURSOR1  
IF @@CURSOR_ROWS > 0  
     BEGIN   
FETCH NEXT FROM EMP_CURSOR1 INTO  @EMP_ID ,@EMP_NAME,@EMP_SALARY,@EMP_CITY  
WHILE @@FETCH_STATUS = 0  
BEGIN  
  
If @EMP_ID%2=0  
UPDATE EmployeeTriggerDemo SET EMP_NAME='PANKAJ KUMAR CHOUDHARY' WHERE CURRENT OF EMP_CURSOR1  
FETCH NEXT FROM EMP_CURSOR1 INTO  @EMP_ID ,@EMP_NAME,@EMP_SALARY,@EMP_CITY  
END  
END  
CLOSE EMP_CURSOR1  
DEALLOCATE EMP_CURSOR1  
SET NOCOUNT OFF  
SELECT * FROM EmployeeTriggerDemo  













