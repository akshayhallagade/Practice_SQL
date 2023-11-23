create database pika;
use pika;
create table students(
	stud_id int auto_increment,
	students varchar(25),
    description varchar(25),
    primary key(stud_id)
);

create table teachers(
	teacher_id int auto_increment,
    teacher_name varchar(25),
    description varchar(25),
    primary key(teacher_id)
);

create table stud_teach(
	id int auto_increment,
	teacher_id int,
    student_id int,
    primary key(id),
    foreign key(teacher_id) references teachers(teacher_id),
    foreign key(student_id) references students(stud_id)
);

drop database pika;