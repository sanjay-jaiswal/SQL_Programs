SELECT * 
 INTO NEW_ANDROID
 FROM [dbo].[CpuLogData2019-11-17-new]
 WHERE technology='android';

 select *from NEW_ANDROID;
 ----------------------------------------------
 SELECT * 
 INTO NEW_JAVA
 FROM [dbo].[CpuLogData2019-11-17-new]
 WHERE technology='java';

 select *from NEW_JAVA
 ----------------------------------------------------------------------
  SELECT * 
 INTO NEW_NODEJS
 FROM [dbo].[CpuLogData2019-11-17-new]
 WHERE technology='nodejs';
  select *from NEW_NODEJS;

--------------------------------------------------------------------
  SELECT * 
 INTO NEW_AUTOMATION
 FROM [dbo].[CpuLogData2019-11-17-new]
 WHERE technology='automation';

 select *from NEW_AUTOMATION;
 ---------------------------------------------------------------------
  SELECT * 
 INTO NEW_TESTING
 FROM [dbo].[CpuLogData2019-11-17-new]
 WHERE technology='testing';

 select *from NEW_TESTING;
 ----------------------------------------
 SELECT * 
 INTO NEW_MEAN
 FROM [dbo].[CpuLogData2019-11-17-new]
 WHERE technology='mean';

 select *from NEW_MEAN;
 -----------------------------------------------------------------

  SELECT * 
 INTO NEW_MIX_TECHNOLOGY2
 FROM [dbo].[CpuLogData2019-11-17-new]
 WHERE technology='java' or technology='android' or technology='nodejs';

 select *from NEW_MIX_TECHNOLOGY2 order by Id_Details;
 -------------------------------------------------------------------------------------------------

 SELECT * 
 INTO NEW_MIX_TECHNOLOGY3
 FROM [dbo].[CpuLogData2019-11-17-new]
 WHERE technology='mean' or technology='python';

 select *from NEW_MIX_TECHNOLOGY3 order by Id_Details;
 ----------------------------------------------------------------------------------------------------------------

 SELECT * 
 INTO NEW_MIX_TECHNOLOGY4
 FROM [dbo].[CpuLogData2019-11-17-new]
 WHERE technology='python' or technology='testing';

 select *from NEW_MIX_TECHNOLOGY4 order by Id_Details;

 ---------------------------
select *FROM [dbo].[CpuLogData2019-11-17-new] order by Id_Details;


---------*******************************************SQL JOINS***************************************************----------------

SELECT [dbo].[CpuLogData2019-11-17-new].Id_Details
FROM [dbo].[CpuLogData2019-11-17-new]
INNER JOIN NEW_ANDROID ON  [dbo].[CpuLogData2019-11-17-new].Id_Details=NEW_ANDROID.Id_Details;

----------------------------------------------------------------------------------------------------------
SELECT [dbo].[CpuLogData2019-11-17-new].Id_Details
FROM [dbo].[CpuLogData2019-11-17-new]
INNER JOIN NEW_NODEJS ON  [dbo].[CpuLogData2019-11-17-new].Id_Details=NEW_NODEJS.Id_Details;

-------------------------------------------------------------------------------------------------------
SELECT NEW_ANDROID.Id_Details, [dbo].[CpuLogData2019-11-17-new].Id_Details
FROM NEW_ANDROID
LEFT JOIN [dbo].[CpuLogData2019-11-17-new] ON NEW_ANDROID.Id_Details = [dbo].[CpuLogData2019-11-17-new].Id_Details
ORDER BY NEW_ANDROID.Id_Details;
----------------------------------------------------------
SELECT NEW_ANDROID.technology, [dbo].[CpuLogData2019-11-17-new].technology
FROM NEW_ANDROID
LEFT JOIN [dbo].[CpuLogData2019-11-17-new] ON NEW_ANDROID.technology = [dbo].[CpuLogData2019-11-17-new].technology
ORDER BY NEW_ANDROID.technology;
------------------------------------------------------------------------------------------------------------------
SELECT NEW_MIX_TECHNOLOGY3.technology,NEW_MIX_TECHNOLOGY3.disk_total_memory, NEW_MIX_TECHNOLOGY4.technology
FROM NEW_MIX_TECHNOLOGY3
LEFT JOIN NEW_MIX_TECHNOLOGY4 ON NEW_MIX_TECHNOLOGY3.technology = NEW_MIX_TECHNOLOGY4.technology
ORDER BY NEW_MIX_TECHNOLOGY3.technology;
-----------------------------------------------------------------------------------------------------------------------

