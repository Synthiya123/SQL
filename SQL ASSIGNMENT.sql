use Hands_On;
#EXERCISE 01#
 #creating the tables#
 
CREATE TABLE Trainer_Info(
Trainer_Id VARCHAR(20),
Salutaion CHAR(7), 
Trainer_Name CHAR(30),
Trainer_Location CHAR(30),
Trainer_Track VARCHAR(15),
Trainer_Qualification VARCHAR(100),
Trainer_Experience INT(11),
Trainer_Email VARCHAR(100),
Trainer_Password VARCHAR(20)
);
SELECT* FROM Trainer_info;

CREATE TABLE Batch_Info(
Batch_Id VARCHAR (25) PRIMARY KEY,
Batch_owner VARCHAR(50),
Batch_BU_Name VARCHAR(50)
);
SELECT * FROM batch_info;

CREATE TABLE Module_Info (
	Module_Id VARCHAR (20),
    Module_Name VARCHAR (40),
    Module_Duration INT (11)
);
SELECT* FROM module_info;

CREATE TABLE Associate_Info (
Associate_Id CHAR(20),
Associate_Name CHAR(30),
Salutation CHAR(7),
Associate_Location CHAR(30),
Associate_Track CHAR(30),
Associate_Qualification CHAR(30),
Associate_Email VARCHAR(30),
Associate_Password CHAR(20)
);
SELECT *FROM associate_info;

CREATE TABLE Questions(
 Question_Id CHAR(20),
 Module_Id CHAR(20) REFERENCES module_info,
 Question_Text VARCHAR(900) 
 );
SELECT*FROM questions;
 
CREATE TABLE Associate_status(
	Associate_Id CHAR(20) REFERENCES associate_info,
    Module_Id CHAR(20) REFERENCES module_info,
    start_date CHAR(20),
    end_date CHAR(20),
    AFeedbackgiven CHAR(20),
    Tfeedbackgiven CHAR(20)
    );
SELECT * FROM associate_status; 
 
 CREATE TABLE Trainer_feedback(
	Trainer_Id CHAR(20) REFERENCES trainer_info,
    Question_Id CHAR(20) REFERENCES question_info,
    Batch_Id CHAR(20) REFERENCES batch_info,
    Module_Id CHAR(20) REFERENCES module_info,
    Trainer_Rating INT(11)
    );
SELECT * FROM Trainer_feedback ;
    
 CREATE TABLE Associate_feedback(
	Associate_Id CHAR(20) REFERENCES associate_info,
	Question_Id CHAR(20) REFERENCES question_info,   
    Module_Id CHAR(20) REFERENCES module_info,
   Associate_Rating INT(11)
);
SELECT * FROM associate_feedback;

CREATE TABLE Login_Details(
	User_Id VARCHAR(20) UNIQUE PRIMARY KEY,
    User_Password VARCHAR(20)
);
SELECT * FROM Login_Details;
 
#Inserting the values in the Table.
#EXERCISE 02#
INSERT INTO Trainer_info(Trainer_Id,Salutaion,Trainer_Name,Trainer_Location,Trainer_Track,Trainer_Qualification,Trainer_Experience,Trainer_Email,Trainer_Password)
	VALUES('F001','Mr.','PANKAJ GHOSH','Pune','Java','Bachelor_of_Technology','12','Pankaj.Ghosh@alliance.com','fac1@123');
 INSERT INTO Trainer_info(Trainer_Id,Salutaion,Trainer_Name,Trainer_Location,Trainer_Track,Trainer_Qualification,Trainer_Experience,Trainer_Email,Trainer_Password)   
  VALUES  ('F002','Mr.','SANJAY RADHAKRISHAN','Bangalore','DotNet','Bachelor_of_Technology','12','Sanjay.Radhakrishanan@alliance.com','fac2@123'),
    ('F003','Mr.','VIJAY MATHUR','Chennai','Mainframe','Bachelor_of_Technology','10','Vijay.Mathur@alliance.com','fac3@123'),
    ('F004','Mrs.','NANDHINI NAIR','Kolkata','Java','Master_of_Computer_Applications','9','Nandhini.Nair@alliance.com','fac4@123'),
    ('F005','Miss.','ANITHA PAREKH','Hyderabad','Testing','Master_of_Computer_Applications','6','Anitha.Parekh@alliance.com','fac5@123'),
    ('F006','Mr.','MONAJ AGRAWAL','Mumbai','Mainframe','Bachelor_of_Technology','9','Monaj.Agarwal@alliance.com','fac6@123'),
    ('F007','Ms.','MEENA KULKARNI','Coimbatore','Testing','Bachelor_of_Technology','5','Meena.Kulkarni@alliance.com','fac7@123'),
    ('F009','Mr.','SAGAR MENON','Mumbai','Java','Master_of_Science_In_Information_Technology','12','Sagar.Menon@alliance.com','fac8@123');
