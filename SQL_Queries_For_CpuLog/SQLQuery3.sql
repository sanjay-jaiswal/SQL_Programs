CREATE TABLE Candidate_Docs(
 id int primary key NOT NULL,
 Candidate_Id int not null foreign key references fellowship_candidates(id),

  Doc_Type varchar(20) DEFAULT NULL,
  Doc_Path varchar(500) DEFAULT NULL,
  Status int check(Status>=0 AND Status<2) DEFAULT 0, DEFAULT 1,

  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
)
