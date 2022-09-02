create database Room_booking;
use Room_booking;

create table Users (id int auto_increment primary key,user_name varchar(100),password varchar(10),email varchar(50),DOB date,mobile varchar(10),city varchar(80));

insert into Users(user_name,password,email,DOB,mobile,city) values ('Kenton_Kirlin','gjhkjh6','Kenton_Kirlin@gmail.com','1999-07-29','7893939277','vizag'),
                                                                   ('Andre_Purdy','kjlklk898','Andre_Purdy@gmail.com','1998-02-02','1234567890','rajahmundry'),
                                                                   ('Harley_Lind1','y7y7y8964','Harley_Lind1@gmail.com','2001-07-29','7893899277','Khammam'),
                                                                   ('Kasandra_Homenick','t5e32546','Kasandra_Homenick@gmail.com','1999-07-29','7893939277','Rojolu'),
																   ('Alexandro','jui89#54','Alexandro@gmail.com','2009-09-09','1234509876','Khammam'),
                                                                   ('Jaclyn','hiyt67%&','Jaclyn@gmail.com','2008-07-08','7600912345','Vijayawada'),
                                                                   ('Lennie_Hartmann','jngr%$#','LennieHartmann@gmail.com','2002-07-05','7893939277','Kakinada'),
																   ('Cesar','kjyuy&*','Cesar@gmail.com','2001-07-22','7993890908','vizag'),
																   ('Rick','fgey@$#%','Rick@gmail.com','2004-07-07','5464646464','Vizianagaram');



select * from Users;

create table Hotel (id int auto_increment primary key,hotel_name varchar(80),
 about varchar(255),hotel_type varchar(10),address varchar(255),user_id int);
 
insert into Hotel (hotel_name,about,hotel_type,address,user_id) values  ('radison blu resort','Located on a picturesque coastline','5 Star','Rushikonda,vizag',21),
                                                                        ('Rockdale Clarks','Visakhapatnams leading budget property','5 star','Ram nagar,vizag',31), 
                                                                        ('The Gateway Hotel','With modern amenities and striking architecture','5 star','RK beach',32), 
                                                                        ('Park Vizag','Well-appointed rooms','5 star','RTC complex,vizag',33), 
																		('Dolphin Hotel','Unlock a world of unparalleled experiences','5 star','Jagadamba Junction, Visakhapatnam',34) ;

select * from Hotel;
create table Room (id int auto_increment primary key,room_type varchar(10),
                  room_description varchar(255),room_cost int,hotel_id int);
                  
insert into Room (room_type,room_description,room_cost,hotel_id) values ('Superior','Room with Private Balcony, In-room tea and coffee Maker In-room',13000,1),              
                                                                       ('Executive','Spacious Sit out Balcony, In-room tea and coffee Maker',9675,2),
																		('Superior','Spacious Sit out Balcony, In-room tea and coffee Maker',9999,3),
																		('Executive','Spacious Sit out Balcony, In-room tea and coffee Maker',8999,4),
																		('Deluxe','Spacious Sit out Balcony, In-room tea and coffee Maker',19999,5);
																		
select * from Room;																		
create table booking (id int auto_increment primary key,room_booking_cost int,booking_time timestamp default now(),room_id int);

insert into booking (room_booking_cost,booking_time,room_id) values (13000,'2022-04-17 14:14:45.662',1),
                                                            (9675,'2022-06-17 14:14:45.662',2),
                                                            (9999,'2022-02-17 14:14:45.662',3),
                                                            (8999,'2022-07-17 14:14:45.662',4),
                                                            (19999,'2022-01-17 14:14:45.662',5);
 select * from booking;                                                           
create table payment(id int auto_increment primary key,user_id int,payment_amount int,payment_time timestamp default now(),booking_id int);
insert into payment(user_id,payment_amount,payment_time ,booking_id) values   (21,13865,'2022-04-17 15:14:45.662',1),
                                                                              (31,9872,'2022-06-17 14:22:45.662',2),
                                                                              (32,10250,'2022-02-17 14:14:54.662',3),
																			  (33,9350,'2022-07-17 14:14:52.662',4),
                                                                              (34,20200,'2022-01-17 14:14:28.662',5);                                                         

create table check_in_check_out (id int auto_increment primary key,user_id int,room_id int,check_in_time datetime,
								check_out_time datetime);
 insert into   check_in_check_out ( user_id ,room_id,check_in_time, check_out_time ) values  (21,1,'2022-04-18 15:14:45','2022-04-19 23:14:45'),
																							 (21,2,'2022-05-18 15:14:45','2022-05-23 23:14:45'),
                                                                                             (21,3,'2022-06-18 15:14:45','2022-04-17 23:14:45'),
                                                                                             (31,1,'2022-06-18 14:22:45','2022-06-19 12:22:45'),
																							 (31,2,'2022-06-18 14:22:45','2022-06-19 15:22:45'),
																						     (31,3,'2022-06-18 14:22:45','2022-06-19 23:22:45'),
                                                                                             (31,1,'2022-06-22 14:22:45','2022-06-23 12:22:45'),
																			                 (33,4,'2022-07-18 14:14:52','2022-07-19 14:14:52'),
                                                                                             (34,5,'2022-01-18 14:14:28','2022-01-20 16:14:28');   
                                                                                             


