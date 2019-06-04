#------------------------------PROCEDURE
#-------------------------------------------Lay bai viet noi bat
DELIMITER $$
USE `baodientu3n`$$
CREATE PROCEDURE GetSinglePost ()
BEGIN
select BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,BV.ChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc_KhongDau as KhongDauCon,CMCha.TenChuyenMuc_KhongDau as KhongDauCha,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien where BV.TinNoiBat = 1;
END;$$

DELIMITER ;

#----------------------------------------Lay chuyen muc - category
DELIMITER $$
USE `baodientu3n`$$
create procedure GetCategory(in TenChuyenMucCha_KhongDau varchar(50))
begin
	select B.IDChuyenMuc, B.TenChuyenMuc,B.TenChuyenMuc_KhongDau,A.TenChuyenMuc_KhongDau as TenKhongDauCha
    from chuyenmuc as  A join chuyenmuc as B on A.IDChuyenMuc=B.ChuyenMucCha
    where A.TenChuyenMuc_KhongDau =TenChuyenMucCha_KhongDau;
end;$$
DELIMITER ; call GetCategory('kinhdoanh') 
#-----------------------------------------Lay bai viet moi nhat
DELIMITER $$
USE `baodientu3n`$$
create procedure  GetNewPost()
begin
	select BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,BV.ChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc_KhongDau as KhongDauCon,CMCha.TenChuyenMuc_KhongDau as KhongDauCha,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and  datediff(date(now()),date(BV.NgayDang)) <=10;
end;$$
DELIMITER ; 
#------------------------------------------Lay cac bai viet hom nay
DELIMITER $$
USE `baodientu3n`$$
create procedure  GetTodayPost()
begin
	select BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,BV.ChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc_KhongDau as KhongDauCon,CMCha.TenChuyenMuc_KhongDau as KhongDauCha,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and date(BV.NgayDang)=date(now());
end;$$
DELIMITER ;

#-----------------------------------------Lay  chuyen muc CHA & CON
DELIMITER $$
USE `baodientu3n`$$
create procedure GetMainCategory()
begin
	select * from chuyenmuc where chuyenmuccha is null;
end;$$
DELIMITER ; call getmaincategory
#-----------------------------------------Lay danh sach tac gia (phong vien)
DELIMITER $$
USE `baodientu3n`$$
create procedure GetWriter()
begin
	select nd.ID,nd.ButDanh,N'Phóng viên' as Loai,url.urllinkHinh from nguoidung as nd join urlhinhanh as url on url.idhinh=nd.AnhDaiDien
    where phanhe = 'ph2';
end;$$
DELIMITER ; 
#-----------------------------------------Lay danh sach bai viet theo chuyen muc cha
DELIMITER $$
USE `baodientu3n`$$
create procedure GetPostWithMainCategory(in TenChuyenMuc_KhongDau varchar(50))
begin
	select BV.IDBaiViet,BV.TieuDe,max(date(BV.NgayDang)) as NgayDang,nd.ButDanh,BV.ChuyenMuc,CM.TenChuyenMuc,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CM on CM.IDChuyenMuc= BV.ChuyenMuc
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and CM.TenChuyenMuc_KhongDau=TenChuyenMuc_KhongDau and CM.Chuyenmuccha is null;
end;$$
DELIMITER ; 

#-----------------------------------------Lay danh sach bai viet theo chuyen muc con
DELIMITER $$
USE `baodientu3n`$$
create procedure GetPostWithCategory(in TenChuyenMuc_KhongDau varchar(50))
begin
	select BV.IDBaiViet,BV.TieuDe,max(date(BV.NgayDang)) as NgayDang,nd.ButDanh,BV.ChuyenMuc,CM.TenChuyenMuc,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CM on CM.IDChuyenMuc= BV.ChuyenMuc
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and CM.TenChuyenMuc_KhongDau=TenChuyenMuc_KhongDau and CM.Chuyenmuccha is not null;
end;$$
DELIMITER ; 

#-----------------------------------------Lay danh sach bai viet moi nhat theo chuyen muc cha
DELIMITER $$
USE `baodientu3n`$$
create procedure GetNewPostsWithMainCategory(in TenChuyenMuc_KhongDau varchar(50),in limi int,in offse int)
begin
	select BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,BV.ChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc_KhongDau as KhongDauCon,CMCha.TenChuyenMuc_KhongDau as KhongDauCha,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and CMCha.TenChuyenMuc_KhongDau=TenChuyenMuc_KhongDau  
    order by BV.NgayDang desc limit limi offset offse;
end;$$
DELIMITER ; 
call GetNewPostsWithMainCategory('xahoi',3,0)
#-----------------------------dem bai viet hien co cua chuyen muc cha
DELIMITER $$
USE `baodientu3n`$$
create procedure CountPostwithMainCat(in TenChuyenMuc_KhongDau varchar(50))
begin
	select count(*) as total
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and CMCha.TenChuyenMuc_KhongDau=TenChuyenMuc_KhongDau  ;
  
