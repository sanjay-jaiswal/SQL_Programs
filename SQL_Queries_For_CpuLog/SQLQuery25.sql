CREATE TABLE Company_Requirement(
id int primary key NOT NULL,
Company_Id int NOT NULL,

Candidate_Id int foreign key references fellowship_candidates(id) NOT NULL,
Requested_Month varchar(20) NOT NULL,
City varchar(20) DEFAULT NULL,

Is_Document_Verification int check(Is_Document_Verification>0 AND Is_Document_Verification<3) DEFAULT 1,
Requirement_Document_Path varchar(500) DEFAULT NULL,
No_Of_Engg int check(No_Of_Engg>0 AND No_Of_Engg<3) NOT NULL,
Tech_Stack_Id int check(Tech_Stack_Id>=0 AND Tech_Stack_Id<4) NOT NULL,

Tech_Type_Id int check(Tech_Type_Id>=0 AND Tech_Type_Id<4) NOT NULL,
Maker_Programs_Id int check(Maker_Programs_Id>=0 AND Maker_Programs_Id<4) NOT NULL,

Lead_Id int check(Lead_Id>=0 AND Lead_Id<4) NOT NULL,
Ideateion_Engg_Id int check(Ideateion_Engg_Id>=0 AND Ideateion_Engg_Id<4) DEFAULT NULL,
Buddy_Engg_Id int  check(Buddy_Engg_Id>=0 AND Buddy_Engg_Id<4) DEFAULT NULL,
Special_Remark text DEFAULT NULL,

Status int check(Buddy_Engg_Id>=0 AND Buddy_Engg_Id<3) DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
)

