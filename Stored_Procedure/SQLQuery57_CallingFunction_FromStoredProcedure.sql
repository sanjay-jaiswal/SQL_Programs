Create FUNCTION [dbo].[MultiplyofTwoNumber]  
(  
       @Number1 int,  
       @Number2 int  
)  
RETURNS int  
AS  
BEGIN  
       -- Declare the return variable here  
       DECLARE @Result int  
       SELECT @Result = @Number1 * @Number2;  
       -- Return the result of the function  
       RETURN @Result  
END  


--------------------------Creating a Stored procedure-------------

Create PROCEDURE [dbo].[callingFunction]  
(  
@FirstNumber int,  
@SecondNumber int  
)  
AS  
begin  
declare @setval int  
select dbo.[MultiplyofTwoNumber](@FirstNumber, @SecondNumber)  
end  


---------------------------execute---------------------------------------
DECLARE  @return_value int  
EXEC  @return_value = [dbo].[callingFunction]  
    @FirstNumber = 3,  
    @SecondNumber = 4  

----------------------------------------
Select dbo.[MultiplyofTwoNumber](10, 5) as MultiplyOfNumbers  




--------------------Another example of calling function inside sp----------
create function function_to_be_called(@FirstName varchar(200))  
returns varchar(100)  
as  
begin  
declare @LastName varchar(200)  
set @LastName=(select [LastName] from Employee where FirstName =@FirstName)  
return @LastName  
end 

--------------------Sp for above--------------
create procedure chek_pass  
@user varchar(200)  
as  
begin  
declare @pass varchar(200)  
set @pass=dbo.function_to_be_called(@user)  
select @pass  
end  

--------------------------------
exec chek_pass 'Sanju'  


select *from Employee


-----------------------------------------------------------------------------Sp for Cpulog--------------------
create function function_for_cpulogs(@Id_Details int)  
returns varchar(100)  
as  
begin  
declare @technology varchar(200)  
set @technology=(select [technology] from [dbo].[CpuLogData2019-11-17-new] where Id_Details =@Id_Details)  
return @technology  
end 

--------------------Sp for above--------------
create procedure Sp_check_Technology  
@user_id int
as  
begin  
declare @pass varchar(200)  
set @pass=dbo.function_for_cpulogs(@user_id)  
select @pass  
end  

--------------------------------
exec Sp_check_Technology '100' 


select *from [dbo].[CpuLogData2019-11-17-new] order by Id_Details asc;



