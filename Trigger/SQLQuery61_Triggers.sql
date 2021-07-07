CREATE TABLE Employees_Table
    (
      EmployeeID integer NOT NULL IDENTITY(1, 1) ,
      EmployeeName VARCHAR(50) ,
      EmployeeAddress VARCHAR(50) ,
      MonthSalary NUMERIC(10, 2)
      PRIMARY KEY CLUSTERED (EmployeeID)
    )
GO	


--------------------------
CREATE TABLE EmployeesAudit
    (
      AuditID INTEGER NOT NULL IDENTITY(1, 1) ,
      EmployeeID INTEGER ,
      EmployeeName VARCHAR(50) ,
      EmployeeAddress VARCHAR(50) ,
      MonthSalary NUMERIC(10, 2) ,
      ModifiedBy VARCHAR(128) ,
      ModifiedDate DATETIME ,
      Operation CHAR(1) 
      PRIMARY KEY CLUSTERED ( AuditID )
    )
GO	

-------------------
INSERT INTO dbo.Employees_Table
        ( EmployeeName ,
          EmployeeAddress ,
          MonthSalary
        )
SELECT 'Sanju', 'Margao Goa', 50000
UNION ALL
SELECT 'Ramesh', 'Delhi', 12000
UNION ALL
SELECT 'Akshay', 'Pune', 20000
UNION ALL
SELECT 'Shinde', 'Mumbai', 25000
GO			


-------------------------------
CREATE TRIGGER TR_Audit_Employees ON dbo.Employees_Table
    FOR INSERT, UPDATE, DELETE
AS
    DECLARE @login_name VARCHAR(128)
 
    SELECT  @login_name = login_name
    FROM    sys.dm_exec_sessions
    WHERE   session_id = @@SPID
 
    IF EXISTS ( SELECT 0 FROM Deleted )
        BEGIN
            IF EXISTS ( SELECT 0 FROM Inserted )
                BEGIN
                    INSERT  INTO dbo.EmployeesAudit
                            ( EmployeeID ,
                              EmployeeName ,
                              EmployeeAddress ,
                              MonthSalary ,
                              ModifiedBy ,
                              ModifiedDate ,
                              Operation
                            )
                            SELECT  D.EmployeeID ,
                                    D.EmployeeName ,
                                    D.EmployeeAddress ,
                                    D.MonthSalary ,
                                    @login_name ,
                                    GETDATE() ,
                                    'U'
                            FROM    Deleted D
                END
            ELSE
                BEGIN
                    INSERT  INTO dbo.EmployeesAudit
                            ( EmployeeID ,
                              EmployeeName ,
                              EmployeeAddress ,
                              MonthSalary ,
                              ModifiedBy ,
                              ModifiedDate ,
                              Operation
                            )
                            SELECT  D.EmployeeID ,
                                    D.EmployeeName ,
                                    D.EmployeeAddress ,
                                    D.MonthSalary ,
                                    @login_name ,
                                    GETDATE() ,
                                    'D'
                            FROM    Deleted D
                END  
        END
    ELSE
        BEGIN
            INSERT  INTO dbo.EmployeesAudit
                    ( EmployeeID ,
                      EmployeeName ,
                      EmployeeAddress ,
                      MonthSalary ,
                      ModifiedBy ,
                      ModifiedDate ,
                      Operation
                    )
                    SELECT  I.EmployeeID ,
                            I.EmployeeName ,
                            I.EmployeeAddress ,
                            I.MonthSalary ,
                            @login_name ,
                            GETDATE() ,
                            'I'
                    FROM    Inserted I
        END
GO
			

------------------------------------------
BEGIN TRANSACTION
SELECT  *
FROM    dbo.Employees_Table
WHERE   EmployeeID = 1
 
UPDATE  Employees_Table
SET     EmployeeName = 'zzz'
WHERE   EmployeeID = 1
 
SELECT  *
FROM    dbo.Employees_Table
WHERE   EmployeeID = 1
 
SELECT  *
FROM    dbo.EmployeesAudit
ROLLBACK TRANSACTION


-------------------------------
BEGIN TRANSACTION
INSERT  INTO dbo.Employees_Table
        ( EmployeeName ,
          EmployeeAddress ,
          MonthSalary
        )
        SELECT  'zz' ,
                'dsda' ,
                10000
        UNION ALL
        SELECT  'Markus Rubius' ,
                'dsda' ,
                6000
SELECT  *
FROM    dbo.Employees_Table
SELECT  *
FROM    dbo.EmployeesAudit
ROLLBACK TRANSACTION





---------------------------------------------
BEGIN TRANSACTION
SELECT  *
FROM    dbo.Employees_Table
WHERE   EmployeeID = 1
DELETE  FROM dbo.Employees_Table
WHERE   EmployeeID = 1
 
SELECT  *
FROM    dbo.EmployeesAudit
SELECT  *
FROM    dbo.Employees_Table
WHERE   EmployeeID = 1
ROLLBACK TRANSACTION	






