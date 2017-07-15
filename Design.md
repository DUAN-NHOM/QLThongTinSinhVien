# Qui trình tiếp nhận và quản lí
<p><H3> Tiếp nhận </H3></p>
<p>
<li>Quy trình thực hiện và quản lí thông tin sinh viên là nhưng phương pháp tổ chức tiếp nhận, kiểm tra hồ sơ và cách thức lưu trữ, sao cho việc tiềm kiếm xác nhận một sinh viên một cách dễ dàng</li>
</p>
<p>
<li>Đầu năm học cán bộ phòng công tác học sinh sinh viên được phân công tiếp nhận hồ sơ sinh viên lớp DHCN1C</li>
</p>
<p>
<li>Thường xuyên bổ xung hồ sơ sinh viên , cập nhật kịp thời vào phần mềm quản lí hồ sơ sinh viên để phản ánh kịp thời những thay đổi về bản thân của sinh viên.</li>
</p>
<p>
<li>Các tài liệu liên quan đến sinh viên được bổ xung theo yêu cầu của phòng công tác sinh vên vào mỗi cuối học kỳ.</li>
</p>
<p>
<li>Sắp xếp hồ sơ theo đơn vị lớp, mã số sinh viên gồm đầy đủ các thông tin về sinh viên.</li>
</p>
<p><H3>3.	Lưu trữ và truy xuất hồ sơ</H3></p>
<p>Lưu trữ hồ sơ được thực hiện:Nhập thông tin về sinh viên theo đơn vị lớp, MSSV gồm các mục như STT, họ tên, MSSV,..... </p>
<p>Truy xuất hồ sơ: Tìm kiếm xác nhận một sinh viên được thực hiện dễ dàng nhờ tiện ích tìn kiếm. Biết được tên SV sẽ xác định được thông tin sinh viên và nhanh chóng tìm được hồ sơ lưu gốc</p>
<p><H3>II.	Sơ đồ phân rã chức năng (BFD)</H3></p>
<p><img src="https://scontent.fdad3-2.fna.fbcdn.net/v/t35.0-12/19204973_874267442726005_1808199394_o.png?oh=3b3795ea4c2faf7f15db201f46ec4047&oe=596C0B78"></p>
<p><H3>III.	Sơ đồ luồng dữ liệu (DFD)</H3></p>
<p>Mức 0</p>
<p><img src="https://scontent.fdad3-2.fna.fbcdn.net/v/t34.0-12/20068057_874267556059327_575737981_n.png?oh=00156b115aa4a041c6c466df06a4a749&oe=596C7FC7"></p>
<p>Mức 1</p>
<p><img src="https://scontent.fdad3-2.fna.fbcdn.net/v/t34.0-12/19964827_874406132712136_1225446312_n.png?oh=12f2440a2d4a27f3059233c3b1eb8e92&oe=596D4C1C"></p>
<p>Mức 2</p>
<p><img src="https://scontent.fdad3-2.fna.fbcdn.net/v/t34.0-12/20067832_874267566059326_1426637283_n.png?oh=90197821a2fe98f504e1081c68bea10b&oe=596D4D2D"></p>
<p>Mức 3</p>
<p><img src="https://scontent.fdad3-2.fna.fbcdn.net/v/t34.0-12/20067853_874407309378685_331056209_n.png?oh=054bebd267d7cad81c39d94705222ca0&oe=596C221D"></p>
<p><H3>	Sơ đồ thực thể - quan hệ (ERD)</H3></p>
<p><img src="https://scontent.fdad3-2.fna.fbcdn.net/v/t34.0-12/20117281_874420072710742_22962039_n.png?oh=debf60a48c4684e8e40e194d2566f509&oe=596C3BE6"></p>
<p><H3>Code xây dựng CSDL</H3></p>
CREATE DATABASE QLSV1C;

use QLSV1C

go
<p>create table DANGNHAP
(
	
	TenDN	nvarchar(20) not null,
	MK		nvarchar(20) not null,
	constraint pk5 primary key (TenDN,MK)
)</p>
<p>create table DIEM
(
	<p>MaSV nvarchar(7) not null FOREIGN KEY REFERENCES SINHVIEN(MaSV) on delete cascade on update cascade,</p>
	<p>MaMH int not null FOREIGN KEY REFERENCES MONHOC(MaMH) on delete cascade on update cascade,</p>
	<p>DiemCC decimal(10,2) not null,</p>
	<p>DiemTX decimal(10,2) not null,</p>
	<p>DiemGK decimal(10,2) not null,</p>
	<p>DiemThi decimal(10,2) not null,</p>
	<p>constraint PK1 primary key(MaSV,MaMH)</p>
)</p>
<p>create table SINHVIEN
(
	<p>MaSV nvarchar(7) primary key not null,</p>
	<p>HoSV nvarchar(20) not null,</p>
	<p>TenSV nvarchar(10) not null,</p>
	<p>NgaySinh date not null,</p>
	<p>GioiTinh bit not null,</p>
	<p>Nhom int not null</p>
)</p>
<p>create table THONGTINSV
(
	<p>MaSV nvarchar(7) FOREIGN KEY REFERENCES SINHVIEN(MaSV) on delete cascade on update cascade  NOT NULL,</p>
	<p>DiaChi nvarchar(50) not null,</p>
	<p>SoDT int ,</p>
	<p>Email varchar(30),</p>
	<p>FaceBook varchar(50),</p>
	<p>DoanVien bit not null,</p>
	<p>SoCMND int not null,</p>
	<p>DanToc nvarchar(20),</p>
	<p>constraint pk primary key (MaSV)</p>
)</p>
<p>create table MONHOC
(
	<p>MaMH int not null primary key,</p>
	<p>TenMH nvarchar (50) not null,</p>
	<p>SoTiet int not null</p>
)</p>
