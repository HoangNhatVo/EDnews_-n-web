#----------------------Xoa chuyen muc cha 
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE DeleteMainCategory (in IDCM varchar(10) )
BEGIN
delete from chuyenmuc  where IDChuyenMuc=IDCM;
delete from chuyenmuc where ChuyenMucCha=IDCM ;
END;$$
DELIMITER ;


#----------------------Them Chuyen Muc change
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
	 select 'Chuyên mục này đã có' as ' ';
     end if;
END;$$
DELIMITER ;