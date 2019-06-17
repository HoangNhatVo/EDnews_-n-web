
#---------------------------------------------QUAN LY CHUYEN MUC
#----------------------Xoa chuyen muc cha 
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE DeleteMainCategory (in IDCM varchar(10) )
BEGIN
update baiviet as bv 
		 join chuyenmuc as con on con.IDChuyenMuc=bv.ChuyenMuc 
		 join chuyenmuc as cha on cha.IDChuyenMuc=con.ChuyenMucCha
         set bv.SuDung=0 
         where cha.IDChuyenMuc=IDCM;
         update baiviet as bv 
		 join chuyenmuc as con on con.IDChuyenMuc=bv.ChuyenMuc 
		 join chuyenmuc as cha on cha.IDChuyenMuc=con.ChuyenMucCha
         set bv.ChuyenMuc=null
         where cha.IDChuyenMuc=IDCM;
delete from chuyenmuc where ChuyenMucCha=IDCM ;
delete from chuyenmuc  where IDChuyenMuc=IDCM;
END;$$
DELIMITER ;
call DeleteMainCategory('CM10');

#----------------------Them Chuyen Muc cha
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE AddMainCategory (in Ten varchar(50),in Ten_KhongDau varchar(50) )
BEGIN
	declare count1 int;
    declare count2 int;
	declare IDCat varchar(10);
    declare lastCat int; 
    declare nextCat int;
	set count1 =( select count(*) from chuyenmuc where TenChuyenMuc = Ten);
    set count2 =( select count(*) from chuyenmuc where TenChuyenMuc_KhongDau = Ten_KhongDau);
    if( count1=0 and count2=0)
     then
    set lastCat=(select  max(convert(right(IDChuyenMuc,length(IDChuyenMuc)-2),unsigned))
    from chuyenmuc
    where ChuyenMucCha is  null);
    set nextCat=lastCat+1;
    set IDCat =(select concat('CM', convert(nextCat,char)));
    insert into chuyenmuc values(IDCat,Ten,Ten_KhongDau,null);
    select 1 as temp;
    end if;
     if( count1>0 or count2>0)
     then 
	 select 0 as temp;
     end if;
END;$$
DELIMITER ;
#----------------------------Chinh Sua Chuyen Muc Cha
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE UpdateMainCategory (in IDCM varchar(10),in Ten varchar(50),in Ten_KhongDau varchar(50) )
BEGIN
update chuyenmuc set TenChuyenMuc =Ten  where IDChuyenMuc=TDCM;
update chuyenmuc set  TenChuyenMuc_KhongDau=Ten_KhongDau where IDChuyenMuc=TDCM;
 select 1 as temp;
END;$$
DELIMITER ;
#------------------------------------------------Them chuyen muc con 
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE AddSubCategory (in IDMainCat varchar(10),in Ten varchar(50),in Ten_KhongDau varchar(50) )
BEGIN
	declare count1 int;
    declare count2 int;
	declare IDSubCat varchar(10);
    declare lastCat int; 
    declare nextCat int;
    set count1 =( select count(*) from chuyenmuc where TenChuyenMuc = Ten);
    set count2 =( select count(*) from chuyenmuc where TenChuyenMuc_KhongDau = Ten_KhongDau);
    if( count1=0 and count2=0)
     then
     set lastCat =(select max(convert(substring(IDChuyenMuc,length(ChuyenMucCha)+2),unsigned))
				   from chuyenmuc where ChuyenMucCha =IDMainCat);
	if(lastCat is null)
    then
    set lastCat =0;
    end if;
	 set nextCat = lastCat +1;
     set IDSubCat = (select concat(IDMainCat,'_',convert(nextCat,char)));
     insert into ChuyenMuc values( IDSubCat,Ten,Ten_KhongDau,IDMainCat);
     select 1 as temp;
     end if;
     if( count1>0 or count2>0)
     then 
	 select 0 as temp;
     end if;
     
END;$$
DELIMITER ;
#---------------------------Xoa CHuyen Muc Con
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE DeleteSubCategory (in IDCM varchar(10) )
BEGIN
update baiviet as bv 
		 join chuyenmuc as con on con.IDChuyenMuc=bv.ChuyenMuc 
         set bv.SuDung=0 
         where con.IDChuyenMuc=IDCM;
