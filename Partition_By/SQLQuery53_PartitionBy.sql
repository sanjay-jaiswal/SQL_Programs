--------------Group by, Prtition by, over in CpuLog file----------------

-----Groupby clause---------
select technology,count(*) as Technology_Total from [dbo].[CpuLogData2019-11-17-new]
group by technology;

------------
select technology,count(*) as Technology_Total , max(disk_used_memory) as Max_DSKU_Memory,
min(disk_used_memory) as Min_DSKU_Memory, avg(disk_used_memory) as Avg_DSKU_Memory
from [dbo].[CpuLogData2019-11-17-new]
group by technology;


---------Over clause with partition by------------
select  DateTime,user_name, count(technology) over (partition by technology) as Tech_Total
from [dbo].[CpuLogData2019-11-17-new];


---------Over clause with partition by------------
select  disk_used_memory,user_name,
count(technology) over (partition by technology) as Tech_Total,
max(disk_used_memory) over (partition by technology) as Max_DiskUses,
min(disk_used_memory) over (partition by technology) as Min_DiskUses,
avg(disk_used_memory) over (partition by technology) as Avg_DiskUses
from [dbo].[CpuLogData2019-11-17-new];



---------Over clause with partition by------------
select  disk_used_memory,system_shared_memory,system_cached_memory,user_name,
count(technology) over (partition by technology) as Tech_Total,
max(disk_used_memory) over (partition by technology) as Max_DiskUses,
min(disk_used_memory) over (partition by technology) as Min_DiskUses,
avg(disk_used_memory) over (partition by technology) as Avg_DiskUses,

max(system_shared_memory) over (partition by technology) as Max_SystemSharedMemory,
min(system_shared_memory) over (partition by technology) as Min_SystemSharedMemory,
avg(system_shared_memory) over (partition by technology) as Avg_SystemSharedMemory,

max(system_cached_memory) over (partition by technology) as Max_SystemCachedMemory,
min(system_cached_memory) over (partition by technology) as Min_SystemCachedMemory,
avg(system_cached_memory) over (partition by technology) as Avg_SystemCachedMemory
from [dbo].[CpuLogData2019-11-17-new];
















