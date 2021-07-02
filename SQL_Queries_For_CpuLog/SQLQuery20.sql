CREATE TABLE Maker_Program(
  id int primary key NOT NULL,

  Program_Name int NOT NULL,
  Program_Type varchar(10) DEFAULT NULL,
  Program_Link text DEFAULT NULL,

  Tech_Stack_Id int foreign key references Tech_Stack(id) DEFAULT NULL,
  --Tech_Stack_Id int foreign key references Tech_Stack(id),
  Tech_Type_Id int foreign key references Tech_Type(id) NOT NULL,

  --Tech_Stack_Id int check(Tech_Stack_Id between 0 AND 5) NOT NULL, DEFAULT NULL,
  --Tech_Type_Id int check(Tech_Type_Id between 0 AND 5) NOT NULL,
  Is_Program_Approved int check(Is_Program_Approved>0 AND Is_Program_Approved<2),

  Description varchar(500) DEFAULT NULL,
  Status int check(Status between 0 AND 4) DEFAULT 1,
  Creator_Stamp datetime DEFAULT NULL,
  Creator_User int DEFAULT NULL
  )
