/*Creating Manager Table*/
CREATE TABLE BB_Manager
 (M_id int NOT NULL PRIMARY KEY, 
  mName varchar(100) NOT NULL, 
  m_phNo char(15));
   
/*Creating recording staff Table*/  
CREATE TABLE Recording_Staff
  (reco_ID int NOT NULL PRIMARY KEY,
   reco_Name varchar(100) NOT NULL,  
   reco_phNo char(15),
    reco_sex varchar(100)  ); 
    
/*Creating City Table*/     
CREATE TABLE City
 (City_ID int NOT NULL PRIMARY KEY, 
  City_name varchar(100) NOT NULL ); 
    
/*Creating Blood Donor Table*/
CREATE TABLE Blood_Donor 
(bd_ID int NOT NULL PRIMARY KEY,  
 bd_name varchar(100) NOT NULL, 
 bd_age varchar(100), 
 bd_sex varchar(100), 
 bd_Bgroup varchar(10), 
 reco_ID int NOT NULL, 
 City_ID int NOT NULL, 
 FOREIGN KEY(reco_ID) REFERENCES Recording_Staff(reco_ID),  
 FOREIGN KEY(City_ID) REFERENCES City(City_ID) );
 
/*Creating Recepient Table*/
 CREATE TABLE Recipient
  (reci_ID int NOT NULL PRIMARY KEY,
  reci_name varchar(100) NOT NULL,
  reci_age varchar(10),
  reci_sex varchar(10),
  reci_Brgp varchar(10),
  reci_Bqnty float, 
  reco_ID int NOT NULL,
  City_ID int NOT NULL,
  M_id int NOT null,
  FOREIGN KEY(M_id) REFERENCES BB_Manager(M_id), 
  FOREIGN KEY(City_ID) REFERENCES City(City_ID) );
 
 /*Altering Manger Table*/
 Alter table BB_Manager 
 ADD m_sex varchar(10);    
 /*Inserting Values to Table Manager*/
 INSERT INTO BB_Manager VALUES(101, 'Tejal',     9992341021, 'M');
 INSERT INTO BB_Manager VALUES(102, 'Chandu',    9992340000, 'M');
 INSERT INTO BB_Manager VALUES(103, 'Ronan',     5652341020, 'M');
 INSERT INTO BB_Manager VALUES(104, 'Silali',    9800241020, 'F');
 INSERT INTO BB_Manager VALUES(105, 'Natram',    7772341025, 'M');
 INSERT INTO BB_Manager VALUES(106, 'Dechi',     9630341028, 'F');
 INSERT INTO BB_Manager VALUES(107, 'Nzyla',     9033203420, 'F');
 INSERT INTO BB_Manager VALUES(108, 'Anvitha',   2503234102, 'F');
 INSERT INTO BB_Manager VALUES(109, 'Siri',      9992110011, 'M');
 INSERT INTO BB_Manager VALUES(110, 'Chirantan', 9965820000, 'M');
 SELECT * FROM BB_Manager;
 
 
/*Inserting Values to Table Recording Staff*/
INSERT INTO Recording_Staff VALUES(901001, 'Rekha',   4023522553,  'F');
INSERT into Recording_Staff VALUES(902002, 'Seetha',  9900846553,  'F');
INSERT into Recording_Staff VALUES(901003, 'Jimmy',   9632588000,  'M');
INSERT into Recording_Staff VALUES(902004, 'Lokesh',  2063216553,  'M');
INSERT into Recording_Staff VALUES(901005, 'Pranal',  9654806236,  'M');
INSERT into Recording_Staff VALUES(902006, 'Saanj',   4049632002,  'F');
INSERT into Recording_Staff VALUES(901007, 'Avayaa',  4044860000,  'F');
INSERT into Recording_Staff VALUES(902008, 'Eesha',   9632156553,  'F');
INSERT into Recording_Staff VALUES(901009, 'Rinku',   9640230053,  'F');
INSERT into Recording_Staff VALUES(902010, 'Sandy',   6002356522,  'F');
 SELECT * FROM Recording_Staff;

/*Inserting Values to Table City*/
INSERT INTO City VALUES(2010, 'Bangalore');
INSERT INTO City VALUES(2011, 'Mangalore');
INSERT INTO City VALUES(2012, 'Chikmangalore');
INSERT INTO City VALUES(2013, 'Bidadi');
INSERT INTO City VALUES(2014, 'Kodagu');
INSERT INTO City VALUES(2015, 'Shimoga');
INSERT INTO City VALUES(2016, 'Mandya');
INSERT INTO City VALUES(2017, 'Davangere');
INSERT INTO City VALUES(2018, 'Ooty');
INSERT INTO City VALUES(2019, 'Hassan');
SELECT * FROM City;
 
