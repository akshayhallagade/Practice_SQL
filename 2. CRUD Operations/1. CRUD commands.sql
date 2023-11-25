use pika;

-- Shows table columns
describe students;

-- ..................................................
-- CRUD
-- ..................................................
-- 1. Create (Inserting Values)
-- ---------insert into
-- ---------values
insert into students
values(default,"Akshay","I m Awesome");

insert into students
values(default, "Akshay", "I m Awesome again"),(default, "Aniket","He is cool");

insert into students(students,description)
values("Ankit","Satisfied"),("Aniket","Dangerous"),("Tejas","Pika Pika");

-- ...................................................
-- 2. Update
-- --------update
-- --------set
-- --------where
update students
set students="Uddesh"
where stud_id=9;

update students
set students="Uddesh"
where stud_id>8;

-- ....................................................
-- 3. Delete
-- -------Delete from
-- -------where
delete from students
where stud_id>8;
-- ...................................................
-- 4. Read (Select)
-- ----------select
-- ----------from ____ join _____
-- ----------on
-- ----------where 
-- ----------group by 
-- ----------having
-- ----------order by
-- ----------limit

select *
from students;
