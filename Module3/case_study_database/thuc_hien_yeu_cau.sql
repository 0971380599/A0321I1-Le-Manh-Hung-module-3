-- câu 2:
select * from nhan_vien where ten like 'H%' or ten like 'T%' or ten like 'K%';
-- câu 3:
select * from khach_hang where (ngay_sinh like '197%' or ngay_sinh like '198%' or ngay_sinh like '199%' or ngay_sinh like '2000%'  or ngay_sinh like '2001%' or ngay_sinh like '2002%') and (dia_chi like '%da nang%' or dia_chi like '%Quang tri%');