SELECT * FROM Trainer_info;

 INSERT INTO batch_info(Batch_Id,Batch_Owner,Batch_BU_Name)
   VALUES('B001','MRS.SWATI ROY','MSP'),
   ('B002','MRS.ARURNA K','HEALTHCARE'),
   ('B003','MR.RAJESH KRISHNAN','LIFE SCIENCE'),
   ('B004','MR.SACHIN SHETTY','BFS'),
   ('B005','MR.RAMESH PATEL','COMMUNICATIONS'),
   ('B006','MRS.SUSAN CHERIAN','RETAIL & HOSPITALITY'),
   ('B007','MRS.SAMPADA JAIN','MSP'),
   ('B008','MRS.KAVITA REGE','BPO'),
   ('B009','MR.RAVI SEJPAL','MSP');
SELECT * FROM batch_info;

   
INSERT INTO module_info(Module_Id,Module_Name,Module_Duration)
  VALUES('O10SQL','Oracle_10g SQL','16'),
  ('O10PLSQL','Oracle_10g PL/SQL','16'),
  ('J2SE','Core Java SE 1.6','288'),
  ('J2EE','Advanced Java EE 1.6','80'),
  ('JAVAFX','JavaFX 2.1','80'),
  ('DOTNT','Net Framework 4.0','50'),
  ('SQL2008','MS SQI Server 2008','120'),
  ('MSBI08','MS BI Studio 2008','158'),
  ('SHRPNT','MS Share Point','80'),
  ('ANDRD4','Android 4.0','200'),
  ('EMOO1','Instructor','0'),
  ('EMOO2','Course Material','0'),
  ('EMOO3','Learning Effectiveness','0'),
  ('EMOO4','Environment','0'),
  ('EMOO5','Job Impact','0'),
  ('TMOO1','Attendees','0'),
  ('TMOO2','Course Material','0'),
  ('TMOO3','Environment','0');
SELECT * FROM module_info;
  
  
INSERT INTO associate_info(Associate_Id,Salutaion,Associate_Name,Associate_Location,Associate_Track,Associate_Qualification,Associate_Email,Associate_Password)
	VALUES('A001','Miss.','GAYATHRI NARAYANAN','Gurgaon','Java','Bachelor of Technology','Gayathri.Narayanan@hp.com','tne1@123'),
    ('A002','Mrs.','RADHIKA MOHAN','Kerela','Java','Bachelor of Engineering In Information Technology','Radhika.Mohan@cognizant.com','tne2@123'),
    ('A003','Mr.','KISHORE SRINIVAS','Chennai','Java','Bachelor of Engineering In Computers','Kishore.Srinivas@ibm.com','tne3@123'),
    ('A004','Mr.','ANAND RANGANATHAN','Mumbai','DotNet','Master of Computer Applications','Anand.Ranganathan@finolex.com','tne4@123'),
    ('A005','Miss.','LEELA MENON','kerela','Mainframe','Bachelor of Engineering In Information Technology','Leela.Menon@microsoft.com','tne5@123'),
    ('A006','Mrs.','ARTI KRISHNAN','Pune','Testing','Master of Computer Applications','Arti.Krishanan@cognizant.com','tne6@123'),
    ('A007','Mr.','PRABAKAR SHUNMUGHAM','Mumbai','Java','Bachelor of Technology','Prabakar.shunmugham@honda.com','tne7@123');
SELECT * FROM associate_info;
    

