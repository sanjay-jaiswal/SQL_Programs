create trigger Emp_Trigger_Salary_AVG
on Employee
for
insert,update,delete
as
print'you can not insert,update and delete this table i'
rollback;

--drop trigger Emp_Trigger
select *from Employee


CREATE TRIGGER Emp_Trigger_Salary_AVG
before INSERT
ON Employee
FOR EACH ROW
SET new.Salary = new.Salary+500;



----------------------New trigger example----------

CREATE TABLE Student(
studentID INT primary key NOT NULL ,
FName VARCHAR(20),
LName VARCHAR(20),
Address VARCHAR(30),
City VARCHAR(15),
Marks INT,
);


CREATE TRIGGER calculate
before INSERT 
ON Student
FOR EACH ROW
SET new.marks = new.marks+100;

-----------------ANother trigger example----------------


CREATE TABLE StudentData(
tid INT primary key NOT NULL ,
name VARCHAR(20),
subj1 int,
subj2 int,
subj3 int,
total int,
per int
);


create trigger stud_marks 
before INSERT 
on 
StudentData 
for each row 
set StudentData.total = StudentData.subj1 + StudentData.subj2 + StudentData.subj3, StudentData.per = StudentData.total * 60 / 100;


insert into StudentData values(1,"Sanjuu", 20, 20, 20, 0, 0); 







