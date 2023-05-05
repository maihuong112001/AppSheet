--1. #Học_AppSheet/ #Giao_diện_UX/ Ẩn hiện cột dữ liệu (hide or show column)
    ISNOTBLANK([Tên khách hàng])
--1.2 có thể là khi mà đăng nhập bằng email mhuong112001@gmail.com thì mới hiển thị .....
USEREMAIL()='mhuong112001@gmail.com'
--1.3. Chỉ hiện thị một cột có điều kiện show này trong dạng xem trong các form
CONTEXT("viewtype")="form"
--1.4.
not(in("view",
list("Khách hàng Form","Khách hàng 1","Khách hàng 2")
))
--1.5 
in("view",
list("Khách hàng Form","Khách hàng 1","Khách hàng 2")
)

--2. #Học_AppSheet/ #Giao_diện_UX/ Thiết lập Form - Tạo Form khảo sát thông tin
HYPERLINK("https://www.youtube.com/watch?v=xK-zTa3zrEU","Cảm ơn bạn đã dành thời gian để thực hiện khảo sát này!")

--3. #Học_AppSheet/ #Giao_diện_UX/ Định dạng màu không dùng format rules
--4. #Học_AppSheet/ #Giao_diện_UX/ Thay đổi kiểu xem tùy theo trên Web hoặc Điện thoại, máy tính bảng
CONTEXT("Host")="Browser"
--4.2
CONTEXT("Host")="Device"

--5. #Học_AppSheet/ #Giao_diện_UX/ Form - Tạo form lồng nhau (Nest Form)
--6. #Học_AppSheet/ #Giao_diện_UX/ Kiểu xem dạng bảng có chức năng lọc dữ liệu



