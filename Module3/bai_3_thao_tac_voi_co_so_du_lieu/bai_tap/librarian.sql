create database librarian;
create table the_loai(
	id_the_loai int not null auto_increment,
    ten_the_loai varchar(50) not null,
    primary key (id_the_loai)
);
create table sach (
	id_sach int not null,
    ten_sach varchar(90) not null,
    nha_xuat_ban varchar(90),
    tac_gia varchar(50) not null,
    nam_xuat_ban date,
    so_lan_xuat_ban int,
    gia_sach float not null,
    anh varchar(90),
    primary key (id_sach),
	id_the_loai int not null,
    foreign key (id_the_loai) references the_loai(id_the_loai)
);
create table the_sinh_vien (
	id_the_sinh_vien int not null,
    ho_sinh_vien varchar(50) not null,
    ten_sinh_vien varchar(50) not null,
    ngay_sinh date not null,
    dia_chi varchar(70) not null,
    email varchar(60) not null,
    so_dien_thoai varchar(20) not null,
    anh_sinh_vien varchar(50),
    primary key (id_the_sinh_vien)
);
create table tinh_trang_muon_sach (
	id_tinh_trang int not null,
    tinh_trang varchar(20),
    primary key (id_tinh_trang)
);
create table phieu_muon (
	id_phieu_muon int not null auto_increment,
    ngay_muon date not null,
    han_tra_sach date not null,
    id_tinh_trang int not null,
    id_the_sinh_vien int not null,
    id_sach int not null,
    primary key (id_phieu_muon),
    foreign key (id_tinh_trang) references tinh_trang_muon_sach(id_tinh_trang),
    foreign key (id_the_sinh_vien) references the_sinh_vien(id_the_sinh_vien),
    foreign key (id_sach) references sach(id_sach)
);
insert into the_loai values (1, "văn học");
insert into the_loai values (2, "Toán học");
insert into the_loai values (3, "Vật Lý");
insert into the_loai values (4, "Sinh học");
insert into the_loai values (5, "Địa Lý");
insert into tinh_trang_muon_sach values (1, "Đang mượn");
insert into tinh_trang_muon_sach values (2, "Quá hạn");
insert into tinh_trang_muon_sach values (3, "Đã trả");
insert into sach values (1,"Hình học không gian", "Kim Đồng", "Nguyễn Nhật Ánh", "2000-00-00", 2, 30000,"", 2);
insert into sach values (2,"Truyện kiều", "Kim Đồng", "Nguyễn Du", "2000-00-00", 2, 40000,"", 1);
insert into sach values (3,"Vật Lý Lượng Tử", "Khoa học xã hội", "Phạm Hồng Duy", "2000-00-00", 1, 60000,"", 3);
insert into sach values (4,"Cơ thể Người", "Y học", "Lê Hữu Thắng", "2000-00-00", 3, 70000,"", 4);
insert into sach values (5,"Những địa danh nổi tiếng", "Thế giới", "Phạm Hồng Thanh", "2000-00-00", 5, 20000,"", 5);
insert into the_sinh_vien values (1, "Lê Văn", "Thanh", "2000-04-06", "Đà Nẵng", "levanthanh@gmail.com", "0983957486", "");
insert into the_sinh_vien values (2, "Lê Văn", "Hòa", "2000-04-06", "Đà Nẵng", "levanhoa@gmail.com", "0983957486", "");
insert into the_sinh_vien values (3, "Lê Văn", "Bình", "2000-04-06", "Đà Nẵng", "levanbinh@gmail.com", "0983957486", "");
insert into the_sinh_vien values (4, "Lê Văn", "An", "2000-04-06", "Đà Nẵng", "levanan@gmail.com", "0983957486", "");
insert into the_sinh_vien values (5, "Lê Văn", "Tuấn", "2000-04-06", "Đà Nẵng", "levantuan@gmail.com", "0983957486", "");
insert into phieu_muon values (1,"2021-9-15","2021-10-15", 1,1,1);
insert into phieu_muon values (2,"2021-9-15","2021-10-15", 1,3,2);
insert into phieu_muon values (3,"2021-8-15","2021-9-15", 2,2,4);
insert into phieu_muon values (4,"2021-7-15","2021-8-15", 3,4,5);
insert into phieu_muon values (5,"2021-9-15","2021-10-15", 1,5,3);