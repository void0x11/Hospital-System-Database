/* Creating Main Entities */ 

CREATE TABLE Position_Desc (Pos_Name CHAR(100) , Pos_Description CHAR(255) , PRIMARY KEY (Pos_Name) );

CREATE TABLE Position (
Pos_ID CHAR(20) , PRIMARY KEY (Pos_ID) , Pos_Name CHAR(100) , 
foreign key (Pos_Name) REFERENCES Position_Desc(Pos_Name) 	
ON DELETE CASCADE
ON UPDATE CASCADE );

CREATE TABLE UName (Name CHAR(100), Fname CHAR(50) , Lname CHAR(50) , PRIMARY KEY (Name) );

CREATE TABLE UserType_Desc ( UserType_Name CHAR(100), UserType_Desc CHAR(255) , PRIMARY KEY (UserType_Name));

CREATE TABLE User_Type (UserType_ID CHAR(20), PRIMARY KEY (UserType_ID) , UserType_Name CHAR(100) ,
foreign key (UserType_Name) REFERENCES UserType_Desc(UserType_Name) 	
ON DELETE CASCADE
ON UPDATE CASCADE );

CREATE TABLE U_User (UserName CHAR(100), PRIMARY KEY (UserName), Name CHAR(100) , UserType_ID CHAR(20) ,
Password CHAR(100), Date_Created DATE , 
foreign key (Name) REFERENCES UName(Name) 	
ON DELETE CASCADE
ON UPDATE CASCADE ,
foreign key (UserType_ID) REFERENCES User_Type(UserType_ID) 	
ON DELETE CASCADE
ON UPDATE CASCADE );

CREATE TABLE Speciality_Desc (Spec_Name CHAR(50), PRIMARY KEY (Spec_Name), Spec_Desc CHAR(255));

CREATE TABLE Speciality (Spec_ID CHAR(20), PRIMARY KEY(Spec_ID), Spec_Name CHAR(50) , 
foreign key (Spec_Name) REFERENCES Speciality_Desc(Spec_Name) 	
ON DELETE CASCADE
ON UPDATE CASCADE );

CREATE TABLE Doctor ( 
Doc_ID CHAR(20) , Doc_Bio char(6) , Pos_ID CHAR(20) , UserName CHAR(100) , Spec_ID CHAR(20) ,
PRIMARY KEY (Doc_ID) ,
foreign key (Pos_ID) REFERENCES hos.Position(Pos_ID) 	
ON DELETE CASCADE
ON UPDATE CASCADE ,
foreign key (UserName) REFERENCES U_User(UserName) 	
ON DELETE CASCADE
ON UPDATE CASCADE ,
foreign key (Spec_ID) REFERENCES Speciality(Spec_ID) 	
ON DELETE CASCADE
ON UPDATE CASCADE );

CREATE TABLE Patient (Pat_ID CHAR(20), Pat_Condition CHAR(100) , PRIMARY KEY (Pat_ID) , UserName CHAR(100) ,
foreign key (UserName) REFERENCES U_User(UserName) 	
ON DELETE CASCADE
ON UPDATE CASCADE );

CREATE TABLE Rating (Rat_ID CHAR(20) , Rat_Rating FLOAT , Rat_Date DATE , Pat_ID CHAR(20) , Doc_ID CHAR(20) ,
Rat_Comment CHAR(255) , PRIMARY KEY (Rat_ID) ,
foreign key (Pat_ID) REFERENCES Patient(Pat_ID) 	
ON DELETE CASCADE
ON UPDATE CASCADE ,
foreign key (Doc_ID) REFERENCES Doctor(Doc_ID) 	
ON DELETE CASCADE
ON UPDATE CASCADE );

CREATE TABLE Medicine_Desc (Med_Name CHAR(100) , Med_Description CHAR(255) , PRIMARY KEY (Med_Name)); 

CREATE TABLE Medicine (Med_ID CHAR(20) , Med_Price FLOAT , PRIMARY KEY (Med_ID) , Med_Name CHAR(100) ,
foreign key (Med_Name) REFERENCES Medicine_Desc(Med_Name) 	
ON DELETE CASCADE
ON UPDATE CASCADE );

CREATE TABLE TopicType_Desc (T_Name CHAR(100) , T_Description CHAR(255) , PRIMARY KEY (T_Name));

CREATE TABLE Topic_Type (TType_ID CHAR(20) , PRIMARY KEY (TType_ID) , T_Name CHAR(100) ,
foreign key (T_Name) REFERENCES TopicType_Desc(T_Name) 	
ON DELETE CASCADE
ON UPDATE CASCADE );

CREATE TABLE Topic (T_ID CHAR(20), PRIMARY KEY (T_ID) , T_Date DATE , Title CHAR(100) , Approved BOOLEAN ,
TType_ID CHAR(20) , UserName CHAR(100) , Spec_ID CHAR(20) ,
foreign key (Spec_ID) REFERENCES Speciality(Spec_ID) 	
ON DELETE CASCADE
ON UPDATE CASCADE ,
foreign key (TType_ID) REFERENCES Topic_Type(TType_ID) 	
ON DELETE CASCADE
ON UPDATE CASCADE ,
foreign key (UserName) REFERENCES U_User(UserName) 	
ON DELETE CASCADE
ON UPDATE CASCADE );

/* Creating the Relations Tables or Weak Entities */

CREATE TABLE Patient_Medicine ( Pat_ID CHAR(20) not null UNIQUE , Med_ID CHAR(20) not null UNIQUE , 
Start_Date DATE , End_Date DATE ,
foreign key (Pat_ID) REFERENCES Patient(Pat_ID) 	
ON DELETE CASCADE
ON UPDATE CASCADE ,
foreign key (Med_ID) REFERENCES Medicine(Med_ID) 	
ON DELETE CASCADE
ON UPDATE CASCADE );


CREATE TABLE Reply ( UserName CHAR(100) not null UNIQUE , T_ID CHAR(20) not NULL UNIQUE , 
Reply CHAR(100) , Rep_Date DATE , Rep_ID CHAR(20) UNIQUE , 
foreign key (UserName) REFERENCES U_User(UserName) 	
ON DELETE CASCADE
ON UPDATE CASCADE ,
foreign key (T_ID) REFERENCES Topic(T_ID) 	
ON DELETE CASCADE
ON UPDATE CASCADE );