INSERT INTO questions(Question_Id,Module_Id,Question_Text)
	VALUES('Q001','EM001','Instructor knowledgeable and able to handle all your queries.'),
    ('Q002','EM001','All the topics in a particular course handled by the trainer without any gaps or slippages.'),
    ('Q003','EM002','The course materials presentation,handson etc. refered during the training are relevant and useful.'),
    ('Q004','EM002','The hands on session adequate enoughto grasp the understanding of the topic.'),
    ('Q005','EM002','The reference materials suggested for each module are adequate.'),
    ('Q006','EM003','Knowledge and Skil represented in this training are applicatible st your work'),
    ('Q007','EM003','This trainng increases my proficiency level.'),
    ('Q008','EM004','The physical environment e.g. classroom space,air conditioning was conducive to learn.'),
    ('Q009','EM004','The software/hardware environment provided was sufficient for the purpose of the training.'),
    ('Q010','EM005','This training will improve your jod performance.'),
    ('Q011','EM005','This training aligns with the business priorities and goals.'),
    ('Q012','TM001','Participants were receptive and had attitude towards learning.'),
    ('Q013','TM001','All participants gained the knowledge and the practical skills after this training'),
    ('Q014','TM002','The course materials presentation,handson etc. available for this session covers the entire objectives of the course.'),
    ('Q015','TM002','Complexity of this course is adequate for the participant level.'),
    ('Q016','TM002','Case study and practical demos were helpful in understanding of the topics.'),
    ('Q017','TM003','The physical environment e.g. classroom space,air conditioning was conducive to learn.'),
    ('Q018','TM003','The software/hardware environment provided was sufficient for the purpose of the training.');
SELECT * FROM questions;
  
  
  
ALTER TABLE associate_status DROP COLUMN AFeedbackgiven;
ALTER TABLE associate_status DROP COLUMN TFeedbackgiven;
ALTER TABLE associate_status  ADD Trainer_Id VARCHAR(20) AFTER Batch_Id;
INSERT INTO associate_status(Associate_Id,Module_Id,Batch_Id,Trainer_Id,Start_Date,End_Date)
VALUES('A001','O10SQL','B001','F001','2000-12-15','2000-12-25'),
('A002','O10SQL','B001','F001','2000-12-15','2000-12-25'),
('A003','O10SQL','B001','F001','2000-12-15','2000-12-25'),
('A001','O10PLSQL','B002','F002','2001-2-1','2000-2-12'),
('A002','O10PLSQL','B002','F002','2001-2-1','2000-2-12'),
('A003','O10PLSQL','B002','F002','2001-2-1','2000-2-12'),
('A001','J2SE','B003','F003','2002-8-20','2002-10-25'),
('A002','J2SE','B003','F003','2002-8-20','2002-10-25'),
('A001','J2EE','B004','F004','2005-12-1','2005-12-25'),
('A002','J2EE','B004','F004','2005-12-1','2005-12-25'),
('A003','J2EE','B004','F004','2005-12-1','2005-12-25'),
('A004','J2EE','B004','F004','2005-12-1','2005-12-25'),
('A005','JAVAFX','B005','F006','2005-12-4','2005-12-20'),
('A006','JAVAFX','B005','F006','2005-12-4','2005-12-20'),
('A006','SQL2008','B006','F007','2007-6-21','2007-6-28'),
('A007','SQL2008','B006','F007','2007-6-21','2007-6-28'),
('A002','MSBI08','B007','F006','2009-6-26','2009-6-29'),
('A003','MSBI08','B007','F006','2009-6-26','2009-6-29'),
('A004','MSBI08','B007','F006','2009-6-26','2009-6-29'),
('A002','ANDRD4','B008','F005','2010-6-5','2010-6-28'),
('A005','ANDRD4','B008','F005','2010-6-5','2010-6-28'),
('A003','ANDRD4','B009','F005','2011-8-1','2011-8-20'),
('A006','ANDRD4','B009','F005','2011-8-1','2011-8-20');
SELECT * FROM associate_status;

#EXERCISE 3#
use hands_on;
SELECT * FROM trainer_info;   
UPDATE trainer_info 
SET Trainer_Password='nn4@123'
WHERE Trainer_Id='F004';

#EXECISE 4#
SELECT * FROM associate_status;
use hands_on;
DELETE  FROM associate_status WHERE Associate_Id='A003' AND Module_Id='J2EE'AND Trainer_Id='F004'AND Start_date='2005-12-1'AND end_date='2005-12-25';

#EXERCISE 5#
SELECT * FROM trainer_info;
SELECT * FROM trainer_info ORDER BY Trainer_Experience DESC LIMIT 5;

#EXERCISE 06#
SELECT * FROM Login_details;
START TRANSACTION ;
INSERT INTO Login_details VALUES('U001','Admin1@123'),('U002','Admin2@123');
ROLLBACK;

#EXERCISE 07#
use hands_on;
GRANT CREATE ON login_details TO 'trans';
GRANT SELECT ON login_details TO 'trans';
REVOKE SELECT, CREATE ON login_details FROM 'trans';
ROLLBACK;
SELECT * FROM Login_details;

