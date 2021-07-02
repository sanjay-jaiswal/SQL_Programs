CREATE TABLE Candidates_Education_Details_Check (
 id int primary key NOT NULL,
 Candidate_Id int not null foreign key references fellowship_candidates(id),

  Field_Name varchar(11) NOT NULL,
  Is_Verified int check(Is_Verified>=0 AND Is_Verified<2) DEFAULT NULL,
  Lastupd_Stamp datetime DEFAULT NULL,
  Lastupd_User int DEFAULT NULL,
  Creator_Stamp datetime DEFAULT NULL,
  Creator_User varchar(10) DEFAULT NULL
);

