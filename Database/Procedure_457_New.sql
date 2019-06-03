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

DELIMITER $$
USE `baodientu3n`$$
create procedure AddUser2(in HoTen varchar(50), in SDT varchar(15),
 in NgaySinh varchar(50), in GioiTinh varchar(10), in Email varchar(50), in Password varchar(255),
 in NgayDangKy varchar(50), in NgayHetHan varchar(50), in TinhTrang varchar(20))
begin
	insert into nguoidung 
    values(null,Email,Password,HoTen,GioiTinh,NgaySinh,Email,SDT,'PH1',NgayDangKy,NgayHetHan,TinhTrang,null,null);
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