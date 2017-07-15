create database QLSV1C
use QLSV1C
go
create table SINHVIEN
(
	MaSV nvarchar(7) primary key not null,
	HoSV nvarchar(20) not null,
	TenSV nvarchar(10) not null,
	NgaySinh date not null,
	GioiTinh bit not null,
	Nhom int not null
)

create table THONGTINSV
(

	MaSV nvarchar(7) FOREIGN KEY REFERENCES SINHVIEN(MaSV) on delete cascade on update cascade  NOT NULL,
	DiaChi nvarchar(50) not null,
	SoDT int ,
	Email varchar(30),
	FaceBook varchar(50),
	DoanVien bit not null,
	SoCMND int not null,
	DanToc nvarchar(20),
	constraint pk primary key (MaSV)

)

create table MONHOC
(

	MaMH int not null primary key,
	TenMH nvarchar (50) not null,
	SoTiet int not null

)

create table DIEM
(

	MaSV nvarchar(7) not null FOREIGN KEY REFERENCES SINHVIEN(MaSV) on delete cascade on update cascade,
	MaMH int not null FOREIGN KEY REFERENCES MONHOC(MaMH) on delete cascade on update cascade,
	DiemCC decimal(10,2) not null,
	DiemTX decimal(10,2) not null,
	DiemGK decimal(10,2) not null,
	DiemThi decimal(10,2) not null,
	constraint PK1 primary key(MaSV,MaMH)
)

create table DANGNHAP
(
	
	TenDN	nvarchar(20) not null,
	MK		nvarchar(20) not null,
	constraint pk5 primary key (TenDN,MK)
)