##EXERCISE 08#
SELECT * FROM Login_details;
GRANT DROP ON login_details TO 'trans';

#EXERCISE 09 #
CREATE TABLE Supplier(
Supplier_Id INT(10) NOT NULL,
Supplier_name VARCHAR(50) NOT NULL,
Address VARCHAR(50),
City VARCHAR(50),
State VARCHAR(25),
Zip_Code VARCHAR(10)
);
SELECT * FROM Supplier;

#EXERCISE 10#
CREATE TABLE Course_fee_History(
Course_code INT(50) NOT NULL,
Base_Fee INT(50) NOT NULL,
Special_Fee INT(50),
Created_By VARCHAR(50),
Updated_By VARCHAR(25)
);
SELECT * FROM Course_fee_History;
INSERT INTO Course_fee_History(Course_code,Base_Fee,Special_Fee,Created_By,Updated_By)
VALUES(1,120,123,'Ram','Ramesh'),
(2,150,113,'Bala','Ram'),
(3,160,170,'Bala','Vinu'),
(4,170,235,'Ram','Ram'),
(6,190,100,'vinod','vinod');

CREATE TABLE Course_fee(
Course_code INT(25) NOT NULL,
Base_Fee VARCHAR(25) NULL,
Special_Fee INT(25),
Discount INT(25)
);
SELECT * FROM Course_fee;
INSERT INTO Course_fee(Course_code,Base_Fee,Special_Fee,Discount)
VALUES(1,180,100,10),
(2,150,110,10),
(3,160,170,5),
(4,150,100,10),
(6,190,100,40);
SELECT * FROM Course_fee;
SELECT course_code,Base_fee,Special_fee FROM course_fee UNION select course_code,Base_fee,Special_fee FROM Course_fee_History;

#EXERCISE 11#
SELECT COUNT(*) FROM course_fee_history;
SELECT COUNT(DISTINCT (COURSE_CODE)) FROM Course_fee_History;
SELECT COUNT(DISTINCT (base_Fee)) FROM Course_fee_History;
SELECT COUNT(DISTINCT (special_fee)) FROM Course_fee_History;

SELECT COUNT(*) FROM course_fee;
SELECT COUNT(DISTINCT (COURSE_CODE)) FROM Course_fee;
SELECT COUNT(DISTINCT (base_Fee)) FROM Course_fee;
SELECT COUNT(DISTINCT (special_fee)) FROM Course_fee;

#EXERCISE 12#
CREATE TABLE course_info(
Course_code VARCHAR(10),
Course_Name VARCHAR(10),
Course_Description VARCHAR(10),
Course_Start_Time INT(20),
Course_Duration INT(20),
NO_Of_Participants INT(20),
Course_Type CHAR(10),
PRIMARY KEY(Course_code,Course_Name)
);
SELECT * FROM course_info;
INSERT INTO course_fee
values(7,NULL,300,5),
(8,NULL,450,10),
(9,300,250,15),
(10,175,300,15);
SELECT MAX(base_fee) FROM course_fee;
select min(base_fee) FROM course_fee;

#EXERCISE 13#
CREATE TABLE Course_fee(
Course_code INT(25) NOT NULL,
Base_Fee VARCHAR(25) NULL,
Special_Fee INT(25),
Discount INT(25)
);
select*from course_fee;

CREATE TABLE infra_fee(
infra_fee DECIMAL(5,3) PRIMARY KEY);
INSERT INTO infra_fee(infra_fee)
VALUES(45.732),(42.679),
(32.785),(32.875),(48.732),(40.679),(39.785),(34.875),(52.342);
SELECT * FROM infra_fee;
SELECT * FROM Course_fee  JOIN  infra_fee; 
#EXERCISE 13#
SELECT AVG(infra_fee) FROM infra_struc;

#PRE REQUISITE#
CREATE TABLE course_info(
Course_code VARCHAR(10),
Course_Name VARCHAR(10),
Course_Description VARCHAR(40),
Course_Start_date DATE,
Course_Duration INT(20),
NO_Of_Participants INT(20),
Course_Type CHAR(10),
PRIMARY KEY(Course_code,Course_Name)
);
SELECT * FROM course_info;
INSERT INTO course_info (Course_code,Course_Name,Course_Description,Course_Start_date,Course_Duration,NO_Of_Participants,Course_Type)
VALUES('COO1','SQL','Trains to work on data','2022-08-5','9','25','CLR'),
('COO2','Linux','work on data','2022-07-25','10','30','hands on'),
('COO3','Dotnet','Theoritical and practical','2022-06-18','15','40','Optional');

