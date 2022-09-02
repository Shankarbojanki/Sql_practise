create database tv_review_app;

use tv_review_app;

create table reviewers (
id int auto_increment primary key,
first_name varchar(50),
last_name varchar(50)
                      );
                      
create table  series (
               id int auto_increment primary key,
               title varchar(100),
               released_year year,
               genre varchar(100)
               );
                   
 create table reviews (
           id int auto_increment primary key,
           rating decimal(2,1),
           series_id int,
           reviewer_id int,
           foreign key(series_id) references series(id),
           foreign key(reviewer_id) references reviewers(id));
                   
                   
                   
INSERT INTO series (title, released_year, genre) VALUES
    ('Archer', 2009, 'Animation'),
    ('Arrested Development', 2003, 'Comedy'),
    ("Bob's Burgers", 2011, 'Animation'),
    ('Bojack Horseman', 2014, 'Animation'),
    ("Breaking Bad", 2008, 'Drama'),
    ('Curb Your Enthusiasm', 2000, 'Comedy'),
    ("Fargo", 2014, 'Drama'),
    ('Freaks and Geeks', 1999, 'Comedy'),
    ('General Hospital', 1963, 'Drama'),
    ('Halt and Catch Fire', 2014, 'Drama'),
    ('Malcolm In The Middle', 2000, 'Comedy'),
    ('Pushing Daisies', 2007, 'Comedy'),
    ('Seinfeld', 1989, 'Comedy'),
    ('Stranger Things', 2016, 'Drama');
    
    
INSERT INTO reviewers (first_name, last_name) VALUES
    ('Thomas', 'Stoneman'),
    ('Wyatt', 'Skaggs'),
    ('Kimbra', 'Masters'),
    ('Domingo', 'Cortes'),
    ('Colt', 'Steele'),
    ('Pinkie', 'Petit'),
    ('Marlon', 'Crafford');
    
INSERT INTO reviews(series_id, reviewer_id, rating) VALUES
    (1,1,8.0),(1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),
    (2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,8.4),(2,5,9.9),
    (3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
    (4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),
    (5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),
    (6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
    (7,2,9.1),(7,5,9.7),
    (8,4,8.5),(8,2,7.8),(8,6,8.8),(8,5,9.3),
    (9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),(9,5,4.5),
    (10,5,9.9),
    (13,3,8.0),(13,4,7.2),
    (14,2,8.5),(14,3,8.9),(14,4,8.9);    
    
select * from reviewers;

update reviewers set first_name='Swarna teja' where first_name='Thomas';

select * from series; 

 --  for updat and delete
  set sql_safe_updates=0;

 select * from reviews;   
  select title,rating 
  from series
  join reviews
       on series.id=reviews.series_id;
  
    
  select series.id,title,avg(rating) as average_rating
  from series
  join reviews
  on series.id=reviews.series_id
  group by series.id
  order by average_rating;  
  
     select first_name,last_name,rating from reviewers 
   inner join reviews
    on reviewers.id=reviews.reviewer_id;
  
   
   select first_name,last_name,rating from reviews
   inner join reviewers 
   on reviewers.id=reviews.reviewer_id;
   
  select title,rating as unreviewed_shows
  from series
  left join reviews
  on series.id=reviews.series_id
  where rating is null;             
 
   select genre, round( avg(rating),2)   as average_genre_rating
  from series
  left join reviews
  on series.id=reviews.series_id
  group by genre;
  
  select first_name,last_name ,count(rating) as COUNT,
  ifnull(min(rating),0)as MIN,
  ifnull(max(rating),0) as MAX,
  round(ifnull(avg(rating),0),2) as AVG,
  case  
      when count(rating) >=10 then 'POWER USER'
      when count(rating) >0 then 'ACTIVE'
      else 'INACTIVE'
      end as STATUS
  from reviewers
  left join reviews 
  on reviewers.id=reviews.reviewer_id
  group by reviewers.id;  
    
    select first_name,last_name ,count(rating) as COUNT,
  ifnull(min(rating),0)as MIN,
  ifnull(max(rating),0) as MAX,
  round(ifnull(avg(rating),0),2) as AVG,
  if(count(rating) >=1,'ACTIVE','INACTIVE') as status
  from reviewers
  left join reviews 
  on reviewers.id=reviews.reviewer_id
  group by reviewers.id;   
    
 
    
 select title,rating,
 concat(first_name,'   ',last_name) as  reviewer from series
 inner join reviews on series.id=reviews.series_id
 inner join reviewers on reviewers.id=reviews.reviewer_id
 order by title;
 
select id as 'nothing', rating as 'rated' from reviews order by id;  
    
    
    
    
    
    
    
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    