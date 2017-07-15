# Tài Liệu cho nhà phát triển
-Tài liệu hướng dẫn phát triển mẫu của nhóm gồm có nhiều bài viết, nhiều câu hỏi và hướng dẫn.
<p> B1: Tạo 1 project và thiết kế project theo mô hình 3 lớp (BLL,DAL,GUI), có DAL để liên kết với các Bảng trong CSDL</p>
<p><img src="https://scontent.fdad3-2.fna.fbcdn.net/v/t34.0-12/20136345_648480192021814_1296747084_n.png?oh=44cd429bce7178dae4f2b436b8cc55f6&oe=596C2ADA"></p>
<p> B2: Tạo class trong BLL để liên kết với các bảng trong csdl</p>
<p><img src="https://scontent.fdad3-2.fna.fbcdn.net/v/t34.0-12/20134606_648480212021812_2045779312_n.png?oh=4159b2d91d2b6240fe31c1e9dd07e36e&oe=596C8145"></p>
<p> B3: Tạo class trong DAL. 
Trong DAL có các class chứa các chức năng kết nối với csdl</p>
<p><img src="https://scontent.fsgn2-1.fna.fbcdn.net/v/t34.0-12/20121114_852590174890844_752063993_n.png?oh=6de3e301dbd0b1589f8f5c655f7da190&oe=596B5A79"></p>
<p> B4: Tạo class trong GUI. 
Trong GUI có các class chứa các chức năng thực thi truy vấn như thêm, sửa, xóa, cập nhật vào csdl.</p>
Ở đây câu lệnh truy vấn được đặt bên DAL và ta chỉ việc gọi lại bên GUI
<p><img src="https://scontent.fdad3-2.fna.fbcdn.net/v/t34.0-12/20067907_648483015354865_1388777926_n.png?oh=fe5fad201ac663bbedb29b0939ac3476&oe=596C6E7D"></p>
<p><img src="https://scontent.fdad3-2.fna.fbcdn.net/v/t35.0-12/20138052_648483012021532_391055685_o.png?oh=fee12519cf0da0a01c7223090f9b5035&oe=596C7ACD"></p>
<p> -Làm thế nào đặt chế độ chỉ đọc khi tích radial button?</p>

<p> -Trả lời: Ta làm như sau:</p>
<p>- Ta viết code trực tiếp cho radial button

         txtNgayHH.ReadOnly = true;
         
- Trong đó: 
    txtNgayHH là textbox mà bạn muốn đặt chế độ chỉ đọc</p>
    <p><img src="https://scontent.fsgn2-1.fna.fbcdn.net/v/t34.0-12/20136698_852612421555286_379781211_n.png?oh=bf0db357b830b7b68a564fded8318a00&oe=596C92AB"></p>