update baiviet as bv 
		 join chuyenmuc as con on con.IDChuyenMuc=bv.ChuyenMuc 
         set bv.ChuyenMuc=null
         where con.IDChuyenMuc=IDCM;
delete from chuyenmuc  where IDChuyenMuc=IDCM;
END;$$
DELIMITER ;
#----------------------------Chinh Sua Chuyen Muc Con
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE UpdateSubCategory (in IDCM varchar(10),in Ten varchar(50),in Ten_KhongDau varchar(50) )
BEGIN
update chuyenmuc set TenChuyenMuc =Ten where IDChuyenMuc=TDCM;
update chuyenmuc set TenChuyenMuc_KhongDau=Ten_KhongDau where IDChuyenMuc=TDCM;
 select 1 as temp;
END;$$
DELIMITER ;
#---------------------------QUAN LY TAG
#--------------------THEM 1 TAG
call AddTag('hahahhahahahahhahahhahahahhaa');
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE AddTag (in TagName varchar(50) )
BEGIN
	declare count1 int;
	declare IDTagAdd varchar(10);
    declare lastTag int; 
    declare nextTag int;
    declare TagNameNew varchar(50);
    if( substring(TagName,1,1)='#')
    then
		set TagNameNew = TagName;
	end if;
	if( substring(TagName,1,1)!='#')
	then
    set TagNameNew = (select concat('#',TagName));
    end if;
	set count1 =( select count(*) from nhan where TenTag = TagNameNew);
	if( count1=0 )
			then 
			set lastTag =(select max(convert(substring(IDTag,4),unsigned))
				   from nhan  );
                   if(lastTag is null)
                   then
                   set lastTag=0;
                   end if;
			 set nextTag = lastTag +1;
			 set IDTagAdd = (select concat('tag',convert(nextTag,char)));
			 insert into nhan values( IDTagAdd,TagNameNew);
			 #---- select 1 as temp;
             select IDTagAdd;
	end if;
	if( count1>0 )
	then 
	 #----select 0 as temp;
    select IDTag as IDTagAdd  from nhan where TenTag = TagNameNew;
	end if;
END;$$
DELIMITER ;
#----------------- add tag post
DELIMITER $$
USE `baodientu3n`$$
create procedure AddTagPost(in IDBV varchar(15), in IDTa varchar(10))
begin
if exists( select * from nhan_baiviet where IDBaiViet=IDBV and IDTag=IDTa)
then
select 0 as temp;
else
	insert into nhan_baiviet values (IDBV,IDTa);
end if;
end;$$
DELIMITER ;

#--------------------------Lay 1 tag vs ID truyen vao
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE GetTagWithID(in IDTagGet varchar(10))
BEGIN
	select * from nhan where IDTag =IDTagGet;
END;$$
DELIMITER ;
#--------------------------Xoa 1 tag voi ID
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE DeleteTag(in IDTagDel varchar(10))
BEGIN
	delete from nhan_baiviet where IDTag=IDTagDel;
	delete from nhan where IDTag=IDTagDel;
END;$$
DELIMITER ;
#--------------------------Update 1 tag voi ID
call UpdateTag('tag8','#ihiihihhihihihihihihihiihihhiihi');
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE UpdateTag(in IDTagUpdate varchar(10), in TagNameUpdate varchar(50))
BEGIN
	declare TagNameNew varchar(50);
    declare count1 int;
	 if( substring(TagNameUpdate,1,1)!='#')
    then
		set TagNameNew =(select concat('#',TagNameUpdate));
        set count1 = (select count(*) from nhan where TenTag= TagNameNew);
        if(count1 >0)
        then
        select 0 as temp;
        end if;
        if(count1 =0)
        then
        update nhan set TenTag=TagNameNew where IDTag=IDTagUpdate;
        select 1 as temp;
        end if;
    end if;
    if(substring(TagNameUpdate,1,1)='#')
		then
        set count1 = (select count(*) from nhan where TenTag= TagNameUpdate);
        if(count1 >0)
        then
        select 0 as temp;
        end if;
        if(count1 =0)
        then
        update nhan set TenTag=TagNameUpdate where IDTag=IDTagUpdate;
        select 1 as temp;
        end if;
	end if;