/*Altering table Blood Donor to add phone number*/
Alter table Blood_Donor 
 ADD bd_phNo char(15);
/*Inserting Values to Table Blood_Donor*/
INSERT INTO Blood_Donor VALUES (161101, 'Neerya',   25,  'F',  'O+',   901001, 2010, 2002369874);
INSERT INTO Blood_Donor VALUES (161102, 'Romi',     26,  'F',  'A+',   901003, 2010, 9009998867);
INSERT INTO Blood_Donor VALUES (161103, 'Sheesha',  21,  'F',  'A+',   901001, 2011, 9009999874);
INSERT INTO Blood_Donor VALUES (161104, 'Rama',     29,  'M',  'A-',   901003, 2012, 8855360303);
INSERT INTO Blood_Donor VALUES (161105, 'Lakshman', 22,  'M',  'B-',   901003, 2013, 2006325000);
INSERT INTO Blood_Donor VALUES (161106, 'Juya',     18,  'F',  'AB-',  901005, 2014, 2002255224);
INSERT INTO Blood_Donor VALUES (161107, 'Deppa ',   45,  'F',  'O+',   901005, 2015, 9696969874);
INSERT INTO Blood_Donor VALUES (161108, 'Vinod',    35,  'M',  'B+',   901003, 2014, 2000000002);
INSERT INTO Blood_Donor VALUES (161109, 'Prirya',   26,  'F',  'O+',   901007, 2014, 2001611614);
INSERT INTO Blood_Donor VALUES (161110, 'Shanku',   28,  'M',  'O-',   901009, 2018, 1111252524);
SELECT * FROM Blood_Donor; 

/*Inserting Values to Table Recipeient*/
 INSERT INTO Recipient VALUES(60001, 'Sameer', 25, 'M', 'A+',  1.5, 901002, 2010, 101);
 INSERT INTO Recipient VALUES(60002, 'Panya',  20, 'F', 'AB+', 0.5, 901002, 2011, 105); 
 INSERT INTO Recipient VALUES(60003, 'Rinya',  35, 'F', 'AB+', 2.5, 901003, 2013, 104);
 INSERT INTO Recipient VALUES(60004, 'Divank', 44, 'M', 'B-',  0.5, 901009, 2012, 102);
 INSERT INTO Recipient VALUES(60005, 'Roran',  42, 'M', 'A-',  1.5, 901002, 2012, 106);
 INSERT INTO Recipient VALUES(60006, 'Liyaa',  35, 'F', 'AB-', 3.5, 901008, 2015, 107);
 INSERT INTO Recipient VALUES(60007, 'Diya',   26, 'F', 'B+',  3.5, 901006, 2016, 104);
 INSERT INTO Recipient VALUES(60008, 'Disha',  28, 'F', 'O+',  1.5, 901001, 2017, 103);
 INSERT INTO Recipient VALUES(60009, 'Savit',  27, 'F', 'O-',  0.5, 901001, 2014, 107);
 INSERT INTO Recipient VALUES(60010, 'Defee',  21, 'M', 'B-',  2.5, 901004, 2011, 101);
 SELECT * FROM Recipient; 

/*Donor having same blood group as recipient and staying in same city*/
SELECT bd_ID, bd_name, reci_ID, reci_name, bd_Bgroup, reci_Brgp
FROM Blood_Donor, Recipient
WHERE bd_Bgroup=reci_Brgp
AND 
Blood_Donor.City_ID=Recipient.City_ID;


/*Function to display total number of Doners*/
CREATE OR REPLACE FUNCTION totalDoner
RETURN number IS
total integer:=0;
BEGIN
  SELECT count(*) into total
  FROM Blood_Donor;
  RETURN total ;
  END;
  
 DECLARE
  c integer;
  BEGIN
    c:=totalDoner();
    dbms_output.put_line('Total number of doners: '|| c);
    END; 
    
/*Check if the age trigger is applicable*/
INSERT INTO Blood_Donor VALUES (161112, 'Neel',   17,  'M',  'A+',   901001, 2012, 9772220074);
INSERT INTO Blood_Donor VALUES (161101, 'Ria',    14,  'F',  'O-',   901006, 2014, 7337760074);

/*Check if invalid Blood Group trigger is applicable*/
INSERT INTO Blood_Donor VALUES (161115, 'Naksh',   18,  'M',  'AX+',  901005, 2017, 4455420001);
INSERT INTO Blood_Donor VALUES (161101, 'Sudi',    21,  'M',  'P+',   901009, 2013, 9741213074);
     




