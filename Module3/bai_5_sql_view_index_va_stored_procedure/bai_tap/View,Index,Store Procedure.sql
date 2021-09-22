create database Product;
create table products(
	id int not null,
    product_code varchar(20) not null,
    product_name varchar(50),
    product_price float,
    product_amount int,
    product_description text,
    product_status text,
    primary key (id)
);
insert into products values (1,'PRD123','điện thoại', 3000000, 7, '', '');
insert into products values (2,'PRD124','điện thoại2', 3000000, 4, '', '');
insert into products values (3,'PRD125','điện thoại3', 3000000, 9, '', '');
insert into products values (4,'PRD126','điện thoại4', 3000000, 6, '', '');
-- -------------
explain select * from products where product_code = 'PRD123';
create unique index index_product on products(product_code);
explain select * from products where product_code = 'PRD123';
alter table products drop index index_product;
create index index_name_price on products(product_name,product_price);
-- --------------
create view product_view as select products.product_code, products.product_name, products.product_price,products.product_status from products;
set sql_safe_updates =0;
update product_view 
set product_view.product_name = 'máy tính'
where product_view.product_code = 'PRD124';
set sql_safe_updates =1;
drop view product_view;
-- -----------
DELIMITER //
create procedure product_procedure() 
begin
select * from products;
end // 
DELIMITER ;
call product_procedure();


DELIMITER //
create procedure product_new(
	in id int ,
	in product_code varchar(20),
	in product_name varchar(50),
	in product_price float,
    in product_amount int,
    in product_description text,
    in product_status text) 
begin
insert into products value (id,product_code,product_name,product_price,product_amount,product_description,product_status);
end // 
DELIMITER ;
call product_new(5,'PRD123','tai nghe', 300000, 10, '', '');


DELIMITER //
create procedure product_update(
	in id int,
	in product_code varchar(20),
	in product_name varchar(50),
	in product_price float,
    in product_amount int,
    in product_description text,
    in product_status text) 
begin
update products
set products.id = id,
	products.product_code = product_code,
	products.product_name = product_name,
	products.product_price = product_price,
	products.product_amount = product_amount,
	products.product_description = product_description,
	products.product_status = product_status
    where products.id = id;
end // 
DELIMITER ;
call product_update(5,'PRD123','tai nghe 1', 300000, 10, '', '');

DELIMITER //
create procedure product_delete(
	in id int) 
begin
delete from products
where products.id = id;
end // 
DELIMITER ;
call product_delete(1);