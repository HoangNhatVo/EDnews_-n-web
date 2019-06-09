
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

DELIMITER $$
USE `baodientu3n`$$
create procedure AddUser2(in HoTen varchar(50), in SDT varchar(15),
 in NgaySinh varchar(50), in GioiTinh varchar(10), in Email varchar(50), in Password varchar(255),
 in NgayDangKy varchar(50), in NgayHetHan varchar(50), in TinhTrang varchar(20))
begin
	insert into nguoidung 
    values(null,Email,Password,HoTen,GioiTinh,NgaySinh,Email,SDT,'PH5',NgayDangKy,NgayHetHan,TinhTrang,null,null);
end;$$
DELIMITER ;

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