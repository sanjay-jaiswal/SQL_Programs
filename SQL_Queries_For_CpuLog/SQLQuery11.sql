CREATE TABLE Lab(
  id int primary key NOT NULL,
  Name varchar(40) DEFAULT NULL,
  Location varchar(50) DEFAULT NULL,
  Address  varchar(255) DEFAULT NULL,
  Status int check(Status>=0 And Status<2) DEFAULT 1,

  Creator_Stamp datetime DEFAULT NULL,
  Creator_User int DEFAULT NULL
  )
