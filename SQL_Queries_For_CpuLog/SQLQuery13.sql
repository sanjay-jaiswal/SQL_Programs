CREATE TABLE Mentor(
  id int primary key NOT NULL,
  name varchar(50) DEFAULT NULL,
  Mentor_type varchar(20) DEFAULT NULL,
  Lab_Id int foreign key references Mentor(id) NOT NULL,

  Status int DEFAULT 1,
  Creator_Stamp datetime DEFAULT NULL,
  Creator_User int DEFAULT NULL,
)
