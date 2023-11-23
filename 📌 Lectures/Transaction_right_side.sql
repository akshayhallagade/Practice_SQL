show variables like "transaction_isolation";

use sakila;
-- -------------------------------------
/* 1. Read Uncommitted -Example */
set session transaction isolation level read uncommitted;

begin;
select * from actor;
select * from actor;
commit;

-- -------------------------------------
/* 2. Read Committed - Example 1*/
set session transaction isolation level read committed;

start transaction;
select * from film;
select * from film;
commit;

/* 2. Read Committed - Example 2 */
set session transaction isolation level read committed;

start transaction;
select * from film;
select * from film;
commit; 
-- Problem : Problem of Non-Repeatable Read

-- ---------------------------------------
/* 3. Repeatable Read -Example 1 */
set session transaction isolation level repeatable read;

start transaction;
select * from film;
select * from film;
select * from film;
commit;
select * from film;

/* 3. Repeatable Read -Example 2 (Snapshot problem) */
set session transaction isolation level repeatable read;

start transaction;
select * from film where film_id=20;
select * from film where film_id=21; -- part of snapshot
commit;

/* 3. Repeatable Read -Example 3 (Phantom Read problem) */
set session transaction isolation level repeatable read;

start transaction;
select * from language;
update language set name=concat("Lang_",name);
commit;
-- ----------------------------------------




