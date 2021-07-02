CREATE TABLE Tech_Stack (
  id int primary key NOT NULL,
  Tech_Name varchar(50) NOT NULL,
  Image_Path varchar(500) DEFAULT NULL,

  Framework text DEFAULT NULL,
  Current_Status char(1) DEFAULT NULL,
  Creator_Stamp datetime DEFAULT NULL,
  Creator_User int DEFAULT NULL
)

select *from Tech_Stack;