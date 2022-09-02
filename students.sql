create database 29_07;

drop database 29_07;

use 29_07;

Drop  table  Students; 

drop table Institute;

select * from sample4;

create table Students (stud_id int auto_increment primary key ,Student_Nmae varchar(255) not null,Email varchar(255) not null,
                                                         Inst_id int);
insert into Students  (Student_Nmae ,Email,Inst_id ) values  ('Teja','teja123@gmail.com',1),
                                                     ('Harsha','harsha123@gmail.com',2),
                                                     ('Yaswanth','123@gmail.com',3),
                                                     ('Hari','hari123@gmail.com',4),
                                                     ('Pavan','pavan123@gmail.com',5),
                                                     ('Naveen','naveen123@gmail.com',6),
                                                     ('Srinu','srinu123@gmail.com',7),
                                                     ('Prasad','prasad123@gmail.com',8),
                                                     ('Swarnateja','tejaswarna123@gmail.com',1);
                                                     
 insert into Students  (Student_Nmae ,Email,Inst_id ) values ('Shabo','shabo123@gmail.com',7);                                                    
                                                     
select * from Students ;                                                      
                                                     
create table Institute (id  int auto_increment primary key,Institute_name varchar(255),Inst_code int,Address varchar(255),
                                                                stu_id int);  
                                                               
                                                               
                                                                
                                                                
insert into Institute (Institute_name,Inst_code,Address, stu_id) values ('Gitam',121,'Vizag',1),  
																		('Sitam',122,'Vizianagaram',2),  
                                                                        ('Sanketika',123,'Vijayawada',3), 
                                                                        ('Baba',124,'Vizag',4),  
                                                                        ('Raghu',125,'Kakinada',5),  
                                                                        ('Vignan',126,'Khammam',6),  
                                                                        ('Anits',127,'Rajahmundry',7),  
                                                                        ('GVP',128,'Vizag',8),
                                                                        ('Gitam',129,'Vizag',9);
                                                                        
 update    Institute set Inst_code=121 where   Inst_code=129;  
 
 update    Institute set Inst_code=127 where   Inst_code=130; 
 
 
 
 SET SQL_SAFE_UPDATES = 0;
                                                                                                                                             
  insert into Institute (Institute_name,Inst_code,Address, stu_id) values ('Anits',130,'Vizag',10);
  
 select  Students.stud_id,Students.Student_Nmae,Institute.Institute_name,Institute.Inst_code,Institute.Address,Institute.id
 from Students
 join  Institute on Students.stud_id=Institute.stu_id;
 
 
 select  Students.stud_id,Students.Student_Nmae,Institute.Institute_name,Institute.Inst_code,Institute.Address
 from Students
 join  Institute on Students.Inst_id=Institute.id;
 
 select  Institute_name, count(Student_Nmae) as Number_of_students
 from Students
 join  Institute on Students.Inst_id=Institute.id
 where Institute_name='Anits';
               
                                 
  select  Institute_name, count(Student_Nmae) as Number_of_students 
  from Students
  join  Institute on Students.Inst_id=Institute.id
  group by Institute_name;
  
  
  
  
                                                 
                                                