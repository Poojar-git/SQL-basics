use student;
create table new_student
(rollno int, name char(20), age int, marks int);
insert into new_student values(101, 'Rahul', 20, 88),
(102, 'priya', 21, 91),
(103, 'arjun', 19, 76),
(104, 'sneha', 22, 95),
(105, 'manoj', 20, 82);
select* from new_student;

--subqueries
--1)
select *
from new_student
where marks > 
(select avg(marks) 
from new_student);

--2)
select * 
from new_student
where marks=
(select max(marks)
from new_student);

--3)
select *
from new_student
where marks=
(select min(marks)
from new_student);

--4)
select *
from new_student
where age in
(select age
from new_student
where age=20 or age=22);

--5)
SELECT *
FROM new_student
where age not in
(select age 
from new_student
where age>20);

--6)
select * 
from new_student
where exists
(select *
from new_student
where marks>90);

--7)
select * 
from new_student s1
where marks >
(select avg(marks)
from new_student s2
where s1.age=s2.age);