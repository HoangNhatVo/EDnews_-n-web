DELIMITER $$
USE `baodientu3n`$$
create procedure AddUser(in hoten varchar(50), in SDT varchar(15),
 in ngaysinh varchar(50), in gioitinh varchar(10), in email varchar(50), in password varchar(255))
begin
	insert into nguoidung 
    values(null,email,password,hoten,gioitinh,ngaysinh,email,SDT,'PH1',null,null,null,null,null);
end;$$
DELIMITER ;

#----- Hàm AddUser gọi trên mysql thì chạy đc nhưng gọi trên project thì chưa chạy được

DELIMITER $$
USE `baodientu3n`$$
create procedure GetUser(in email varchar(50))
begin
	select * from nguoidung nd where nd.Email = email;
end;$$
DELIMITER ;
