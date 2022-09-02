use 29_07;

create view view_name as select id,Institute_name,Inst_code from Institute ;

select * from view_name;

select id,Institute_name,Inst_code,'Btech_college' as College from view_name
union
select id,Institute_name,Inst_code,'_college' as College from Institute;

select Address from view_name;

drop view view_name;

