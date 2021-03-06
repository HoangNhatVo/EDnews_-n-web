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
alter table nhan modify TenTag varchar(50);
#----------4/6
alter table baiviet
add fulltext(TieuDe);

#-----5/6
set sql_safe_updates=0;
update baiviet set NgayViet ='2019-05-10 00:00:00';
#-------13/6
truncate table nhan_baiviet;
delete from nhan where IDTag != 'tag3' and IDTag!='tag2' and IDTag!='tag1';
delete from nhan where IDTag = 'tag3' or IDTag='tag2' or IDTag='tag1';
call AddTag('dautu');
call AddTag('quyngoai');
call AddTag('VietNam');
call AddTag('Eximbank');
call AddTag('thulao3,8ty');
call AddTag('quyhoach');
#-----------
call AddTag('KingCup');
call AddTag('tuyenthai');
call AddTag('VietNam');
call AddTag('DuyManh');
call AddTag('bongdavietnam');
call AddTag('tuyenvietnam');
call AddTag('darkmode');
call AddTag('apple');
call AddTag('iphone');
call AddTag('google');
call AddTag('ios13');
call AddTag('facebook');
call AddTag('ai');
call AddTag('bali');
call AddTag('dalat');
call AddTag('congtroi');
call AddTag('ninhbinh');
call AddTag('cucarao');
call AddTag('chimruoi');
call AddTag('chipu');
call AddTag('ngoctrinh');
call AddTag('cannes');
call AddTag('cacaoken');
call AddTag('chill');
call AddTag('saigon');
call AddTag('pinmattroi');
call AddTag('dienmattroi');
call AddTag('NTN');
call AddTag('onghut');
call AddTag('hoailinh');
call AddTag('voba');
call AddTag('canhnong');
call AddTag('daonhaitrangphuc');
call AddTag('bot');
call AddTag('bogtvt');
call AddTag('metro');
call AddTag('usd');
call AddTag('nhua');
call AddTag('baovemoitruong');
call AddTag('mit');
call AddTag('tromcap');
call AddTag('ghen');
call AddTag('gietnguoi');
call AddTag('vuotbien');
#--------
call AddTagPost('BV3','tag1');
call AddTagPost('BV3','tag2');
call AddTagPost('BV3','tag3');
call AddTagPost('BV4','tag4');
call AddTagPost('BV4','tag5');
call AddTagPost('BV5','tag6');
call AddTagPost('BV6','tag9');
call AddTagPost('BV6','tag11');
call AddTagPost('BV6','tag12');
call AddTagPost('BV7','tag10');
call AddTagPost('BV7','tag11');
call AddTagPost('BV8','tag7');
call AddTagPost('BV8','tag8');
call AddTagPost('BV10','tag12');
call AddTagPost('BV10','tag13');
call AddTagPost('BV10','tag14');
call AddTagPost('BV10','tag15');
call AddTagPost('BV9','tag13');
call AddTagPost('BV9','tag14');
call AddTagPost('BV9','tag15');
call AddTagPost('BV9','tag16');
call AddTagPost('BV9','tag17');
call AddTagPost('BV11','tag18');
call AddTagPost('BV1','tag19');
call AddTagPost('BV1','tag20');
call AddTagPost('BV1','tag21');
call AddTagPost('BV2','tag22');
call AddTagPost('BV12','tag23');
call AddTagPost('BV12','tag24');
call AddTagPost('BV13','tag25');
call AddTagPost('BV14','tag26');
call AddTagPost('BV14','tag27');
call AddTagPost('BV15','tag28');
call AddTagPost('BV15','tag20');
call AddTagPost('BV16','tag29');
call AddTagPost('BV16','tag30');
call AddTagPost('BV17','tag31');
call AddTagPost('BV17','tag32');
call AddTagPost('BV18','tag33');
call AddTagPost('BV18','tag34');
call AddTagPost('BV18','tag43');
call AddTagPost('BV18','tag44');
call AddTagPost('BV19','tag35');
call AddTagPost('BV20','tag36');
call AddTagPost('BV20','tag37');
call AddTagPost('BV21','tag25');
call AddTagPost('BV21','tag38');
call AddTagPost('BV22','tag39');
call AddTagPost('BV22','tag40');
call AddTagPost('BV23','tag41');
call AddTagPost('BV23','tag42');
call AddTagPost('BV23','tag30');
call AddTagPost('BV24','tag43');
call AddTagPost('BV24','tag44');
call AddTagPost('BV25','tag45');
call AddTagPost('BV25','tag46');
call AddTagPost('BV26','tag47');
call AddTagPost('BV26','tag48');
call AddTagPost('BV27','tag49');
#------------14/6 
set sql_safe_updates=0;
update baiviet set NgayViet ='2019-06-10';
update baiviet set NgayDang ='2019-06-14 00:00:00';
alter table baiviet
add fulltext(TieuDe,NoiDungTomTat,NoiDung)