END;$$
DELIMITER ;
call GetSinglePost()
#---------------------------QUAN LY TAI KHOAN
#-------------------------Danh sach phan he 
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE GetListRole ()
BEGIN
select * from phanhenguoidung;
END;$$
DELIMITER ;
#-------------------------Danh sach nguoi dung
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE GetListUsers ()
BEGIN
select * from nguoidung;
END;$$
DELIMITER ;
#-------------------------Dach sach nguoi dung theo phan he
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE GetListUserWithRole (in IDPhanHe varchar(10))
BEGIN
select * from nguoidung where PhanHe=IDPhanHe;
END;$$
DELIMITER ;
#-------------------GET POST WITH STATE CHO CAC PHAN HE
#-------------------------------------Lay bai viet theo trang thai
DELIMITER $$
USE `baodientu3n`$$
create procedure GetPostWithStateForEditor(in State int,in IDBTV int)
begin
	if(State =1)
    then
	select distinct BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayViet) as NgayViet,D.NgayDuyet,nd.ButDanh,cm.TenChuyenMuc_KhongDau as KhongDauCon,cha.TenChuyenMuc_KhongDau as KhongDauCha,cm.TenChuyenMuc,url.urllinkHinh,BV.NoiDungTomTat,btv.HoTen as NguoiDuyet,BV.TinNoiBat
    from baiviet as BV join nhan_baiviet as n_bv on BV.IDBaiViet=n_bv.IDBaiViet
						join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
                        join urlhinhanh as url on url.IDHinh=HA.IDHinh
						join nguoidung as nd on nd.ID=BV.PhongVien
                        join chuyenmuc as cm on cm.IDChuyenMuc=BV.ChuyenMuc
                        join chuyenmuc as cha on cha.IDChuyenMuc=cm.ChuyenMucCha
                        join duyetbai as D on D.IDBaiViet = BV.IDBaiViet
                        join nguoidung as btv on btv.ID =D.IDBTV
                        join btv_chuyenmuc as bc on bc.ChuyenMuc=cm.IDChuyenMuc
   where BV.TinhTrang=State and BV.SuDung=1 and bc.IDBienTapVien=IDBTV;
   end if;
   if(State =3)
    then
	select distinct BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayViet) as NgayViet,D.NgayTuChoi,nd.ButDanh,cm.TenChuyenMuc_KhongDau as KhongDauCon,cha.TenChuyenMuc_KhongDau as KhongDauCha,cm.TenChuyenMuc,url.urllinkHinh,BV.NoiDungTomTat,btv.HoTen as NguoiDuyet,D.NguyenNhanTuChoi,BV.TinNoiBat
    from baiviet as BV join nhan_baiviet as n_bv on BV.IDBaiViet=n_bv.IDBaiViet
						join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
                        join urlhinhanh as url on url.IDHinh=HA.IDHinh
						join nguoidung as nd on nd.ID=BV.PhongVien
                        join chuyenmuc as cm on cm.IDChuyenMuc=BV.ChuyenMuc
                        join chuyenmuc as cha on cha.IDChuyenMuc=cm.ChuyenMucCha
                        join tuchoibai as D on D.IDBaiViet = BV.IDBaiViet
                        join nguoidung as btv on btv.ID =D.IDBTV
                        join btv_chuyenmuc as bc on bc.ChuyenMuc=cm.IDChuyenMuc
   where BV.TinhTrang=State and BV.SuDung=1 and bc.IDBienTapVien=IDBTV;
   end if;
   if( State = 2 )
   then
   select distinct BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,date(BV.NgayViet) as NgayViet,nd.ButDanh,cm.TenChuyenMuc_KhongDau as KhongDauCon,cha.TenChuyenMuc_KhongDau as KhongDauCha,cm.TenChuyenMuc,url.urllinkHinh,BV.NoiDungTomTat,BV.TinNoiBat
    from baiviet as BV join nhan_baiviet as n_bv on BV.IDBaiViet=n_bv.IDBaiViet
						join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
                        join urlhinhanh as url on url.IDHinh=HA.IDHinh
						join nguoidung as nd on nd.ID=BV.PhongVien
                        join chuyenmuc as cm on cm.IDChuyenMuc=BV.ChuyenMuc
                        join chuyenmuc as cha on cha.IDChuyenMuc=cm.ChuyenMucCha
                        join btv_chuyenmuc as bc on bc.ChuyenMuc=cm.IDChuyenMuc
   where BV.TinhTrang=State and BV.SuDung=1 and bc.IDBienTapVien=IDBTV;
   end if;
   if(State = 4)
   then
   select distinct BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayViet) as NgayViet,nd.ButDanh,cm.TenChuyenMuc_KhongDau as KhongDauCon,cha.TenChuyenMuc_KhongDau as KhongDauCha,cm.TenChuyenMuc,url.urllinkHinh,BV.NoiDungTomTat,BV.TinNoiBat
    from baiviet as BV join nhan_baiviet as n_bv on BV.IDBaiViet=n_bv.IDBaiViet
						join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
                        join urlhinhanh as url on url.IDHinh=HA.IDHinh
						join nguoidung as nd on nd.ID=BV.PhongVien
                        join chuyenmuc as cm on cm.IDChuyenMuc=BV.ChuyenMuc
                        join chuyenmuc as cha on cha.IDChuyenMuc=cm.ChuyenMucCha
                        join btv_chuyenmuc as bc on bc.ChuyenMuc=cm.IDChuyenMuc
   where BV.TinhTrang=State and BV.SuDung=1 and bc.IDBienTapVien=IDBTV;
   end if;
