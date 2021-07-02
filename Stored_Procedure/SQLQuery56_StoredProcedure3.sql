CREATE TABLE Product
(ProductID INT, ProductName VARCHAR(100) )
GO
 
CREATE TABLE ProductDescription
(ProductID INT, ProductDescription VARCHAR(800) )
GO
 
INSERT INTO Product VALUES (680,'HL Road Frame - Black, 58')
,(706,'HL Road Frame - Red, 58')
,(707,'Sport-100 Helmet, Red')
GO
 
INSERT INTO ProductDescription VALUES (680,'Replacement mountain wheel for entry-level rider.')
,(706,'Sturdy alloy features a quick-release hub.')
,(707,'Aerodynamic rims for smooth riding.')
GO




-----------------Creating stored procedure----------
CREATE PROCEDURE GetProductDesc
AS
BEGIN
SET NOCOUNT ON
 
SELECT P.ProductID,P.ProductName,PD.ProductDescription  FROM 
Product P
INNER JOIN ProductDescription PD ON P.ProductID=PD.ProductID
 
END

-------------------Executing sp----------
exec GetProductDesc



-----------Sp with parameters-----------
CREATE PROCEDURE GetProductDesc_withparameters
(@PID INT)
AS
BEGIN
SET NOCOUNT ON
 
SELECT P.ProductID,P.ProductName,PD.ProductDescription  FROM 
Product P
INNER JOIN ProductDescription PD ON P.ProductID=PD.ProductID
WHERE P.ProductID=@PID
 
END

-------------execute Sp-----------
EXEC GetProductDesc_withparameters 706



----------Sp with default parameter values--------------
CREATE PROCEDURE GetProductDesc_withDefaultparameters
(@PID INT =706)
AS
BEGIN
SET NOCOUNT ON
 
SELECT P.ProductID,P.ProductName,PD.ProductDescription  FROM 
Product P
INNER JOIN ProductDescription PD ON P.ProductID=PD.ProductID
WHERE P.ProductID=@PID
 
END

--------------------------display sp------------
exec GetProductDesc_withDefaultparameters
exec GetProductDesc_withDefaultparameters 680


------------Sp with out parameter--------------
CREATE TABLE Employee2 (EmpID int identity(1,1),EmpName varchar(500))


CREATE PROCEDURE ins_NewEmp_with_outputparamaters
(@Ename varchar(50),
@EId int output)
AS
BEGIN
SET NOCOUNT ON
 
INSERT INTO Employee2 (EmpName) VALUES (@Ename)
 
SELECT @EId= SCOPE_IDENTITY()
 
END



----------------For execiting sp with out parameterwe must declare out variable to store values-------
declare @EmpID INT
 
EXEC ins_NewEmp_with_outputparamaters 'Andrew', @EmpID OUTPUT
 
SELECT @EmpID

------------------------
declare @EmpID2 INT
 
EXEC ins_NewEmp_with_outputparamaters 'Sanju', @EmpID2 OUTPUT
 
SELECT @EmpID2 as Employee_Id

--------------------
select *from Employee2;



------------------Creating temporary sp-----------
CREATE PROCEDURE #Temp
AS
BEGIN
PRINT 'Thsi is a local temp procedure'
END

------------------Creating global temporary sp , which can access other session-----------
-------------And automatically drop when connection is closed-------
CREATE PROCEDURE ##TEMP
AS
BEGIN
PRINT 'Global temp procedure'
END




-------------------------------Modifying Sp---------------

ALTER PROCEDURE GetProductDesc
AS
BEGIN
SET NOCOUNT ON
 
SELECT P.ProductID,P.ProductName,PD.ProductDescription  FROM 
Product P
INNER JOIN ProductDescription PD ON P.ProductID=PD.ProductID
 
END







