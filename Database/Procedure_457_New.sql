DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE DeleteTagNotUse()
BEGIN
	declare CheckTagNotUse bool default true;
    declare countTag int;
    declare IDTagDel varchar(10);
    while (CheckTagNotUse = true) do
		set countTag = (select count(*) from nhan n where n.IDTag not in (select distinct n1.IDTag
																		  from nhan n1, nhan_baiviet nbv1
																		  where n1.IDTag = nbv1.IDTag));
		if (countTag > 0)
        then
        set IDTagDel = (select n.IDTag from nhan n where n.IDTag not in (select distinct n1.IDTag
																		 from nhan n1, nhan_baiviet nbv1
																		 where n1.IDTag = nbv1.IDTag)
																 limit 1);
		delete from nhan where IDTag = IDTagDel;		
        end if;
        
        if(countTag = 0)
        then
        set CheckTagNotUse = false;
        end if;
    end while;    
END;$$
DELIMITER ;


DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE DeleteAllTagPost(in IDBV varchar(10))
BEGIN
	delete from nhan_baiviet  where IDBaiViet = IDBV;
END;$$
DELIMITER ;

DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE UpdatePost(in IDBaiViet varchar(10), in TieuDe varchar(255), 
in TieuDe_KhongDau varchar(255), in ChuyenMuc varchar(10), in NoiDung text,
in NoiDungTomTat varchar(500), in NgayViet date)
BEGIN
	update baiviet bv
    set bv.TieuDe = TieuDe, bv.TieuDe_KhongDau=TieuDe_KhongDau, bv.ChuyenMuc = ChuyenMuc,
    bv.NoiDung=NoiDung, bv.TinhTrang = 4, bv.NoiDungTomTat=NoiDungTomTat, bv.NgayViet=NgayViet
    where bv.IDBaiViet = IDBaiViet;
END;$$
DELIMITER ;

DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE GetAvatarPost(in IDBaiViet varchar(10))
BEGIN
	select a.urllinkHinh
    from baiviet_hinhanh abv, urlhinhanh a
    where IDBaiViet = abv.IDBaiViet and abv.IDHinh = a.IDHinh;
END;$$
DELIMITER ;

DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE ListCat(in IDBaiViet varchar(10))
BEGIN
	declare IDCM_BV varchar(10);
    set IDCM_BV = (select bv.ChuyenMuc from baiviet bv where bv.IDBaiViet = IDBaiViet);
   select * from chuyenmuc where ChuyenMucCha is not null and IDChuyenMuc != IDCM_BV;	
END;$$
DELIMITER 

DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE GetPostWithIDPost(in IDBaiViet varchar(10))
BEGIN
	select bv.TieuDe, bv.ChuyenMuc, cm.TenChuyenMuc, bv.NoiDungTomTat, bv.NoiDung
    from baiviet bv, chuyenmuc cm
    where bv.IDBaiViet = IDBaiViet and cm.IDChuyenMuc = bv.ChuyenMuc;
END;$$
DELIMITER ;

DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE GetTagWithIDPost(in IDBaiViet varchar(10))
BEGIN
	select N.TenTag
    from nhan N, nhan_baiviet NBV
    where NBV.IDBaiViet = IDBaiViet and N.IDTag = NBV.IDTag;
END;$$
DELIMITER ;
call GetTagWithIDPost('BV3');
#----------------------------------------------------------------------------------


DELIMITER $$
USE `baodientu3n`$$
create procedure GetRelatedPosts(in IDPost varchar(15))
begin
	declare Cat varchar(10);
    set Cat=(select ChuyenMuc from baiviet where IDBaiViet=IDPost);
	select BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,
    nd.ButDanh,CMCon.TenChuyenMuc,CMCha.TenChuyenMuc_KhongDau as KhongDauCha,CMCon.TenChuyenMuc_KhongDau as KhongDauCon,url.urllinkHinh
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2   and BV.SuDung=1 and BV.ChuyenMuc=Cat and BV.IDBaiViet!=IDPost
    order by BV.NgayDang desc limit 5 ;
end;$$
DELIMITER ;

DELIMITER $$
USE `baodientu3n`$$
create procedure AddUser2(in HoTen varchar(50), in SDT varchar(15),
 in NgaySinh varchar(50), in GioiTinh varchar(10), in Email varchar(50), in Password varchar(255),
 in NgayDangKy varchar(50))
begin
	insert into nguoidung 
    values(null,Email,Password,HoTen,GioiTinh,NgaySinh,Email,SDT,'PH5',NgayDangKy,null,N'Còn sử dụng',null,'default-avatar.png',null);
end;$$
DELIMITER ;

DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE CountPicture ()
BEGIN
	select count(*) as SL from urlhinhanh;
END;$$
DELIMITER ;
call CountPicture ()

DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE AddPicture (in link varchar(255))
BEGIN
	declare count1 int;
    declare count2 int;
    set count1 =( select count(*) from urlhinhanh where urllinkHinh = link);
    if (count1 > 0) 
    then
    set count2 = (select count(*) from urlhinhanh);
    set link = (select concat(count2,link));
    end if;
	insert into urlhinhanh values (null, link);
    select IDHinh from urlhinhanh where urllinkHinh = link;
