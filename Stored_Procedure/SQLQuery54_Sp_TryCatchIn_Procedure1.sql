-----------------try catch in stored procedure------
----You can run stored procedure by clicking and selecting only procedure name in query-------
create proc Sp_TryCatch_Handling
as
begin
begin try
update Employee set Salary='abcd' where ID=2;
end try
begin catch
select
	ERROR_NUMBER() as [Error Number],
	ERROR_SEVERITY() as [Error Severity],
	ERROR_STATE() as [Error State],
	ERROR_PROCEDURE() as [Error Procedure],
	ERROR_LINE() as [Error Line number],
	ERROR_MESSAGE() as [Error Message]
end catch
end

-----------------------------CpuLog with try catch------------------
create proc Sp_CpuLog_TryCatch
as
begin
begin try
update [dbo].[CpuLogData2019-11-17-new] set Cpu_Working_Time='abcd' where Id_Details=20;
end try
begin catch
select
	ERROR_NUMBER() as [Error Number],
	ERROR_SEVERITY() as [Error Severity],
	ERROR_STATE() as [Error State],
	ERROR_PROCEDURE() as [Error Procedure],
	ERROR_LINE() as [Error Line number],
	ERROR_MESSAGE() as [Error Message]
end catch
end

------------------------Adding new id details column in cpulog file----------------
alter table [dbo].[CpuLogData2019-11-17-new] add Id_Details int identity(1,1);
-----------------Display data with unique id details = 100----------------
select *from [dbo].[CpuLogData2019-11-17-new] where Id_Details=100;


select *from Employee;
select *from [dbo].[CpuLogData2019-11-17-new]







