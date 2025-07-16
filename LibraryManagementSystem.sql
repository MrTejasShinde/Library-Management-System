create database Library;
use Library;

create table user(
Username varchar(200),
Password varchar(200)
);
Create table Book(
BookId  int primary key auto_increment,
Title varchar(200),
Author varchar(200),
Publisher varchar(200),
Year int,
Quantity int
);

Create table Members(
MemberId int primary key auto_increment,
FullName varchar(200),
EmailId varchar(200),
Phone varchar(200),
Address varchar(500)
);

Create table Librarian(
LibrarianId int primary key auto_increment,
Name varchar(200),
Email varchar(200),
Phone varchar(200)
);

Create table Issue(
IssueId int primary key auto_increment,
MemberId int,  
BookId int  ,
IssueDate Date,
ReturnDate Date,
foreign key (MemberId) REFERENCES Members (MemberId),
foreign key (BookId) REFERENCES Book (BookId)
);

Create table ReturnBook(
ReturnId int primary key auto_increment,
IssueId int ,
ReturnDate Date,
FinalAmount int,
foreign key (IssueId) REFERENCES Issue(IssueId)

);
select * from Book;
select * from Members;
select * from librarian;
select * from Issue;
select * from ReturnBook;
insert into user values('Tejas','123456789');
select * from user;
ALTER TABLE Librarian ADD PRIMARY KEY (LibrarianId);