create database BaoDienTu;
use BaoDienTu;
go
create table PhanHeNguoiDung
(	IDPhanHe nvarchar(10) not null primary key,
	TenPhanHe nvarchar(50) not null
	);
create table TaiKhoanThe
(	SKT nvarchar(15) not null primary key,
	ChuSoHuu int,
	SoDu money
	);
create table NguoiDung
( ID int identity(1,1) not null primary key,
	UserName nvarchar(50) not null unique,
	Password nvarchar(50) not null,
	HoTen nvarchar(50),
	GioiTinh nvarchar(10),
	NgaySinh date,
	Email nvarchar(50) not null unique,
	SDT nvarchar(15) not null unique,
	PhanHe nvarchar(10),
	TKThe nvarchar(15) ,
	NgayDangKy datetime,
	NgayHetHan datetime,
	TinhTrang nvarchar(20)
	 );

create table ChuyenMuc -- category
( IDChuyenMuc nvarchar(10) not null primary key,
	TenChuyenMuc nvarchar(50) not null,
	TenChuyenMuc_KhongDau nvarchar(50),
	ChuyenMucCha nvarchar(10)
	);
create table Nhan --tag
( IDTag nvarchar(10) not null primary key,
  TenTag nvarchar(20) not null
  );

create table BaiViet
( IDBaiViet nvarchar(15) not null primary key,
  TieuDe nvarchar(255) not null,
  TieuDe_KhongDau nvarchar(255),
  ChuyenMuc nvarchar(10),
  NgayDang datetime,
  AnhDaiDien image,
  NoiDung text,
  LuotXem int,
  PhongVien int,
  BienTapVien int,
  DaDuyet int,
  TinNoiBat int
  );
create table urlHinhAnh
( IDHinh int identity(1,1) primary key,
  urllinkHinh nvarchar(300) unique,
  HinhAnh image
  );
create table BinhLuan
( IDBinhLuan int identity(1,1),
  BaiViet nvarchar(15) not null,
  DocGia int not null,
  NoiDung text,
  TinhTrang int, -- 1 : an, 0 : hien thi
   primary key(IDBinhLuan,BaiViet,DocGia)
   );
  
create table Nhan_BaiViet
(  IDBaiViet nvarchar(15) not null,
	IDTag nvarchar(10) not null,
	primary key(IDBaiViet,IDTag)
	);
create table BaiViet_HinhAnh
( IDBaiViet nvarchar(15),
  IDHinh int,
  primary key(IDBaiViet,IDHinh)
  );

----------------------------	KHOA NGOAI	

alter table ChuyenMuc
add constraint Fk_CM_CM	
foreign key (ChuyenMucCha)
references ChuyenMuc(IDChuyenMuc)

alter table NguoiDung
add constraint Fk_user_PH	
foreign key (PhanHe)
references PhanHeNguoiDung(IDPhanHe)

alter table TaiKhoanThe
add constraint Fk_The_user
foreign key (ChuSoHuu)
references NguoiDung(ID)

alter table BaiViet
add constraint Fk_BV_PV
foreign key (PhongVien)
references NguoiDung(ID)

alter table BaiViet
add constraint Fk_BV_BTV
foreign key (BienTapVien)
references NguoiDung(ID)

alter table BaiViet
add constraint Fk_BV_CM
foreign key (ChuyenMuc)
references ChuyenMuc(IDChuyenMuc)

alter table Nhan_BaiViet
add constraint Fk_BV_Nhan
foreign key (IDBaiViet)
references BaiViet(IDBaiViet)

alter table Nhan_BaiViet
add constraint Fk_Nhan
foreign key (IDTag)
references Nhan(IDTag)

alter table BaiViet_HinhAnh
add constraint Fk_BV
foreign key (IDBaiViet)
references BaiViet(IDBaiViet)

alter table BaiViet_HinhAnh
add constraint Fk_image
foreign key (IDHinh)
references urlHinhAnh(IDHinh)

alter table BinhLuan
add constraint Fk_CMT_BV
foreign key (BaiViet)
references BaiViet(IDBaiViet)

alter table BinhLuan
add constraint Fk_CMT_DocGia
foreign key (DocGia)
references NguoiDung(ID)






select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS where CONSTRAINT_TYPE='FOREIGN KEY'

alter table ChuyenMuc drop constraint Fk_CM_CM	;
alter table NguoiDung drop constraint Fk_user_PH;
alter table TaiKhoanThe drop constraint Fk_The_user;
