alter table DemoTest(
columnA int,
columnB int,
columnC int
)

insert into DemoTest values(12,5,0)
select *from DemoTest;

create trigger tbl_Emp_Insertt
on DemoTest
for INSERT

as
begin
set DemoTest.columnC=DemoTest.columnA+DemoTest.columnB+DemoTest.columnC= DemoTest.columnC;
end

-----------------------

create trigger stud_marksDee 
before INSERT 
on 
StudentData 
for each row 
set StudentData.total = DemoTest.columnA+DemoTest.columnB+DemoTest.columnC = StudentData.total * 60 / 100;


insert into StudentData values(1,"Sanjuu", 20, 20, 20, 0, 0); 



create trigger deeppp
on DemoTest
for
insert
as
begin
update DemoTest set columnC =columnA+columnB ;
end

select *from DemoTest;