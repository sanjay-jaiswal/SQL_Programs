---I am using CpuLog file here----

---this will create index for DateTime
CREATE INDEX Index_CpuLog
ON [dbo].[CpuLogData2019-11-17-new] (DateTime);

---select *from idx_lastname
drop index Index_CpuLog on [dbo].[CpuLogData2019-11-17-new]


---this will create index for cpu_percent
CREATE INDEX Index_Cpu_Percent
ON [dbo].[CpuLogData2019-11-17-new] (cpu_percent);

---this will create index for shared memory
CREATE INDEX Index_CpuLog_Memory
ON [dbo].[CpuLogData2019-11-17-new] (system_shared_memory);


---this will create index for system memory
CREATE INDEX Index_CpuLog_SystemMemory
ON [dbo].[CpuLogData2019-11-17-new] (system_avalible_memory);

---this will create index for system buffer memory
CREATE INDEX Index_CpuLog_SystemMemory_Buffer
ON [dbo].[CpuLogData2019-11-17-new] (system_buffers_memory


---this will create index for system inactive memory
CREATE INDEX Index_CpuLog_System_Inactive_Mem
ON [dbo].[CpuLogData2019-11-17-new] (system_inactive_memory);


---this will create index for system total memory
CREATE INDEX Index_CpuLog_System_Total_Memory
ON [dbo].[CpuLogData2019-11-17-new] (disk_total_memory);







