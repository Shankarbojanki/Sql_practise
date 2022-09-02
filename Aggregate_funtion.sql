create database Aggregate_function;

use Aggregate_function;

 CREATE TABLE MyPlayers(
	ID INT,
	First_Name VARCHAR(255),
	Last_Name VARCHAR(255),
	Socre_In_Exhibiiton_match INT,
	COUNTRY VARCHAR(100),
	PRIMARY KEY (ID)
); 

insert into MyPlayers values(1, 'Shikhar', 'Dhawan', 95, 'India'),
                            (1, 'Shikhar', 'Dhawan', 112, 'India'),
							(2, 'Jonathan', 'Trott', 50, 'SouthAfrica'),
						    (3, 'Kumara', 'Sangakkara', 25, 'Sri Lanka'),
							(3, 'Kumara', 'Sangakkara', 125, 'Sri Lanka'),
                            (4, 'Virat', 'Kohli', 50, 'India'),
                            (4, 'Virat', 'Kohli', 50, 'India'),
                            (5, 'Rohit', 'Sharma', 225, 'India'),
                            (6, 'Ravindra', 'Jadeja', 15, 'India'),
							(7, 'James', 'Anderson', 15, 'England'),
                            (7, 'James', 'Anderson', 215, 'England');
 drop table MyPlayers;                           
                            
 -- AVG(expr);      
 select avg (Socre_In_Exhibiiton_match) from  MyPlayers;
 select ID, avg(Socre_In_Exhibiiton_match) from MyPlayers group by ID;
 
CREATE TABLE sales(
	ID INT,
	ProductName VARCHAR(255),
	CustomerName VARCHAR(255),
	DispatchDate date,
	DeliveryTime time,
	Price INT,
	Location VARCHAR(255)
); 

INSERT INTO sales values(1, 'Key-Board', 'Raja', DATE('2019-09-01'), TIME('11:00:00'), 7000, 'Hyderabad'),
                        (2, 'Earphones', 'Roja', DATE('2019-05-01'), TIME('11:00:00'), 2000, 'Vishakhapatnam'),
                        (3, 'Mouse', 'Puja', DATE('2019-03-01'), TIME('10:59:59'), 3000, 'Vijayawada'),
                        (4, 'Mobile', 'Vanaja', DATE('2019-03-01'), TIME('10:10:52'), 9000, 'Chennai'),
                        (5, 'Headset', 'Jalaja', DATE('2019-04-06'), TIME('11:08:59'), 6000, 'Goa');
 
 
select avg(Price) from sales;

select count(*) from sales; 
select First_Name from MyPlayers;
select count(First_Name) from MyPlayers;
-- only gives unique names no duplicates (distinct)
select count(distinct First_Name) from MyPlayers;


-- -->>Task on Btech_students

create table Academic_years (id int auto_increment primary key,academic_year varchar(255));
insert into Academic_years (academic_year) values ('2018-2019'),('2019-2020'),('2020-2021'),('2021-2022');
select * from Academic_years;
create table Branches (id int auto_increment primary key,Branch_name varchar(255));
insert into Branches (Branch_name) values ('EEE'),('Mech'),('Civil'),('ECE'),('CSE');
select * from Branches;
create table Students (stu_id int auto_increment primary key,Student_Name varchar(255),age int,address varchar(255),Mobile varchar(255),Email varchar(255));
insert into Students(Student_Name,age,address,Mobile,Email) values ('Ramesh',22,'Vizag','9807745637','ramesh123@gmail.com');
insert into Students(Student_Name,age,address,Mobile,Email) values ('Suresh',21,'Warangal','9807745637','suresh123@gmail.com'),
																   ('Rajesh',23,'Vizianagaram','9807745637','rajesh123@gmail.com'),
                                                                   ('Pavan',24,'Vizag','9807745637','pavan123@gmail.com'),
                                                                   ('Naveen',21,'Tuni','9807745637','naveen123@gmail.com'),
                                                                   ('Hari',23,'rajahmundry','9807745637','hari123@gmail.com'),
                                                                   ('Teja',27,'Kakinada','9807745637','teja123@gmail.com'),
                                                                   ('Yaswanth',23,'Vizag','9807745637','yaswanth123@gmail.com'),
                                                                   ('Harsha',22,'Bheemavaram','9807745637','harsha123@gmail.com'),
                                                                   ('Yogesh',24,'srikakulam','9807745637','yogesh123@gmail.com');