end;$$
DELIMITER ; 
call GetPostWithStateForEditor(4,3);

#-------------------------------------Lay bai viet theo trang thai admin
DELIMITER $$
USE `baodientu3n`$$
create procedure GetPostWithState(in State int)
begin
	if(State =1)
    then
	select distinct BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayViet) as NgayViet,D.NgayDuyet,nd.ButDanh,cm.TenChuyenMuc_KhongDau as KhongDauCon,cha.TenChuyenMuc_KhongDau as KhongDauCha,cm.TenChuyenMuc,url.urllinkHinh,BV.NoiDungTomTat,btv.HoTen as NguoiDuyet,BV.TinNoiBat
    from baiviet as BV join nhan_baiviet as n_bv on BV.IDBaiViet=n_bv.IDBaiViet
						join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
                        join urlhinhanh as url on url.IDHinh=HA.IDHinh
						join nguoidung as nd on nd.ID=BV.PhongVien
                        join chuyenmuc as cm on cm.IDChuyenMuc=BV.ChuyenMuc
                        join chuyenmuc as cha on cha.IDChuyenMuc=cm.ChuyenMucCha
                        join duyetbai as D on D.IDBaiViet = BV.IDBaiViet
                        join nguoidung as btv on btv.ID =D.IDBTV
   where BV.TinhTrang=State and BV.SuDung=1;
   end if;
   if(State =3)
    then
	select distinct BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayViet) as NgayViet,D.NgayTuChoi,nd.ButDanh,cm.TenChuyenMuc_KhongDau as KhongDauCon,cha.TenChuyenMuc_KhongDau as KhongDauCha,cm.TenChuyenMuc,url.urllinkHinh,BV.NoiDungTomTat,btv.HoTen as NguoiDuyet,D.NguyenNhanTuChoi,BV.TinNoiBat
    from baiviet as BV join nhan_baiviet as n_bv on BV.IDBaiViet=n_bv.IDBaiViet
						join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
                        join urlhinhanh as url on url.IDHinh=HA.IDHinh
						join nguoidung as nd on nd.ID=BV.PhongVien
                        join chuyenmuc as cm on cm.IDChuyenMuc=BV.ChuyenMuc
                        join chuyenmuc as cha on cha.IDChuyenMuc=cm.ChuyenMucCha
                        join tuchoibai as D on D.IDBaiViet = BV.IDBaiViet
                        join nguoidung as btv on btv.ID =D.IDBTV
   where BV.TinhTrang=State and BV.SuDung=1;
   end if;
   if( State = 2 )
   then
   select distinct BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,date(BV.NgayViet) as NgayViet,nd.ButDanh,cm.TenChuyenMuc_KhongDau as KhongDauCon,cha.TenChuyenMuc_KhongDau as KhongDauCha,cm.TenChuyenMuc,url.urllinkHinh,BV.NoiDungTomTat,BV.TinNoiBat
    from baiviet as BV join nhan_baiviet as n_bv on BV.IDBaiViet=n_bv.IDBaiViet
						join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
                        join urlhinhanh as url on url.IDHinh=HA.IDHinh
						join nguoidung as nd on nd.ID=BV.PhongVien
                        join chuyenmuc as cm on cm.IDChuyenMuc=BV.ChuyenMuc
                        join chuyenmuc as cha on cha.IDChuyenMuc=cm.ChuyenMucCha
   where BV.TinhTrang=State and BV.SuDung=1;
   end if;
   if(State = 4)
   then
   select distinct BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayViet) as NgayViet,nd.ButDanh,cm.TenChuyenMuc_KhongDau as KhongDauCon,cha.TenChuyenMuc_KhongDau as KhongDauCha,cm.TenChuyenMuc,url.urllinkHinh,BV.NoiDungTomTat,BV.TinNoiBat
    from baiviet as BV join nhan_baiviet as n_bv on BV.IDBaiViet=n_bv.IDBaiViet
						join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
                        join urlhinhanh as url on url.IDHinh=HA.IDHinh
						join nguoidung as nd on nd.ID=BV.PhongVien
                        join chuyenmuc as cm on cm.IDChuyenMuc=BV.ChuyenMuc
                        join chuyenmuc as cha on cha.IDChuyenMuc=cm.ChuyenMucCha
   where BV.TinhTrang=4 and BV.SuDung=1;
   end if;
