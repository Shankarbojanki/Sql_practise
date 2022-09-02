create database login_posts;

use login_posts;

create table signup(id int auto_increment primary key,first_name varchar(50),last_name varchar(50),username varchar(45),email varchar(80),password varchar(12));
insert into signup(first_name,last_name,username,email,password) values ('John','Mathew','johnmathew','John.Mathew@xyz.com','sfgfgu@123'),
																		  ('Jim','Parker','jimparker','Jim.Parker@xyz.com','sfgfgu@123'),
                                                                          ('Sophia','Ran','sophia_ran','Sophia.Ran@xyz.com','sfgfgu@123'),
                                                                           ('Wendi','lake','lake_wendi','Wendi.Blake@xyz.com','sfgfgu@123');
                                                                          

-- create table posts(id int auto_increment primary key,user_id int);
-- insert into posts(user_id) values (1),(2),(3),(4);

-- create table likes(id int auto_increment primary key,post_id int,user_id int);
-- insert into likes (post_id ,user_id) values (1,1),(1,2),(1,3),(2,1),(2,3),(2,4),(3,1),(3,2),(3,3),(4,2),(4,4);


 select * from signup;
-- select * from posts;
-- select * from likes;





















































