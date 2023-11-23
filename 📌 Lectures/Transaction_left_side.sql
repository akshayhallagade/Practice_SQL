show variables like "transaction_isolation";

use sakila;
-- -------------------------------------
/* 1. Read Uncommitted - Example */
set session transaction isolation level read uncommitted;

begin;
select * from actor;
update actor set first_name="akshay" where actor_id=3;
commit;

-- -------------------------------------
/* 2. Read Committed - Example 1 */
set session transaction isolation level read committed;

start transaction;
select * from film;
update film set title="Cha cha real smooth" where film_id=5;
commit;

/* 2. Read Committed - Example 2 */
set session transaction isolation level read committed;

start transaction;
select * from film;
update film set title="Americal Made" where film_id=5;
commit;

-- -------------------------------------
/* 3. Repeatable Read -Example 1 */
set session transaction isolation level read uncommitted;

start transaction;
select * from film;
update film set title="RRR" where film_id=6;
commit;

/* 3. Repeatable Read -Example 2 (Snapshot problem) */
set session transaction isolation level read uncommitted;

start transaction;
select * from film where film_id=20;
select * from film where film_id=21;
update film set title="Terminal" where film_id=21;
commit;

/* 3. Repeatable Read -Example 3 (Phantom Read problem) */
set session transaction isolation level read uncommitted;

start transaction;
select * from language;
insert into language values(default,"Marathi",now());
commit;
-- -------------------------------------



