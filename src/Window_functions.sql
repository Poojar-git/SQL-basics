use student;
CREATE TABLE Studentt
(
    RollNo INT,
    Name VARCHAR(30),
    Department VARCHAR(20),
    Marks INT
);

INSERT INTO Studentt
VALUES
(101,'Rahul','IT',88),
(102,'Priya','IT',91),
(103,'Arjun','CSE',91),
(104,'Sneha','CSE',95),
(105,'Manoj','ECE',82),
(106,'Riya','IT',95);
select * from Studentt;

--row_number()
select name, rollno, marks, 
row_number() over
(
order by marks desc
) as row_number
from studentt;

--rank()
select name, 
rank() over
(
order by marks desc
)
from Studentt;

--dense_rank()
select name, 
dense_rank() over
(
order by marks desc
)
from Studentt;

--sum
select name, 
sum(marks) over
(order by marks desc)from Studentt;

--min
select name, 
min(marks) over
(order by marks desc)from Studentt;

--max
select name, 
max(marks) over
(order by marks desc)from Studentt;

--avg
select name, 
avg(marks) over
(order by marks desc)from Studentt;

--lead
select name, marks, 
lead(marks) over
(order by marks desc)
from studentt;

--ntile
SELECT
    Name,
    Marks,
    NTILE(2) OVER
    (
        ORDER BY Marks DESC
    ) AS GroupNo
FROM Student_details;

--first value
select name, 
first_value(marks) over
(order by marks)as lowest_marks
from Studentt;

--last_value
select name, marks,
LAST_VALUE(marks) over
(order by marks desc rows between unbounded preceding and unbounded following)as last_value
from Studentt;

