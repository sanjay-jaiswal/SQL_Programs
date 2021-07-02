---Creating View

CREATE VIEW CUSTOMERS_VIEW AS
SELECT user_name, technology
FROM  [dbo].[CpuLogData2019-11-17-new];

select *from CUSTOMERS_VIEW;


----Creating a View order by Name
CREATE VIEW View_Memory_Technology AS
SELECT disk_total_memory, technology
FROM  [dbo].[CpuLogData2019-11-17-new];

select *from View_Memory_Technology;


----Creating a View order by Name
CREATE VIEW View_Memory_Technology_Data AS
SELECT system_buffers_memory, files_changed
FROM  [dbo].[CpuLogData2019-11-17-new];

select *from View_Memory_Technology_Data;




