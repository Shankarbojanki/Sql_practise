create database teams;

use teams;
create table team_collabration (id int auto_increment primary key,
                               First_name varchar(50),
                               Last_name varchar(50),
                               Gender char,
                               Date_of_join date,
                               Employee_code varchar(50),
                               Mobile_number varchar(10),
                               Email varchar(50),
                               City varchar(25),
                               Present_address varchar(255),
                               Permanent_address varchar(255),
                               Emergency_contact_number varchar(10),
                               Technical_skills varchar(255),
                               Type_of_skill varchar(25),
                               years_of_experience int,
                               Linkedin_id varchar(80),
							   Indeed_id varchar(80),
							   Github_id varchar(80));
                               
 create table Emp99 (id int auto_increment primary key ,name varchar(80),
                    salary int,
                    designation varchar(100));