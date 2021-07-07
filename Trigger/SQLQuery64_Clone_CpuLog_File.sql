USE [CFP_SQLPRACTICE]
GO

/****** Object:  Table [dbo].[CpuLogData2019-11-17-new]    Script Date: 06-Jul-21 12:15:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE CpuLog_File(
	[DateTime] [datetime2](7) NOT NULL,
	[Cpu_Count] [int] NOT NULL,
	[Cpu_Working_Time] [float] NOT NULL,
	[Cpu_idle_Time] [float] NOT NULL,
	[cpu_percent] [float] NOT NULL,
	[Usage_Cpu_Count] [int] NOT NULL,
	[number_of_software_interrupts_since_boot] [bigint] NOT NULL,
	[number_of_system_calls_since_boot] [int] NOT NULL,
	[number_of_interrupts_since_boot] [bigint] NOT NULL,
	[cpu_avg_load_over_1_min] [float] NOT NULL,
	[cpu_avg_load_over_5_min] [float] NOT NULL,
	[cpu_avg_load_over_15_min] [float] NOT NULL,
	[system_total_memory] [bigint] NOT NULL,
	[system_used_memory] [bigint] NOT NULL,
	[system_free_memory] [bigint] NOT NULL,
	[system_active_memory] [bigint] NOT NULL,
	[system_inactive_memory] [bigint] NOT NULL,
	[system_buffers_memory] [bigint] NOT NULL,
	[system_cached_memory] [bigint] NOT NULL,
	[system_shared_memory] [bigint] NOT NULL,
	[system_avalible_memory] [bigint] NOT NULL,
	[disk_total_memory] [bigint] NOT NULL,
	[disk_used_memory] [bigint] NOT NULL,
	[disk_free_memory] [bigint] NOT NULL,
	[disk_read_count] [int] NOT NULL,
	[disk_write_count] [int] NOT NULL,
	[disk_read_bytes] [bigint] NOT NULL,
	[disk_write_bytes] [bigint] NOT NULL,
	[time_spent_reading_from_disk] [bigint] NOT NULL,
	[time_spent_writing_to_disk] [bigint] NOT NULL,
	[time_spent_doing_actual_I_Os] [bigint] NOT NULL,
	[number_of_bytes_sent] [bigint] NOT NULL,
	[number_of_bytes_received] [bigint] NOT NULL,
	[number_of_packets_sent] [bigint] NOT NULL,
	[number_of_packets_recived] [bigint] NOT NULL,
	[total_number_of_errors_while_receiving] [bigint] NOT NULL,
	[total_number_of_errors_while_sending] [bigint] NOT NULL,
	[total_number_of_incoming_packets_which_were_dropped] [bigint] NOT NULL,
	[total_number_of_outgoing_packets_which_were_dropped] [bigint] NOT NULL,
	[boot_time] [varchar](50) NOT NULL,
	[user_name] [varchar](50) NOT NULL,
	[keyboard] [float] NOT NULL,
	[mouse] [float] NOT NULL,
	[technology] [varchar](50) NOT NULL,
	[files_changed] [int] NOT NULL,
	[Id_Details] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO

---------------------------------------Clonning cpulog file to new file-------------------------------------
select *from CpuLog_File;
---------------------------------------------



INSERT INTO [dbo].[CpuLog_File]
           ([DateTime]
           ,[Cpu_Count]
           ,[Cpu_Working_Time]
           ,[Cpu_idle_Time]
           ,[cpu_percent]
           ,[Usage_Cpu_Count]
           ,[number_of_software_interrupts_since_boot]
           ,[number_of_system_calls_since_boot]
           ,[number_of_interrupts_since_boot]
           ,[cpu_avg_load_over_1_min]
           ,[cpu_avg_load_over_5_min]
           ,[cpu_avg_load_over_15_min]
           ,[system_total_memory]
           ,[system_used_memory]
           ,[system_free_memory]
           ,[system_active_memory]
           ,[system_inactive_memory]
           ,[system_buffers_memory]
           ,[system_cached_memory]
           ,[system_shared_memory]
           ,[system_avalible_memory]
           ,[disk_total_memory]
           ,[disk_used_memory]
           ,[disk_free_memory]
           ,[disk_read_count]
           ,[disk_write_count]
           ,[disk_read_bytes]
           ,[disk_write_bytes]
           ,[time_spent_reading_from_disk]
           ,[time_spent_writing_to_disk]
           ,[time_spent_doing_actual_I_Os]
           ,[number_of_bytes_sent]
           ,[number_of_bytes_received]
           ,[number_of_packets_sent]
           ,[number_of_packets_recived]
           ,[total_number_of_errors_while_receiving]
           ,[total_number_of_errors_while_sending]
           ,[total_number_of_incoming_packets_which_were_dropped]
           ,[total_number_of_outgoing_packets_which_were_dropped]
           ,[boot_time]
           ,[user_name]
           ,[keyboard]
           ,[mouse]
           ,[technology]
           ,[files_changed])
    
	
select *from [dbo].[CpuLogData2019-11-17-new] where system_used_memory>36491653120;
;
GO
---------------------------------
select *from CpuLog_File;