end;$$
DELIMITER ;
call CountPostwithMainCat('kinhdoanh')
#-----------------------------------------Lay danh sach bai viet moi nhat theo chuyen muc con
DELIMITER $$
USE `baodientu3n`$$
create procedure GetNewPostsWithCategory(in TenChuyenMuc_KhongDau varchar(50),in limi int,in offse int)
begin
	select BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,BV.ChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc_KhongDau as KhongDauCon,CMCha.TenChuyenMuc_KhongDau as KhongDauCha,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and CMcon.TenChuyenMuc_KhongDau=TenChuyenMuc_KhongDau 
    order by BV.NgayDang desc limit limi offset offse;
end;$$
DELIMITER ;
#-----------------------------dem bai viet hien co cua chuyen muc con
DELIMITER $$
USE `baodientu3n`$$
create procedure CountPostwithCat(in TenChuyenMuc_KhongDau varchar(50))
begin
	select count(*) as total
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and CMcon.TenChuyenMuc_KhongDau=TenChuyenMuc_KhongDau ;
end;$$
DELIMITER ;

#-----------------------------------------Lay ten chuhyen muc
DELIMITER $$
USE `baodientu3n`$$
create procedure GetCategoryName(in TenChuyenMuc_KhongDau varchar(50))
begin
	declare temp varchar(50);
    set temp=(select CM.ChuyenMucCha from chuyenmuc as CM where CM.TenChuyenMuc_KhongDau = TenChuyenMuc_KhongDau);
    if(temp is not null)
    then
	select CMCon.IDChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc_KhongDau,CMCha.TenChuyenMuc as TenCha,CMCha.TenChuyenMuc_KhongDau  as TenKhongDau_Cha from chuyenmuc as CMCon join chuyenmuc as CMCha on CMCon.ChuyenMucCha=CMCha.IDCHuyenMuc
    where CMCon.TenChuyenMuc_KhongDau=TenChuyenMuc_KhongDau;
    end if;
	if(temp is null)
    then
    select CM.IDChuyenMuc,CM.TenChuyenMuc,CM.TenChuyenMuc_KhongDau  from chuyenmuc as CM where CM.tenchuyenmuc_khongdau=TenChuyenMuc_KhongDau;
    end if;
end;$$
DELIMITER ;

#----------------------------Lay details bai viet
DELIMITER $$
USE `baodientu3n`$$
create procedure GetDetailsPost(in IDBaiViet varchar(15))
begin
	select  cha.TenChuyenMuc as TenCHuyenMucCha,cha.TenChuyenMuc_KhongDau as KhongDauCha,con.TenChuyenMuc as TenChuyenMucCon,con.TenChuyenMuc_KhongDau as KhongDauCon,
			BV.TieuDe,BV.TieuDe_KhongDau,BV.NgayDang,PV.ButDanh,BV.NoiDung,url.urllinkHinh,BV.IDBaiViet
    from baiviet as BV join baiviet_hinhanh as BV_HA on BV.IDbaiviet=BV_HA.IDBaiViet
								join urlhinhanh as url on url.IDHinh=BV_HA.IDHinh
                                join chuyenmuc as con on con.IDChuyenmuc = BV.CHuyenMuc
                                join chuyenmuc as cha on cha.IDChuyenmuc=con.Chuyenmuccha
                                join nguoidung as PV on PV.ID=BV.PhongVien
	where BV.IDBaiViet=	IDBaiViet;			
end;$$
DELIMITER ;
call GetDetailsPost('BV1')
#----------------------------Lay nhan bai viet
DELIMITER $$
USE `baodientu3n`$$
create procedure GetTagsPost(in IDBaiViet varchar(15))
begin
	select  tag.TenTag
    from baiviet as BV join nhan_baiviet as nbv on nbv.IDBaiViet = BV.IDBaiViet
						join nhan as tag on tag.IDTag=nbv.IDTag
	where BV.IDBaiViet=	IDBaiViet;			
end;$$
DELIMITER ;

#----------------------------Lay binh luan bai viet
DELIMITER $$
USE `baodientu3n`$$
create procedure GetCommentsPost(in IDBaiViet varchar(15))
begin
	select  docgia.HoTen,docgia.AnhDaiDien,cmt.NgayBinhLuan,cmt.NoiDung
    from baiviet as BV join binhluan as cmt on cmt.BaiViet =BV.IDBaiViet
					   join nguoidung as docgia on docgia.ID=cmt.DocGia
	where BV.IDBaiViet=	IDBaiViet;			
