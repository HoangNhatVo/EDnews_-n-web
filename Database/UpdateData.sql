SET SQL_SAFE_UPDATES = 0;

update chuyenmuc set tenchuyenmuc_khongdau='batdongsan' where idchuyenmuc='cm12';
update baiviet set NgayDang ='2019-05-14 00:00:00' where NgayDang='2019-05-05 00:00:00';
update baiviet set chuyenmuc='cm11' where chuyenmuc='cm1';
update baiviet set chuyenmuc='cm21' where chuyenmuc='cm2';
update baiviet set chuyenmuc='cm31' where chuyenmuc='cm3';
update baiviet set chuyenmuc='cm41' where chuyenmuc='cm4';
update baiviet set chuyenmuc='cm51' where chuyenmuc='cm5';
update baiviet set chuyenmuc='cm61' where chuyenmuc='cm6';
update baiviet set chuyenmuc='cm71' where chuyenmuc='cm7';
update baiviet set chuyenmuc='cm81' where chuyenmuc='cm8';
update baiviet set chuyenmuc='cm91' where chuyenmuc='cm9';
update baiviet set tieude_khongdau='Nghi-Duong-Tai-Evason-Ana-Mandara-Nha-Trang' where tieude_khongdau is null;
------------------------------------------

set sql_safe_updates=0;
update nguoidung set AnhDaiDien='avatar.jpg' where AnhDaiDien='2';
update binhluan set NgayBinhLuan='2019-05-19' where NgayBinhLuan is null;
alter table binhluan drop foreign key FK_BL_BL;
update  binhluan  set IDBinhLuan=2 where IDBinhLuan=1 and DocGia=4;

insert into nhan_baiviet values('BV2','tag1');
insert into nhan_baiviet values('BV3','tag1');
insert into nhan_baiviet values('BV4','tag1');
insert into nhan_baiviet values('BV5','tag1');
insert into nhan_baiviet values('BV6','tag1');
insert into nhan_baiviet values('BV7','tag1');
insert into nhan_baiviet values('BV8','tag1');
insert into nhan_baiviet values('BV9','tag1');
insert into nhan_baiviet values('BV10','tag1');
insert into nhan_baiviet values('BV11','tag1');
insert into nhan_baiviet values('BV12','tag1');
insert into nhan_baiviet values('BV13','tag1');
insert into nhan_baiviet values('BV14','tag1');
insert into nhan_baiviet values('BV15','tag1');
insert into nhan_baiviet values('BV16','tag1');
insert into nhan_baiviet values('BV17','tag1');
insert into nhan_baiviet values('BV18','tag1');
insert into nhan_baiviet values('BV19','tag1');
insert into nhan_baiviet values('BV20','tag1');
insert into nhan_baiviet values('BV21','tag1');
insert into nhan_baiviet values('BV22','tag1');
insert into nhan_baiviet values('BV23','tag1');
insert into nhan_baiviet values('BV24','tag1');
insert into nhan_baiviet values('BV25','tag1');
insert into nhan_baiviet values('BV26','tag1');
insert into nhan_baiviet values('BV27','tag1');

insert into nhan_baiviet values('BV2','tag2');
insert into nhan_baiviet values('BV3','tag2');
insert into nhan_baiviet values('BV4','tag2');
insert into nhan_baiviet values('BV5','tag2');
insert into nhan_baiviet values('BV6','tag2');
insert into nhan_baiviet values('BV7','tag2');
insert into nhan_baiviet values('BV8','tag2');
insert into nhan_baiviet values('BV9','tag2');
insert into nhan_baiviet values('BV10','tag2');
insert into nhan_baiviet values('BV11','tag2');
insert into nhan_baiviet values('BV12','tag2');
insert into nhan_baiviet values('BV13','tag2');
insert into nhan_baiviet values('BV14','tag2');
insert into nhan_baiviet values('BV15','tag2');
insert into nhan_baiviet values('BV16','tag2');
insert into nhan_baiviet values('BV17','tag2');
insert into nhan_baiviet values('BV18','tag2');
insert into nhan_baiviet values('BV19','tag2');
insert into nhan_baiviet values('BV20','tag2');
insert into nhan_baiviet values('BV21','tag2');
insert into nhan_baiviet values('BV22','tag2');
insert into nhan_baiviet values('BV23','tag2');
insert into nhan_baiviet values('BV24','tag2');
insert into nhan_baiviet values('BV25','tag2');
insert into nhan_baiviet values('BV26','tag2');
insert into nhan_baiviet values('BV27','tag2');

