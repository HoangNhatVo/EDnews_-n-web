#-----------------------------------------Lay danh sach bai viet moi nhat theo chuyen muc cha
DELIMITER $$ 
USE `baodientu3n`$$
create procedure GetNewPostsWithMainCategory(in TenChuyenMuc_KhongDau varchar(50),in limi int,in offse int, in isPremium int)
begin
if(isPremium = 0 )
then
	select BV.LuotXem,BV.PhanHang,BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,BV.ChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc_KhongDau as KhongDauCon,CMCha.TenChuyenMuc_KhongDau as KhongDauCha,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and CMCha.TenChuyenMuc_KhongDau=TenChuyenMuc_KhongDau   and BV.SuDung=1 and BV.PhanHang=1
    order by BV.NgayDang desc limit limi offset offse ;
elseif(isPremium = 1)
then
select BV.LuotXem,BV.PhanHang,BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,BV.ChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc_KhongDau as KhongDauCon,CMCha.TenChuyenMuc_KhongDau as KhongDauCha,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and CMCha.TenChuyenMuc_KhongDau=TenChuyenMuc_KhongDau   and BV.SuDung=1 and (BV.PhanHang=1 or BV.PhanHang=2)
    order by BV.PhanHang desc, BV.NgayDang desc
    limit limi offset offse ;
end if;
end;$$
DELIMITER ; 
call GetNewPostsWithMainCategory('dulich',10,0,1);
#-----------------------------dem bai viet hien co cua chuyen muc cha
DELIMITER $$
USE `baodientu3n`$$
create procedure CountPostwithMainCat(in TenChuyenMuc_KhongDau varchar(50), in isPremium int)
begin
if(isPremium =0)
then
	select count(*) as total
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and CMCha.TenChuyenMuc_KhongDau=TenChuyenMuc_KhongDau  and BV.SuDung=1 and BV.PhanHang=1 ;
elseif(isPremium =1)
then
	select count(*) as total
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and CMCha.TenChuyenMuc_KhongDau=TenChuyenMuc_KhongDau  and BV.SuDung=1 and (BV.PhanHang=1 or BV.PhanHang=2) ;
end if;
end;$$
DELIMITER ;
call CountPostwithMainCat('dulich',0);
#-----------------------------------------Lay danh sach bai viet moi nhat theo chuyen muc con
DELIMITER $$
USE `baodientu3n`$$
create procedure GetNewPostsWithCategory(in TenChuyenMuc_KhongDau varchar(50),in limi int,in offse int,in isPremium int)
begin
if(isPremium = 0)
then
	select BV.LuotXem,BV.PhanHang,BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,BV.ChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc_KhongDau as KhongDauCon,CMCha.TenChuyenMuc_KhongDau as KhongDauCha,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and CMcon.TenChuyenMuc_KhongDau=TenChuyenMuc_KhongDau  and BV.SuDung=1 and BV.PhanHang=1
    order by BV.NgayDang desc limit limi offset offse;
elseif(isPremium = 1)
then
select BV.LuotXem,BV.PhanHang,BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,BV.ChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc_KhongDau as KhongDauCon,CMCha.TenChuyenMuc_KhongDau as KhongDauCha,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and CMcon.TenChuyenMuc_KhongDau=TenChuyenMuc_KhongDau  and BV.SuDung=1 and (BV.PhanHang=1 or BV.PhanHang=2)
    order by BV.PhanHang desc, BV.NgayDang desc
    limit limi offset offse;
