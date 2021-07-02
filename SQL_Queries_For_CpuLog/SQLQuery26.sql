CREATE TABLE Candidate_Techstack_Assignment(
  id int NOT NULL,
  Requirement_Id int foreign key references Company_Requirement(id),
  Candidate_Id int foreign key references fellowship_candidates(id) NOT NULL,

  Assign_Date datetime DEFAULT NULL,
  Status varchar(20) DEFAULT NULL,
  Creator_Stamp datetime DEFAULT NULL,
  Creator_User int DEFAULT NULL
  )