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
call GetCategory
#-----------------------------------------Lay danh sach bai viet moi nhat theo chuyen muc cha
DELIMITER $$
USE `baodientu3n`$$
create procedure GetNewPostsWithMainCategory(in TenChuyenMuc_KhongDau varchar(50))
begin
	select BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,BV.ChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc_KhongDau as KhongDauCon,CMCha.TenChuyenMuc_KhongDau as KhongDauCha,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and CMCha.TenChuyenMuc_KhongDau=TenChuyenMuc_KhongDau  and  datediff(date(now()),date(BV.NgayDang)) <=10
    order by BV.NgayDang desc;
end;$$
DELIMITER ; 
call GetNewPostsWithMainCategory('kinhdoanh')
#-----------------------------------------Lay danh sach bai viet moi nhat theo chuyen muc con
DELIMITER $$
USE `baodientu3n`$$
create procedure GetNewPostsWithCategory(in TenChuyenMuc_KhongDau varchar(50))
begin
	select BV.IDBaiViet,BV.TieuDe,BV.TieuDe_KhongDau,date(BV.NgayDang) as NgayDang,nd.ButDanh,BV.ChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc,CMCon.TenChuyenMuc_KhongDau as KhongDauCon,CMCha.TenChuyenMuc_KhongDau as KhongDauCha,url.urllinkHinh,BV.NoiDungTomTat
    from baiviet as BV join baiviet_hinhanh as HA on BV.IDBaiViet =HA.IDBaiViet
								join chuyenmuc as CMCon on CMCon.IDChuyenMuc= BV.ChuyenMuc
                                join chuyenmuc as CMCha on CMCha.IDCHuyenMuc=CMCon.ChuyenMucCha
								join urlhinhanh as url on url.IDHinh=HA.IDHinh
                                join nguoidung as nd on nd.ID=BV.PhongVien
	where BV.TinhTrang=2 and CMcon.TenChuyenMuc_KhongDau=TenChuyenMuc_KhongDau and  datediff(date(now()),date(BV.NgayDang)) <=10
    order by BV.NgayDang desc;
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
	select CMCon.TenChuyenMuc,CMCon.TenChuyenMuc_KhongDau,CMCha.TenChuyenMuc as TenCha,CMCha.TenChuyenMuc_KhongDau  as TenKhongDau_Cha from chuyenmuc as CMCon join chuyenmuc as CMCha on CMCon.ChuyenMucCha=CMCha.IDCHuyenMuc
    where CMCon.TenChuyenMuc_KhongDau=TenChuyenMuc_KhongDau;
    end if;
	if(temp is null)
    then
    select CM.TenChuyenMuc,CM.TenChuyenMuc_KhongDau  from chuyenmuc as CM where CM.tenchuyenmuc_khongdau=TenChuyenMuc_KhongDau;
    end if;
end;$$
DELIMITER ;
call GetNewPostsWithCategory('taichinh')
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

