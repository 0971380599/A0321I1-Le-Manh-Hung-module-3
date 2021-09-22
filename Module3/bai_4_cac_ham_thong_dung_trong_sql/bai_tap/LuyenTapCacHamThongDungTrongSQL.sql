create database CommonFunction;
create table sinh_vien (
	id int not null,
    ten varchar(50) not null,
    tuoi int,
    khoa_hoc varchar(50),
    so_tien float
);
drop table sinh_vien;
insert into sinh_vien values (1, "Hoang", 21 , "CNTT" , 400000) , 
	( 2, "Viet" , 19, "DTVT", 320000),
	( 3, "Thanh" , 18, "KTDN", 400000), 
	( 4, "Nhan" , 19, "Ck", 450000),
	( 5, "Huong" , 20, "TCNH", 500000),
	( 5, "Huong" , 20, "TCNH", 200000);
select * from sinh_vien where ten = 'Huong';
select sum(so_tien) as 'tong tien', ten from sinh_vien where ten = "Huong";
select DISTINCT ten from sinh_vien ;