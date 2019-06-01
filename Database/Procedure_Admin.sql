
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
			 set nextTag = lastTag +1;
			 set IDTagAdd = (select concat('tag',convert(nextTag,char)));
			 insert into nhan values( IDTagAdd,TagNameNew);
			 select 1 as temp;
	end if;
	if( count1>0 )
	then 
	select 0 as temp;
	end if;
END;$$
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
