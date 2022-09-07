use midsem_implementation;
CREATE TABLE citizen (
  addhar_number integer NOT NULL unique,
  citizen_name varchar(255) NOT NULL,
  DOB date not null,
  age varchar(255) not null,
  city varchar(255) not null ,
  phone VARCHAR(255) not null,
  category  varchar(255) not null, -- senior citizen , adult and children
  vaccination_status  int not null,
  primary key (addhar_number)
  );

ALTER TABLE citizen modify COLUMN age int;
Alter table citizen modify column category enum('Senior Citizen','adult','Teenager');
Alter table citizen modify column vaccination_status enum('0','1','2');
ALTER TABLE citizen modiFY AGE INT NOT NULL CHECK (AGE >0 );

-- select StudentName,StudentDOB,year(curdate())-year(StudentDOB) as StudentAge from AgeDemo;
-- year(curdate())-year(StudentDOB) 
insert into citizen values(11110000,'Dishant Gupta','2001-08-07',0,'Lucknow',9810564254,'adult',1);
insert into citizen values(11111234,'Nishant Tyagi','2000-01-07',0,'Delhi',9910888759,'SeniorCitizen',2);
insert into citizen values(111100,'Bishant Shah','1969-12-07',0,'Ahmdabad',9625512323,'adult',1);

insert into citizen values(1111134,'vishal Bansal','1920-01-07',0,'Delhi',9966225511,'SeniorCitizen',1);
insert into citizen values(10122,'Nitin Gupta','1947-08-07',0,'Kanpur',9610101010,'SeniorCitizen','0');
insert into citizen values(1234,'Techno Gamerz','2000-12-12',0,'Delhi',9897969594,'SeniorCitizen',0);
insert into citizen values(1235,'Harsh Verma','2006-08-07',0,'Lucknow',9810564254,'adult',1);
insert into citizen values(1236,'Bhupendra Verma','1907-03-07',0,'Delhi',990888759,'SeniorCitizen',2);
insert into citizen values(1237,'Anmol Chaterji','2001-08-07',0,'kanpur',9815564254,'adult',1);
insert into citizen values(1238,'Ayush khushwaha','1960-01-07',0,'Luchnow',1010888759,'SeniorCitizen',2);
insert into citizen values(1239,'Divin Dominic','2001-05-07',0,'Lucknow',9810564254,'adult',1);
insert into citizen values(1240,'Mithilesh Sheoran','2010-01-07',0,'Delhi',9910388475,'SeniorCitizen',0);
insert into citizen values(1241,'Yash Gupta','1999-03-07',0,'Lucknow',9820564254,'adult',1);
insert into citizen values(1242,'Akash Jain','1998-01-07',0,'Delhi',9910878759,'SeniorCitizen',1);
insert into citizen values(1243,'Pranansh Gupta','1997-08-07',0,'Lucknow',9890564254,'adult',1);
insert into citizen values(1244,'Samik Prakash','1979-01-07',0,'Delhi',9965888759,'SeniorCitizen',1);
insert into citizen values(1245,'Yash Bharhava','1974-08-07',0,'Lucknow',9810564254,'adult',1);
insert into citizen values(1247,'Bhuvehs Sharma','2000-02-07',0,'Delhi',9910888759,'SeniorCitizen',1);
insert into citizen values(1246,'Anuja Gupta','2001-03-07',0,'Lucknow',9810504254,'adult',1);
insert into citizen values(127,'Ujjwal Tyagi','2000-04-07',0,'Delhi',6565656565,'SeniorCitizen',0);



select * from citizen
DELIMITER //
CREATE TRIGGER before_insert_category BEFORE INSERT 
on citizen FOR EACH ROW
BEGIN
case
when (datediff(date(now()),NEW.DOB)/365.25) > 60 then set NEW.category = 'Senior Citizen';
when (datediff(date(now()),NEW.DOB))/365.25 < 60 and (datediff(date(now()),NEW.DOB)/365.25) > 18  then set NEW.category = 'Adult';
when (datediff(date(now()),NEW.DOB)/365.25) < 18  then set NEW.category = 'Teenager';
END case;
END//

DELIMITER //
CREATE TRIGGER before_insert_age BEFORE INSERT 
on citizen FOR EACH ROW
set NEW.age = (floor((datediff(date(now()),NEW.DOB)/365.25)));


DROP TRIGGER midsem_implementation.before_insert_age; 