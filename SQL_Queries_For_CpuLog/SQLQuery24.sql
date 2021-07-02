CREATE TABLE Lab_Threshold(
  id int NOT NULL,
  Lab_Id int foreign key references Lab(id) NOT NULL,

  Lab_Capacity varchar(50) DEFAULT NULL,
  Lead_Threshold int check(Lead_Threshold>0 AND Lead_Threshold<4) DEFAULT NULL,

  Ideation_Engg_Threshold int check(Ideation_Engg_Threshold>0 AND Ideation_Engg_Threshold<3) DEFAULT NULL,
  Buddy_Engg_Threshold int check(Buddy_Engg_Threshold>0 AND Buddy_Engg_Threshold<3) DEFAULT NULL,
  Status int check(Status>0 AND Status<3) DEFAULT 1,

  Creator_Stamp datetime DEFAULT NULL,
  Creator_User int DEFAULT NULL
  ) 
