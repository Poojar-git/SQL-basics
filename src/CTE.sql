use Student;
select * from STudent_details;
--cte
with cte_table 
as
(Select * from STudent_details where age>25)
select * from cte_table;

with scoringtable
as
(select * 
from STudent_details
where marks >80)
select * from scoringtable;

with avgMarks
as
(select avg(marks) as avgg
from STudent_details)
select * 
from STudent_details
where marks>
(select avgg
from avgMarks);

with agewisecte
as
(select age, avg(marks) as avgmarks 
from STudent_details
group by age)
select * 
from agewisecte;

with Agegroup
as
(select age, avg(age) as avgage
from STudent_details
group by age having avg(age)>20)
select age
from Agegroup;