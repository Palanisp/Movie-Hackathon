create database Oscarsdb;
use Oscarsdb;

create table Genre
(genre_id int primary key auto_increment,
genre_name varchar(30));

create table Movie (
mov_id int primary key auto_increment,
mov_title varchar (30),
mov_description varchar (50),
mov_relyear year, 
mov_language varchar (20), 
mov_runtime int,
mov_director varchar (30),
mov_actor varchar (30),
mov_rating float,
mov_genre_id int references Movie_genre(genre_id));


insert into genre values (1001,'Action');
insert into genre values (1002,'Adventure');
insert into genre values (1003,'Animation');
insert into genre values (1004,'Comedy');
insert into genre values (1005,'Romance');
insert into genre values (1006,'Thriller');


insert into Movie values ( 101,'Titanic','A love story in drowning ship',1997,'English','162','James Cameroon','Leonardo',7.5,1005);
insert into Movie values ( 102,'Avatar','A Scific story',2009,'English','194','James Cameroon','Smith',8.0,1006);

select * from genre;
select * from movie;
