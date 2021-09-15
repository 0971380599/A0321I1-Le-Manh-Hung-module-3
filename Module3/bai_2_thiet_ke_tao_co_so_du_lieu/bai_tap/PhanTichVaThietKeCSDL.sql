create database manage_gara_oto;
drop table customers;
create table customers (
	customer_number int not null,
    customer_name varchar(50) not null,
    contact_last_name varchar(50) not null, 
    contact_first_name varchar(50) not null, 
    phone varchar(50) not null, 
    address_line1 varchar(50) not null, 
    address_line2 varchar(50) null, 
    city varchar(50) not null, 
    state varchar(50) not null, 
    postal_code varchar(15) not null, 
    country varchar(50) not null, 
    credit_limit float,
	employee_number int not null auto_increment,
    primary key (customer_number),
    foreign key (employee_number) references employees(employee_number)
);
-- drop table customers;
create table orders (
	order_number int not null,
	order_date  date not null,
	required_date  date not null,
	shipped_date  date ,
	statuss varchar(15) not null,
	comments text,
    quantity_ordered int not null,
    price_each float,
    primary key (order_number),
	customer_number int not null,
	foreign key (customer_number) references customers(customer_number)
);
-- drop table orders;
create table payments (
	customer_number int not null,
    check_number varchar(50) not null,
    payment_date date not null,
    amount float not null,
    foreign key (customer_number) references customers(customer_number)
);
-- drop table payments;
create table products (
	product_code varchar(15) not null,
    product_name varchar(70) not null,
    product_scale varchar(10) not null,
    product_vendor varchar(50) not null,
    product_description text not null,
    quantity_in_stock int not null,
    buy_price float not null,
    msrp float not null,
	product_line varchar(50) not null,
    primary key (product_code),
    foreign key (product_line) references productlines(product_line)
);
create table productlines (
	product_line varchar(50) not null,
    text_description text,
    image varchar(50),
    primary key (product_line)
);
create table product_order (
	order_number int not null,
    product_code varchar(15) not null,
    primary key (order_number,product_code),
    foreign key (product_code) references products(product_code),
    foreign key (order_number) references orders(order_number)
);
-- drop table product_order;
create table employees (
	employee_number int not null auto_increment,
    last_name varchar(50) not null,
    first_name varchar(50) not null,
    email varchar(100) not null,
    job_title varchar(50) not null,
    report_to int default null,
	office_code varchar(10) not null,
    primary key (employee_number),
    foreign key (report_to) references employees(employee_number),
    foreign key (office_code) references offices(office_code)
);
create table offices (
	office_code varchar(10) not null,
	city varchar(50) not null,
	phone varchar(50) not null,
	address_line1 varchar(50) not null,
	address_line2 varchar(50) not null,
	state varchar(50) not null,
	country varchar(50) not null,
	postal_code varchar(15) not null,
    primary key (office_code)
);
