INSERT INTO Position_Desc (Pos_Name , Pos_Description) VALUES ("Senior Doctor" , "Its the Doctor with minimum 3 Year Experience");
INSERT INTO Position_Desc (Pos_Name , Pos_Description) VALUES ("Junior Doctor" , "Its an entry Level Doctor with 0 years experience");


INSERT INTO Position (Pos_ID , Pos_Name) VALUES ("1" , "Senior Doctor") );
INSERT INTO Position (Pos_ID , Pos_Name) VALUES ("2", "Junior Doctor") ;


INSERT INTO Speciality_Desc (Spec_Name , Spec_Desc) VALUES ( "ENT" , "medicine that deals with the surgical and medical management of conditions" ) ;
INSERT INTO Speciality_Desc (Spec_Name , Spec_Desc) VALUES ( "Neurology" , "branch of medicine dealing with disorders of the nervous system" ) ;
INSERT INTO Speciality_Desc (Spec_Name , Spec_Desc) VALUES ( "Cardiology" , "branch of medicine that deals with the disorders of the heart") ;


INSERT INTO Speciality (Spec_ID , Spec_Name) VALUES ( "s1" , "ENT") ;
INSERT INTO Speciality (Spec_ID , Spec_Name) VALUES ( "s2" , "Neurology" ) ;
INSERT INTO Speciality (Spec_ID , Spec_Name) VALUES ( "s3" , "Cardiology" ) ;


INSERT INTO UName (Name , Fname , Lname) VALUES ("Wael Saied" , "Wael" , "Saied") ;
INSERT INTO UName (Name , Fname , Lname) VALUES ("Osama mousa" , "Osama" , "mousa") ;
INSERT INTO UName (Name , Fname , Lname) VALUES ("Sara Khaled" , "Sara" , "Khaled") ;
INSERT INTO UName (Name , Fname , Lname) VALUES ("Mohamed Farag" , "Mohamed" , "Farag") ;
INSERT INTO UName (Name , Fname , Lname) VALUES ("Manal Ahmed" , "Manal" , "Ahmed") ;


INSERT INTO UserType_Desc (UserType_Name , UserType_Desc) VALUES ("Doctor" , "The Users of Doctors") ;
INSERT INTO UserType_Desc (UserType_Name , UserType_Desc) VALUES ("Patient" , "The Users of Patients") ;
INSERT INTO UserType_Desc (UserType_Name , UserType_Desc) VALUES ("Admin" , "The Users for Adminstrators") ;


INSERT INTO User_Type (UserType_ID , UserType_Name) VALUES ("u1" , "Admin") ;
INSERT INTO User_Type (UserType_ID , UserType_Name) VALUES ("u2" , "Doctor" ) ;
INSERT INTO User_Type (UserType_ID , UserType_Name) VALUES ("u3" , "Patient" ) ;


INSERT INTO U_User (UserName , Name , Date_Created , UserType_ID , Password) VALUES 
( "Wael Saied" , "Wael Saied" , null , "u2" , "123456" ) ;
INSERT INTO U_User (UserName , Name , Date_Created , UserType_ID , Password) VALUES
( "Osama mousa" , "Osama mousa" , null , "u2" , "123456" ) ;
INSERT INTO U_User (UserName , Name , Date_Created , UserType_ID , Password) VALUES
( "Sara Khaled" , "Sara Khaled" , null , "u2" , "123456" ) ;
INSERT INTO U_User (UserName , Name , Date_Created , UserType_ID , Password) VALUES
( "Mohamed Farag" , "Mohamed Farag" , null , "u2" , "123456" ) ;
INSERT INTO U_User (UserName , Name , Date_Created , UserType_ID , Password) VALUES
( "Manal Ahmed" , "Manal Ahmed" , null , "u2" , "123456" ) ;
INSERT INTO U_User (UserName , Name , Date_Created , UserType_ID , Password) VALUES
( "Younnes Ahmed" , "Younnes Ahmed" , null , "u3" , "123456" ) ;
INSERT INTO U_User (UserName , Name , Date_Created , UserType_ID , Password) VALUES
( "shady mohamed" , "shady mohamed" , null , "u3" , "123456" ) ;
INSERT INTO U_User (UserName , Name , Date_Created , UserType_ID , Password) VALUES
( "Ahmed saad" , "Ahmed saad" , null , "u3" , "123456" ) ;
INSERT INTO U_User (UserName , Name , Date_Created , UserType_ID , Password) VALUES
( "issac hanen" , "issac hanen" , null , "u3" , "123456" ) ;
INSERT INTO U_User (UserName , Name , Date_Created , UserType_ID , Password) VALUES
( "Mohamed Fahmey" , "Mohamed Fahmey" , null , "u3" , "123456" );


INSERT INTO Doctor(Doc_ID , Doc_Bio , Spec_ID , Pos_ID , UserName) VALUES
( "d1" , "Male" , "s2" , "2" , "Wael Saied" ) ;
INSERT INTO Doctor(Doc_ID , Doc_Bio , Spec_ID , Pos_ID , UserName) VALUES
( "d2" , "Male" , "s1" , "2" , "Osama mousa" ) ;
INSERT INTO Doctor(Doc_ID , Doc_Bio , Spec_ID , Pos_ID , UserName) VALUES
( "d3" , "Female" , "s3" , "2" , "Sara Khaled" ) ;
INSERT INTO Doctor(Doc_ID , Doc_Bio , Spec_ID , Pos_ID , UserName) VALUES
( "d4" , "Male" , "s3" , "1" , "Mohamed Farag" ) ;
INSERT INTO Doctor(Doc_ID , Doc_Bio , Spec_ID , Pos_ID , UserName) VALUES
( "d5" , "Female" , "s1" , "2" , "Manal Ahmed" ) ;


INSERT INTO Rating (Rat_ID , Rat_Comment , Rat_Rating , Rat_Date , Pat_ID , Doc_ID) VALUES 
( "r1" , "Very Good Doctor" , 4.5 , 19/4/2022 , "p1" , "d3" ) ; 
INSERT INTO Rating (Rat_ID , Rat_Comment , Rat_Rating , Rat_Date , Pat_ID , Doc_ID) VALUES
( "r2" , "not good & not bad" , 2 , 19/4/2022 , "p2" , "d2" ) ; 
INSERT INTO Rating (Rat_ID , Rat_Comment , Rat_Rating , Rat_Date , Pat_ID , Doc_ID) VALUES
( "r3" , "Nice" , 4 , 19/4/2022 , "p5" , "d4" ) ;
INSERT INTO Rating (Rat_ID , Rat_Comment , Rat_Rating , Rat_Date , Pat_ID , Doc_ID) VALUES
( "r4" , "Very Good Doctor" , 4.5 , 19/4/2022 , "p3" , "d1" ) ; 
INSERT INTO Rating (Rat_ID , Rat_Comment , Rat_Rating , Rat_Date , Pat_ID , Doc_ID) VALUES
( "r5" , "Excellent Doctor" , 5 , 19/4/2022 , "p4" , "d1" ) ;