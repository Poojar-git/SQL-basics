/*use student;
select * from student_details;
select * from student_records;*/
--alter table Student_records alter column Name varchar(50) not null;
/*insert into student_details values('viji',24, 201, 98.00), ('raj',27, 202, 89.67), ('john',34, 203, 65.78);
insert into student_records values(103, 'Sona', 22), (200, 'manoj', 24), (202, 'raj', 24), (300, 'kamel', 26);
*/select * from STudent_details;
select * from Student_records;

--INNER JOIN
select std.name, std.age, std.marks, rec.rollno 
from STudent_details as std inner join Student_records as rec
on std.Roll_No=rec.RollNo;

--LEFT JOIN
select std.name, rec.age, std.marks
from STudent_details as std Left join Student_records as rec
on std.name=rec.name;

--RIGHT JOIN
select std.marks, rec.name
from STudent_details as std right join Student_records as rec
on std.age=rec.age;

--FULL JOIN
select std.name, std.age, std.marks, rec.rollno 
from STudent_details as std full join Student_records as rec
on std.Roll_No=rec.RollNo;

--CROSS JOIN
select std.name, std.age, std.marks, rec.rollno 
from STudent_details as std cross join Student_records as rec



