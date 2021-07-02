CREATE TABLE Candidate_Qualification(
  id int identity(1,1) PRIMARY KEY not null,
  Candidate_Id int foreign key references fellowship_candidates(id),

  Diploma int DEFAULT 0,
  Degree_name varchar(10) NOT NULL,
  Is_Degree_Name_Verified int check(Is_Degree_Name_Verified>=0 AND Is_Degree_Name_Verified<2) DEFAULT 0,

  Employee_Decipline varchar(100) NOT NULL,
  Is_Employee_Decipline_Verified int check(Is_Employee_Decipline_Verified>=0 AND Is_Employee_Decipline_Verified<2) DEFAULT 0,

  Passing_Year int NOT NULL,
  Is_Passing_Year_Verified int check(Is_Passing_Year_Verified>=0 AND Is_Passing_Year_Verified<2) DEFAULT 0,

  Aggregate_Percentage double precision DEFAULT NULL,
  Final_Year_Percentage double precision DEFAULT null,
  Is_Final_Year_Per_Verified int check(Is_Final_Year_Per_Verified>=0 AND Is_Final_Year_Per_Verified<2) DEFAULT 0,

  Training_Institute varchar(20) NOT NULL,
  Is_Training_Institute_Verified int check(Is_Training_Institute_Verified>=0 AND Is_Training_Institute_Verified<2) DEFAULT 0,
  Training_Duration_Month int check(Training_Duration_Month between 0 and 12) DEFAULT 0,

  Is_Training_Duration_Month_Verified int check(Is_Training_Duration_Month_Verified>=0 AND Is_Training_Duration_Month_Verified<2) DEFAULT 0,
  Other_Training varchar(255) DEFAULT NULL,

  Is_Other_Training_Verified int check(Is_Other_Training_Verified>=0 AND Is_Other_Training_Verified<2) DEFAULT 0,
  Creator_Stamp datetime DEFAULT NULL,
  Creator_User int DEFAULT NULL,

) 

select *from Candidate_Qualification;