CREATE database BaoDienTu3N;
use BaoDienTu3N;
create table PhanHeNguoiDung
(	IDPhanHe varchar(10) not null primary key,
	TenPhanHe varchar(50) not null
	);
create table TaiKhoanThe
(	SKT varchar(15) not null primary key,
	ChuSoHuu int,
	SoDu FLOAT
	);
create table NguoiDung
( ID INT  not null primary KEY auto_increment,
	UserName varchar(50) not null unique,
	Password varchar(50) not null,
	HoTen varchar(50),
	GioiTinh varchar(10),
	NgaySinh date,
	Email varchar(50) not null unique,
	SDT varchar(15) not null unique,
	PhanHe varchar(10),
	NgayDangKy datetime,
	NgayHetHan datetime,
	TinhTrang varchar(20),
    ButDanh varchar(50),
    AnhDaiDien varchar(255)
	 );

create table ChuyenMuc #category
( IDChuyenMuc varchar(10) not null primary key,
	TenChuyenMuc varchar(50) not null,
	TenChuyenMuc_KhongDau varchar(50),
	ChuyenMucCha varchar(10)
	);
    
create table Nhan #tag
( IDTag varchar(10) not null primary key,
  TenTag varchar(20) not null
  );
  create table PhanHang
  ( IDPhanHang int not null primary key,
	TenPhanHang varchar(20)
    );
create table TinhTrangBaiViet
( IDTinhTrang int not null primary key,
  TenTinhTrang varchar(50)
  );
create table BaiViet
( IDBaiViet varchar(15) not null primary key,
  TieuDe varchar(255) not null,
  TieuDe_KhongDau varchar(255),
  ChuyenMuc varchar(10),
  NgayDang datetime,
  NoiDung text,
  LuotXem int,
  PhongVien int,
  BienTapVien int,
  TinhTrang int,
  TinNoiBat int,
  NoiDungTomTat varchar(500),
  PhanHang int
  );
create table urlHinhAnh
( IDHinh INT  primary KEY auto_increment,
  urllinkHinh VARCHAR(255) not null UNIQUE
  );
create table BinhLuan
( IDBinhLuan int auto_increment,
  BaiViet varchar(15) not null,
  DocGia int not null,
  NoiDung text,
  TinhTrang INT, # 1 : an, 0 : hien thi
   BinhLuanGoc int,
   NgayBinhLuan date,
   primary key(IDBinhLuan,BaiViet,DocGia)
   );
  
create table Nhan_BaiViet
(  IDBaiViet varchar(15) not null,
	IDTag varchar(10) not null,
	primary key(IDBaiViet,IDTag)
	);
create table BaiViet_HinhAnh
( IDBaiViet varchar(15),
  IDHinh int,
  AnhDaiDien int,#--1 là ảnh đại diện,0 là ảnh thường
  primary key(IDBaiViet,IDHinh)
  );
  
----------------------------	KHOA NGOAI	
alter table binhluan
add constraint FK_BL_BL
foreign key (BinhLuanGoc)
references BinhLuan(IDBinhLuan);

alter table baiviet
add constraint FK_BV_PhanHang
foreign key (PhanHang)
references PhanHang(IDPhanHang);

alter table baiviet
add constraint FK_BV_TT
foreign key(TinhTrang)
references Tinhtrangbaiviet(IDTinhTrang);

alter table ChuyenMuc
add constraint Fk_CM_CM	
foreign key (ChuyenMucCha)
references ChuyenMuc(IDChuyenMuc);

alter table NguoiDung
add constraint Fk_user_PH	
foreign key (PhanHe)
references PhanHeNguoiDung(IDPhanHe);

alter table TaiKhoanThe
add constraint Fk_The_user
foreign key (ChuSoHuu)
references NguoiDung(ID);

alter table BaiViet
add constraint Fk_BV_PV
foreign key (PhongVien)
references NguoiDung(ID);

alter table BaiViet
add constraint Fk_BV_BTV
foreign key (BienTapVien)
references NguoiDung(ID);

alter table BaiViet
add constraint Fk_BV_CM
foreign key (ChuyenMuc)
references ChuyenMuc(IDChuyenMuc);


alter table Nhan_BaiViet
add constraint Fk_BV_Nhan
foreign key (IDBaiViet)
references BaiViet(IDBaiViet);

alter table Nhan_BaiViet
add constraint Fk_Nhan
foreign key (IDTag)
references Nhan(IDTag);

alter table BaiViet_HinhAnh
add constraint Fk_BV
foreign key (IDBaiViet)
references BaiViet(IDBaiViet);

alter table BaiViet_HinhAnh
add constraint Fk_image
foreign key (IDHinh)
references urlHinhAnh(IDHinh);

alter table BinhLuan
add constraint Fk_CMT_BV
foreign key (BaiViet)
references BaiViet(IDBaiViet);

alter table BinhLuan
add constraint Fk_CMT_DocGia
foreign key (DocGia)
references NguoiDung(ID);








select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS where CONSTRAINT_TYPE='FOREIGN KEY';
#-------------------4/6
alter table baiviet add NgayViet date;
create table DuyetBai
( IDDuyet int auto_increment,
  IDBTV int,
  IDBaiViet varchar(15),
  NgayDuyet date,
  primary key(IDDuyet));
  create table TuChoiBai
( IDTuChoi int auto_increment,
  IDBTV int,
  IDBaiViet varchar(15),
  NgayTuChoi date,
  NguyenNhanTuChoi text,
  primary key(IDTuChoi));
#------------------7/6
alter table baiviet add SuDung int;
SET SQL_SAFE_UPDATES = 0;
update baiviet set SuDUng =1 where SuDung is null;
#------------------9/6
SET SQL_SAFE_UPDATES = 0;
create table BienTapVien_ChuyenMuc
( IDBienTapVien int,
  ChuyenMuc varchar(10),
  primary key(IDBienTapVien,ChuyenMuc));
#------------------10/6
alter table binhluan drop TinhTrang;
alter table binhluan modify NgayBinhLuan datetime;
#----------------function luot thich
/*DELIMITER $$
USE `baodientu3n`$$
create function LikesOfComment( IDComment int)
returns integer DETERMINISTIC
begin
	declare Numberoflikes int;
    set Numberoflikes=(select count(*) from LikeBinhLuan where IDBinhLuan=IDComment);
    return Numberoflikes;
end;$$
DELIMITER ;
create table LikeBinhLuan
( IDBinhLuan int,
  IDUserLike int,
  primary key(IDBinhLuan,IDUserLike));*/