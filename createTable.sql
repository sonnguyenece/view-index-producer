create database demo;
use demo;

/*create table*/
create table Products(
Id int primary key auto_increment,
productCode varchar(30),
productName varchar(30),
productPrice varchar(30),
productAmount varchar(30),
productDescription varchar(30),
productStatus varchar(30)
);

/*input data*/
insert into demo.Products(productCode,productName,productPrice)
values('A1','Coca','5$');
insert into Products(productCode,productName,productPrice)
values('A2','Cola','10$');
insert into Products(productCode,productName,productPrice)
values('A3','Snack','9$');
insert into Products(productCode,productName,productPrice)
values('A4','Popcat','4$');
insert into Products(productCode,productName,productPrice)
values('A5','Oishi','1$');