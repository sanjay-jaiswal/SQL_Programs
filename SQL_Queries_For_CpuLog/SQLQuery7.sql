CREATE TABLE Company(
  id int primary key NOT NULL,
  Name varchar(20) NOT NULL,

  Address varchar(200) DEFAULT NULL,
  Location varchar(80) DEFAULT NULL,

  Status int check(Status>=0 AND Status<2) DEFAULT 1,
  Creator_Stamp datetime DEFAULT NULL,
  Creator_User int DEFAULT NULL,
)
