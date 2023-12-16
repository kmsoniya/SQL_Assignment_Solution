drop database student;
create database student;
use student;

create table StudentBasicInformation (
   StudentRollNo int NOT NULL primary key,
   StudentName varchar(255),
   StudentSurname varchar(255),
   StudentAddress varchar(255),
   StudentCity varchar(255),
   StudentClass int,
   StudentSection char
);

create table StudentAdmissionPaymentDetails (
   StudentRollNo int NOT NULL primary key,
   StudentClass int,
   StudentSection char,
   AmountPaid int, 
   AmountBalance int,
   TranportOpted int,
   Hosteler int
);


create table StudentSubjectInformation (
   StudentRollNo int NOT NULL,
   SubjectOpted varchar(255),
   SubjectTotalMarks int,
   SubjectObtainedMarks int, 
   StudentMarksPercentage float,
   SubjectProf varchar(255)
);

create table StudentScholarshipInformation (
   StudentRollNo int NOT NULL,
   ScholarshipName varchar(255),
   ScholarshipDescription varchar(255),
   ScholarshipAmount int, 
   ScholarshipCategory char,
   Deposited int,
   Renewal char
);

insert into StudentBasicInformation(StudentRollNo, StudentName, StudentSurname, 
               StudentAddress, StudentCity, StudentClass,StudentSection) 
 values 
(1,'Ram','Gupta','486 Gomti Nagar','Lucknow',10,'A') ,
	(2,'Shyam','Prajapati','504 Gokul Nagar','Gokul',8,'B') ,
	(3,'Shubham','Chaudary','59 Loi Bazar','Mathura',11,'B') ,
	(4,'Raju','Kishan','67 Kherigao','Faridabad',10,'A') ,
	(5,'Prem','Mishra','456 Lalkau','Ghaziabad',4,'C') ,
	(6,'Priya','Shukla','98 Divani Mod','Sultanpur',5,'B') ,
	(7,'Raksha','Ranjan','9 Gokul Nagar','Gokul',12,'A') ,
	(8,'Rohit','Singh','504 Indira Nagar','Lucknow',8,'D') ,
	(9,'Abhinash','Agrawal','72 Sector 57','Noida',10,'B') ,
	(10,'Amit','Kumar','53 Demaji','Debrugarh',11,'A') ,
	(11,'Ankit','Moun','67 Kherigao','Faridabad',9,'C') ,
	(12,'Shyam','Prajapati','504 Gokul Nagar','Gokul',8,'B') ,
	(13,'Shubham','Chaudary','59 Loi Bazar','Mathura',11,'B') ,
	(14,'Raju','Kishan','67 Kherigao','Faridabad',10,'A') ,
	(15,'Prem','Mishra','456 Lalkau','Ghaziabad',4,'C') ,
	(16,'Priya','Shukla','98 Divani Mod','Sultanpur',5,'B') ,
	(17,'Ram','Gupta','486 Gomti Nagar','Lucknow',10,'A') ;


insert into StudentAdmissionPaymentDetails (StudentRollNo,StudentClass,StudentSection,AmountPaid,AmountBalance,TranportOpted,Hosteler)
values
	(1,10,'A',100000,80000,0,1),
	(2,8,'B',80000,30000,1,0),
	(3,11,'B',110000,60000,0,1),
	(4,10,'A',100000,80000,1,0),
	(5,4,'C',40000,10000,0,1),
	(6,5,'B',50000,0,1,0),
	(7,12,'A',120000,60000,0,0),
	(8,8,'D',80000,80000,0,1),
	(9,10,'B',100000,80000,1,0),
	(10,11,'A',110000,60000,0,1),
	(11,9,'C',90000,80000,0,1),
	(12,8,'B',80000,30000,1,0),
	(13,11,'B',110000,60000,0,1),
	(14,10,'A',100000,80000,1,0),
	(15,4,'C',40000,10000,0,1),
	(16,5,'B',50000,0,1,0),
	(17,10,'A',100000,80000,0,1);

insert into StudentSubjectInformation (StudentRollNo,SubjectOpted,SubjectObtainedMarks,SubjectTotalMarks,SubjectProf)
values
	(1,'Physics',83,100,'SK Ram'),
	(2,'Computer',86,100,'Ravi Lohani'),
	(3,'Maths',56,100,'Vineeta Bajpai'),
	(1,'Maths',93,100,'Vineeta Bajpai'),
	(4,'Physics',34,100,'SK Ram'),
	(6,'Hindi',98,100,'Rishab Kumar'),
	(2,'English',83,100,'Pushkar Gaurav'),
	(9,'Physics',73,100,'SK Ram'),
	(10,'Maths',53,100,'Videsh Kumar'),
	(11,'Physics',98,100,'SK Ram'),
	(6,'Computer',95,100,'Ravi Lohani');

insert into StudentScholarshipInformation (StudentRollNo,ScholarshipName,ScholarshipDescription,ScholarshipAmount,Deposited,Renewal)
values
	(1,'UP Scholarship','For Student to persue there further Education',10000,0,1),
	(3,'UP Scholarship','For Student to persue there further Education',3000,1,1),
	(4,'Merit Scholarship','For Student to persue there further Education',8000,0,0),
	(2,'Accolite Digital Scholarship','For Student to persue there further Education',10000,1,1),
	(8,'UP Scholarship','For Student to persue there further Education',4000,1,1),
	(13,'Merit Scholarship','For Student to persue there further Education',9000,0,1),
	(15,'Jan Kalyan Scholarship','For Student to persue there further Education',4000,0,1),
	(6,'State Scholarship','For Student to persue there further Education',20000,1,0),
	(10,'Jan Kalyan Scholarship','For Student to persue there further Education',2000,0,0),
	(9,'UP Scholarship','For Student to persue there further Education',6000,0,1)

