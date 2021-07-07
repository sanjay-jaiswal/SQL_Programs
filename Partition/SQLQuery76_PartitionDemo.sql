select system_shared_memory, disk_free_memory, disk_write_count INTO Copy_CpuLogFile
FROM [dbo].[CpuLogData2019-11-17-new];

SELECT *FROM Copy_CpuLogFile;

select system_shared_memory, disk_free_memory, disk_write_count INTO Copy_CpuLog_WithCondition
FROM [dbo].[CpuLogData2019-11-17-new] WHERE technology='android';
SELECT *FROM Copy_CpuLog_WithCondition;

select system_shared_memory, disk_free_memory, disk_write_count INTO Copy_CpuLog_WithCondition3
FROM [dbo].[CpuLogData2019-11-17-new] WHERE technology='java';
SELECT *FROM Copy_CpuLog_WithCondition3;

SELECT *FROM [dbo].[CpuLogData2019-11-17-new];

select system_shared_memory, disk_free_memory, disk_write_count INTO Copy_CpuLog_WithCondition4
FROM [dbo].[CpuLogData2019-11-17-new] WHERE technology='nodejs';
SELECT *FROM Copy_CpuLog_WithCondition4;
----------------------------------------------------------------------------

----------------------------------------------------------------------
CREATE TABLE CPULOG_COPY_IN_ANDROID(
tech varchar(50),
system_active_memory_Details bigint,
disk_write_count_Details bigint
)

------------------------------
select *FROM [dbo].[CpuLogData2019-11-17-new];

