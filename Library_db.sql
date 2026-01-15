CREATE DATABASE if not exists Library_db;
USE Library_db;

create table Members(
memberid int primary key auto_increment,
membersname varchar(50),
mail varchar(50)
);

create table Books(
bookid int primary key auto_increment,
bookname varchar(50),
writer varchar(50)
);

create table Loans(
loanid int primary key auto_increment,
memberid int,
bookid int,
loandate date,
returndate date,
foreign key (memberid) references Members (memberid),
foreign key (bookid) references Books (bookid)
);

select * from Members; 
select * from Books;
select * from Loans;
select distinct
    m.membersname,
    b.bookname,
    l.loandate,
    l.returndate
from Loans l
join Members m on l.memberid = m.memberid
join Books b on l.bookid = b.bookid;