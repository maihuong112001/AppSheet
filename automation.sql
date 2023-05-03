-- 2. Tạo bản in file pdf (Phần 2: hành động kích hoạt Bot tạo file pdf)
[_THISROW_BEFORE].[Tạo bản in]<>[_THISROW_AFTER].[Tạo bản in]
--3.#Học_AppSheet/ #Automation/ Tạo bản in file pdf (Phần 3: Hành động mở file pdf- open pdf file)
CONCATENATE(
"Inpdf",
"-",
[IDDH],
"-",
[Tạo bản in]
)
-- 6.#Học_AppSheet/ #Automation/ Chuyển số tiền thành chữ
upper(mid(trim(
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),1,1),"1","một trăm","2","hai trăm","3","ba trăm","4","bốn trăm","5","năm trăm","6","sáu trăm","7","bảy trăm","8","tám trăm","9","chín trăm","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),2,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,1)="0","",if(mid(RIGHT("000000000000"&[Tổng tiền],12),3,1)="0","","lẻ")),"1","mười","2","hai mươi","3","ba mươi","4","bốn mươi","5","năm mươi","6","sáu mươi","7","bảy mươi","8","tám mươi","9","chín mươi","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),3,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,2)="00","","tỷ"),"1",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,2)="00","một tỷ",if(mid(RIGHT("000000000000"&[Tổng tiền],12),2,1)="0","một tỷ",if(mid(RIGHT("000000000000"&[Tổng tiền],12),2,1)="1","một tỷ","mốt tỷ"))),"2","hai tỷ","3","ba tỷ","4","bốn tỷ","5",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,2)="00","năm tỷ","lăm tỷ"),"6","sáu tỷ","7","bảy tỷ","8","tám tỷ","9","chín tỷ","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),4,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,3)="000","",if(mid(RIGHT("000000000000"&[Tổng tiền],12),5,2)="00","","không trăm")),"1","một trăm","2","hai trăm","3","ba trăm","4","bốn trăm","5","năm trăm","6","sáu trăm","7","bảy trăm","8","tám trăm","9","chín trăm","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),5,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,4)="0000","",if(mid(RIGHT("000000000000"&[Tổng tiền],12),6,1)="0","","lẻ")),"1","mười","2","hai mươi","3","ba mươi","4","bốn mươi","5","năm mươi","6","sáu mươi","7","bảy mươi","8","tám mươi","9","chín mươi","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),6,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,5)="00000","",if(mid(RIGHT("000000000000"&[Tổng tiền],12),4,2)="00","","triệu")),"1",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,5)="00000","một triệu",if(mid(RIGHT("000000000000"&[Tổng tiền],12),5,1)="0","một triệu",if(mid(RIGHT("000000000000"&[Tổng tiền],12),5,1)="1","một triệu","mốt triệu"))),"2","hai triệu","3","ba triệu","4","bốn triệu","5",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,5)="00000","năm triệu","lăm triệu"),"6","sáu triệu","7","bảy triệu","8","tám triệu","9","chín triệu","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),7,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,6)="000000","",if(mid(RIGHT("000000000000"&[Tổng tiền],12),8,2)="00","","không trăm")),"1","một trăm","2","hai trăm","3","ba trăm","4","bốn trăm","5","năm trăm","6","sáu trăm","7","bảy trăm","8","tám trăm","9","chín trăm","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),8,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,7)="0000000","",if(mid(RIGHT("000000000000"&[Tổng tiền],12),9,1)="0","","lẻ")),"1","mười","2","hai mươi","3","ba mươi","4","bốn mươi","5","năm mươi","6","sáu mươi","7","bảy mươi","8","tám mươi","9","chín mươi","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),9,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,8)="00000000","",if(mid(RIGHT("000000000000"&[Tổng tiền],12),7,2)="00","","ngàn")),"1",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,8)="00000000","một ngàn",if(mid(RIGHT("000000000000"&[Tổng tiền],12),8,1)="0","một ngàn",if(mid(RIGHT("000000000000"&[Tổng tiền],12),8,1)="1","một ngàn","mốt ngàn"))),"2","hai ngàn","3","ba ngàn","4","bốn ngàn","5",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,8)="00000000","năm ngàn","lăm ngàn"),"6","sáu ngàn","7","bảy ngàn","8","tám ngàn","9","chín ngàn","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),10,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,9)="000000000","",if(mid(RIGHT("000000000000"&[Tổng tiền],12),11,2)="00","","không trăm")),"1","một trăm","2","hai trăm","3","ba trăm","4","bốn trăm","5","năm trăm","6","sáu trăm","7","bảy trăm","8","tám trăm","9","chín trăm","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),11,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,10)="0000000000","",if(mid(RIGHT("000000000000"&[Tổng tiền],12),12,1)="0","","lẻ")),"1","mười","2","hai mươi","3","ba mươi","4","bốn mươi","5","năm mươi","6","sáu mươi","7","bảy mươi","8","tám mươi","9","chín mươi","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),12,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,11)="00000000000","","đồng"),"1",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,11)="00000000000","một đồng",if(mid(RIGHT("000000000000"&[Tổng tiền],12),11,1)="0","một đồng",if(mid(RIGHT("000000000000"&[Tổng tiền],12),11,1)="1","một đồng","mốt đồng"))),"2","hai đồng","3","ba đồng","4","bốn đồng","5",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,11)="00000000000","năm đồng","lăm đồng"),"6","sáu đồng","7","bảy đồng","8","tám đồng","9","chín đồng","")


),1,1
))