#EXCERCISE 14#
SELECT DATEDIFF(current_date(),course_start_date) , Course_Name FROM course_info;

#EXERCISE 15#
SELECT  concat('<',course_code,'>','<',course_name,'>') FROM course_info;

#EXERCISE 16#
SELECT AVG(IFNULL(Base_fee,0)) FROM course_fee;

#EXERCISE 17#
SELECT * FROM course_info;
SELECT * FROM course_fee;
ALTER TABLE Course_info ADD message VARCHAR(20) AFTER Course_type;
 INSERT INTO course_info(Course_code,Course_Name,Course_Type,Message) 
VALUES('COO1','SQL','CLR','Class Room'),
('COO2','Linux','EL', 'ELearning'),
('COO3','Dotnet','OF', 'Offline Reading');

#EXERCISE 18#
SELECT * FROM course_info;
INSERT INTO course_info (Course_code,Course_Name,Course_Description,Course_Start_date,Course_Duration,NO_Of_Participants,Course_Type)
VALUES('COO1','SQL','Trains to work on data','2022-08-5','9','25','CLR'),
('COO2','Linux','work on data','2022-07-25','10','30','hands on'),
('COO3','Dotnet','Theoritical and practical','2022-06-18','15','40','Optional');
SELECT course_start_date, No_Of_Participants FROM course_info GROUP BY course_start_Date;

#EXERCISE 19#
SELECT course_start_date, No_Of_Participants FROM course_info WHERE course_type='CLR' GROUP BY course_start_Date;

#EXERCISE 20#
SELECT course_start_date, No_Of_Participants FROM course_info
WHERE course_type='CLR' AND No_Of_Participants >10
GROUP BY course_start_Date ;

#EXERCISE 21#
SELECT course_code,Course_Name,Course_Duration FROM course_info ORDER BY Course_Duration;

#EXERCISE 22#
CREATE TABLE Student_info(
Student_Id VARCHAR(10) PRIMARY KEY,
First_Name VARCHAR(20),
Last_name VARCHAR(25),
Address VARCHAR(150),
Course_code VARCHAR(10) REFERENCES course_info
);
SELECT * FROM student_info;
SELECT student_info.Student_Id,student_info.First_Name,student_info.Last_name,course_info.Course_code FROM student_info 
JOIN course_info ON student_info.course_code ='167';

#EXERCISE 23#
SELECT course_fee.discount, course_info.Course_Description FROM course_fee 
JOIN course_info ON course_fee.Course_code = course_info.Course_code;

#EXERCISE 24#
SELECT * FROM student_info;
SELECT student_info.first_name, course_info.Course_code FROM student_info
LEFT JOIN course_info ON student_info.Course_code=course_info.Course_code;
SELECT student_info.first_name, course_info.Course_code FROM student_info
RIGHT JOIN course_info ON student_info.Course_code=course_info.Course_code;

#EXERCISE 25#
ALTER TABLE course_fee ADD infra_fee DECIMAL(5,3) AFTER Discount;
SELECT * FROM course_info;
SELECT * FROM student_info;
SELECT * FROM course_fee;
INSERT INTO student_info 
VALUES('SOO1','Samson','Jose','Chennai','Java'),
('SOO2','Linda','wordson','Munbai','Python');
INSERT INTO course_fee(Course_Code,Base_fee,Special_fee,Discount,Infra_fee)
VALUES
('1',150,140,18,43.643),
('2',135,155,14,47.980);
INSERT INTO course_info (Course_code,Course_Name,Course_Description,Course_Start_date,Course_Duration,NO_Of_Participants,Course_Type)
VALUES('C01','SQL','Trains to work on data','2022-08-5','9','25','CLR'),
('C02','Linux','work on data','2022-07-25','10','30','hands on');
SELECT DISTINCT student_info.Student_Id FROM student_info JOIN course_fee ON student_info.course_code = course_fee.Course_code 
WHERE ((Base_Fee+Special_Fee)*(1-discount/100)) <1500;

#EXERCISE 26#
SELECT * FROM Course_fee  JOIN  infra_fee; 
SELECT DISTINCT student_info.Student_Id,student_info.First_Name FROM student_info 
JOIN course_fee ON student_info.course_code = course_fee.Course_code 
WHERE ((Base_Fee+Special_fee)*(1-discount/100)) <1500;