end;$$
DELIMITER ; 
#-------------------------Lay bai viet theo tag
DELIMITER $$
USE `baodientu3n`$$
create procedure GetPostsWithTag(in TagName varchar(50), in limi int,in offse int)
begin
	select BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,cm.TenChuyenMuc_KhongDau as KhongDauCon,cha.TenChuyenMuc_KhongDau as KhongDauCha,cm.TenChuyenMuc,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join nhan_baiviet as n_bv on BV.IDBaiViet=n_bv.IDBaiViet
						join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
						join nhan as tag on tag.IDTag = n_bv.IDTag
                        join urlhinhanh as url on url.IDHinh=HA.IDHinh
						join nguoidung as nd on nd.ID=BV.PhongVien
                        join chuyenmuc as cm on cm.IDChuyenMuc=BV.ChuyenMuc
                        join chuyenmuc as cha on cha.IDChuyenMuc=cm.ChuyenMucCha
	where	tag.TenTag = TagName
    limit limi offset offse ;
end;$$
DELIMITER ; 
call GetPostsWithTag('#nghiduong',10,0);
#-------------------------So luong bai viet theo tag

DELIMITER $$
USE `baodientu3n`$$
create procedure GetCommentsPost(in IDBaiViet varchar(15))
begin
	select  docgia.HoTen,docgia.AnhDaiDien,cmt.NgayBinhLuan,cmt.NoiDung
    from baiviet as BV join binhluan as cmt on cmt.BaiViet =BV.IDBaiViet
					   join nguoidung as docgia on docgia.ID=cmt.DocGia
	where BV.IDBaiViet=	IDBaiViet;			
end;$$
DELIMITER ; 
#-------------------------Lay bai viet theo tag
DELIMITER $$
USE `baodientu3n`$$
create procedure CountPostsWithTag(in TagName varchar(50))
begin
	select count(*) as SoLuongBaiViet
    from baiviet as BV join nhan_baiviet as n_bv on BV.IDBaiViet=n_bv.IDBaiViet
						join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
						join nhan as tag on tag.IDTag = n_bv.IDTag
                        join urlhinhanh as url on url.IDHinh=HA.IDHinh
						join nguoidung as nd on nd.ID=BV.PhongVien
                        join chuyenmuc as cm on cm.IDChuyenMuc=BV.ChuyenMuc
	where	tag.TenTag = TagName;
  
end;$$
DELIMITER ; 
#-------------------------check tag
DELIMITER $$
USE `baodientu3n`$$
create procedure CheckTag(in TagName varchar(50))
begin
	declare count1 int;
    set count1 =(select count(*) from nhan where TenTag=TagName);
    if(count1 >0)
    then 
		select TenTag from nhan where TenTag=TagName;
	end if;
    if(count1=0)
    then
    select TenTag from nhan where TenTag=TagName;
    end if;
end;$$
DELIMITER ; 
call CheckTag('#a');
#-------------------TANG VIEW BAI VIET
DELIMITER $$
USE `baodientu3n`$$
create procedure IncreaseView(in IDBV varchar(15))
begin
	update baiviet set LuotXem = LuotXem +1 where IDBaiViet =	IDBV;	
end;$$
DELIMITER ; 
#-------------------10 bai viet co VIEW cao nhat
DELIMITER $$
USE `baodientu3n`$$
create procedure GetHighestViewPost()
begin
	select distinct BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,cm.TenChuyenMuc_KhongDau as KhongDauCon,cha.TenChuyenMuc_KhongDau as KhongDauCha,cm.TenChuyenMuc,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join nhan_baiviet as n_bv on BV.IDBaiViet=n_bv.IDBaiViet
						join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
                        join urlhinhanh as url on url.IDHinh=HA.IDHinh
						join nguoidung as nd on nd.ID=BV.PhongVien
                        join chuyenmuc as cm on cm.IDChuyenMuc=BV.ChuyenMuc
                        join chuyenmuc as cha on cha.IDChuyenMuc=cm.ChuyenMucCha
    order by BV.LuotXem
    limit 10 ;
end;$$
DELIMITER ; 
#----------------------TIM BAI VIET
DELIMITER $$
USE `baodientu3n`$$
create procedure FindPost(in temp varchar(50), in limi int, in offse int)
begin
	select distinct BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,cm.TenChuyenMuc_KhongDau as KhongDauCon,cha.TenChuyenMuc_KhongDau as KhongDauCha,cm.TenChuyenMuc,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join nhan_baiviet as n_bv on BV.IDBaiViet=n_bv.IDBaiViet
						join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
                        join urlhinhanh as url on url.IDHinh=HA.IDHinh
						join nguoidung as nd on nd.ID=BV.PhongVien
                        join chuyenmuc as cm on cm.IDChuyenMuc=BV.ChuyenMuc
                        join chuyenmuc as cha on cha.IDChuyenMuc=cm.ChuyenMucCha
   where match(BV.TieuDe) against( temp)
   limit limi offset offse;
end;$$
DELIMITER ; 
call FindPost('ana',1,0);
#-----------------------------So luong bai viet dc tim thay theo tu khoa
DELIMITER $$
USE `baodientu3n`$$
create procedure NumberOfFindPost(in temp varchar(50))
begin
	select count(*) as Num
    from baiviet as BV
   where match(BV.TieuDe) against( temp);
end;$$
DELIMITER ; 
call NumberOfFindPost('nghi duong');
