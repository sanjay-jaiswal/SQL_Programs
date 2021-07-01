select *from [dbo].[CpuLogData2019-11-17-new]

declare CpuCursor cursor
for
select *from [dbo].[CpuLogData2019-11-17-new]

open CpuCursor
fetch next from CpuCursor
close CpuCursor
deallocate CpuCursor