select *FROM [dbo].[CpuLogData2019-11-17-new];

--------------------============================INNER JOIN IN SQL=============================---------------------------------
----SQL INNER JOINS return all rows from multiple tables where 
----the join condition is met.

SELECT [dbo].[CpuLogData2019-11-17-new].Id_Details, NEW_JAVA.mouse, NEW_JAVA.user_name,NEW_JAVA.technology
FROM [dbo].[CpuLogData2019-11-17-new] 
INNER JOIN NEW_JAVA
ON [dbo].[CpuLogData2019-11-17-new].Id_Details = NEW_JAVA.Id_Details
ORDER BY [dbo].[CpuLogData2019-11-17-new].Id_Details;


------=====================================LEFT OUTER JOIN JOIN IN SQL====================================---------------------
-----This type of join returns all rows from the LEFT-hand table specified in the ON condition and only those rows from the other table where the joined fields 
-----are equal (join condition is met).


SELECT [dbo].[CpuLogData2019-11-17-new].Id_Details, NEW_JAVA.mouse, NEW_JAVA.user_name,NEW_JAVA.technology
FROM [dbo].[CpuLogData2019-11-17-new] 
LEFT OUTER JOIN NEW_JAVA
ON [dbo].[CpuLogData2019-11-17-new].Id_Details = NEW_JAVA.Id_Details
ORDER BY [dbo].[CpuLogData2019-11-17-new].Id_Details;

------=====================================RIGHT OUTER JOIN JOIN IN SQL====================================---------------------
------This type of join returns all rows from the RIGHT-hand table specified in the ON condition and only those rows from the other
--------table where the joined fields are equal (join condition is met).-----

SELECT [dbo].[CpuLogData2019-11-17-new].Id_Details, NEW_JAVA.mouse, NEW_JAVA.user_name,NEW_JAVA.technology
FROM [dbo].[CpuLogData2019-11-17-new] 
RIGHT OUTER JOIN NEW_JAVA
ON [dbo].[CpuLogData2019-11-17-new].Id_Details = NEW_JAVA.Id_Details
ORDER BY [dbo].[CpuLogData2019-11-17-new].Id_Details;

--------------------------------------------------------------
------=====================================FULL OUTER JOIN JOIN IN SQL====================================---------------------
--------This type of join returns all rows from the LEFT-hand table and RIGHT-hand table with NULL values in place where the join condition is not met.-------
SELECT [dbo].[CpuLogData2019-11-17-new].Id_Details, NEW_JAVA.mouse, NEW_JAVA.user_name,NEW_JAVA.technology
FROM [dbo].[CpuLogData2019-11-17-new] 
FULL OUTER JOIN NEW_JAVA
ON [dbo].[CpuLogData2019-11-17-new].Id_Details = NEW_JAVA.Id_Details
ORDER BY [dbo].[CpuLogData2019-11-17-new].Id_Details;


---------------------------====================SELF JOIN IN SQL==================---------------------

SELECT  a.Id_Details, b.technology, a.disk_read_count
   FROM [dbo].[CpuLogData2019-11-17-new] a, [dbo].[CpuLogData2019-11-17-new] b
   WHERE a.disk_read_count < b.disk_read_count;

--------------------------------------------------------------

use [CFP_SQLPRACTICE]
EXECUTE sp_helpindex Student;