---clustered index

Create clustered index CLIDX_CpuLog_Tech_SysMemory
on [dbo].[CpuLogData2019-11-17-new](system_used_memory desc,technology desc)

select *from [dbo].[CpuLogData2019-11-17-new]



Create clustered index CLIDX_CpuLog_Tech_SysMemory
on [dbo].[CpuLogData2019-11-17-new](system_used_memory desc,technology desc)

---Non clustered index
Create NonClustered index NonCLIDX_CpuLog_DiscByte_File
on [dbo].[CpuLogData2019-11-17-new](disk_write_bytes desc,files_changed desc)

select *from [dbo].[CpuLogData2019-11-17-new]

Create NonClustered index NonCLIDX_CpuLog_DiscByte_File_Demo
on [dbo].[CpuLogData2019-11-17-new](disk_write_bytes desc,files_changed desc)



---Non clustered index
Create NonClustered index NonCLIDX_CpuLog_TotslMem_Name
on [dbo].[CpuLogData2019-11-17-new](disk_total_memory desc,user_name desc)


select *from [dbo].[CpuLogData2019-11-17-new]



