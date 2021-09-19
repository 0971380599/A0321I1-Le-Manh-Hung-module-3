create database resort_furama;
create table vi_tri(
	id_vi_tri int not null,
    ten_vi_tri varchar(45) not null,
    primary key (id_vi_tri)
);
create table trinh_do(
	id_trinh_do int not null,
    trinh_do varchar(45) not null,
    primary key (id_trinh_do)
);
create table bo_phan(
	id_bo_phan int not null,
    ten_bo_phan varchar(45) not null,
    primary key (id_bo_phan)
);
create table nhan_vien(
	id_nhan_vien int not null auto_increment,
    ho varchar(50) not null,
    ten varchar(50) not null,
    id_vi_tri int not null,
    id_trinh_do int not null,
    id_bo_phan int not null,
    ngay_sinh date not null,
    so_chung_minh varchar(20) not null,
    luong float not null,
    so_dien_thoai varchar(12) not null,
    email varchar(50) not null,
    dia_chi varchar(50) not null,
    primary key (id_nhan_vien),
    foreign key (id_vi_tri) references vi_tri(id_vi_tri),
    foreign key (id_bo_phan) references bo_phan(id_bo_phan),
    foreign key (id_trinh_do) references trinh_do(id_trinh_do)
);
--  drop table nhan_vien;
create table loai_khach(
	id_loai_khach int not null,
    ten_loai_khach varchar(45) not null,
    primary key (id_loai_khach)
);
create table khach_hang(
	id_khach_hang int not null auto_increment,
    id_loai_khach int not null,
    ho varchar(40) not null,
    ten varchar(40) not null,
    ngay_sinh date not null,
    so_chung_minh varchar(20) not null,
    so_dien_thoai varchar(12) not null,
    email varchar(50) not null,
    dia_chi varchar(50) not null,
    primary key (id_khach_hang),
    foreign key (id_loai_khach) references loai_khach(id_loai_khach)
); 
-- drop table khach_hang;
create table kieu_thue(
	id_kieu_thue int not null auto_increment,
    ten_kieu_thue varchar(45) not null,
    gia float,
    primary key (id_kieu_thue)
);
create table loai_dich_vu(
	id_loai_dich_vu int not null auto_increment,
    ten_loai_dich_vu varchar(50) not null,
    primary key (id_loai_dich_vu)
);
create table dich_vu(
	id_dich_vu int not null auto_increment,
    ten_dich_vu varchar(50) not null,
    dien_tich float not null,
    so_tang int not null,
    so_nguoi_toi_da int not null,
    chi_phi_thue float not null,
    id_kieu_thue int not null,
    id_loai_dich_vu int not null,
    trang_thai text,
    primary key (id_dich_vu),
    foreign key (id_kieu_thue) references kieu_thue(id_kieu_thue),
    foreign key (id_loai_dich_vu) references loai_dich_vu(id_loai_dich_vu)
);
create table hop_dong(
	id_hop_dong int not null auto_increment,
    id_nhan_vien int not null,
    id_dich_vu int not null,
    id_khach_hang int not null,
    ngay_lam_hop_dong date not null,
    ngay_ket_thuc date not null,
    tien_dat_coc float not null,
    tong_tien float not null,
    primary key (id_hop_dong),
    foreign key (id_nhan_vien) references nhan_vien(id_nhan_vien),
    foreign key (id_dich_vu) references dich_vu(id_dich_vu),
    foreign key (id_khach_hang) references khach_hang(id_khach_hang)
);
-- drop table hop_dong;
create table hop_dong_chi_tiet(
	id_hop_dong_chi_tiet int not null auto_increment,
    id_hop_dong int not null,
    id_dich_vu_di_kem int not null,
    so_luong int not null,
    primary key (id_hop_dong_chi_tiet),
    foreign key (id_hop_dong) references hop_dong(id_hop_dong),
    foreign key (id_dich_vu_di_kem) references dich_vu_di_kem(id_dich_vu_di_kem)
);
-- drop table hop_dong_chi_tiet;
create table dich_vu_di_kem(
	id_dich_vu_di_kem int not null auto_increment,
    ten_dich_vu_di_kem varchar(50) not null,
    gia float not null,
    don_vi int not null,
    trang_thai_kha_dung varchar(50) not null,
    primary key (id_dich_vu_di_kem)
);
insert into trinh_do value (1,"Trung cấp");
insert into trinh_do value (2,"Cao đẳng");
insert into trinh_do value (3,"Đại học");
insert into trinh_do value (4,"Sau đại học");
insert into bo_phan value (1,"Sale – Marketing");
insert into bo_phan value (2,"Hành Chính");
insert into bo_phan value (3,"Phục vụ");
insert into bo_phan value (4,"Quản lý");
insert into vi_tri value (1,"Lễ tân");
insert into vi_tri value (2,"Phục vụ");
insert into vi_tri value (3,"Chuyên viên");
insert into vi_tri value (4,"Giám sát");
insert into vi_tri value (5,"Quản lý");
insert into vi_tri value (6,"Giám Đốc");
insert into nhan_vien values (1001,"Nguyễn Văn","Hoài",1,1,3,'1995/07/21',143243243,6000000,0942717483,'nguyenvanhoai@gmail.com','39 Quang Trung, Hà Nội, Việt Nam');
insert into nhan_vien values (1002,"Lê Văn","Linh",2,2,3,'1996/04/15',143243654,7000000,0942754364,'levanlinh@gmail.com','273 Nguyễn Lương Bằng, Liên Chiểu, Đà Nẵng');
insert into nhan_vien values (1003,"Hoàng Thị","Hà",3,3,2,'1993/05/13',143438754,10000000,0942473954,'hoangthiha@gmail.com','307 Nguyễn Lương Bằng, Liên Chiểu, Đà Nẵng');
insert into nhan_vien values (1004,"Vương Bá","Nhân",3,4,4,'1994/08/05',143635256,12000000,0942643632,'vuongbanhan@gmail.com','290 Nguyễn Lương Bằng, Liên Chiểu, Đà Nẵng');
insert into nhan_vien values (1005,"Phan Thị","Châu",3,3,4,'1988/01/28',143479254,10000000,0942958354,'phanthichau@gmail.com','20, Đường số 2, Liên Chiểu, Đà Nẵng');
insert into nhan_vien values (1006,"Nguyễn Hoàng","Nam",3,4,4,'1986/09/23',143538654,13000000,0942857394,'nguyenhoangnam@gmail.com','10,Bàu Mạc 20, Liên Chiểu, Đà Nẵng');
insert into nhan_vien values (1007,"Nguyễn Quang","Kiên",3,4,4,'1986/09/23',143538654,13000000,0942857394,'nguyenhoangnam@gmail.com','16,Bàu Mạc 20, Liên Chiểu, Đà Nẵng');
insert into nhan_vien values (1008,"Nguyễn Thị","Thắm",1,2,3,'1992-06-14',143694864,7000000,0942584938,'nguyenthitham@gmail.com','157 Nguyễn Lương Bằng, Liên Chiểu, Đà Nẵng');
insert into nhan_vien values (1009,"Vương Hoàng","Tiến",3,4,4,'1986-09-23',143538654,13000000,0942857394,'nguyenhoangnam@gmail.com','13, Đường số 2, Liên Chiểu, Đà Nẵng');
insert into loai_khach values (1, "Diamond");
insert into loai_khach values (2, "Platinium");
insert into loai_khach values (3, "Gold");
insert into loai_khach values (4, "Silver");
insert into loai_khach values (5, "Member");
insert into khach_hang values (2001, 5,"Nguyễn Hữu", "Quang", "1996-06-12", 184738574, 0971574384, 'nguyenhuuquang@gmail.com','187 Nguyễn Lương Bằng, Liên Chiểu, Đà Nẵng');
insert into khach_hang values (2002, 2,"Lê Văn", "Huỳnh", "1997-06-12", 184151354, 0971684529, 'levanhuynhg@gmail.com','176 Nguyễn Lương Bằng, Liên Chiểu, Đà Nẵng');
insert into khach_hang values (2003, 3,"Vương Quốc", "Hoàng", "1998-06-12", 184612458, 0971316486, 'vuongquochoang@gmail.com','147 Nguyễn Lương Bằng, Liên Chiểu, Đà Nẵng');
insert into khach_hang values (2004, 2,"Hoàng Thị", "Thơ", "1985-06-12", 184613548, 0971954682, 'hoangthitho@gmail.com','03 Trần Cừ, Hòa Thuận Tây, Hải Châu, Đà Nẵng');
insert into khach_hang values (2005, 1,"Lê Mạnh", "Quân", "1986-06-12", 184615474, 0971684254, 'lemanhquan@gmail.com','ĐT9, Cam khê, Cam Lộ, Quảng Trị');
insert into khach_hang values (2006, 4,"Lê Văn", "Tuấn", "1976-06-12", 184613548, 0971613618, 'lemanhquan@gmail.com','QL1A, Gio Quang, Gio Linh, Quảng Trị');
insert into khach_hang values (2007, 2,"Kiều Văn", "Đại", "1983-06-12", 184661548, 0971615489, 'kieuvandai@gmail.com','TL10D, Vinh Phú, Phú Vang, Thừa Thiên Huế');
insert into khach_hang values (2008, 3,"Nguyễn Thị", "Hương", "1983-06-12", 184661548, 0971615489, 'nguyenthihuong@gmail.com','TL10D, Vinh Phú, Phú Vang, Thừa Thiên Huế');
insert into khach_hang values (2009, 1,"Hoàng Văn", "An", "1976-06-12", 184666131, 0971661325, 'hoangvanan@gmail.com','Quang Trung, Thành phố Qui Nhơn, Bình Định');
insert into khach_hang values (2010, 4,"Lương Bá", "Bảo", "1983-06-12", 184665189, 0971913518, 'luongbabao@gmail.com',' Đống Đa, Thành phố Qui Nhơn, Bình Định');
