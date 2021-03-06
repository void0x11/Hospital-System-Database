INSERT INTO Position_Desc (Pos_Name , Pos_Description) VALUES ( 
("Senior Doctor" , "Its the Doctor with minimum 3 Year Experience") ,
("Junior Doctor" , "Its an entry Level Doctor with 0 years experience"));

INSERT INTO Position (Pos_ID , Pos_Name) VALUES (
("1" , "Senior Doctor") , ("2", "Junior Doctor") );

INSERT INTO Speciality_Desc (Spec_Name , Spec_Desc) VALUES (
( "ENT" , "medicine that deals with the surgical and medical management of conditions" ) ,
( "Neurology" , "branch of medicine dealing with disorders of the nervous system" ) ,
( "Cardiology" , "branch of medicine that deals with the disorders of the heart") );

INSERT INTO Speciality (Spec_ID , Spec_Name) VALUES (
( "s1" , "ENT") ,
( "s2" , "Neurology" ) ,
( "s3" , "Cardiology" ) );

INSERT INTO UName (Name , Fname , Lname) VALUES (
("Wael Saied" , "Wael" , "Saied") ,
("Osama mousa" , "Osama" , "mousa") ,
("Sara Khaled" , "Sara" , "Khaled") ,
("Mohamed Farag" , "Mohamed" , "Farag") ,
("Manal Ahmed" , "Manal" , "Ahmed") );

INSERT INTO UserType_Desc (UserType_Name , UserType_Description) VALUES (
("Doctor" , "The Users of Doctors") ,
("Patient" , "The Users of Patients") ,
("Admin" , "The Users for Adminstrators") );

INSERT INTO User_Type (UserType_ID , UserType_Name) VALUES (
("u1" , "Admin") ,
("u2" , "Doctor" ) ,
("u3" , "Patient" ) );

INSERT INTO U_User (UserName , Name , Date_Created , UserType_ID , Password) VALUES (
( "Wael Saied" , "Wael Saied" , "19/4/2022" , "u2" , "123456" ) ,
( "Osama mousa" , "Osama mousa" , "19/4/2022" , "u2" , "123456" ) ,
( "Sara Khaled" , "Sara Khaled" , "19/4/2022" , "u2" , "123456" ) ,
( "Mohamed Farag" , "Mohamed Farag" , "19/4/2022" , "u2" , "123456" ) ,
( "Manal Ahmed" , "Manal Ahmed" , "19/4/2022" , "u2" , "123456" ) ,
( "Younnes Ahmed" , "Younnes Ahmed" , "19/4/2022" , "u3" , "123456" ) ,
( "shady mohamed" , "shady mohamed" , "19/4/2022" , "u3" , "123456" ) ,
( "Ahmed saad" , "Ahmed saad" , "19/4/2022" , "u3" , "123456" ) ,
( "issac hanen" , "issac hanen" , "19/4/2022" , "u3" , "123456" ) ,
( "Mohamed Fahmey" , "Mohamed Fahmey" , "19/4/2022" , "u3" , "123456" ) );

INSERT INTO Doctor(Doc_ID , Doc_Bio , Spec_ID , Pos_ID , UserName) VALUES (
( "d1" , "Male" , "s2" , "2" , "Wael Saied" ) ,
( "d2" , "Male" , "s1" , "2" , "Osama mousa" ) ,
( "d3" , "Female" , "s3" , "2" , "Sara Khaled" ) ,
( "d4" , "Male" , "s3" , "1" , "Mohamed Farag" ) ,
( "d5" , "Female" , "s1" , "2" , "Manal Ahmed" ) );

INSERT INTO Patient(Pat_ID , Pat_condition , UserName) VALUES (
( "p1" , "Heart Attack" , "Mohamed Fahmey" ) ,
( "p2" , "blockage of most often a buildup of fat" , "Younnes Ahmed" ) ,
( "p3" , " myocardial infarction" , "shady mohamed" ) ,
( "p4" , "Beta blockers" , "Ahmed saad" ) ,
( "p5" , "Antiplatelet agents" , "issac hanen" ) );

INSERT INTO Medicine_Desc(Med_Name , Med_Description) VALUES (
("Dayvigo" , "Decreased awareness and alertness."),
("Dimenhydrinate" , "liver or kidney disease" ) ,
("Dutasteride" , "treat benign prostatic hyperplasia") ,
("Imipramine" , "you recently had a heart attack") );

INSERT INTO Medicine (Med_ID , Med_Name , Med_Price) VALUES (
("m1" , "Dayvigo" , "97") ,
("m2" , "Dimenhydrinate" , "100") ,
("m3" , "Imipramine" , "150") ,
("m4" , "Dutasteride" , "35") );

INSERT INTO Patient_Medicine (Pat_ID , Med_ID , Start_Date , End_Date) VALUES (
("p1" , "m3" , "19/4/2022" , "19/4/2022") ,
("p2" , "m1" , "19/4/2022" , "19/4/2022") ,
("p3" , "m4" , "19/4/2022" , "19/4/2022") ,
("p4" , "m1" , "19/4/2022" , "19/4/2022") ,
("p5" , "m2" , "19/4/2022" , "19/4/2022") );


INSERT INTO Rating (Rat_ID , Rat_Comment , Rat_Rating , Rat_Date , Pat_ID , Doc_ID) VALUES (
( "r1" , "Very Good Doctor" , 4.5 , 19/4/2022 , "p1" , "d3" ) , 
( "r2" , "not good & not bad" , 2 , 19/4/2022 , "p2" , "d2" ) , 
( "r3" , "Nice" , 4 , 19/4/2022 , "p5" , "d4" ) , 
( "r4" , "Very Good Doctor" , 4.5 , 19/4/2022 , "p3" , "d1" ) , 
( "r5" , "Excellent Doctor" , 5 , 19/4/2022 , "p4" , "d1" ) );