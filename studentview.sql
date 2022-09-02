

use 29_07;

create view Student_View as select stud_id,Student_nmae,Email,Inst_id
from Students;

create view Institute_view as select Institute_name,Inst_code,stu_id,Address
from Institute;

select  stud_id,Student_nmae,Email,Inst_id  from Student_View;

select  id,Institute_name,Inst_code,Address from Institute_view;

select * from Student_View 
join Institute_view
on Student_View.stud_id =Institute_view.stu_id;

select * from Student_View 
join Institute_view
on Student_View.stud_id =Institute_view.stu_id
where Inst_code='127';




select * from Student_View 
union all
select * from Institute_view;

















drop view Student_View;
drop view Institute_view;
select * from  Student_View;
select * from  Institute_view;