&

mid(trim(
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),1,1),"1","một trăm","2","hai trăm","3","ba trăm","4","bốn trăm","5","năm trăm","6","sáu trăm","7","bảy trăm","8","tám trăm","9","chín trăm","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),2,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,1)="0","",if(mid(RIGHT("000000000000"&[Tổng tiền],12),3,1)="0","","lẻ")),"1","mười","2","hai mươi","3","ba mươi","4","bốn mươi","5","năm mươi","6","sáu mươi","7","bảy mươi","8","tám mươi","9","chín mươi","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),3,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,2)="00","","tỷ"),"1",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,2)="00","một tỷ",if(mid(RIGHT("000000000000"&[Tổng tiền],12),2,1)="0","một tỷ",if(mid(RIGHT("000000000000"&[Tổng tiền],12),2,1)="1","một tỷ","mốt tỷ"))),"2","hai tỷ","3","ba tỷ","4","bốn tỷ","5",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,2)="00","năm tỷ","lăm tỷ"),"6","sáu tỷ","7","bảy tỷ","8","tám tỷ","9","chín tỷ","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),4,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,3)="000","",if(mid(RIGHT("000000000000"&[Tổng tiền],12),5,2)="00","","không trăm")),"1","một trăm","2","hai trăm","3","ba trăm","4","bốn trăm","5","năm trăm","6","sáu trăm","7","bảy trăm","8","tám trăm","9","chín trăm","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),5,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,4)="0000","",if(mid(RIGHT("000000000000"&[Tổng tiền],12),6,1)="0","","lẻ")),"1","mười","2","hai mươi","3","ba mươi","4","bốn mươi","5","năm mươi","6","sáu mươi","7","bảy mươi","8","tám mươi","9","chín mươi","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),6,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,5)="00000","",if(mid(RIGHT("000000000000"&[Tổng tiền],12),4,2)="00","","triệu")),"1",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,5)="00000","một triệu",if(mid(RIGHT("000000000000"&[Tổng tiền],12),5,1)="0","một triệu",if(mid(RIGHT("000000000000"&[Tổng tiền],12),5,1)="1","một triệu","mốt triệu"))),"2","hai triệu","3","ba triệu","4","bốn triệu","5",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,5)="00000","năm triệu","lăm triệu"),"6","sáu triệu","7","bảy triệu","8","tám triệu","9","chín triệu","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),7,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,6)="000000","",if(mid(RIGHT("000000000000"&[Tổng tiền],12),8,2)="00","","không trăm")),"1","một trăm","2","hai trăm","3","ba trăm","4","bốn trăm","5","năm trăm","6","sáu trăm","7","bảy trăm","8","tám trăm","9","chín trăm","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),8,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,7)="0000000","",if(mid(RIGHT("000000000000"&[Tổng tiền],12),9,1)="0","","lẻ")),"1","mười","2","hai mươi","3","ba mươi","4","bốn mươi","5","năm mươi","6","sáu mươi","7","bảy mươi","8","tám mươi","9","chín mươi","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),9,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,8)="00000000","",if(mid(RIGHT("000000000000"&[Tổng tiền],12),7,2)="00","","ngàn")),"1",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,8)="00000000","một ngàn",if(mid(RIGHT("000000000000"&[Tổng tiền],12),8,1)="0","một ngàn",if(mid(RIGHT("000000000000"&[Tổng tiền],12),8,1)="1","một ngàn","mốt ngàn"))),"2","hai ngàn","3","ba ngàn","4","bốn ngàn","5",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,8)="00000000","năm ngàn","lăm ngàn"),"6","sáu ngàn","7","bảy ngàn","8","tám ngàn","9","chín ngàn","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),10,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,9)="000000000","",if(mid(RIGHT("000000000000"&[Tổng tiền],12),11,2)="00","","không trăm")),"1","một trăm","2","hai trăm","3","ba trăm","4","bốn trăm","5","năm trăm","6","sáu trăm","7","bảy trăm","8","tám trăm","9","chín trăm","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),11,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,10)="0000000000","",if(mid(RIGHT("000000000000"&[Tổng tiền],12),12,1)="0","","lẻ")),"1","mười","2","hai mươi","3","ba mươi","4","bốn mươi","5","năm mươi","6","sáu mươi","7","bảy mươi","8","tám mươi","9","chín mươi","")
&" "&
SWITCH(mid(RIGHT("000000000000"&[Tổng tiền],12),12,1),"0",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,11)="00000000000","","đồng"),"1",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,11)="00000000000","một đồng",if(mid(RIGHT("000000000000"&[Tổng tiền],12),11,1)="0","một đồng",if(mid(RIGHT("000000000000"&[Tổng tiền],12),11,1)="1","một đồng","mốt đồng"))),"2","hai đồng","3","ba đồng","4","bốn đồng","5",if(mid(RIGHT("000000000000"&[Tổng tiền],12),1,11)="00000000000","năm đồng","lăm đồng"),"6","sáu đồng","7","bảy đồng","8","tám đồng","9","chín đồng","")


),2,1000
)
-- 8. #Học_AppSheet/ #Automation/ Notifications - gửi thông báo đến các Users
Lúc <<[Dấu thời gian]>>  có đơn hàng mới <<[IDDH]>> Thêm bới <<[Người cập nhật]>>
-- 8.1.
[_THISROW_BEFORE].[Tình Trạng]<>[_THISROW_AFTER].[Tình Trạng]
-- 8.3. 
sum(select([Chi tiết đơn hàng][Thành tiền],true))
-- 9. #Học_AppSheet/ #Automation/ Đánh số thứ tự cho bảng ở bản in PDF
<<Start: [Chi tiết đơn hàng:]>><<COUNT(SPLIT(LEFT(CONCATENATE([Chi tiết đơn hàng:][_ROWNUMBER]),FIND(TEXT([_ROWNUMBER]),CONCATENATE([Chi tiết đơn hàng:][_ROWNUMBER]))+LEN(TEXT([_ROWNUMBER]))-1),” , “))>>
-- ooo
https://chat.googleapis.com/v1/spaces/AAAAiwtjklc/messages?key=AIzaSyDdI0hCZtE6vySjMm-WEfRq3CPzqKqqsHI&token=b7JGh9WuuQMbnUqpUz72nCJViTB4HcC-vV5LY1fEjNk%3D
-- 14.1#Học_AppSheet/ #Automation/ Chatbot gửi thông báo từ AppSheet đến Telegram
https://api.telegram.org/bot6202026913:AAF25_Maa_EWvsIHeRsXtY_1JdJ5dQOhlPU/sendMessage?chat_id=-995368456&text=jjjjj
-- 14.2#Học_AppSheet/ #Automation/ Chatbot gửi thông báo từ AppSheet đến Telegram bằng json
https://api.telegram.org/bot6202026913:AAF25_Maa_EWvsIHeRsXtY_1JdJ5dQOhlPU/sendMessage?chat_id=-995368456&json=
{"text":
"Thông báo vừa có một đơn hàng mới /n
Số thứ tự dòng :<<[_rownumber]>>\n
Cột id: <<[IDDH]>>\n
Cột tên:<<[Khách hàng]>>/n
"}

{"text":
"Thông báo vừa chỉnh sửa một đơn hàng /n
-Chỉnh sửa trên dòng : \n
+Số thứ tự dòng :<<[_rownumber]>> \n
+Cột id: <<[IDDH]>> \n
-Nội dung chỉnh sửa:\n
<<if([_thisrow_before].[Khách hàng]=[_thisrow_after].[Khách hàng],"","-Cột bị thay đổi là cột Khách hàng, Giá trị trước khi bị thay đổi là :"&[_thisrow_before].[Khách hàng]&";Giá trị sau khi thay đổi là:"&[_thisrow_after].[Khách hàng]&"\n")>>
"}
-- 15.#Học_AppSheet/ #Automation/ Định dạng thông báo từ AppSheet đến Telegram với HTML
https://api.telegram.org/bot6202026913:AAF25_Maa_EWvsIHeRsXtY_1JdJ5dQOhlPU/sendMessage?chat_id=-995368456&parse_mode=HTML&json=
{"text":
"
<b>Báo cáo</b> /n
<i>Thời gian: :<<now()>> </i>\n
<u>Người gửi: <<useremail()>></u>\n
<a href='<<[Tên file]>>'>Tài liệu dính kèm</a>/n
"}



