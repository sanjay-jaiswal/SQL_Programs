USE [CFP_SQLPRACTICE]
GO

INSERT INTO [dbo].[CpuLogData2019-11-17-new]
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
     VALUES
           (2021-10-15 10:32:15,
           10,
           3000,
           25000,
           88,
           5,
           88888888,
           0,
           20000000,
           0,
           0,
           0,
           7000000000,
           7000000000,
      
	  7000000000,
	  7000000000,
	  7000000000,
	  7000000000,
	  7000000000,
	  7000000000,
	  7000000000,


		1.17088E+11,
		30000000000,
		70000000000,
		400000,
           251550,
		   3000000000,
			1800000000,
			2800000000,

			400000,

394000,

401000,
89930000,
327660000,
157000,


585289,
0,
0,
40,
0,
'19:45:09.601800',
'sanju123@gmail.com',
0,
0,
'androidone',
15
)
Go


