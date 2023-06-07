create table Person(
	id serial primary key,
	full_name varchar(255) not null,
	age int check(age>0)
);
create table Book(
	id serial primary key,
	title varchar(255) not null,
	age int check(age>0),
	person_id bigint,
	foreign key (person_id) references Person (id)
);
