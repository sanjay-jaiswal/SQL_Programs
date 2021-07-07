create nonclustered index NIX_FTE_Name
on [dbo].[CpuLogData2019-11-17-new] (technology asc);



select *from [dbo].[CpuLogData2019-11-17-new];

------------------Transction in sql---------------------
BEGIN TRANSACTION Emp_Transaction
  BEGIN TRY
      INSERT INTO Employee (FirstName, Salary)
      VALUES ('Bridge2', 300), ('Demo2', 200)

      UPDATE Employee
      SET FirstName = 'Demo' ,Salary = 1111
      WHERE Employee.FirstName = 'Test'
      COMMIT TRANSACTION Emp_Transaction

  END TRY
  BEGIN CATCH
      ROLLBACK TRANSACTION Emp_Transaction
  END CATCH  

--------------------------------------------------------
select *from Employee;
-----------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------

BEGIN TRANSACTION
 INSERT INTO Employee VALUES('People','Demo','Mumbai')
 UPDATE Employee SET Salary =3333 WHERE ID = 8
 DELETE FROM Employee WHERE ID = 7
COMMIT TRANSACTION



------------------------------------
CREATE TABLE Product_Details
(
 ProductID INT PRIMARY KEY, 
 Name VARCHAR(40), 
 Price INT,
 Quantity INT
 )

 -- Populate Product Table with test data
 INSERT INTO Product_Details VALUES(101, 'Product-1', 100, 10)
 INSERT INTO Product_Details VALUES(102, 'Product-2', 200, 15)
 INSERT INTO Product_Details VALUES(103, 'Product-3', 300, 20)
 INSERT INTO Product_Details VALUES(104, 'Product-4', 400, 25)

 select *from Product_Details;
 ------------------------------
 BEGIN TRANSACTION
 INSERT INTO Product_Details VALUES(105,'Product-5',500, 30)
 UPDATE Product_Details SET Price =350 WHERE ProductID = 103
 DELETE FROM Product_Details WHERE ProductID = 103
COMMIT TRANSACTION

------------------------

BEGIN TRANSACTION
INSERT INTO Product_Details VALUES(106,'Product-6',600, 30)
UPDATE Product_Details SET Price =550 WHERE ProductID = 105
DELETE FROM Product_Details WHERE ProductID = 104

---------------------------------
BEGIN TRANSACTION
INSERT INTO Product VALUES(110,'Product-10',600, 30)
INSERT INTO Product VALUES(110,'Product-10',600, 30)
IF(@@ERROR > 0)
BEGIN
    Rollback Transaction
END
ELSE
BEGIN
   Commit Transaction
END


---------------------
----------------------------------------------------------------
CREATE TABLE accounts ( 
	account_no INTEGER NOT NULL, 
	balance DECIMAL NOT NULL DEFAULT 0,
	PRIMARY KEY(account_no),
        CHECK(balance >= 0)
);

CREATE TABLE account_changes (
	change_no INT NOT NULL PRIMARY KEY,
	account_no INTEGER NOT NULL, 
	flag TEXT NOT NULL, 
	amount DECIMAL NOT NULL, 
	changed_at TEXT NOT NULL 
);

--------------------
INSERT INTO accounts (account_no,balance)
VALUES (100,20100);

INSERT INTO accounts (account_no,balance)
VALUES (200,10100);

SELECT * FROM accounts;
----------------------------------------------------
BEGIN TRANSACTION;

UPDATE accounts
   SET balance = balance - 1000
 WHERE account_no = 100;

UPDATE accounts
   SET balance = balance + 1000
 WHERE account_no = 200;
 
INSERT INTO account_changes(account_no,flag,amount,changed_at) 
VALUES(100,'-',1000,datetime('now'));

INSERT INTO account_changes(account_no,flag,amount,changed_at) 
VALUES(200,'+',1000,datetime('now'));

COMMIT;

SELECT * FROM account_changes;

--------------------------------------------




--------------------------------------------