end if;
end;$$
DELIMITER ;
call GetNewPostsWithCategory('showbiz',10,0,0);
#-----------------------------dem bai viet hien co cua chuyen muc con
DELIMITER $$
USE `baodientu3n`$$
create procedure CountPostwithCat(in TenChuyenMuc_KhongDau varchar(50),in isPremium int)
begin
if( isPremium =0)
then
	select count(*) as total
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and CMcon.TenChuyenMuc_KhongDau=TenChuyenMuc_KhongDau  and BV.SuDung=1 and BV.PhanHang=1;
elseif( isPremium =1)
then
	select count(*) as total
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and CMcon.TenChuyenMuc_KhongDau=TenChuyenMuc_KhongDau  and BV.SuDung=1 and (BV.PhanHang=1 or BV.PhanHang=2);
end if;
end;$$
DELIMITER ;
call CountPostwithCat('dulichvietnam',1);
#-------------------------Lay bai viet theo tag
DELIMITER $$
USE `baodientu3n`$$
create procedure GetPostsWithTag(in TagName varchar(50), in limi int,in offse int,in isPremium int)
begin
if( isPremium =0)
then
	select BV.LuotXem,BV.PhanHang, BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,cm.TenChuyenMuc_KhongDau as KhongDauCon,cha.TenChuyenMuc_KhongDau as KhongDauCha,cm.TenChuyenMuc,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join nhan_baiviet as n_bv on BV.IDBaiViet=n_bv.IDBaiViet
						join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
						join nhan as tag on tag.IDTag = n_bv.IDTag
                        join urlhinhanh as url on url.IDHinh=HA.IDHinh
						join nguoidung as nd on nd.ID=BV.PhongVien
                        join chuyenmuc as cm on cm.IDChuyenMuc=BV.ChuyenMuc
                        join chuyenmuc as cha on cha.IDChuyenMuc=cm.ChuyenMucCha
	where	tag.TenTag = TagName  and BV.SuDung=1 and BV.PhanHang=1
    limit limi offset offse ;
elseif( isPremium =1)
then
select BV.LuotXem,BV.PhanHang,BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,cm.TenChuyenMuc_KhongDau as KhongDauCon,cha.TenChuyenMuc_KhongDau as KhongDauCha,cm.TenChuyenMuc,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join nhan_baiviet as n_bv on BV.IDBaiViet=n_bv.IDBaiViet
						join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
						join nhan as tag on tag.IDTag = n_bv.IDTag
                        join urlhinhanh as url on url.IDHinh=HA.IDHinh
						join nguoidung as nd on nd.ID=BV.PhongVien
                        join chuyenmuc as cm on cm.IDChuyenMuc=BV.ChuyenMuc
                        join chuyenmuc as cha on cha.IDChuyenMuc=cm.ChuyenMucCha
	where	tag.TenTag = TagName  and BV.SuDung=1 and (BV.PhanHang=1 or BV.PhanHang=2)
    order by BV.PhanHang desc, BV.NgayDang desc;
end if;
end;$$
DELIMITER ; 
call GetPostsWithTag('#dalat',10,0,1);
#-------------------------So luong bai viet theo tag
DELIMITER $$
USE `baodientu3n`$$
create procedure CountPostsWithTag(in TagName varchar(50),in isPremium int)
begin
if( isPremium =0)
then
	select count(*) as SoLuongBaiViet
    from baiviet as BV join nhan_baiviet as n_bv on BV.IDBaiViet=n_bv.IDBaiViet
						join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
						join nhan as tag on tag.IDTag = n_bv.IDTag
                        join urlhinhanh as url on url.IDHinh=HA.IDHinh
						join nguoidung as nd on nd.ID=BV.PhongVien
                        join chuyenmuc as cm on cm.IDChuyenMuc=BV.ChuyenMuc
	where	tag.TenTag = TagName  and BV.SuDung=1 and BV.PhanHang=1;
elseif( isPremium =1)
then
  select count(*) as SoLuongBaiViet
    from baiviet as BV join nhan_baiviet as n_bv on BV.IDBaiViet=n_bv.IDBaiViet
						join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
						join nhan as tag on tag.IDTag = n_bv.IDTag
                        join urlhinhanh as url on url.IDHinh=HA.IDHinh
						join nguoidung as nd on nd.ID=BV.PhongVien
                        join chuyenmuc as cm on cm.IDChuyenMuc=BV.ChuyenMuc
	where	tag.TenTag = TagName  and BV.SuDung=1 and (BV.PhanHang=1 or BV.PhanHang=2);
end if;
end;$$
DELIMITER ; 
call CountPostsWithTag('#dalat',0);
#----------------------TIM BAI VIET
DELIMITER $$
USE `baodientu3n`$$
create procedure FindPost(in temp varchar(50), in limi int, in offse int,in isPremium int)
begin
if( isPremium =0)
then
	select distinct BV.LuotXem,BV.PhanHang,BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,
    cm.TenChuyenMuc_KhongDau as KhongDauCon,cha.TenChuyenMuc_KhongDau as KhongDauCha,cm.TenChuyenMuc,
    url.urllinkHinh,BV.NoiDungTomTat,match(BV.TieuDe,BV.NoiDung,BV.NoiDungTomTat) against( temp IN BOOLEAN MODE) as score
    from baiviet as BV join nhan_baiviet as n_bv on BV.IDBaiViet=n_bv.IDBaiViet
						join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
                        join urlhinhanh as url on url.IDHinh=HA.IDHinh
						join nguoidung as nd on nd.ID=BV.PhongVien
                        join chuyenmuc as cm on cm.IDChuyenMuc=BV.ChuyenMuc
                        join chuyenmuc as cha on cha.IDChuyenMuc=cm.ChuyenMucCha
   where  BV.SuDung=1 and (match(BV.TieuDe,BV.NoiDung,BV.NoiDungTomTat) against( temp IN BOOLEAN MODE)  ) and BV.PhanHang=1
   limit limi offset offse;
