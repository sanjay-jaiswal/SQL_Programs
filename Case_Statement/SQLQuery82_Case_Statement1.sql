------------------------------Case statement in sql---------------------

SELECT technology, system_used_memory,
CASE
    WHEN technology = 'android' THEN 'The Technology is android'
	WHEN technology = 'java' THEN 'The Technology is java'
    WHEN technology = 'nodejs' THEN 'The Technology is nodejs'
    WHEN technology = 'python' THEN 'The Technology is python'

    WHEN system_used_memory > 2234814464 THEN 'System memory is greater than 2234814464'

    ELSE 'Other Technology.'
END AS Details_ForCpuLog
FROM [dbo].[CpuLogData2019-11-17-new];

-----------------------------------------------------------------------------
SELECT system_used_memory,
CASE
  
    WHEN system_used_memory > 2234814464 THEN 'System memory is greater than 2234814464'
    WHEN system_used_memory < 7039225856 THEN 'System memory is less than 7039225856'
	WHEN system_used_memory = 2234814464 THEN 'System memory is equal to 2234814464'

    ELSE 'Range is not specified.'
END AS Details_ForCpuLog
FROM [dbo].[CpuLogData2019-11-17-new];

--------------------------------------------------
SELECT technology,system_used_memory
FROM [dbo].[CpuLogData2019-11-17-new]
ORDER BY
(CASE
    WHEN technology IS NULL THEN system_used_memory
    ELSE technology
END);


------------------------------

IF EXISTS(SELECT *
          FROM   [dbo].[CpuLogData2019-11-17-new]
          WHERE  technology = 'java')
  PRINT 'Java Record is found'
ELSE
  PRINT 'Java Record does not found.'
-------------------------------------------------------------------
IF EXISTS(SELECT *
          FROM   [dbo].[CpuLogData2019-11-17-new]
          WHERE  technology = 'android')
  PRINT 'Android Record is found'
ELSE
  PRINT 'Android Record does not found.'

-------------------------------------------------------------------------
IF EXISTS(SELECT *
          FROM   [dbo].[CpuLogData2019-11-17-new]
          WHERE  system_used_memory = 2234814464)
  PRINT ' Specified memory Record is found.'
ELSE
  PRINT 'Specified memory Record is not found.' 
  ------------------------------------------------------------------------
