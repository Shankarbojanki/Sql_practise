create database Team_collaboration;

use Team_collaboration;


create table Demographic_details_of_team_member(member_id int auto_increment primary key,
												first_name varchar(50),
                                                last_name varchar(50),
                                                gender char,
                                                date_of_join date,
                                                user_type varchar(15),
                                                employee_code varchar(50));
                                                
 create table Contact_details (id int  auto_increment primary key,
                               con_member_id int,
                               mobile_number varchar(10),
                               email varchar(50),
                               city varchar(25),
                               present_address varchar(255),
                               permanent_address varchar(255),
                               emergency_contact_name varchar(80),
                               emergency_contact_number varchar(10));
                               

insert into Demographic_details_of_team_member(first_name ,last_name ,gender ,
									  date_of_join ,user_type,employee_code ) 
									values  ('swarnateja','Achanta','M','2021-06-20','intern-it','E170112965'),
											('Hari','Gorle','M','2021-03-01','intern-it','E170112836'),
                                            ('Harsha','Gorle','M','2021-03-17','intern-it','E170112145'),
                                            ('Yogesh','Shakalabhakthula','M','2021-04-01','intern-it','E170112789'),
                                            ('Yaswanth','Guruguballi','M','2021-03-17','intern-it','E170115634');
                                              
                                              
insert into   Contact_details (con_member_id,mobile_number,email,city,  present_address ,
                               permanent_address ,
                               emergency_contact_name ,
                               emergency_contact_number )
                               values (1,'9087654321','swarnateja@gmail.com','samarlakota','sector_5 mvp ','East godavari','swarna','9087654321'),
                                      (2,'9087654321','hari@gmail.com','vizag','sabbavaram ','sabbavaram','hari','9087654321'),
                                      (3,'9087654321','harsha@gmail.com','vizag','gopalapatnam','gopalapatnam','harsha','9087654321'),
                                      (4,'9087654321','yogesh@gmail.com','srikakulam','maddilapalem','pathapatnam','yogesh','9087654321'),
                                      (5,'9087654321','yaswanth@gmail.com','vizag','muralinagar','muralinagar','yaswanth','9087654321');
                                              
 create table skill_set(id int auto_increment primary key,skill_member_id int,
                        skills varchar(255),type_of_skill varchar(25),
                        years_of_experience int);
                        
insert into skill_set(skill_member_id,skills,type_of_skill,years_of_experience)
               values (5,'Manual testing,Node js','QA',1),
                      (1,'react js,react native','Front end',0),
                      (3,'java,spring boot,mysql','Back end',0),
                      (4,'react js,vue js','Front end',0),
                      (2,'Ruby,mongo db,ROR','QA',1);
                      
update skill_set set type_of_skill='Back end' where skill_member_id=2;                    
                      
 set sql_safe_updates=0;
 
 create table member_ids(id int auto_increment primary key,soc_member_id int,
                         linkedin_id varchar(80),indeed_id varchar(80),
                         github_id varchar(80));
                         
 insert into member_ids (soc_member_id, linkedin_id ,indeed_id,github_id ) 
             values  (3,'harsha_linked_in','harsha_indeed','git@harsha'),
                     (1,'swarna_linked_in','swarna_indeed','git@swarna'),
                     (5,'yaswanth_linked_in','yaswanth_indeed','git@yaswanth'),
                     (2,'hari_linked_in','hari_indeed','git@hari'),
                     (4,'yogesh_linked_in','yogesh_indeed','git@yogesh');
 
 
show tables from Team_collaboration;                                              
                                              
 select * from    Demographic_details_of_team_member;
 
 select * from Contact_details;  
 
 select * from member_ids;
 
 select * from skill_set;
                                              
 
select concat(first_name,'  ',last_name) as fullname,employee_code,skills,type_of_skill from 
Demographic_details_of_team_member 
join Contact_details on Demographic_details_of_team_member .member_id=Contact_details.con_member_id
join skill_set on skill_set.skill_member_id=Demographic_details_of_team_member.member_id
join  member_ids on  member_ids.soc_member_id=Demographic_details_of_team_member.member_id
where member_id=1
order by first_name;

 
   select database();                                           
                                              
                                              
 select * from 
Demographic_details_of_team_member 
cross join Contact_details on Demographic_details_of_team_member .member_id=Contact_details.con_member_id
cross join skill_set on skill_set.skill_member_id=Demographic_details_of_team_member.member_id
cross join  member_ids on  member_ids.soc_member_id=Demographic_details_of_team_member.member_id;                                             
                                              
                                              
                                              
                                              
                                              




































