	#------ PROCEDURE AddUser
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