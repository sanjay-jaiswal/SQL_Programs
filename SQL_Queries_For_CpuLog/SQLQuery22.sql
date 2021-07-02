CREATE TABLE Mentor_Ideation_Map(
  id int primary key NOT NULL,
  Mentor_Id int foreign key references Mentor(id) NOT NULL,

  Status int check(Status between 0 and 4) DEFAULT 1,
  Creator_Stamp datetime DEFAULT NULL,
  Creator_User int DEFAULT NULL
  )

  select *from Mentor_Ideation_Map
  insert into Mentor_Ideation_Map values(1,2,'12-12-2020',2);