insert into nhan_baiviet values('BV2','tag3');
insert into nhan_baiviet values('BV3','tag3');
insert into nhan_baiviet values('BV4','tag3');
insert into nhan_baiviet values('BV5','tag3');
insert into nhan_baiviet values('BV6','tag3');
insert into nhan_baiviet values('BV7','tag3');
insert into nhan_baiviet values('BV8','tag3');
insert into nhan_baiviet values('BV9','tag3');
insert into nhan_baiviet values('BV10','tag3');
insert into nhan_baiviet values('BV11','tag3');
insert into nhan_baiviet values('BV12','tag3');
insert into nhan_baiviet values('BV13','tag3');
insert into nhan_baiviet values('BV14','tag3');
insert into nhan_baiviet values('BV15','tag3');
insert into nhan_baiviet values('BV16','tag3');
insert into nhan_baiviet values('BV17','tag3');
insert into nhan_baiviet values('BV18','tag3');
insert into nhan_baiviet values('BV19','tag3');
insert into nhan_baiviet values('BV20','tag3');
insert into nhan_baiviet values('BV21','tag3');
insert into nhan_baiviet values('BV22','tag3');
insert into nhan_baiviet values('BV23','tag3');
insert into nhan_baiviet values('BV24','tag3');
insert into nhan_baiviet values('BV25','tag3');
insert into nhan_baiviet values('BV26','tag3');
insert into nhan_baiviet values('BV27','tag3');

#-------------------23/5
alter table BaiViet
drop foreign key Fk_BV_CM;

#--------------
update chuyenmuc set Idchuyenmuc= 'CM1_1' where IDChuyenMuc='CM11';
update chuyenmuc set Idchuyenmuc= 'CM1_2' where IDChuyenMuc='CM12';
update chuyenmuc set Idchuyenmuc= 'CM2_1' where IDChuyenMuc='CM21';
update chuyenmuc set Idchuyenmuc= 'CM2_2' where IDChuyenMuc='CM22';
update chuyenmuc set Idchuyenmuc= 'CM3_1' where IDChuyenMuc='CM31';
update chuyenmuc set Idchuyenmuc= 'CM3_2' where IDChuyenMuc='CM32';
update chuyenmuc set Idchuyenmuc= 'CM4_1' where IDChuyenMuc='CM41';
update chuyenmuc set Idchuyenmuc= 'CM4_2' where IDChuyenMuc='CM42';
update chuyenmuc set Idchuyenmuc= 'CM5_1' where IDChuyenMuc='CM51';
update chuyenmuc set Idchuyenmuc= 'CM5_2' where IDChuyenMuc='CM52';
update chuyenmuc set Idchuyenmuc= 'CM6_1' where IDChuyenMuc='CM61';
update chuyenmuc set Idchuyenmuc= 'CM6_2' where IDChuyenMuc='CM62';
update chuyenmuc set Idchuyenmuc= 'CM7_1' where IDChuyenMuc='CM71';
update chuyenmuc set Idchuyenmuc= 'CM7_2' where IDChuyenMuc='CM72';
update chuyenmuc set Idchuyenmuc= 'CM8_1' where IDChuyenMuc='CM81';
update chuyenmuc set Idchuyenmuc= 'CM8_2' where IDChuyenMuc='CM82';
update chuyenmuc set Idchuyenmuc= 'CM9_1' where IDChuyenMuc='CM91';
update chuyenmuc set Idchuyenmuc= 'CM9_2' where IDChuyenMuc='CM92';
#------------------
update baiviet set chuyenmuc= 'CM1_1' where ChuyenMuc='CM11';
update baiviet set chuyenmuc= 'CM1_2' where ChuyenMuc='CM12';
update baiviet set chuyenmuc= 'CM2_1' where ChuyenMuc='CM21';
update baiviet set chuyenmuc= 'CM2_2' where ChuyenMuc='CM22';
update baiviet set chuyenmuc= 'CM3_1' where ChuyenMuc='CM31';
update baiviet set chuyenmuc= 'CM3_2' where ChuyenMuc='CM32';
update baiviet set chuyenmuc= 'CM4_1' where ChuyenMuc='CM41';
update baiviet set chuyenmuc= 'CM4_2' where ChuyenMuc='CM42';
update baiviet set chuyenmuc= 'CM5_1' where ChuyenMuc='CM51';
update baiviet set chuyenmuc= 'CM5_2' where ChuyenMuc='CM52';
update baiviet set chuyenmuc= 'CM6_1' where ChuyenMuc='CM61';
update baiviet set chuyenmuc= 'CM6_2' where ChuyenMuc='CM62';
update baiviet set chuyenmuc= 'CM7_1' where ChuyenMuc='CM71';
update baiviet set chuyenmuc= 'CM7_2' where ChuyenMuc='CM72';
update baiviet set chuyenmuc= 'CM8_1' where ChuyenMuc='CM81';
update baiviet set chuyenmuc= 'CM8_2' where ChuyenMuc='CM82';
update baiviet set chuyenmuc= 'CM9_1' where ChuyenMuc='CM91';
update baiviet set chuyenmuc= 'CM9_2' where ChuyenMuc='CM92';

alter table BaiViet
add constraint Fk_BV_CM
foreign key (ChuyenMuc)
references ChuyenMuc(IDChuyenMuc);
#---------1/6
alter table nhan modify TenTag varchar(50)



