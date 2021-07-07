create procedure Sp_CRUD_Operations
@id int =0,
@first_name varchar(50) null,
@last_name varchar(50) null,
@salary int null,
@mobile_num bigint null,
@choice varchar(50)
as
begin
if @choice='Insert'
begin
insert into Clustered_Index_Table(first_name, last_name, salary,mobile_num) values(@first_name, @last_name, @salary,@mobile_num)
end

if @choice='Update'
begin
Update Clustered_Index_Table set
 first_name= @first_name,
 last_name=@last_name,
 salary= @salary,
 mobile_num= @mobile_num
 where id=@id
end


if @choice='Delete'
begin
Delete from Clustered_Index_Table where id=@id
end
end


-----------------------
exec Sp_CRUD_Operations @first_name='Bridge',@last_name='Labz',@salary=2700,@mobile_num=8877005512,@choice='Insert'

exec Sp_CRUD_Operations @id=5,@first_name='Demo',@last_name='Test',@salary=5000,@mobile_num=8877005512,@choice='Update'

exec Sp_CRUD_Operations @id=6,@first_name='Bridge',@last_name='Labz',@salary=2700,@mobile_num=8877005512,@choice='Delete'




select *from Clustered_Index_Table;




