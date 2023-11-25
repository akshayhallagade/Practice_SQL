use sakila;

-- Joins

-- 1. Inner Join
select *
from staff s join address a
on s.address_id=a.address_id;
-- ...................................

-- 2. left inner Join
select *
from staff s left join address a
on s.address_id=a.address_id;
-- ...................................

-- 3. Right Inner Join
select *
from staff s right join address a
on s.address_id=a.address_id;
-- ...................................

-- 4. Full Join

-- Doesnt support in mysql
-- ...................................

-- 5. Natural Join
--    - No need to write the condition to have a join
select *
from staff natural join address;
-- ...................................

-- 6. cross Join
select *
from staff,address; 
-- ..................................
-- 7. Self Join

-- 8. Compound Join
-- 9. Multiple Table join