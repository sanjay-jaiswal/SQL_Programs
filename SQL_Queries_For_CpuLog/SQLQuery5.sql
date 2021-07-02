CREATE TABLE User_Details (
  id int primary key NOT NULL,
  Email varchar(50) NOT NULL,
  First_Name varchar(100) NOT NULL,
  Last_Name varchar(100) NOT NULL,
  Password varchar(15) NOT NULL,
  Contact_Number bigint NOT NULL,
  Verified bit check(Verified>=0 AND Verified<2) DEFAULT NULL,
  )
