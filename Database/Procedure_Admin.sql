
#---------------------------------------------QUAN LY CHUYEN MUC
#----------------------Xoa chuyen muc cha 
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE DeleteMainCategory (in IDCM varchar(10) )
BEGIN

delete from chuyenmuc where ChuyenMucCha=IDCM ;
delete from chuyenmuc  where IDChuyenMuc=IDCM;
END;$$
DELIMITER ;

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
    end if;
     if( count1>0 or count2>0)
     then 
	 select 'Chuyên m?c này dã có' as ' ';
     end if;
END;$$
DELIMITER ;
#----------------------------Chinh Sua Chuyen Muc Cha
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE UpdateMainCategory (in IDCM varchar(10),in Ten varchar(50),in Ten_KhongDau varchar(50) )
BEGIN
update chuyenmuc set TenChuyenMuc =Ten and TenChuyenMuc_KhongDau=Ten_KhongDau where IDChuyenMuc=TDCM;
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
     end if;
     if( count1>0 or count2>0)
     then 
	 select 'Chuyên m?c này dã có' as ' ';
     end if;
     
END;$$
DELIMITER ;
#---------------------------Xoa CHuyen Muc Con
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE DeleteSubCategory (in IDCM varchar(10) )
BEGIN
delete from chuyenmuc  where IDChuyenMuc=IDCM;
END;$$
DELIMITER ;
#----------------------------Chinh Sua Chuyen Muc Con
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE UpdateSubCategory (in IDCM varchar(10),in Ten varchar(50),in Ten_KhongDau varchar(50) )
BEGIN
update chuyenmuc set TenChuyenMuc =Ten and TenChuyenMuc_KhongDau=Ten_KhongDau where IDChuyenMuc=TDCM;
END;$$
DELIMITER ;

#---------------------------QUAN LY TAI KHOAN
#-------------------------Danh sach phan he 
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE GetListRole ()
BEGIN
select * from phanhenguoidung;
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
#------------------------
