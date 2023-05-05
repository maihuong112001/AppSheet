-- 2. #Học_Appsheet/ #Công_thức_Expressions/ Cách sử dụng Linktoform
Linktoform("Chi tiết đơn hàng_Form",
"IDDH",[_THISROW].[IDDH]
)
--3#Học_Appsheet/ #Công_thức_Expressions/ List - Hàm select (phần 4)
select(Data[Doanh thu],[Nhà phân phối]="viettel")
--3.2
if([Nhà phân phối]="viettel",
select(Data[Doanh thu],[Nhà phân phối]="viettel"),
List()
)
--3.3.
if([Nhà phân phối]="viettel",
sum(select(Data[Doanh thu],[Nhà phân phối]="viettel")),
""
)--->Tính tổng doanh thu của Nhà phân phối Viettel
--3.4
select(
    Data[Doanh thu],
    and(
    [Nhà phân phối]="viettel",
    [Doanh thu]>100
    )
)--->Lựa chọn nhà phân phối Viettel có Doanh thu lớn hơn 100
--3.5
elect(
    Data[Nhà phân phối],
    true
)--->Lựa chọn tất cả các nha phân phối trùng nhau vẫn lấy
--3.6
elect(
    Data[Nhà phân phối],
    true,true
)--->Lựa chọn tất cả các nhf phân phối và loại  bỏ các giá trị trùng lặp
--4. #Học_Appsheet/ #Công_thức_Expressions/ List - Công thức dạng List (phần 3)
--5. #Học_Appsheet/ #Công_thức_Expressions/ Matth - Công thức dạng tính toán (phần 2)
--6. #Học_Appsheet/ #Công_thức_Expressions/ Tổng quan về công thức trong Appsheet (phần 1)