END;$$
DELIMITER ;

DELIMITER $$
USE `baodientu3n`$$
create procedure AddPostPicture(in IDBaiViet varchar(15), in IDHinh int(11))
begin
	insert into baiviet_hinhanh values (IDBaiViet,IDHinh,1);
end;$$
DELIMITER ;

DELIMITER $$
USE `baodientu3n`$$
create procedure GetPictureWithName(in NamePicture varchar(255))
begin
	select * from urlhinhanh where urllinkHinh = NamePicture;
end;$$
DELIMITER ;

#-------------------------------------------------------------------------------------------

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


DELIMITER $$
USE `baodientu3n`$$
create procedure AddTagPost(in IDBaiViet varchar(15), in IDTag varchar(10))
begin
	insert into nhan_baiviet values (IDBaiViet,IDTag);
end;$$
DELIMITER ;

#-----------------------------------------------------------------------------------

#--DELIMITER $$
#--USE `baodientu3n`$$
#--create procedure AddUser2(in HoTen varchar(50), in SDT varchar(15),
#--in NgaySinh varchar(50), in GioiTinh varchar(10), in Email varchar(50), in Password varchar(255),
#-- in NgayDangKy varchar(50), in NgayHetHan varchar(50), in TinhTrang varchar(20))
#--begin
#--	insert into nguoidung 
#--    values(null,Email,Password,HoTen,GioiTinh,NgaySinh,Email,SDT,'PH5',NgayDangKy,NgayHetHan,TinhTrang,null,null,null);
#--end;$$
#--DELIMITER ;

DELIMITER $$
USE `baodientu3n`$$
create procedure GetListCategory()
begin
	select * from chuyenmuc where ChuyenMucCha is not null;
end;$$
DELIMITER ;
call GetListCategory()
#----------------------------------------------------------------------------------------------------------------#

alter table nguoidung drop INDEX UserName
alter table nguoidung add column OTP varchar(255)

DELIMITER $$
USE `baodientu3n`$$
create procedure AddOTPUserWithEmail(in Email varchar(50), in OTP varchar(255))
begin
	update nguoidung nd
    set nd.OTP = OTP
    where nd.Email = Email;
end;$$
DELIMITER ;


DELIMITER $$
USE `baodientu3n`$$
create procedure UpdatePasswordUserWithEmail(in Email varchar(50), in Password varchar(255))
begin
	update nguoidung nd
    set nd.Password = Password
    where nd.Email = Email;
end;$$
DELIMITER ;


DELIMITER $$
USE `baodientu3n`$$
create procedure GetUserWithIDAndEmail(in ID int(11), in Email varchar(50))
begin
	select * from nguoidung nd where nd.ID <> ID and nd.Email = Email;
end;$$
DELIMITER ;

DELIMITER $$
USE `baodientu3n`$$
create procedure GetUserWithID(in ID int(11))
begin
	select * from nguoidung nd where nd.ID = ID;
end;$$
DELIMITER ;

DELIMITER $$
USE `baodientu3n`$$
create procedure UpdateInfoUserWithID(in ID int(11), in HoTen varchar(50), 
							in NgaySinh varchar(50), in Email varchar(50))
begin
	update nguoidung nd
    set nd.HoTen = HoTen, nd.NgaySinh = NgaySinh, nd.Email = Email
    where nd.ID = ID;
end;$$
DELIMITER ;

DELIMITER $$
USE `baodientu3n`$$
create procedure UpdatePasswordUserWithID(in ID int(11), in Password varchar(255))
begin
	update nguoidung nd
    set nd.Password = Password
    where nd.ID = ID;
end;$$
DELIMITER ;

DELIMITER $$
USE `baodientu3n`$$
create procedure GetUserWithPassword(in Password varchar(255))
begin
	select * from nguoidung nd where nd.Password = Password;
end;$$
DELIMITER ;
	
DELIMITER $$
USE `baodientu3n`$$
create procedure AddUser(in HoTen varchar(50), in SDT varchar(15),
 in NgaySinh varchar(50), in GioiTinh varchar(10), in Email varchar(50), in Password varchar(255))
begin
	insert into nguoidung 
    values(null,Email,Password,HoTen,GioiTinh,NgaySinh,Email,SDT,'PH1',null,null,null,null,null);
end;$$
DELIMITER ;

	#------ PROCEDURE GetUser
DELIMITER $$
USE `baodientu3n`$$
create procedure GetUserWithEmail(in email varchar(50))
begin
	select * from nguoidung nd where nd.Email = email;
end;$$
DELIMITER ;

DELIMITER $$
USE `baodientu3n`$$
create procedure GetUserWithPhonenumber(in sdt varchar(15))
begin
	select * from nguoidung nd where nd.SDT = sdt;
end;$$
DELIMITER ;
	#------ MODIFY lại kiểu dữ liệu của cột Password trong bảng người dùng
ALTER TABLE nguoidung MODIFY COLUMN Password varchar(255)