elseif( isPremium =1)
then
	select distinct BV.LuotXem,BV.PhanHang,BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,
    cm.TenChuyenMuc_KhongDau as KhongDauCon,cha.TenChuyenMuc_KhongDau as KhongDauCha,cm.TenChuyenMuc,
    url.urllinkHinh,BV.NoiDungTomTat,match(BV.TieuDe,BV.NoiDung,BV.NoiDungTomTat) against( temp IN BOOLEAN MODE) as score
    from baiviet as BV join nhan_baiviet as n_bv on BV.IDBaiViet=n_bv.IDBaiViet
						join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
                        join urlhinhanh as url on url.IDHinh=HA.IDHinh
						join nguoidung as nd on nd.ID=BV.PhongVien
                        join chuyenmuc as cm on cm.IDChuyenMuc=BV.ChuyenMuc
                        join chuyenmuc as cha on cha.IDChuyenMuc=cm.ChuyenMucCha
   where  BV.SuDung=1 and (match(BV.TieuDe,BV.NoiDung,BV.NoiDungTomTat) against( temp IN BOOLEAN MODE)  ) and (BV.PhanHang=1 or BV.PhanHang=2)
   order by BV.PhanHang desc, BV.NgayDang desc
   limit limi offset offse;
end if;
end;$$
DELIMITER ; 
call FindPost('đà lạt',1,0,0);
#-----------------------------So luong bai viet dc tim thay theo tu khoa
DELIMITER $$
USE `baodientu3n`$$
create procedure NumberOfFindPost(in temp varchar(50),in isPremium int)
begin
if( isPremium =0)
then
select count(*) as Num
    from baiviet as BV
   where match(BV.TieuDe,BV.NoiDung,BV.NoiDungTomTat) against( temp)  and BV.SuDung=1 and BV.PhanHang=1;
elseif( isPremium =1)
then
select count(*) as Num
    from baiviet as BV
   where match(BV.TieuDe,BV.NoiDung,BV.NoiDungTomTat) against( temp)  and BV.SuDung=1 and (BV.PhanHang=1 or BV.PhanHang=2);
end if;
end;$$
DELIMITER ; 
call NumberOfFindPost('da lat',0);
#-------------------------------------------Lay bai viet noi bat
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE GetSinglePost (in isPremium int)
BEGIN
if( isPremium =0)
then
select BV.LuotXem,BV.PhanHang,BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,BV.ChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc_KhongDau as KhongDauCon,CMCha.TenChuyenMuc_KhongDau as KhongDauCha,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien where BV.TinNoiBat = 1 and BV.SuDung=1 and BV.PhanHang=1
                                order by  BV.NgayDang desc;
elseif( isPremium =1)
then
select BV.LuotXem,BV.PhanHang,BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,BV.ChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc_KhongDau as KhongDauCon,CMCha.TenChuyenMuc_KhongDau as KhongDauCha,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien where BV.TinNoiBat = 1 and BV.SuDung=1 and (BV.PhanHang=1 or BV.PhanHang=2)
                                order by BV.PhanHang desc, BV.NgayDang desc;
end if;
END;$$
DELIMITER ;
call GetSinglePost(1);
#-----------------------------------------Lay bai viet moi nhat
DELIMITER $$
USE `baodientu3n`$$
create procedure  GetNewPost(in isPremium int)
begin
if( isPremium =0)
then
select BV.LuotXem,BV.PhanHang,BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,BV.ChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc_KhongDau as KhongDauCon,CMCha.TenChuyenMuc_KhongDau as KhongDauCha,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and  datediff(date(now()),date(BV.NgayDang)) <=30  and BV.SuDung=1 and BV.PhanHang=1
    order by date(BV.NgayDang) desc;