end;$$
DELIMITER ; 
call GetPostWithState(4);
#----------------------------------SO LUONG BAI VIET
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE GetNumberOfPosts ()
BEGIN
select count(*) from baiviet;
END;$$
DELIMITER ;
#----------------------------------- DUYET BAI
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE ApprovePost (in IDBaiVietDuyet varchar(10),in IDBTV int)
BEGIN
	declare PhanHe int;
    insert into duyetbai values(null,IDBTV,IDBaiVietDuyet,date(now()));
    update baiviet set TinhTrang= 1 where IDBaiViet = IDBaiVietDuyet;
END;$$
DELIMITER ;

#----------------------------------- TU CHOI BAI
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE DeclinePost (in IDBaiVietDuyet varchar(10),in IDBTV int,in LyDo text)
BEGIN
	declare PhanHe int;
    insert into tuchoibai values(null,IDBTV,IDBaiVietDuyet,date(now()),LyDo);
    update baiviet set TinhTrang= 3 where IDBaiViet = IDBaiVietDuyet;
END;$$
DELIMITER ;
#-----------------------------------XUAT BAN BAI VIET
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE PublishPost (in IDBaiVietDuyet varchar(10))
BEGIN
	declare PhanHe int;
    update baiviet set TinhTrang= 2 where IDBaiViet = IDBaiVietDuyet;
    update baiviet set NgayDang= now() where IDBaiViet = IDBaiVietDuyet;
