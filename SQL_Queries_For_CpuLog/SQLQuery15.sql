CREATE TABLE Mentor_TechStack(
  id int NOT NULL,
  Mentor_Id int foreign key references Mentor(id) not null,

  Tech_Stack_Id int foreign key references Tech_Stack(id) NOT NULL,

  Status int check(Status>=0 AND Status<3) NOT NULL, DEFAULT 1,
  Creator_Stamp datetime DEFAULT NULL,
  Creator_User int DEFAULT NULL
  )

  select *from Mentor_TechStack;