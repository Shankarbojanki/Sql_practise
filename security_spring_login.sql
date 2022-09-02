create database security;


use security;

create table user (id int auto_increment primary key,
                  username varchar(80),
                  password varchar(255),
                  role varchar(10));
                  
                  
 insert into user (username ,password ,role) values  
				 ("shankarbojanki","$2a$12$Uz/4WY6Hk8jq8VPAt4eD8uD6fffydtDeGxhNfhXVKdUtB50QNylfq","USER"),
                 ("swarnateja","$2a$12$Uz/4WY6Hk8jq8VPAt4eD8uD6fffydtDeGxhNfhXVKdUtB50QNylfq","USER"),
                 ("shabo","$2a$12$Uz/4WY6Hk8jq8VPAt4eD8uD6fffydtDeGxhNfhXVKdUtB50QNylfq","ADMIN");


select *from user;                