SELECT
  DATEDIFF(check_out_time,check_in_time) AS days
FROM check_in_check_out;


select *
 from Users 
left join Hotel on  Hotel.user_id=Users.id
left join Room  on  Hotel.id=Room.hotel_id
left join booking on booking.room_id=Room.id
left join payment on payment.booking_id=booking.id
left join check_in_check_out on check_in_check_out.user_id =Users.id ;


select * from Users,payment
where Users.id=payment.user_id;





select  day((check_out_time-check_in_time))    as Hours
from check_in_check_out where user_id=31;





SELECT md.*, DATEDIFF(check_out_time, md.check_in_time) AS days FROM  check_in_check_out md;



select timestampdiff(minute, min(check_in_time), max(check_out_time))/1440 from check_in_check_out where user_id=31;


SELECT
  DATEDIFF( check_out_time,check_in_time)  AS number_of_days 
FROM check_in_check_out
where user_id=21;









select   timestampdiff(Hour,check_in_time,check_out_time)  * room_cost as hours ,
case class 
when HOUR>24 then room_cost*2
when HOUR <=24 then room_cost
end as room_cast
from check_in_check_out
left join  Room   on  check_in_check_out.room_id=Room.id   where user_id=21;


 

select if(timestampdiff(day,check_out_time,check_in_time)/24>1,'more_than_one_day','1day') as room_cost
from check_in_check_out 
left join Room on check_in_check_out .room_id=Room.id
 where user_id=21;

select @days;

select   timestampdiff(day,check_in_time,check_out_time)   as hours from check_in_check_out where user_id=21;

SELECT
  count(room_id ),
  count(TIMESTAMPDIFF(DAY, TIMESTAMP(check_out_time),(check_in_time))) AS days,
   MOD(TIMESTAMPDIFF(HOUR, TIMESTAMP(check_out_time),(check_in_time)),24) AS hours
  from check_in_check_out 
  where user_id=21 
  group by id;
  
  
 SELECT
  TIMESTAMPDIFF(DAY, TIMESTAMP(check_out_time),(check_in_time)) AS days,
  MOD(TIMESTAMPDIFF(HOUR, TIMESTAMP(check_out_time),(check_in_time)),24) AS hours
  from check_in_check_out 
  where user_id=21; 
  
  
   SELECT
  TIMESTAMPDIFF(DAY, TIMESTAMP(check_in_time),(check_in_time)) AS days,
  MOD(TIMESTAMPDIFF(HOUR, TIMESTAMP(check_in_time),(check_out_time)),24) AS hours,
  (TIMESTAMPDIFF(DAY, TIMESTAMP(check_in_time),(check_out_time))*room_cost) as total_cost
  from check_in_check_out 
  left join Room on check_in_check_out .room_id=Room.id    
  where user_id=21; 
  
  select timestampdiff(hour,check_in_time,check_in_time) from  check_in_check_out   where user_id=34; 
  
 select   timestampdiff(Hour,check_in_time,check_out_time)  as hours  from check_in_check_out   where user_id=32;
  
    SELECT
  (TIMESTAMPDIFF(DAY, TIMESTAMP(check_in_time),(check_out_time))*room_cost) +
  if(  MOD(TIMESTAMPDIFF(HOUR, TIMESTAMP(check_in_time),(check_out_time)),24)>1,room_cost*1,'') as Total_bill
  from check_in_check_out 
  left join Room on check_in_check_out .room_id=Room.id    
  where user_id=31; 
  
  select if(timestampdiff(Hour,check_in_time,check_out_time)> 1,room_cost*2,room_cost*1) as room_cost
from check_in_check_out 
left join Room on check_in_check_out .room_id=Room.id
 where user_id=21;


  select count(room_id), TIMESTAMPDIFF(DAY, TIMESTAMP(check_in_time),(check_out_time)) AS days,
  MOD(TIMESTAMPDIFF(HOUR, TIMESTAMP(check_in_time),(check_out_time)),24) AS hours 
  from check_in_check_out 
   where user_id=31
  group by user_id;
   



select room_id,
count(distinctrow    room_id) as total_visits,
timestampdiff(Hour,check_in_time,check_out_time) as total_hours
from check_in_check_out where user_id=21
group by id;



select count(room_id) as Total_visits,
timestampdiff(Hour,check_in_time,check_out_time) as total_hours
from check_in_check_out 
group by id
having  count  (Total_visits)>1;



   
   select count(room_id) as Revisited,if (sum(room_id) >1,'visited','one time visit only') as total_visitings,
   timestampdiff(Hour,check_in_time,check_out_time) as total_hours
   from check_in_check_out where user_id=31
   group by room_id
   HAVING COUNT(room_id) >= 1;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

SET sql_mode = 'ONLY_FULL_GROUP_BY';

select room_id,count(room_id) as Revisited ,
timestampdiff(Hour,check_in_time,check_out_time) as total_hours
from check_in_check_out
where user_id=31
group by room_id;

























