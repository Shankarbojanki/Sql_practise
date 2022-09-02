select database();

show tables from Radio;
use Radio;
create table song_genre (genre_id int primary key auto_increment,genre_name varchar(255),song_id int);  

insert into song_genre (genre_name,song_id) values ('Jack',1),('Rock',1),('Pop',1),('Jack',2),('Rock',2),('Pop',2),('Jack',3),('Rock',3),('Pop',3),('Jack',4),('Rock',4),('Pop',4),('Jack',5),('Rock',5),('Pop',5);


 select user.user_id,user.user_name,user.email,band.band_name,song_name,song_genre.genre_name
 from user
 left join band on user.user_id=band.created_by
 left join songs on band.band_id=songs.uploaded_by
 left join song_genre on songs.song_id=song_genre.song_id
 where user.user_id=2;
 
   create table complete_radio as (select u.user_id,u.user_name,u.email,b.band_name,s.song_name,JSON_OBJECTAGG(sg.genre_id,sg.genre_name) as json_structured_data
   from user as u 
   join band as b on u.user_id=b.created_by
   join songs as s on b.band_id=s.uploaded_by
   join song_genre  as sg on s.song_id=sg.song_id
   GROUP BY sg.song_id);
 
 select * from complete_radio;
 drop table  complete_radio;
 select * from song_genre;
 
 
 select * from user; 
 
 SET @jsonuser=(SELECT JSON_ARRAYAGG(
	 JSON_OBJECT("user_id",user_id,"user_name",user_name,"email",email))
	 from user);
     
SELECT JSON_PRETTY(@jsonuser);
            
 select * from band;
 
 SET @jsonband=(SELECT JSON_ARRAYAGG(
     JSON_OBJECT("band_id",band_id,"band_name",band_name,"created_by",created_by))
     from band);
 
 SELECT JSON_PRETTY(@jsonband);
 
 select * from songs;
 
 SET @jsonsongs=(SELECT JSON_ARRAYAGG(
     JSON_OBJECT("song_id",song_id,"song_name",song_name,"uploaded_by",uploaded_by))
     from songs);
     
SELECT JSON_PRETTY(@jsonsongs);

 select * from song_genre;
 
 SET @jsonsong_genre=(SELECT JSON_ARRAYAGG(
     JSON_OBJECT("genre_id",genre_id,"genre_name",genre_name,"song_id",song_id))
     from song_genre);
     
  SELECT JSON_PRETTY( @jsonsong_genre); 
  
 select user.user_id,user.user_name,user.email,band.band_name,song_name
 from user
 left join band on user.user_id=band.created_by
 left join songs on band.band_id=songs.uploaded_by
 where user.user_id=1;