select *from Students;
drop table Students;
create table Marks (id int auto_increment primary key,student_id int,academic_id int,branch_id int,Marks int);
insert into Marks (student_id,academic_id,branch_id ,Marks) values (1,2,1,450),
																   (2,1,2,490),
                                                                   (3,3,3,485),
																   (4,4,4,425),
																   (5,1,5,459),
																   (6,4,1,462),
																   (7,2,2,487),
																   (8,3,3,482),
																   (9,3,4,493), 
																   (10,2,5,449);
select * from Marks;                                                                   
create table academic_branches (id int auto_increment primary key,academic_id int,branch_id int);
insert into academic_branches(academic_id ,branch_id) values (1,1),(1,2),(1,3),(1,4),(1,5),
                                                             (2,1),(2,2),(2,3),(2,4),(2,5),
                                                             (3,1),(3,2),(3,3),(3,4),(3,5),
                                                             (4,1),(4,2),(4,3),(4,4),(4,5);
select * from academic_branches;

select sum(Marks) from Marks where academic_id=2;
select avg(Marks) from Marks where academic_id=1;

select sum(Marks) from Marks ;
select avg(Marks) from Marks;
select count(student_id) from Marks;
 

 
 
select  SUM(Marks)
from Students
join Marks 
on Students.stu_id=Marks.student_id
WHERE Marks.academic_id=2
group by  academic_id; 

select  SUM(Marks)
from Students
join Marks 
on Students.stu_id=Marks.student_id
join Academic_years on Marks.academic_id=Academic_years.id
WHERE  Academic_years.academic_year='2019-2020'
group by  academic_id;    

select  Students.Student_Name
from Students
join Marks on Students.stu_id=Marks.student_id
join Academic_years on Marks.academic_id=Academic_years.id
where academic_id >=1 and academic_id <=3
group by  academic_id;  

select  avg(Marks)
from Studentsa
join Marks 
on Students.stu_id=Marks.student_id
WHERE Marks.academic_id=1
group by  academic_id;  


select sum(Marks) as total_marks from Marks;

select avg(Marks) as  total_average from Marks;

select Students.stu_id,Students.Student_Name
from Students
join Marks on Students.stu_id=Marks.student_id
join Academic_years on Academic_years.id=Marks.academic_id
where academic_id >=1 and academic_id <=2;

create table Btech_students (id int auto_increment primary key,Name varchar(255),Academic_starting_yr year, Academic_ending_yr year,Branch varchar(255),Marks int);
drop table Btech_students;
insert into Btech_students (Name,Academic_starting_yr, Academic_ending_yr,Branch,Marks) values ('Teja',2018,2019,'EEE',450),
																						('Harsha',2019,2020,'Mech',489),
                                                                                        ('Hari',2018,2019,'Civil',467),
                                                                                        ('Yaswnth',2019,2020,'CSE',455),
                                                                                        ('Pavan',2018,2019,'Mech',490),
                                                                                        ('Naveen',2019,2020,'EEE',422),
                                                                                        ('Srinu',2020,2021,'Mech',469),
                                                                                        ('Shiva',2018,2019,'Civil',493),
                                                                                        ('Durga prasad',2019,2020,'ECE',488),
                                                                                        ('Shankar',2020,2021,'EEE',489),
                                                                                        ('Ravi',2019,2020,'CSE',457),
                                                                                        ('Ganesh',2018,2019,'Mech',421),
                                                                                        ('Suresh',2019,2020,'ECE',423),
                                                                                        ('Venkat',2018,2019,'Civil',433),
                                                                                        ('Dinesh',2018,2019,'EEE',454);
                                                         
 select * from   Btech_students;                                                      
 
 
select Name from Btech_students  where Academic_starting_yr >=2018 and Academic_ending_yr <=2021;

select sum(Marks) from Btech_students  where Academic_starting_yr >=2019 and Academic_ending_yr <=2020;

select avg(Marks) from Btech_students  where Academic_starting_yr >=2019 and Academic_ending_yr <=2020;
 
 select Name from Btech_students  where Academic_starting_yr >=2019 and Academic_ending_yr <=2020;
 
 select sum(Marks) from Btech_students;
 
  select avg(Marks) from Btech_students;
 
 select count(Name) from Btech_students;
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 