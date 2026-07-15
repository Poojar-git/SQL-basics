--use Student;
--views
create view vw_allstudents
as
(select * 
from STudent_details);

select * 
from vw_allstudents;

create view vw_onlystudentage
as
(select age 
from STudent_details);

select * from vw_onlystudentage;

alter view vw_allstudents
as
select name, age 
from STudent_details;

select * from vw_allstudents;