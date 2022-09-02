use jsontotable;


create table `json_sample` (`key` varchar(8) ,`group` varchar(8),`value` varchar(8) );
  
insert into json_sample (`key`,`group`,`value`) values
                        ("key1","group1","value1"),
                         ("key2","group2","value2"),
                          ("key3","group3","value3");
                          
select * from json_sample ;    

 SELECT JSON_ARRAYAGG(`key`) AS `keys` FROM json_sample;               
select json_objectagg(`key`,`group`) as `key_group` from json_sample;























