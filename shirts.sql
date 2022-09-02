create database 12_08;

use 12_08;

CREATE TABLE shirts (
  shirt_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  article VARCHAR(20) NOT NULL,
  color VARCHAR(20) NOT NULL,
  shirt_size VARCHAR(1) NOT NULL,
  last_worn INT NOT NULL
);

INSERT INTO
  shirts (article, color, shirt_size, last_worn)
VALUES
  ('t-shirt', 'white', 'S', 10),
  ('t-shirt', 'green', 'S', 200),
  ('polo shirt', 'black', 'M', 10),
  ('tank top', 'blue', 'S', 50),
  ('t-shirt', 'pink', 'S', 0),
  ('polo shirt', 'red', 'M', 5),
  ('tank top', 'white', 'S', 200),
  ('tank top', 'blue', 'M', 15);
  
  select * from shirts;
  
  desc shirts;
  set sql_safe_updates=0;
 
 insert into shirts (color,article, shirt_size, last_worn) values ('Purple','polo shirt','M',50);
  
 select article,color,shirt_size,last_worn from shirts  where shirt_size='M';
  
 update shirts set shirt_size='L' where article='polo shirt' ;

set sql_safe_updates=0;  
 
update shirts set last_worn=0 where last_worn=15;
  
delete from shirts where last_worn=0;  

select * from shirts where shirt_size='l'; 
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  