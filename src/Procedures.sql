--use Student;
--create
CREATE PROCEDURE getallstudent
as 
begin 
	select * from STudent_details;
end;
--execute/calling
exec getallstudent
--alter
alter procedure getallstudent
as 
begin
	select name, age from STudent_details;
end;
--drop
drop procedure getallstudent

