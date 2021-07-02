CREATE TABLE Maker_Program(
  id int primary key NOT NULL,
  Program_Name varchar(30) NOT NULL,
  Program_Type varchar(10) DEFAULT NULL,
  Program_Link text DEFAULT NULL,

  Tech_Stack_Id int foreign key references Tech_Stack(id),

  --Tech_Stack_Id int DEFAULT NULL,
  Tech_Type_Id int NOT NULL,

  Is_Program_Approved int check(Is_Program_Approved>0 AND Is_Program_Approved<2),
  description varchar(500) DEFAULT NULL,
  Status int check(Is_Program_Approved>=0 AND Is_Program_Approved<2), DEFAULT 1,
  Creator_Stamp datetime DEFAULT NULL,
  Creator_User int DEFAULT NULL
  );