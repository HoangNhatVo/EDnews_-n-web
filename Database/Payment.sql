#---------------------------Payment
#-------------------------Lay thong tin tai khoan
DELIMITER $$
USE `baodientu3n`$$
create procedure GetDetailCard(in IDUser int)
begin
	select tk.SKT as SoTaiKhoan,nd.HoTen,tk.SoDu
    from nguoidung as nd join taikhoanthe as tk on tk.ChuSoHuu=nd.ID
    where nd.ID=IDUser;
end;$$
DELIMITER ;
#-------------------------Lay thong tin tai khoan
DELIMITER $$
USE `baodientu3n`$$
create procedure AddMoney(in IDUser int,in Money float)
begin
declare SoTK varchar(15);
set SoTK=(select  tk.SKT 
    from nguoidung as nd join taikhoanthe as tk on tk.ChuSoHuu=nd.ID
    where nd.ID=IDUser);
if(Money<=0)
then
select 0 as Temp;
elseif (Money>0)
then
	update taikhoanthe set SoDu=SoDu+Money where SKT=SoTK;
end if;
end;$$
DELIMITER ;
call AddMoney(10,15000);
call GetDetailCard(10);
#--------------------------Mua goi premium
DELIMITER $$
USE `baodientu3n`$$
create procedure BuyPremiumPack(in IDUser int)
begin
	declare SoDuCon float;
    declare hieu float;
    declare SoTK varchar(15);
    declare HanDung datetime;
    set HanDung=(select NgayHetHan from nguoidung where ID=IDUser);
	set SoTK=(select  tk.SKT 
    from nguoidung as nd join taikhoanthe as tk on tk.ChuSoHuu=nd.ID
    where nd.ID=IDUser);
    set SoDuCon=(select tk.SoDu
    from nguoidung as nd join taikhoanthe as tk on tk.ChuSoHuu=nd.ID
    where nd.ID=IDUser);
    set hieu=SoDuCon-20000;
  if(hieu<0)
	then
		select 0 as Temp;
	elseif (hieu>=0)
	then
		update taikhoanthe set SoDu=SoDu-20000 where SKT=SoTK;
        update nguoidung set PhanHe='PH4' where ID=IDUser;
		if(HanDung is null)
        then
        update nguoidung set NgayHetHan= date_add(now(),interval 7 day) where ID=IDUser;
        elseif(HanDung is not null)
        then
        update nguoidung set NgayHetHan= date_add(HanDung,interval 7 day) where ID=IDUser;
        select 1 as Temp;
        end if;
	end if;
end;$$
DELIMITER ;
call BuyPremiumPack(10);