Category.create!([
  {name: "Entertainment"},
  {name: "Learning"},
  {name: "Everything Else"}
])
Region.create!([
  {name: "Ho Chi Minh"},
  {name: "Ha Noi"},
  {name: "Binh Thuan"},
  {name: "Da Nang"},
  {name: "Lam Dong"}
])
User.create!([
  {full_name: "TAM CHau", email: "chauviettam@gmail.com", password_digest: "$2a$10$kV5OMWeFwfzu2wCFpLbre.5No6.tbmcjaybBQ6UnI1dy/uQG.V/dK"},
  {full_name: "Test", email: "test@mail.com", password_digest: "$2a$10$0GFiobCc/YMfWT/o7wjQQOtnZjuSGd0i3XYnPM9XWVb.KSCKQN9be"},
  {full_name: "test2", email: "test2@mail.com", password_digest: "$2a$10$01uAH3iISK/AX3C3.JalV.hjsE6k/aUjXD2zyuPDve4OkIjJW/xqu"},
  {full_name: "test3", email: "test3@mail.com", password_digest: "$2a$10$RMAHRf.mpgjD7Wto7BChQ./lw4UqYeWCrqqnc8QznTTn003azQO8."}
])
Venue.create!([
  {name: "Da Lat City", full_address: "Ngoc Phat Hotel 10 Hồ Tùng Mậu Phường 3, Thành phố Đà Lạt, Lâm Đồng, Thành Phố Đà Lạt, Lâm Đồng", region_id: 5},
  {name: "Sân vận động quân khu 7", full_address: "202 Hoàng Văn Thụ, Quận Tân Bình, Hồ Chí Minh", region_id: 1},
  {name: "Gap Yolo Hanoi", full_address: "1B Quốc Tử Giám, Quận Đống Đa, Hà Nội", region_id: 2},
  {name: "Son Tra", full_address: "Son Tra District", region_id: 4},
  {name: "Tan Son Nhat", full_address: "District Tan Binh", region_id: 1},
  {name: "Đồi Dương", full_address: "Biển Đồi Dương, Phan Thiết", region_id: 3}
])
Event.create!([
  {starts_at: "2018-12-24 00:00:00", ends_at: "2018-12-24 00:00:00", venue_id: 2, hero_image_url: "http://www.clubinkorea.com/wp-content/uploads/2014/12/12.25-Merry-Christmas-Party-@-Busan-Club-Fix-1170x659.jpg", extended_html_description: "         <p>  <span style=\"background-color:rgb(255, 255, 255); color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif; font-size:14px\">* Bạn một m&igrave;nh, bạn FA ?</span><br />  <span style=\"background-color:rgb(255, 255, 255); color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif; font-size:14px\">* Bạn chưa biết l&agrave;m g&igrave; v&agrave;o tối thứ năm cuối th&aacute;ng 12 n&agrave;y ?</span><br />  <span style=\"background-color:rgb(255, 255, 255); color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif; font-size:14px\">* Đ&oacute; l&agrave; đ&ecirc;m gi&aacute;ng sinh, bạn muốn một buổi tối vui vẻ ?</span><br />  <span style=\"background-color:rgb(255, 255, 255); color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif; font-size:14px\">* Bạn muốn nghe những b&agrave;i h&aacute;t hay l&atilde;ng mạn mộc mạc b&ecirc;n c&acirc;y đ&agrave;n guitar ?</span><br />  <span style=\"background-color:rgb(255, 255, 255); color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif; font-size:14px\">* Buffet với tr&agrave;, b&aacute;nh kẹo ngon, tr&aacute;i c&acirc;y tươi đa dạng, phong ph&uacute; với những người bạn mới th&uacute; vị ?</span><br />  <span style=\"background-color:rgb(255, 255, 255); color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif; font-size:14px\">*Được nhận những m&oacute;n qu&agrave; bất ngờ từ &ocirc;ng gi&agrave; Noel :D ?</span><br />  <br />  <span style=\"background-color:rgb(255, 255, 255); color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif; font-size:14px\">Nếu bạn cảm thấy thoải m&aacute;i, hứng khởi về những điều tr&ecirc;n bạn h&atilde;y đến với chương tr&igrave;nh Merry Christmas Never Alone do Gap Yolo Hanoi tổ chức tại 1B Quốc Tử Gi&aacute;m, ngay trung t&acirc;m H&agrave; Nội, tr&ecirc;n tầng 5 ngắm phố phường đ&ocirc;ng đ&uacute;c, nhộn nhịp qua lại v&agrave; bầu trời thanh b&igrave;nh H&agrave; Nội.</span><br />  <br />  <span style=\"background-color:rgb(255, 255, 255); color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif; font-size:14px\">Gi&aacute; v&eacute; chỉ 99K/ v&eacute;/ người (đ&atilde; bao gồm v&eacute; giữ xe)</span><br />  <br />  <span style=\"background-color:rgb(255, 255, 255); color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif; font-size:14px\">Ngo&agrave;i ra c&ograve;n nhiều Voucher tặng bạn v&ocirc; c&ugrave;ng hấp dẫn :D</span></p>                        </div>                        ", category_id: 1, name: "Merry Christmas Never Alone", publish: true, user_id: nil, admin_list: [1]},
  {starts_at: "2018-03-11 00:00:00", ends_at: "2018-03-13 00:00:00", venue_id: 1, hero_image_url: "http://znews-photo-td.zadn.vn/w1024/Uploaded/qfrqy/2015_10_17/Duaxe_zing_2.jpg", extended_html_description: "    <p style=\"text-align:center\"><span style=\"font-size:20px\">VIỆT NAM THỬ THÁCH CHIẾN THẮNG 2018</span></p>    <p style=\"text-align:center\"><span style=\"font-size:20px\">Giải đua xe đạp địa hình 11-13/03/2018</span></p>    <p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Việt Nam Th</span>ử Thách Chiến Thắng là giải đua xe đạp địa hình được tổ chức như một sự tri ân, và cũng nhằm thỏa mãn lòng đam mẹ của những người yêu xe đạp địa hình nói chung, cũng như cho những ai đóng góp vào môn thể thao đua xe đạp tại thành phố Hồ Chí Minh. Cuộc đua diễn ra ở thành phố cao nguyên hùng vĩ Đà Lạt, với độ cao 1,500m (4,900ft) so với mặt nước biển. Đến với đường đua này ngoài việc tận hưởng cảnh quan nơi đây, bạn còn có cơ hội biết thêm về nền văn hóa của thành phố này. </span></p>    <p style=\"text-align:center\"><span style=\"font-size:16px\">Hãy cùng với hơn 350 tay đua trải nghiệm 04 lộ trình đua tuyệt vời diễn ra trong 03 ngày tại Đà Lạt và bạn sẽ có những kỉ niệm không bao giờ quên!</span></p>    <p style=\"text-align:center\"><span style=\"font-size:16px\">Để biết thêm thông tin chi tiết và tạo thêm hứng khởi cho cuộc đua 2018, vui lòng ghé thăm trang web</span></p>    <p style=\"text-align:center\"><span style=\"font-size:16px\"><strong><span style=\"background-color:transparent; color:rgb(0, 0, 0)\">www.vietnamvictorychallenge.com. </span></strong></span></p>", category_id: 1, name: "Việt Nam Thử Thách Chiến Thắng", publish: true, user_id: nil, admin_list: [1]},
  {starts_at: "2017-09-20 00:00:00", ends_at: "2017-09-22 00:00:00", venue_id: 2, hero_image_url: "", extended_html_description: "Test Test Test ", category_id: 1, name: "Test admin_list", publish: false, user_id: 1, admin_list: [1]},
  {starts_at: "2017-08-19 00:00:00", ends_at: "2017-08-22 00:00:00", venue_id: 1, hero_image_url: "http://l.f9.img.vnecdn.net/2013/06/13/chicago-original-jpg-1361931182-500x0-1371117875_500x0.jpg", extended_html_description: "Chicago là vở nhạc kịch nổi tiếng ra đời trên sân khấu Broadway (New York, Mỹ) năm 1975, được dàn dựng và diễn liên tục cho tới nay. Tác phẩm này giữ kỷ lục là vở nhạc kịch Mỹ được trình diễn lâu nhất tại Broadway (Mỹ) và West End (Anh), hai trung tâm kịch nghệ lớn nhất thế giới. Trong hơn 30 năm qua, đã có hàng chục phiên bản quốc tế của vở diễn này với nhiều ngôn ngữ khác nhau được dàn dựng. Tại châu Á, trước đây đã có 2 phiên bản chuyển thể là tiếng Nhật và tiếng Hàn.", category_id: 1, name: "Nhạc kịch Chicago", publish: true, user_id: 1, admin_list: [1, 0, 0, 2, 0, 2, 0, 3, 4]},
  {starts_at: "2018-01-16 00:00:00", ends_at: "2018-01-16 00:00:00", venue_id: 1, hero_image_url: "http://cdn.depvn.vn/A5_Mat-Sau_01.jpg", extended_html_description: "Vẫn là một Đan Trường đa năng bởi sự đa sắc trong âm nhạc, anh đang khát vọng chinh phục mọi đối tượng công chúng yêu nhạc của mình một cách hoàn hảo nhất. Mỗi người có một nhận định, đánh giá riêng về chất giọng cũng như phong cách biểu diễn của Đan Trường nhưng những thành tích mà ca sĩ này gặt hái được trong suốt nhiều năm theo đuổi nghiệp hát thì không ai có thể phủ nhận. 19 năm ca hát, Đan Trường của ngày nay vẫn là một giọng ca được đông đảo công chúng yêu mến.  Xét ở mọi góc độ, thành công của ca sĩ Đan Trường tại thị trường âm nhạc còn sơ khai như của Việt Nam những năm cuối thập niên 1990 có thể xem là một kỳ tích. Anh xuất hiện khiêm tốn nhưng nhanh chóng tỏa sáng và trở nên nổi bật giữa một rừng ngôi sao ca nhạc Việt Nam lúc ấy.  Nhìn lại hành trình đã qua của Đan Trường, không thể bỏ qua yếu tố may mắn khi mọi thứ đối với anh gần như được trải hoa hồng. “Thành tựu 19 năm qua mà tôi có được rõ ràng là nhờ may mắn nhưng nếu không có sự cố gắng và nỗ lực một cách tận tâm của mình và cả ông bầu Hoàng Tuấn, tôi không tin có thể đạt được như vậy. Một nghệ sĩ trụ lâu được ở thị trường giải trí là nhờ sự ủng hộ của khán giả nhưng nếu nghệ sĩ ấy không chứng minh cho khán giả thấy mình xứng đáng được yêu mến, công chúng cũng sẽ quay lưng” - Đan Trường chiêm nghiệm.", category_id: 1, name: "Cảm ơn Đời - Live Concert Đan Trường", publish: true, user_id: nil, admin_list: [1]}
])
TicketType.create!([
  {event_id: 2, price: 500000, name: "Vé loại A", max_quantity: 10},
  {event_id: 2, price: 300000, name: "Vé loại B", max_quantity: 50},
  {event_id: 2, price: 200000, name: "Vé loại C", max_quantity: 100},
  {event_id: 2, price: 150000, name: "Vé loại D", max_quantity: 200},
  {event_id: 3, price: 99000, name: "General", max_quantity: 1000},
  {event_id: 4, price: 2000000, name: "VIP1", max_quantity: 200},
  {event_id: 4, price: 500000, name: "Standard1", max_quantity: 500},
  {event_id: 5, price: 500000, name: "VIP2", max_quantity: 300},
  {event_id: 5, price: 100000, name: "Standard2", max_quantity: 400},
  {event_id: 1, price: 2000000, name: "Giá chính thức", max_quantity: 5},
  {event_id: 1, price: 500000, name: "Đăng ký sớm", max_quantity: 95}
])
Ticket.create!([
  {ticket_type_id: 9, name: "VIP", address: nil, phone: nil, count: 200},
  {ticket_type_id: 3, name: "Tam", address: "123", phone: nil, count: 3},
])