elseif( isPremium =1)
then
select BV.LuotXem,BV.PhanHang,BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,BV.ChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc_KhongDau as KhongDauCon,CMCha.TenChuyenMuc_KhongDau as KhongDauCha,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and  datediff(date(now()),date(BV.NgayDang)) <=30  and BV.SuDung=1 and (BV.PhanHang=1 or BV.PhanHang=2)
    order by BV.PhanHang desc, BV.NgayDang desc;
end if;
end;$$
DELIMITER ; 
call GetNewPost(1);
#------------------------------------------Lay cac bai viet hom nay
DELIMITER $$
USE `baodientu3n`$$
create procedure  GetTodayPost(in isPremium int)
begin
if( isPremium =0)
then
	select BV.LuotXem,BV.PhanHang,BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,BV.ChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc_KhongDau as KhongDauCon,CMCha.TenChuyenMuc_KhongDau as KhongDauCha,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and date(BV.NgayDang)=date(now())  and BV.SuDung=1 and BV.PhanHang=1;
elseif( isPremium =1)
then
select BV.LuotXem,BV.PhanHang,BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,BV.ChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc_KhongDau as KhongDauCon,CMCha.TenChuyenMuc_KhongDau as KhongDauCha,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and date(BV.NgayDang)=date(now())  and BV.SuDung=1 and (BV.PhanHang=1 or BV.PhanHang=2)
    order by BV.PhanHang desc;
end if;
end;$$
DELIMITER ;
#-------------------------------
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE GetHighestViewPost(in isPremium  int)
begin
if( isPremium =0)
then
	select distinct BV.LuotXem,BV.PhanHang,BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,cm.TenChuyenMuc_KhongDau as KhongDauCon,cha.TenChuyenMuc_KhongDau as KhongDauCha,cm.TenChuyenMuc,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join nhan_baiviet as n_bv on BV.IDBaiViet=n_bv.IDBaiViet
						join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
                        join urlhinhanh as url on url.IDHinh=HA.IDHinh
						join nguoidung as nd on nd.ID=BV.PhongVien
                        join chuyenmuc as cm on cm.IDChuyenMuc=BV.ChuyenMuc
                        join chuyenmuc as cha on cha.IDChuyenMuc=cm.ChuyenMucCha
                        where   BV.SuDung=1 and BV.PhanHang=1
    order by BV.LuotXem
    limit 10 ;
elseif( isPremium =1)
then
select distinct BV.LuotXem,BV.PhanHang,BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,cm.TenChuyenMuc_KhongDau as KhongDauCon,cha.TenChuyenMuc_KhongDau as KhongDauCha,cm.TenChuyenMuc,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join nhan_baiviet as n_bv on BV.IDBaiViet=n_bv.IDBaiViet
						join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
                        join urlhinhanh as url on url.IDHinh=HA.IDHinh
						join nguoidung as nd on nd.ID=BV.PhongVien
                        join chuyenmuc as cm on cm.IDChuyenMuc=BV.ChuyenMuc
                        join chuyenmuc as cha on cha.IDChuyenMuc=cm.ChuyenMucCha
                        where   BV.SuDung=1 and (BV.PhanHang=1 or BV.PhanHang=2)
    order by BV.PhanHang desc, BV.LuotXem desc
    limit 10 ;
end if;
end;$$
DELIMITER ;
#----------------------------Lay details bai viet
DELIMITER $$
USE `baodientu3n`$$
create procedure GetDetailsPost(in IDBaiViet varchar(15))
begin
	select  BV.LuotXem,cha.TenChuyenMuc as TenCHuyenMucCha,cha.TenChuyenMuc_KhongDau as KhongDauCha,con.TenChuyenMuc as TenChuyenMucCon,con.TenChuyenMuc_KhongDau as KhongDauCon,
			BV.TieuDe,BV.TieuDe_KhongDau,BV.NgayDang,PV.ButDanh,BV.NoiDung,url.urllinkHinh,BV.IDBaiViet
    from baiviet as BV join baiviet_hinhanh as BV_HA on BV.IDbaiviet=BV_HA.IDBaiViet
								join urlhinhanh as url on url.IDHinh=BV_HA.IDHinh
                                join chuyenmuc as con on con.IDChuyenmuc = BV.CHuyenMuc
                                join chuyenmuc as cha on cha.IDChuyenmuc=con.Chuyenmuccha
                                join nguoidung as PV on PV.ID=BV.PhongVien
	where BV.IDBaiViet=	IDBaiViet;			
end;$$
DELIMITER ;
