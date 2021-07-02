CREATE TABLE Tech_Type (
  id int primary key NOT NULL,
  Type_Name varchar(80) NOT NULL,

  Current_Status char(1) DEFAULT NULL,
  Creator_Stamp datetime DEFAULT NULL,

  Creator_User int DEFAULT NULL
)
