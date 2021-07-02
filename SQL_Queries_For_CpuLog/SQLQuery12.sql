CREATE TABLE App_Parameters (
  id int primary key NOT NULL,
  Key_Type varchar(20) NOT NULL,
  Key_Value varchar(30) NOT NULL,
  Key_Text varchar(90) DEFAULT NULL,

  Current_Status char(1) DEFAULT NULL,
  Lastupd_User int check(Lastupd_User>=0 AND Lastupd_User<2) DEFAULT NULL,
  Lastupd_Stamp datetime DEFAULT NULL,
  Creator_Stamp datetime DEFAULT NULL,
  Creator_user int DEFAULT NULL,
  Sequence_Number int DEFAULT NULL
  )