END;$$
DELIMITER ;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetNewPost`()
begin
	select BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,BV.ChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc_KhongDau as KhongDauCon,CMCha.TenChuyenMuc_KhongDau as KhongDauCha,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and  datediff(date(now()),date(BV.NgayDang)) <=30  and BV.SuDung=1
    order by date(BV.NgayDang) desc;
end$$
DELIMITER ;

#-----------------------------------THEM BAI VIET
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE AddPost (in TieuDe varchar(225),in TieuDe_KhongDau varchar(225),
in IDChuyenMuc varchar(10),in NoiDung text,in IDPhongVien int,in NoiDungTomTat varchar(500),
 in NgayViet date)
BEGIN
	declare num int; declare PostID varchar(15);
    set num = (select max(convert(substring(IDBaiViet,3),unsigned)) from baiviet);
    if(num is null)
    then 
    set num =1;
    end if;
    if ( num is not null)
    then
    set num = num +1;
    end if;
    set PostID = (select concat('BV',convert(num,char)));
    insert into baiviet values (PostID,TieuDe,TieuDe_KhongDau,IDChuyenMuc,null,NoiDung,0,IDPhongVien,null,4,0,NoiDungTomTat,1,NgayViet,1);
    select PostID;
END;$$
DELIMITER ;
#-------------------------PHAN HANG BAI VIET
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE SetPremiumPost (in IDBaiVietDuyet varchar(15), in Hang int)#--- 1: thuong 2 : Cao Cap
BEGIN
    update baiviet set PhanHang= Hang where IDBaiViet = IDBaiVietDuyet;
END;$$
DELIMITER ;
#-------------------------NOI BAT BAI VIET
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE HightlightPost (in IDBaiVietDuyet varchar(15), in Loai int)#--- 0: thuong 1 : NoiBat
BEGIN
    update baiviet set TinNoiBat= Loai where IDBaiViet = IDBaiVietDuyet;
END;$$
DELIMITER ;
#----------------------HINH ANH
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE AddPicture (in link varchar(255))
BEGIN
	declare newlink varchar(255);
	if exists ( select * from urlhinhanh where urllinkHinh = link)
    then
    set newlink = (select concat(link,'#'));
	insert into urlhinhanh values(null,newlink);
    select IDHinh from urlhinhanh where urllinkHinh = newlink;
    end if;
    if not exists(select * from urlhinhanh where urllinkHinh = link)
    then
    insert into urlhinhanh values(null,link);
    select IDHinh from urlhinhanh where urllinkHinh = link;
    end if;
END;$$
DELIMITER ;
#-----------------------VAN DE GIA HAN TAI KHOAN
#--------------Nap tien vao tai khoan
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE AddAccountBalance (in TaiKhoan varchar(15), in SoTien float)#--- 0: thuong 1 : NoiBat
BEGIN
    update taikhoanthe set SoDu= SoDu + SoTien where SKT = TaiKhoan;
END;$$
DELIMITER ;
#------------Dang ky nang cap tai khoan
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE UpgradeAccount (in IDNguoiDung int)#--- 0: thuong 1 : NoiBat
BEGIN
	declare SoDuTK float; declare SoTaiKhoan varchar(15);
    set SoTaiKhoan= ( select tk.SKT from nguoidung as nd join taikhoanthe as tk on tk.ChuSoHuu = nd.ID);
    set SoDuTK = ( select tk.SoDu from nguoidung as nd join taikhoanthe as tk on tk.ChuSoHuu = nd.ID);
    if((SoDuTK - 50000) >=0)
    then
    set SoDuTK = SoDuTK-50000;
    update nguoidung set PhanHe= 'PH4' where ID = IDNguoiDung;
    update taikhoanthe set SoDu= SoDuTK where SKT = SoTaiKhoan;
    update nguoidung set NgayDangKy = now() where ID = IDNguoiDung;
    update nguoidung set NgayHetHan = date_add(now(),interval 7 day);
    update nguoidung set TinhTrang = N'Còn hạn' where ID = IDNguoiDung;
    select 1 as temp;
    end if;
    if((SoDuTK - 50000) <0)
    then
    select 0 as temp;
    end if;
END;$$
DELIMITER ;
#-----------------------QUAN TRI USER
#--------------GetUser
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE GetListUsers ()
BEGIN
    select nd.ID,nd.HoTen,nd.ButDanh,nd.Email,ph.TenPhanHe  
    from nguoidung as nd join phanhenguoidung as ph on ph.IDPhanHe=nd.PhanHe;
END;$$
DELIMITER ;
call GetListUsers()
#--------------Cap nhat vai tro user
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE UpdateRoleUser (in IDUser int,in PhanHeCapNhat varchar(10))
BEGIN
    update nguoidung set PhanHe=PhanHeCapNhat where ID=IDUser;
END;$$
DELIMITER ;
#--------------Xoa Bai Viet
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE DeletePost (in IDBV varchar(15))
BEGIN
    update baiviet set SuDung=0 where IDBaiViet=IDBV;
END;$$
DELIMITER ;
#---------------Phan chuyen muc cho bien tap vien
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE AddCatForEditor (in IDBTV int,in IDCM varchar(10))
BEGIN
    if exists (select * from btv_chuyenmuc where IDBienTapVien=IDBTV and ChuyenMuc= IDCM)
    then
    select 0 as temp;
    elseif not exists (select * from btv_chuyenmuc where IDBienTapVien=IDBTV and ChuyenMuc= IDCM)
    then
    insert into btv_chuyenmuc values(IDBTV,IDCM);
    select 1 as temp;
    end if;
END;$$
DELIMITER ;
#--------------Xoa chuyen muc cho  bien tap vien
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE DelCatForEditor (in IDBTV int,in IDCM varchar(10))
BEGIN
    if exists (select * from btv_chuyenmuc where IDBienTapVien=IDBTV and ChuyenMuc= IDCM)
    then
    delete from btv_chuyenmuc where  IDBienTapVien=IDBTV and ChuyenMuc= IDCM;
    select 1 as temp;
    elseif not exists (select * from btv_chuyenmuc where IDBienTapVien=IDBTV and ChuyenMuc= IDCM)
    then
    select 0 as temp;
    end if;
END;$$
DELIMITER ;
#--------------Danh sach chuyen muc cua bien tap vien
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE ListCatOfEditor (in IDBTV int)
BEGIN
    select bc.IDBienTapVien,cm.IDChuyenMuc,cm.TenChuyenMuc,cm.TenChuyenMuc_KhongDau
    from btv_chuyenmuc as bc join chuyenmuc as cm on cm.IDChuyenMuc=bc.ChuyenMuc
    where bc.IDBienTapVien=IDBTV;
END;$$
DELIMITER ;
#--------------------Dem chuyen muc cua editor
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE CountCatForEditor (in IDBTV int)
BEGIN
   select count(*) as soluong
    from btv_chuyenmuc as bc join chuyenmuc as cm on cm.IDChuyenMuc=bc.ChuyenMuc
    where bc.IDBienTapVien=IDBTV;
END;$$
DELIMITER ;
#--------------Danh sach chuyen muc ko su dung cua bien tap vien
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE NonListCatOfEditor (in IDBTV int)
BEGIN
    select cm.IDChuyenMuc,cm.TenChuyenMuc,cm.TenChuyenMuc_KhongDau
    from  chuyenmuc as cm 
	where  cm.IDChuyenMuc not in(select ChuyenMuc from btv_chuyenmuc  where IDBienTapVien=IDBTV )
     and cm.ChuyenMucCha is not null;
END;$$
DELIMITER ;
call NonListCatOfEditor(3);
#--------------------Lay thong tin bien tap vien
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE InforEditor (in IDBTV int)
BEGIN
   select nd.HoTen,nd.ButDanh,(select count(*) 
    from btv_chuyenmuc as bc join chuyenmuc as cm on cm.IDChuyenMuc=bc.ChuyenMuc
    where bc.IDBienTapVien=IDBTV) as soluong
   from nguoidung as nd 
   where nd.ID=IDBTV;
END;$$
DELIMITER ;
#--------------------Admin gia han tai khoan
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE ReNewSubscriber (in IDSubscriber int)
BEGIN
   declare PH varchar(10);
   declare NgayHH datetime;
   set PH = (select Phanhe from nguoidung where ID=IDSubscriber);
   set NgayHH = (select NgayHetHan from nguoidung where ID=IDSubscriber);
   if(PH!='PH4')
   then
   select 0 as temp;
   else
		if(NgayHH is null)
			then
			update nguoidung set ngayhethan=date_add(now(),INTERVAL 7 DAY)  where id=IDSubscriber;
		else
			update nguoidung set NgayHetHan=date_add(NgayHetHan,INTERVAL 7 DAY) where id=IDSubscriber;
		end if;
   select 1 as temp;
   end if;
END;$$
DELIMITER ;
call ReNewSubscriber(22);
#-----------------------------Set premium bai viet
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE SetPremiumPost (in IDBV varchar(15))
BEGIN
  update baiviet set PhanHang=2 where IDBaiViet=IDBV;
END;$$
DELIMITER ;