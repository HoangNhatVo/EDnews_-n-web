#----------------------THEM HINH
update urlhinhanh
set urllinkHinh = 'cong-troi-bali.jpg'
where IDHinh=1;
update urlhinhanh
set urllinkHinh = 'ninh-binh.jpg'
where IDHinh=2;
insert into urlhinhanh values(4,'curacao-island.jpg');
insert into urlhinhanh values(5,'dau-tu.jpg');
insert into urlhinhanh values(6,'eximbank.jpg');
insert into urlhinhanh values(7,'ong-Ha.jpg');
insert into urlhinhanh values(8,'duy-manh.jpg');
insert into urlhinhanh values(9,'Doi-Hinh-U23.jpg');
insert into urlhinhanh values(10,'Thai-Land-U23.jpg');
insert into urlhinhanh values(11,'apple.jpg');
insert into urlhinhanh values(12,'dark-mode.jpg');
insert into urlhinhanh values(13,'AI.jpg');
insert into urlhinhanh values(14,'ChiPu.jpg');
insert into urlhinhanh values(15,'NgocTrinh.jpg');
insert into urlhinhanh values(16,'caraoken.jpg');
insert into urlhinhanh values(18,'chill.jpg');
insert into urlhinhanh values(19,'pmt.jpg');
insert into urlhinhanh values(20,'NTN.jpg');
insert into urlhinhanh values(21,'HoaiLinh.jpg');
insert into urlhinhanh values(22,'Vo-Ba.jpg');
insert into urlhinhanh values(23,'chipu-thoitrang.jpg');
insert into urlhinhanh values(24,'tram-t2.jpg');
insert into urlhinhanh values(25,'metro.jpg');
insert into urlhinhanh values(26,'thu-tuong-ko-do-nhua.jpg');
insert into urlhinhanh values(27,'mit.jpg');
insert into urlhinhanh values(28,'toi-pham.jpg');
insert into urlhinhanh values(29,'USD.jpg');
#---------------------GAN HINH VAO BAI VIET
update baiviet_hinhanh
set IDHinh =2
where IDBaiViet ='BV2';
update baiviet_hinhanh
set IDHinh =4
where IDBaiViet ='BV12';
update baiviet_hinhanh
set IDHinh =5
where IDBaiViet ='BV3';
update baiviet_hinhanh
set IDHinh =6
where IDBaiViet ='BV4';
update baiviet_hinhanh
set IDHinh =7
where IDBaiViet ='BV5';
update baiviet_hinhanh
set IDHinh =8
where IDBaiViet ='BV6';
update baiviet_hinhanh
set IDHinh =9
where IDBaiViet ='BV7';
update baiviet_hinhanh
set IDHinh =10
where IDBaiViet ='BV8';
update baiviet_hinhanh
set IDHinh =11
where IDBaiViet ='BV9';
update baiviet_hinhanh
set IDHinh =12
where IDBaiViet ='BV10';
update baiviet_hinhanh
set IDHinh =13
where IDBaiViet ='BV11';
update baiviet_hinhanh
set IDHinh =14
where IDBaiViet ='BV13';
update baiviet_hinhanh
set IDHinh =15
where IDBaiViet ='BV14';
update baiviet_hinhanh
set IDHinh =16
where IDBaiViet ='BV15';
update baiviet_hinhanh
set IDHinh =18
where IDBaiViet ='BV16';
update baiviet_hinhanh
set IDHinh =19
where IDBaiViet ='BV17';
update baiviet_hinhanh
set IDHinh =20
where IDBaiViet ='BV18';
update baiviet_hinhanh
set IDHinh =21
where IDBaiViet ='BV19';
update baiviet_hinhanh
set IDHinh =22
where IDBaiViet ='BV20';
update baiviet_hinhanh
set IDHinh =23
where IDBaiViet ='BV21';
update baiviet_hinhanh
set IDHinh =24
where IDBaiViet ='BV22';
update baiviet_hinhanh
set IDHinh =25
where IDBaiViet ='BV23';
update baiviet_hinhanh
set IDHinh =26
where IDBaiViet ='BV24';
update baiviet_hinhanh
set IDHinh =27
where IDBaiViet ='BV25';
update baiviet_hinhanh
set IDHinh =28
where IDBaiViet ='BV26';
update baiviet_hinhanh
set IDHinh =29
where IDBaiViet ='BV27';
#----------------------TIN NOI BAT
update baiviet set TinNoiBat=0 where TinNoiBat=1;
update baiviet set TinNoiBat=1 where IDBaiViet='BV13';
update baiviet set TinNoiBat=1 where IDBaiViet='BV11';
#---------------LUOT XEM NHIEU
update baiviet set LuotXem=1200 where IDBaiViet='BV13';
update baiviet set LuotXem=1250 where IDBaiViet='BV11';
update baiviet set LuotXem=3500 where IDBaiViet='BV20';
update baiviet set LuotXem=900 where IDBaiViet='BV9';
#--------------
update baiviet
set TieuDe =N'Check-in liền tay cổng trời Bali vừa xuất hiện tại Đà Lạt'
where IDBaiVIet ='BV1';
update baiviet
set TieuDe_KhongDau =N'Check-in-lien-tay-cong-troi-Bali-vua-xuat-hien-tai-Da-Lat'
where IDBaiVIet ='BV1';
update baiviet
set NoiDungTomTat =N'Gần đây, giới trẻ liên tục truyền tai nhau tọa độ "cổng trời Bali" mới toanh ở Đà Lạt (Lâm Đồng). Nơi đây hứa hẹn sẽ là địa điểm sổng ảo không thể bỏ qua mùa hè này.'
where IDBaiVIet ='BV1';
update baiviet
set NoiDung =N'<p class="mt-30">Tọa lạc trong khu nghỉ dưỡng trên ngọn đồi Robin xinh đẹp, thuộc khu du lịch cáp treo Đà Lạt, "cổng trời Bali" phiên bản Việt đang là điểm đến thu hút đông đảo du khách.</p>
						<p class="mtb-15">Tiểu cảnh xuất hiện giữa không gian thoáng đãng, xung quanh được bao bọc bởi núi và rừng thông, tạo nên ấn tượng mạnh đối với du khách từ lần đầu nhìn thấy. Cổng trời có thiết kế độc đáo, bắt mắt được nhiều người nhận xét khá giống với cổng trời sống ảo nổi tiếng ở đảo Bali.</p>
						
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Nhiều bạn trẻ đã nhanh tay đến check-in địa điểm này. Chỉ cần chỉnh màu, kéo sáng và thêm vài chi tiết nhỏ, những bức hình của giới trẻ đã khiến cho cảnh sắc nơi đây lung linh và ảo diệu hơn. "</em>
								
							</p>
							<h6><b>yvisvu</b></h6>
						</div>
						
						<p class="mtb-15">Xung quanh khu nghỉ dưỡng là những vườn mai anh đào, vườn hồng... Không chỉ có cổng trời, nơi đây còn là "thánh địa sống ảo" với nhiều góc máy đẹp, đậm chất thiên nhiên.
                        Khu nghỉ dưỡng nằm trên một ngòn đồi quanh năm lộng gió. Đến đây, bạn sẽ được trở về nơi đại ngàn, rừng nguyên sinh xanh mát cùng bầu không khí trong lành và yên tĩnh. Ở đây có nhiều loại phòng cho bạn. Trong đó, phòng view núi là lựa chọn ưu tiên của du khách.
                        Nếu bạn đang tìm một không gian yên tĩnh để thư giãn, nghỉ ngơi trong mùa hè này thì nơi đây là gợi ý. Bạn cũng đừng quên chuẩn bị những bộ đồ ấn tượng để có thể tậu về nhiều tấm ảnh chất lừ tại "cổng trời Bali" phiên bản Đà Lạt nhé. 
						</p>'
where IDBaiVIet ='BV1';
#--------------
update baiviet
set TieuDe =N'Có gì chờ bạn khi đến Ninh Bình vào tháng 6?'
where IDBaiVIet ='BV2';
update baiviet
set TieuDe_KhongDau =N'Co-gi-cho-ban-khi-den-Ninh-Binh-vao-thang-6?'
where IDBaiVIet ='BV2';
update baiviet
set NoiDungTomTat =N'Ninh Bình vào tháng 6 rực sắc lúa chín vàng.'
where IDBaiVIet ='BV2';
update baiviet
set NoiDung =N'<p class="mt-30">Việt Nam được thiên nhiên ưu ái ban tặng nhiều cảnh quan tuyệt đẹp. Từ Trà Cổ (Quảng Ninh) đến Cà Mau, mỗi vùng lại mang một dáng vẻ riêng, đang chờ người đến khám phá.

Như một bước tiếp nối trong cuộc thi ảnh TP.HCM 2018, cuộc thi Picture-Perfect năm nay tiếp tục đi tìm những bức ảnh đẹp nhất về Việt Nam. Vượt qua vòng đầu tiên, 9 thí sinh xuất sắc nhất sẽ chia thành 3 đội. Dưới sự hướng dẫn của các chuyên gia về nhiếp ảnh, họ sẽ tạo nên một câu chuyện riêng tại các điểm đến được gợi ý trong 3 ngày (từ ngày 8-10/6).

Địa điểm sẽ phụ thuộc vào khu vực sinh sống của thí sinh. Nếu ở miền Bắc, họ sẽ đến Ninh Bình, miền Trung là Huế trong khi niềm Nam là Đà Lạt (Lâm Đồng). </p>
						<p class="mtb-15">Tam Cốc - Bích Động là một trong những điểm đến nổi tiếng nhất tại địa phương. Tại đây, các thí sinh có thể lên thuyền và xuôi theo dòng nước, đạp xe quanh những con đường hay leo lên đỉnh núi cheo leo để sáng tác.

Đầu tháng 6 là thời điểm lúa chín trên các cánh đồng. Sắc vàng bạt ngàn của lúa nổi bật trên sắc xanh của núi non tạo nên bức tranh mỹ lệ với những mảng màu tuyệt đẹp.</p>
						
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Sở hữu hệ động thực vật phong phú, rừng Cúc Phương mang đặc trưng của rừng mưa nhiệt đới. Theo các nhà khoa học, nơi đây có khoảng 2.000 loài thực vật, 76 loài bò sát, 46 loài lưỡng cư, 11 loài cá, 313 loài chim, 280 loài bướm và hàng nghìn loài côn trùng cũng như các loài động vật khác."</em>
								
							</p>
							<h6><b>yvisvu</b></h6>
						</div>
						
						<p class="mtb-15">Không nổi tiếng như Tràng An hay Tam Cốc - Bích Động nhưng hang Múa vẫn là nơi nhiều du khách tìm đến. Từ ngoài cổng, thí sinh có thể nhìn thấy lối đi dẫn lên đỉnh núi.

Gần 500 bậc đá rêu phong nối nhau thành hàng khiến nơi này được ví như Vạn Lý Trường Thành của Việt Nam. Từ trên cao, phóng tầm mắt ra xa, người ta sẽ thấy toàn cảnh thiên nhiên hùng vĩ của khu Tam Cốc. 

Đối với những người yêu thiên nhiên, rừng Cúc Phương là điểm đến không thể thiếu. Dù đã qua mùa bướm, nơi đây vẫn còn nhiều chất liệu để các thí sinh sáng tạo.
                        </p>'
where IDBaiVIet ='BV2';
#----------------------
update baiviet
set TieuDe =N'Curacao - đảo quốc của cự đà và những loài chim ruồi độc đáo'
where IDBaiVIet ='BV12';
update baiviet
set TieuDe_KhongDau =N'Curacao dao quoc cua cu da va nhung loai chim ruoi doc dao'
where IDBaiVIet ='BV12';
update baiviet
set NoiDungTomTat =N'Điều kiện thiên nhiên thuận lợi biến Curacao trở thành quốc đảo sở hữu hệ sinh vật đa dạng, có nhiều loài thú vị như cự đà, chim ruồi hay hồng hạc.'
where IDBaiVIet ='BV12';
update baiviet
set NoiDung =N'<p class="mt-30">Đến Curacao, du khách sợ bò sát hẳn sẽ phải nổi da gà vì có quá nhiều cự đà (người Việt thường gọi là kỳ nhông). Chúng xuất hiện ở khắp nơi, từ bãi biển, trên cây, cho đến những hồ bơi trong nhà. Người dân Curacao hay kêu cự đà bằng tên "gà trên cây" do những con vật này hay bám trên thân cây. 
Cự đà chủ yếu ăn thực vật nên chúng không quá nguy hiểm như bề ngoài "hầm hố".</p>
						<p class="mtb-15">Tại đất nước này, cự đà được điền tên vào danh sách những món đặc sản phải thử một lần. Họ có khá nhiều cách chế biến, điển hình nhất vẫn là hầm hoặc nấu súp. Thịt cự đà có mùi gần giống với thịt gà nhưng nhiều người lại nhận xét chúng tương đồng với thịt thỏ hơn. Người Curacao quan niệm ăn thịt loài bò sát này rất tốt cho chuyện "giường chiếu" bởi cự đà có tới 2 dương vật.</p>
						
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Nếu bạn là người thích ngắm hay chụp ảnh chim, Curacao sẽ chẳng khác gì một "thiên đường nơi hạ giới". Theo ước tính từ Active Caribbean, quốc đảo này có đến 168 loài chim khác nhau và 71 loài trong số đó là chim di trú. Tới đây, du khách có thể bắt gặp chim chích chòe vàng, diều hâu đuôi trắng, vẹt đuôi dài và một số loài chim ruồi khác. "</em>
								
							</p>
							<h6><b>yvisvu</b></h6>
						</div>
						
						<p class="mtb-15">Quốc đảo vùng Caribbean còn thu hút du khách bởi loài hươu đuôi trắng. Các nhà nghiên cứu đã xác định loài hươu này đã tồn tại từ thời kỳ tiền Columbus. Họ tin rằng người Arawak cổ xưa đã đem tổ tiên của loài hươu này tới Curacao từ Nam Mỹ và thay đổi tập tính của chúng cho phù hợp với điều kiện tự nhiên trên đảo. Hươu đuôi trắng ở Curacao hiện nay chỉ còn dưới 250 cá thể và được xem như loài vật được ưu tiên bảo vệ từ năm 1926. 
						</p>'
where IDBaiVIet ='BV12';
#----------------------
update baiviet
set TieuDe =N'Hơn 100 quỹ ngoại đến Việt Nam tìm cơ hội đầu tư mạo hiểm'
where IDBaiVIet ='BV3';
update baiviet
set TieuDe_KhongDau =N'Hon-100-quy-ngoai-den-Viet-Nam-tim-co-hoi-dau-tu-mao-hiem'
where IDBaiVIet ='BV3';
update baiviet
set NoiDungTomTat =N'Bộ Kế hoạch và Đầu tư đang chuẩn bị một sự kiện quy tụ hơn 100 quỹ đầu tư mạo hiểm nước ngoài đến Việt Nam tìm kiếm cơ hội, kết nối với các startup trong nước.'
where IDBaiVIet ='BV3';
update baiviet
set NoiDung =N'<p class="mt-30">Ngày 10/6 tới, lần đầu tiên tại Việt Nam diễn ra một hội nghị dành riêng cho các quỹ đầu tư mạo hiểm. Sự kiện có tên Hội nghị Quỹ đầu tư khởi nghiệp sáng tạo tại Việt Nam 2019 (Vietnam Venture Summit 2019) do Bộ Kế hoạch và Đầu tư (KH&ĐT) tổ chức.

Theo ban tổ chức, hiện tại đã có hơn 100 quỹ đầu tư trong khu vực và thế giới đăng ký tham gia sự kiện nhằm kết nối nguồn lực đầu tư vào Việt Nam.

</p>
						<p class="mtb-15">Ông Vinnie Lauria, đại diện Quỹ Đầu tư Golden Gate Ventures - đơn vị phối hợp tổ chức Vietnam Venture Summit 2019, cho biết Việt Nam đang là điểm đến hấp dẫn các nhà đầu tư vào đổi mới sáng tạo.
                        “Sẽ có trên 100 quỹ đầu tư mạo hiểm đến Việt Nam để tìm kiếm cơ hội. Đặc biệt, tại sự kiện này, những thương vụ đầu tư lớn vào các dự án khởi nghiệp của Việt Nam cũng sẽ được công bố”, ông Vinnie Lauria tiết lộ.

Trong khi đó, Bộ trưởng KH&ĐT Nguyễn Chí Dũng cho biết ngoài các quỹ ngoại, sự kiện cũng chào đón các quỹ trong nước. Ông nhấn mạnh, thời gian gần đây, nhiều quỹ đầu tư được thành lập tại Việt Nam với số vốn hàng trăm triệu USD sẵn sàng rót vốn vào các dự án đầu tư mạo hiểm.</p>
						
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Theo Bộ KH&ĐT, Vietnam Venture Summit 2019 là hoạt động thực hiện các chủ trương của Đảng và Chính phủ về cơ cấu lại nền kinh tế, đổi mới mô hình tăng trưởng. Trong đó có chủ trương thu hút đầu tư nước ngoài theo hướng nâng cao chất lượng đầu tư, tạo sự lan tỏa về công nghệ để góp phần nâng cao nội lực nền kinh tế. "</em>
								
							</p>
							<h6><b>yvisvu</b></h6>
						</div>
						
						<p class="mtb-15">Ông cũng đánh giá Việt Nam có quy mô thị trường lớn với gần 100 triệu dân, đang phát triển nhanh đối với các sản phẩm và dịch vụ kỹ thuật số. Việt Nam cũng có dân số trẻ, 67% dân số sử dụng Internet, 57% dân số tích cực sử dụng mạng xã hội và 73% dân số có điện thoại di động cá nhân.

"Năm 2018, ước tính Việt Nam có hơn 3.000 startup, được cho là lớn thứ ba ở châu Á. Nền kinh tế đổi mới sáng tạo của Việt Nam sẽ bùng nổ trong thời gian tới, hứa hẹn là một thị trường đầu tư hấp dẫn cho các quỹ đầu tư mạo hiểm", ông nhận định.
						</p>'
where IDBaiVIet ='BV3';
#----------------------
update baiviet
set TieuDe =N'Nguyên chủ tịch Eximbank nhận thù lao 3,8 tỷ năm 2018'
where IDBaiVIet ='BV4';
update baiviet
set TieuDe_KhongDau =N'Nguyen-chu-tich-Eximbank-nhan-thu-lao-3-8-ty-nam-2018'
where IDBaiVIet ='BV4';
update baiviet
set NoiDungTomTat =N'Nguyên Chủ tịch Eximbank Lê Minh Quốc nhận thù lao trung bình hơn 316 triệu đồng mỗi tháng trong năm 2018. Trong khi đó, tân Chủ tịch Cao Xuân Ninh chỉ hưởng lương của ngân hàng.'
where IDBaiVIet ='BV4';
update baiviet
set NoiDung =N'<p class="mt-30">Theo đó, ông Lê Minh Quốc - người vừa từ nhiệm chức danh Chủ tịch HĐQT Eximbank cuối tháng 5 vừa qua - nhận thù lao 3,8 tỷ đồng trong năm 2018. Tính trung bình, mỗi tháng ông Quốc hưởng thu nhập hơn 316 triệu đồng.
</p>
						<p class="mtb-15">Trong khi đó, thành viên HĐQT Eximbank nhận thù lao thấp nhất là bà Lương Thị Cẩm Tú với 838 triệu đồng. Tuy nhiên, bà Tú chỉ mới tham gia HĐQT Eximbank từ cuối tháng 4/2018. 

Ngoài ra, 2 phó chủ tịch HĐQT Eximbank gồm ông Đặng Anh Mai và ông Yasuhiro Saitoh nhận thù lao tương ứng năm qua là 2,2 và 2,9 tỷ. Ba thành viên HĐQT khác ngoài bà Tú là ông Hoàn Tuấn Khải, ông Nguyễn Quang Thông và ông Ngô Thanh Tùng hưởng thù lao năm 2018 từ 1,7-1,9 tỷ đồng.</p>
						
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Báo cáo cũng cho biết ngân sách chi trả cho hoạt động của HĐQT năm 2018 là 7,11 tỷ đồng, thấp hơn mức dự kiến 7,5 tỷ. "</em>
								
							</p>
							<h6><b>yvisvu</b></h6>
						</div>
						
						<p class="mtb-15">Năm 2019, theo tờ trình Đại hội đồng cổ đông thường niên, Eximbank dự kiến chi tổng thù lao cho HĐQT tương đương 2% lợi nhuận trước thuế hợp nhất nhưng không thấp hơn 15 tỷ đồng, tương đương với năm 2018, ngân sách hoạt động cho HĐQT là 7,5 tỷ.

Hiện Eximbank là nhà băng duy nhất chưa tổ chức Đại hội đồng cổ đông thường niên 2019. Ngân hàng này dự kiến sẽ tổ chức đại hội cổ đông lần hai vào ngày 21/6 tới.

Trước đó, đại hội cổ đông lần một của Eximbank ngày 26/4 phải hoãn sau khi không đủ số lượng cổ đông đại diện ít nhất 65% cổ phần của ngân hàng dự họp. Đại hội cổ đông lần hai ban đầu dự kiến tổ chức vào ngày 26/5 nhưng tiếp tục hoãn với lý do cần thêm thời gian cho công tác chuẩn bị. 

Việc hoãn đại hội cổ đông lần hai diễn ra ngay sau khi Eximbank bầu ra Chủ tịch HĐQT mới là ông Cao Xuân Ninh và quyền Tổng giám đốc mới Nguyễn Cảnh Vinh.
						</p>'
where IDBaiVIet ='BV4';
#----------------------
update baiviet
set TieuDe =N'Không loại trừ quy hoạch chi tiết bị điều chỉnh do sức ép nào đó'
where IDBaiVIet ='BV5';
update baiviet
set TieuDe_KhongDau =N'Khong-loai-tru-quy-hoach-chi-tiet-bi-dieu-chinh-do-suc-ep-nao-do'
where IDBaiVIet ='BV5';
update baiviet
set NoiDungTomTat =N'Bộ trưởng Xây dựng Phạm Hồng Hà thừa nhận có tình trạng phá vỡ quy hoạch ban đầu. Ông cũng cho rằng "không loại trừ quy hoạch chi tiết bị điều chỉnh do sức ép nào đó"'
where IDBaiVIet ='BV5';
update baiviet
set NoiDung =N'<p class="mt-30">Bộ trưởng Xây dựng Phạm Hồng Hà sẽ giải đáp những thắc mắc liên quan đến công tác lập, thẩm định, phê duyệt và quản lý thực hiện các dự án đầu tư xây dựng công trình. Ngoài ra còn có quản lý thị trường bất động sản, xử lý bất cập trong quản lý nhà chung cư, căn hộ du lịch (condotel), văn phòng kết hợp lưu trú (officetel), biệt thự du lịch (resort villa).
</p>
						<p class="mtb-15">Chiều 4/6, Bộ trưởng Bộ Xây dựng Phạm Hồng Hà đăng đàn trả lời chất vấn của các đại biểu Quốc hội về nhiều vấn đề liên quan tới quản lý, quy hoạch đô thị.</p>
						
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Vi phạm có rồi, trách nhiệm xử lý là của Hà Nội, chứ không phải của Bộ Xây dựng"</em>
								
							</p>
							<h6><b>ông Hà</b></h6>
						</div>
						
						<p class="mtb-15">Đại biểu Nguyễn Thanh Hồng (Bình Dương) yêu cầu Bộ trưởng Phạm Hồng Hà chỉ ra trách nhiệm của Bộ Xây dựng trong việc quản lý trật tự đô thị.

Trả lời, Bộ trưởng Hà cho hay Việt Nam đã có khung pháp luật tương đối đầy đủ các quy định để xử lý hiệu quả các vấn đề về trật tự xây dựng.

“Trong thời gian qua, các địa phương đã có nhiều cố gắng để kiểm soát, quản lý, hạn chế tình trạng vi phạm trật tự xây dựng. Số lượng vi phạm đã giảm dần so với những năm trước nhưng vẫn ở mức cao, đặc biệt là những hành vi xây dựng không phép, sai phép”, ông nói.

Bộ trưởng Xây dựng cho hay năm 2016 có 15.593 công trình vi phạm trật tự xây dựng. Trong đó, công trình không phép là 7.038, sai phép là 5.164 công trình, vi phạm khác là 3.181 công trình. Đến năm 2018, số lượng công trình sai phạm đã giảm còn 10.608. Tuy nhiên, ông Hà thừa nhận số lượng công trình vi phạm trật tự xây dựng vẫn cao.</p>'
where IDBaiVIet ='BV5';
#----------------------
update baiviet
set TieuDe =N'Vũ Như Thành: ‘Thành Chung sẽ là lựa chọn phù hợp để thay Duy Mạnh'
where IDBaiVIet ='BV6';
update baiviet
set TieuDe_KhongDau =N'Vu Nhu Thanh ‘Thanh Chung se la lua chon phu hop de thay Duy Manh'
where IDBaiVIet ='BV6';
update baiviet
set NoiDungTomTat =N'Trao đổi với Zing.vn về phương án thế chỗ Duy Mạnh ở trận quyết đấu giữa tuyển Việt Nam và Yemen, cựu danh thủ Vũ Như Thành cho rằng Thành Chung là lựa chọn khả dĩ nhất.'
where IDBaiVIet ='BV6';
update baiviet
set NoiDung =N'<p class="mt-30">Tấm thẻ vàng phải nhận ở phút 90+1 trận gặp đội tuyển Iran buộc Duy Mạnh phải ngồi ngoài trong cuộc đối đầu mang tính quyết định của tuyển Việt Nam trước Yemen.
</p>
						<p class="mtb-15">HLV Park Hang-seo đem đến Asian Cup 2019 năm cầu thủ thường xuyên thi đấu ở vị trí trung vệ. Ba cái tên trong số đó được xếp đá chính ở những trận đấu đã qua, gồm Đỗ Duy Mạnh, Bùi Tiến Dũng và Quế Ngọc Hải. Hai cầu thủ còn lại là Nguyễn Thành Chung và Hồ Tấn Tài.</p>
						
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Câu chuyện Thành Chung có kết hợp ăn ý được với Quế Ngọc Hải và Bùi Tiến Dũng hay không phải sau trận đấu mới rõ. Tuy nhiên, Trung là cầu thủ có trình độ và cậu ấy sẽ biết điều chỉnh lối chơi trong trận đấu"</em>
								
							</p>
							<h6><b>Nhà vô địch AFF Cup 2008 phân tích</b></h6>
						</div>
						
						<p class="mtb-15">Ngoài ra, giải pháp thay thế này còn có điểm lợi rất lớn là khai thác được tối đa những tình huống đột phá của Hồng Duy bên hành lang cánh trái.

Tuy nhiên, cựu tuyển thủ Vũ Như Thành đánh giá: “Tôi nghĩ Văn Hậu vẫn sẽ chơi ở vị trí hậu vệ trái. Hậu là một cầu thủ tham gia phòng ngự rất hiệu quả và có khả năng hỗ trợ tấn công đắc lực. Tuyển Việt Nam có ít ai công thủ toàn diện được như cậu ấy”.

Sau 2 lượt trận đầu tiên của vòng bảng, đội tuyển Việt Nam đều thất bại trước những đối thủ được đánh giá cao hơn. Trong bối cảnh đó, thầy trò HLV Park Hang-seo chỉ còn cách duy nhất để vượt qua vòng bảng là trở thành một trong bốn đội xếp thứ ba có thành tích tốt nhất.</p>'
where IDBaiVIet ='BV6';
#----------------------
update baiviet
set TieuDe =N'Tuyển Việt Nam học được cách đấu với những đội đẳng cấp cao hơn'
where IDBaiVIet ='BV7';
update baiviet
set TieuDe_KhongDau =N'Tuyen-Viet-Nam-hoc-duoc-cach-dau-voi-nhung-doi-dang-cap-cao-hon'
where IDBaiVIet ='BV7';
update baiviet
set NoiDungTomTat =N'Dù thua Curacao sau loạt sút luân lưu trong trận chung kết King`s Cup 2019 tối 8/6, tuyển Việt Nam vẫn nhận được nhiều lời khen từ truyền thông Thái Lan.'
where IDBaiVIet ='BV7';
update baiviet
set NoiDung =N'<p class="mt-30">Phóng viên Gof Natthakorn của Siam Sports chia sẻ với Zing.vn: "Tuyển Việt Nam đã biết cách đối đầu với những đội có đẳng cấp cao hơn. Sau trận gặp Curacao, tôi nghĩ các cầu thủ trải nghiệm được nhiều điều. Giờ đây, khi chạm trán những tên tuổi lớn, tuyển Việt Nam sẽ biết cách để giành chiến thắng".
</p>
						<p class="mtb-15">Cây viết người Thái Lan còn ấn tượng với tinh thần của các học trò HLV Park Hang-seo, khi chiến đấu đến những phút cuối. Dù vậy, phóng viên của Siam Sports cho rằng tuyển Curacao xứng đáng thắng chung cuộc hơn. Đội bóng này thể hiện sức mạnh và đẳng cấp vượt trội.</p>
                        
						<p class="mtb-15">"Tuyển Curacao đá như đi dạo trong công viên. Chuyên môn của họ tốt hơn Việt Nam. Dù vậy, tôi thấy cầu thủ Curacao nhiều lần tỏ ra hơi kiêu ngạo. Nếu tuyển Việt Nam biết tận dụng tối đa cơ hội, họ đã khiến đối thủ phải trả giá", phóng viên Natthakorn đưa ra quan điểm.</p>
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Đây chỉ là giải đấu giao hữu. Mục tiêu cao nhất của tuyển Việt Nam vẫn là vòng loại World Cup 2022 và SEA Games. Tôi tin đội bóng của HLV Park Hang-seo học được nhiều điều trong tuần qua. Lúc này, họ đã biết khi đụng tên tuổi lớn thì phải làm thế nào"</em>
								
							</p>
							<h6><b>HLV Darby</b></h6>
						</div>
						
						<p class="mtb-15">Theo chuyên gia Fox Sports Shebby Singh, tuyển Việt Nam bây giờ xứng danh ông vua của bóng đá Đông Nam Á. Trong khi đó, Thái Lan đã bị bỏ lại phía sau. Vị thế mới còn giúp cầu thủ Việt Nam tạo ra nền tảng to lớn thu hút sự quan tâm từ những đội bóng từ châu Âu, Nhật Bản và Hàn Quốc.

Sau Asian Cup 2019, Công Phượng lọt vào tầm ngắm đội bóng Leganes tại Tây Ban Nha. Ngoài ra,  Xuân Trường và Văn Lâm được các CLB Thái Lan chiêu mộ.

Chuyên gia người Malaysia tin thời hoàng kim của bóng đá Việt Nam đang mở ra. Các cầu thủ nhờ đó cũng hưởng lợi rất nhiều. Lúc này, khi nhắc đến Công Phượng, Quang Hải hay Đặng Văn Lâm, người ta sẽ dùng khái niệm "nhà vô địch AFF Cup 2018" hay "các thành viên của đội tuyển số một Đông Nam Á".</p>'
where IDBaiVIet ='BV7';
#----------------------
update baiviet
set TieuDe =N'Tuyển Thái Lan về bét ở King`s Cup, Chủ tịch Somyot né truyền thông'
where IDBaiVIet ='BV8';
update baiviet
set TieuDe_KhongDau =N'Tuyen-Thai-Lan-ve-bet-o-King-s-Cup-Chu-tich-Somyot-ne-truyen-thong'
where IDBaiVIet ='BV8';
update baiviet
set NoiDungTomTat =N'Ngay sau buổi bế mạc King`s Cup 2019, Chủ tịch Somyot Prueksakasemsuk của Liên đoàn bóng đá Thái Lan (FAT) lập tức rời đi và không trả lời phỏng vấn.'
where IDBaiVIet ='BV8';
update baiviet
set NoiDung =N'<p class="mt-30">Ông Somyot là người bị chỉ trích nhiều nhất sau khi tuyển Thái Lan về bét tại King`s Cup 2019 với 2 trận thua. Sau thất bại trước tuyển Ấn Độ ở trận tranh hạng ba, người hâm mộ Thái Lan trút cơn thịnh nộ lên Chủ tịch FAT..
</p>
						
						<p class="mtb-15">Họ cho rằng ông Somyot là nguyên nhân khiến "Voi chiến" lạc lối trong thời gian qua. Chủ tịch FAT đã gây sức ép buộc HLV Kiatisak Senamuang phải từ chức. Sau đó, người đàn ông quyền lực nhất liên đoàn bóng đá nước này bổ nhiệm HLV Milovan Rajevac lên thay.</p>
                        <p class="mtb-15">Quyết định ấy đẩy bóng đá Thái Lan vào cuộc khủng hoảng. Từ AFF Cup 2018 đến Asian Cup 2019, "Voi chiến" chơi rất tệ và đánh mất bản sắc. Thứ bóng đá tấn công phóng khoáng dưới thời Kiatisak của tuyển Thái Lan cũng biến mất và được thay bằng lối chơi bảo thủ.</p>
					

						<p class="mtb-15">Trong bối cảnh vòng loại World Cup 2022 đang đến gần, truyền thông Thái Lan muốn biết kế hoạch của Chủ tịch Somyot sắp tới thế nào, và "Voi chiến" sẽ chọn ai làm thuyền trưởng mới của đội nhà. Tuy nhiên, người đứng đầu FAT đã bỏ ngỏ câu trả lời.

Theo ghi nhận của Siam Sports, Chủ tịch Somyot đã tới sân Chang Arena để dự lễ bế mạc của King`s Cup 2019. Dù vậy, ông lại từ chối trả lời phỏng vấn, khiến truyền thông Thái Lan thất vọng. Đáng nói là ngài chủ tịch rời Chang Arena rất vội vã.

Siam Sports cho biết HLV Totchtawan Sripan, từng dẫn dắt Muangthong United và Police Tero, có thể trở thành ứng viên nặng ký cho vị trí truyền trưởng tuyển Thái Lan. Cuối tháng qua, nhà cầm quân 47 tuổi đã rời CLB Suphanburi, tín hiệu cho thấy ông có thể tiếp quản ghế nóng ở ĐTQG.

Totchtawan Sripan là huyền thoại của bóng đá Thái Lan, có 110 lần khoác áo đội tuyển và ghi 19 bàn. Từ năm 2004 tới năm 2006, Totchtawan sang Việt Nam chơi cho HAGL. Khi còn thi đấu, cựu tiền vệ tấn công này từng 4 lần vô địch SEA Games, 3 lần đăng quang AFF Cup cùng tuyển Thái Lan.</p>'
where IDBaiVIet ='BV8';
#----------------------
update baiviet
set TieuDe =N'Với iOS 13, Apple đã giáng cho Facebook, Google một đòn đau'
where IDBaiVIet ='BV9';
update baiviet
set TieuDe_KhongDau =N'Voi-iOS-13-Apple-da-giang-cho-Facebook-Google-mot-don-dau'
where IDBaiVIet ='BV9';
update baiviet
set NoiDungTomTat =N'Với iOS 13, Apple đã có lời “tuyên chiến” đối với ngành quảng cáo điện tử. Cách họ bảo vệ sự riêng tư của người dùng cũng cho thấy sức mạnh của Apple.'
where IDBaiVIet ='BV9';
update baiviet
set NoiDung =N'<p class="mt-30">Tại sự kiện WWDC 2019, Apple đã công bố phiên bản iOS 13 với nhiều tính năng mới cho cả iPhone và iPad (phiên bản dành cho iPad được gọi là iPadOS). Trong khi các tính năng như chế độ tối, bàn phím trượt hay cải thiện về hiệu năng đều được trông đợi từ trước, Apple còn giới thiệu một tính năng khiến nhiều người bất ngờ.
</p>
						
						<p class="mtb-15">Trên iOS 13, người dùng có thể đăng nhập ứng dụng, website bằng tài khoản Apple. Trên cả iOS và Android, người dùng đều đã có lựa chọn đăng nhập bằng tài khoản của các gã khổng lồ như Google, Facebook. Về cơ bản, khi người dùng chọn đăng nhập họ đã “ủy quyền” tài khoản Apple tạo một hồ sơ người dùng trên dịch vụ, website. Người dùng không cần phải tạo hay nhớ tên tài khoản, mật khẩu mới nữa.</p>
                        <p class="mtb-15">Đứng trên góc độ bảo vệ quyền riêng tư của người dùng, Apple đang thể hiện mình làm tốt hơn 2 gã khổng lồ còn lại. Họ cho phép người dùng tùy chọn mình có muốn chia sẻ email hay không.</p>
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Thay vì cạnh tranh sòng phẳng bằng tính năng, Apple đã dồn nhà phát triển và các công ty nhỏ vào góc, buộc họ phải sử dụng công nghệ của mình. Apple đã một lần nữa dùng App Store làm công cụ thực thi những gì họ muốn"</em>
								
							</p>
							<h6><b>Williams nhận xét</b></h6>
						</div>

						<p class="mtb-15">Nhà báo Walt Mossberg cho rằng tính năng mới sẽ đem lại cho Apple quyền lực lớn hơn, nhưng không đem lại tiền như cách mà Google, Facebook khai thác thông tin người dùng. Cây viết Antonio García Martínez của Wired cũng cho rằng đây là đòn tấn công trực tiếp vào tính năng theo đuổi người dùng của Facebook, công ty mà Martínez từng làm việc.</p>
                        <p class="mtb-15">Hành động này của Apple có thể bị đánh giá là lạm dụng quyền lực, lạm dụng vị thế của App Store để gây áp lực cho lập trình viên. Đây là thời điểm khá nhạy cảm với Apple, bởi họ đang nằm trong vòng nghi vấn độc quyền, lạm dụng App Store.</p>
                         <p class="mtb-15">Màn ra mắt của iOS 13 lại một lần nữa đặt ra câu hỏi: liệu quyền riêng tư có phải là một “sản phẩm xa xỉ”, như CEO Google Sundar Pichai từng nói đến. Với người dùng của Apple, họ sẽ hưởng lợi khi tạm thời tránh được chuyện khai thác dữ liệu của hàng nghìn nhà quảng cáo thông qua Google, Facebook.

Tuy nhiên, hàng tỷ người dùng khác trên thế giới lại không có được sự may mắn đó, trừ khi họ bỏ tiền ra mua đồ Apple.</p>'
where IDBaiVIet ='BV9';
#----------------------
update baiviet
set TieuDe =N'Dark Mode có gì hay mà Google, Apple thi nhau đưa lên smartphone?'
where IDBaiVIet ='BV10';
update baiviet
set TieuDe_KhongDau =N'Dark-Mode-co-gi-hay-ma-Google-Apple-thi-nhau-dua-len-smartphone'
where IDBaiVIet ='BV10';
update baiviet
set NoiDungTomTat =N'Dark Mode cuối cùng đã có mặt trên iPhone, chỉ một năm sau khi xuất hiện trên Mac. Nhưng liệu người dùng đã biết rõ những lợi ích của chế độ tối?'
where IDBaiVIet ='BV10';
update baiviet
set NoiDung =N'<p class="mt-30">Dark Mode được xem là tính năng nổi bật nhất của iOS 13. Trước đó, Dark Theme cũng trở thành tính năng chính thức của bản Android Q từ Google.
</p>
						
						<p class="mtb-15">Trên sân khấu, đại diện Táo khuyết đã trình diễn bản xem trước tính năng trên các ứng dụng khác nhau, từ Music, Photos cho đến News. Dark Mode sẽ xuất hiện trên iPhone thông qua ứng dụng biểu tượng “con cú”, dự kiến đến tay người dùng vào mùa thu này.</p>
                        <p class="mtb-15">Chắc chắn một điều, Dark Mode là sự bổ sung cần thiết. Nhưng người dùng đã biết đầy đủ lợi ích của tính năng mới hay chưa?</p>
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Sử dụng chế độ tối thực sự tiết kiệm năng lượng. Màn hình với tông nền đen chủ đạo rõ ràng cải thiện đáng kể hiệu suất pin, và theo quan điểm cá nhân, tôi thấy đó là tính năng rất hay nếu bạn đang muốn sử dụng điện thoại trong môi trường tối một cách kín đáo"</em>
								
							</p>
							<h6><b>Hays trả lời CNN Business</b></h6>
						</div>

						<p class="mtb-15">Apple cho biết Dark Mode được thiết kế giúp mắt bạn thoải mái hơn khi nhìn vào màn hình. Tông nền màu trắng sẽ gây chói và làm mỏi mắt, thậm chí gây ra những cơn đau đầu bất chợt.</p>
                        <p class="mtb-15">Paul Gamlin, giáo sư thần kinh học tại Đại học Alabama, Birmingham, lưu ý rằng chế độ tối sẽ có lợi cho giấc ngủ của người dùng. Gamlin đưa ra tuyên bố này nhờ nghiên cứu các tế bào trong võng mạc vốn cung cấp năng lược cho nhịp sinh học của con người và điểu khiển phản ứng đồng tử.</p>
                         <p class="mtb-15">Dù còn nhiều tranh luận, nhưng thiết kế của Dark Mode rõ ràng giúp tạo tính nổi bật cho văn bản và đối tượng tương tác. Điều đó đang trở thành xu hướng chung trong làng công nghệ, sau nhiều năm đã quá quen với giao diện nền trắng trên tất cả các ứng dụng, nền tảng hay thiết bị.</p>'
where IDBaiVIet ='BV10';

#----------------------
update baiviet
set TieuDe =N'AI chỉ mất nửa ngày để học cách nói như nguyên thủ quốc gia'
where IDBaiVIet ='BV11';
update baiviet
set TieuDe_KhongDau =N'AI-chi-mat-nua-ngay-de-hoc-cach-noi-nhu-nguyen-thu-quoc-gia'
where IDBaiVIet ='BV11';
update baiviet
set NoiDungTomTat =N'Chỉ mất nửa ngày với 7,8 USD để các nhà khoa học phát triển mô hình AI tự học, sau đó tạo ra bài phát biểu giả mạo các nguyên thủ quốc gia.'
where IDBaiVIet ='BV11';
update baiviet
set NoiDung =N'<p class="mt-30">Theo 2 nhà nghiên cứu của Liên Hợp Quốc (LHQ) Joseph Bullock và Miguel Luengo-Oroz, mô hình AI của họ được đào tạo bằng các văn bản Wikipedia, cùng hơn 7.000 bài phát biểu từ Đại hội đồng có thể dễ dàng làm giả phát biểu của lãnh đạo các nước.
</p>
						
						<p class="mtb-15">Nhóm nghiên cứu cho hay họ chỉ phải cung cấp cho AI một vài từ ngữ để tạo ra văn bản mạch lạc, "chất lượng cao". Ví dụ, khi các nhà nghiên cứu đưa ra tiêu đề "Tổng thư ký lên án mạnh mẽ các vụ tấn công khủng bố chết người xảy ra ở Mogadishu", AI có thể tạo ra bài phát biểu thể hiện sự ủng hộ đối với quyết định của LHQ.</p>
                        <p class="mtb-15">Văn bản được tạo bởi AI gần như không có gì khác biệt so với con người. Tuy nhiên, không phải kết quả nào cũng thành công. Chỉ cần thay đổi một số từ trong tiêu đề cũng có thể đưa ra bài phát biểu có quan điểm khác biệt.</p>
	
						<p class="mtb-15">Nhóm nghiên cứu nhấn mạnh khả năng mô hình AI này có thể được sử dụng cho mục đích xấu. Ví dụ, khi đưa ra cụm từ "Người nhập cư phải chịu trách nhiệm", người ta nhận về văn bản nội dung người nhập cư phải chịu trách nhiệm cho sự lây lan HIV/AIDS.</p>
                        <p class="mtb-15">Nghiên cứu cũng làm dấy lên lo ngại về tin tức giả mạo, trong bối cảnh công nghệ deepfake có những phát triển đáng kể. Việc quá dễ dàng tiếp cận dữ liệu là con dao hai lưỡi giúp ngay cả những người có kiến thức cơ bản cũng có thể tạo ra AI. Nhóm nghiên cứu cho biết họ chỉ mất 13 giờ với chỉ 7,8 USD để đào tạo nên mô hình AI này.</p>
                         <p class="mtb-15">Một số nhóm nghiên cứu, tổ chức phi lợi nhuận như OpenAI do tỷ phú Elon Musk hậu thuẫn, phải hạn chế thông tin mô hình AI do nhóm phát triển nhằm tránh việc sử dụng sai mục đích.</p>'
where IDBaiVIet ='BV11';
#----------------------
update baiviet
set TieuDe =N'Chi Pu: `Những ai chê tôi phải nhận ra họ sai`'
where IDBaiVIet ='BV13';
update baiviet
set TieuDe_KhongDau =N'Chi-Pu-Nhung-ai-che-toi-phai-nhan-ra-ho-sai'
where IDBaiVIet ='BV13';
update baiviet
set NoiDungTomTat =N'"Tôi thích Chi Pu của hiện tại, Chi luôn biết cố gắng và không từ bỏ. Đôi lúc tôi tự hào: `Chi ơi mày thật giỏi, mày đã vượt qua được`" - giọng ca "Anh ơi ở lại" trải lòng.'
where IDBaiVIet ='BV13';
update baiviet
set NoiDung =N'<p class="mt-30">27/10/2017, Chi Pu chính thức đi hát. Khi ấy, bủa vây cô là những ý kiến trái chiều. Không nhiều người tin Chi Pu có thể theo đuổi con đường ca hát lâu dài khi mà công chúng đồng loạt quay lưng. Sau gần hai năm, Chi Pu chứng minh sự quyết tâm với âm nhạc bằng 7 MV. Đặc biệt, “gia tài” lớn nhất cô có được là sự trưởng thành, tự tin và mạnh mẽ.
</p>
						
						<p class="mtb-15">Với Chi Pu, những lời chê bai, chỉ trích không thể vùi dập mà càng khiến cô đứng dậy, kiên cường hơn. Đó là động lực thôi thúc cô phải chứng minh “tôi có thể làm được, còn họ phải nhận ra họ đã sai”.</p>
                        <p class="mtb-15">Theo cô, Chi Pu của hiện tại được tôi rèn bởi nỗi đau khổ, tuyệt vọng, là một diện mạo mới khiến chính cô tự hào: “Chi ơi mày thật giỏi, mày đã vượt qua được. Giờ thì cứ đi tiếp thôi, đừng ngoảnh đầu lại”.</p>
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Khi nhận những lời khen ngợi, tôi cảm thấy sung sướng và hạnh phúc. Đó là cảm giác tôi chờ đợi đã lâu, có thể nói là trước cả khi chính thức đi hát. Trước đây, kể cả khi đảm nhận công việc khác như diễn viên, MC, tôi cũng nhận nhiều ý kiến trái chiều. Những gì Anh ơi ở lại nhận được, rằng mọi thứ thật sự hài hòa từ MV đến bài hát, hay có cả những ý kiến là "không có gì để chê"</em>
								
							</p>
							<h6><b>Chi Pu</b></h6>
						</div>

						<p class="mtb-15">Chỉ khoảng một năm trước, tôi vẫn cảm thấy run mỗi khi lên sân khấu dù chuẩn bị kỹ càng. Những lần mắc lỗi khiến tôi chịu nhiều áp lực, sau đó mỗi khi bước lên sân khấu, tôi đều đắn đo hát ra sao, đứng thế nào để không sai sót. Tôi thật sự rất chăm chỉ và những gì tôi bỏ ra đã nhận lại thành quả. Đương nhiên, không vì thế mà tôi thôi tiếp tục cố gắng.</p>
                        <p class="mtb-15">Thứ hai, đúng là những lời tiêu cực, những người không tin khiến tôi càng nỗ lực. Tôi muốn chứng minh cho họ thấy tôi có thể làm được, còn họ phải nhận ra họ đã sai. Có thể vẫn còn đâu đó nhận định hoài nghi, nhưng hiện tại, khán giả dần hiểu tôi cũng như âm nhạc của tôi hơn. Nó thể hiện bằng những con số và bình luận của mọi người. Tôi nghĩ đó là kết quả xứng đáng.</p>'
                  
where IDBaiVIet ='BV13';
#----------------------
update baiviet
set TieuDe =N'Hàng loạt báo Hàn chỉ trích Ngọc Trinh mặc phản cảm quá đà ở Cannes'
where IDBaiVIet ='BV14';
update baiviet
set TieuDe_KhongDau =N'Hang-loat-bao-Han-chi-trich-Ngoc-Trinh-mac-phan-cam-qua-da-o-Cannes'
where IDBaiVIet ='BV14';
update baiviet
set NoiDungTomTat =N'Trong thời gian ngắn, hàng chục tờ báo điện tử tại Hàn Quốc cùng đăng tải thông tin Ngọc Trinh có khả năng bị Bộ Văn hóa xử phạt vì mặc phản cảm ở Cannes 2019.'
where IDBaiVIet ='BV14';
update baiviet
set NoiDung =N'<p class="mt-30">Tối 19/5 (giờ Pháp), người mẫu Ngọc Trinh trở thành tâm điểm gây tranh cãi khi mặc bộ váy hở hang quá mức trên thảm đỏ Liên hoan phim (LHP) Cannes. Công chúng Việt Nam nói riêng và dư luận quốc tế nói chung đều cho rằng đây là hình ảnh phản cảm. 
</p>
						
						<p class="mtb-15">Gần một tháng sau vụ việc, ngày 8/6, truyền thông Hàn Quốc đồng loạt đăng bài về bộ váy hở bạo của cô. Hàng chục tờ báo và trang tin điện tử xứ kim chi cùng đưa tin Bộ Văn hóa đang nghiên cứu hình thức xử phạt hành vi lệch chuẩn của Ngọc Trinh.</p>
                        <p class="mtb-15">Ngoài ra, nhiều bài báo khác còn đăng tải thêm bài liên quan, đề cập đến sở thích mặc phản cảm của Ngọc Trinh với các cụm từ như "gu thời trang táo bạo", "sở thích mặc đồ khác biệt"... </p>
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Tại thảm đỏ LHP Cannes, người mẫu Ngọc Trinh chỉ che bộ phận nhạy cảm trên cơ thể bằng chi tiết đính cườm mỏng manh, thưa thớt. Khi tạo dáng trên cầu thang, ánh mắt của mọi người đều đổ dồn vào cô ấy. Hở hang đến mức phạm pháp"</em>
								
							</p>
							<h6><b>Tờ Kinh tế toàn cầu tường thuật sự việc</b></h6>
						</div>

						<p class="mtb-15">Giống như công chúng Việt Nam và các nước khác, dư luận Hàn Quốc cũng bày tỏ thái độ tiêu cực với người mẫu Ngọc Trinh. Một số bình luận còn đề nghị cơ quan chức năng phải xử phạt thật nặng.</p>
                        <p class="mtb-15">Về vụ việc xử phạt mà báo Hàn đăng tải, Bộ trưởng Bộ Văn hóa, Thể thao và Du lịch Nguyễn Ngọc Thiện đã chia sẻ thông tin này tại phiên chất vấn Quốc hội chiều 5/6. Ông còn lên án hành vi lệch chuẩn cùng sở thích mặc phản cảm của người mẫu Ngọc Trinh.</p>'
                  
where IDBaiVIet ='BV14';
#------------------------
update baiviet
set TieuDe =N'Thử vị chocolate thủ công của người Nhật giữa lòng Đà Lạt'
where IDBaiVIet ='BV15';
update baiviet
set TieuDe_KhongDau =N'Thu-vi-chocolate-thu-cong-cua-nguoi-Nhat-giua-long-Da-Lat'
where IDBaiVIet ='BV15';
update baiviet
set NoiDungTomTat =N'Cửa hàng kiêm quán cà phê Đà Lạt được mở bởi người Nhật mới toanh này sẽ làm ấm lòng bạn bằng một tách cacao nóng hổi, đậm vị chocolate nguyên chất.'
where IDBaiVIet ='BV15';
update baiviet
set NoiDung =N'<p class="mt-30">Cacaoken, quán cà phê với thực đơn chuyên về các món tráng miệng chocolate là địa điểm lý tưởng ở thành phố xinh đẹp này mà bạn nên cho vào danh sách "sẽ đến" của mình. Trong thời tiết se lạnh của Đà Lạt (Lâm Đồng), còn gì tuyệt hơn việc được nhâm nhi một tách cacao nóng đậm đà?
</p>
						
						<p class="mtb-15">Quán nằm trong một biệt thự nhỏ, hơi khuất đằng sau những hàng cây xanh um tùm. Không gian quán nổi bật với tông màu trắng tinh khôi. Khi bước vào cửa hàng mới toanh này, bạn sẽ bị choáng ngợp bởi những kệ trưng bày các loại chocolate được làm thủ công tại chính xưởng của cửa hàng. </p>
                        <p class="mtb-15">Các món tráng miệng, đồ uống của quán đều xoay quanh một nguyên liệu chính là chocolate. Loại nguyên liệu này là sản phẩm của sự chọn lọc kỹ lưỡng và kỹ thuật làm chocolate chuyên nghiệp, dưới bàn tay quản lý tỉ mỉ của một người Nhật Bản. Chính vì được làm thủ công, bạn sẽ nhận thấy sự đậm đà khác biệt khi thử qua các loại chocolate hay các món tráng miệng ở đây. </p>
						<p class="mtb-15">Vì có chủ là người Nhật Bản, quán sẽ mang đậm dấu ấn tinh tế, tối giản từ không gian đến cách trình bày món ăn. Ngoài ngôi biệt thự trắng xinh xắn, quán còn một quầy hàng nhỏ khác được thiết kế giống hệt những quầy hàng rong bán bánh đậu đỏ, bánh mực takoyaki ở Nhật Bản.</p>
                        <p class="mtb-15">Quán còn thể hiện bản sắc Nhật Bản của mình khi đưa món bánh cá taiyaki vào menu. Bánh cá là món best-seller của cửa hàng. Bánh có lớp vỏ thơm giòn với nhân chocolate tan chảy, nóng hổi bên trong, rất ngon khi ăn nóng. Một điểm đáng lưu ý là món bánh cá chỉ được bán từ buổi chiều.</p>
                        <p class = "mtb-15">Một món ăn nổi bật khác trên thực đơn quán ngoài cacao nóng và bánh cá là lẩu chocolate. Loại lẩu này rất thích hợp để ăn cùng gia đình và bạn bè. Khi gọi món, bạn sẽ được phục vụ trái cây tươi, chocolate, kem cùng một nồi chocolate nhỏ đang được đun nóng. Lúc ăn, bạn chấm các loại topping vào sốt chocolate trong nồi để thưởng thức.</p>'
                  
where IDBaiVIet ='BV15';
#----------------------
update baiviet
set TieuDe =N'Muôn cách "chill" hè ngay tại Sài Gòn'
where IDBaiVIet ='BV16';
update baiviet
set TieuDe_KhongDau =N'Muon-cach-chill-he-ngay-tai-Sai-Gon'
where IDBaiVIet ='BV16';
update baiviet
set NoiDungTomTat =N'Hè là dịp để các bạn trẻ tạm gác lại những kỳ học căng thẳng, thỏa sức tận hưởng những điều mới lạ, độc đáo. Trong đó, tổ hợp giải trí trên cao ngay tại Sài Gòn là gợi ý thú vị.'
where IDBaiVIet ='BV16';
update baiviet
set NoiDung =N'<p class="mt-30">Tổ hợp giải trí trên cao thuộc trung tâm thương mại (TTTM) Gigamall có diện tích gần 30.000 m2, gồm trung tâm trò chơi - giải trí Jazzy Paradise và JP Sky Zone. Nơi đây mang đến các hoạt động giải trí, công nghệ, ẩm thực, mua sắm… phong phú, nhằm phục vụ đa dạng nhu cầu khách hàng, đặc biệt là giới trẻ trong dịp hè này. 
</p>
						
						<p class="mtb-15">Không cần phải đi xa để cảm nhận hết hương vị mùa hè, giới trẻ chỉ cần rủ nhau đến Gigamall để trải nghiệm những điều thú vị và mới lạ. Tại trung tâm trò chơi - giải trí Jazzy Paradise, các bạn trẻ có thể vui chơi thoả thích với khu trò chơi hiện đại được đầu tư lên đến hàng triệu đô. Khu trò chơi gồm các trò vận động, dancing, dòng đua xe thế hệ mới, máy đẩy quà có giá trị lớn như iPhone, iPad, tai nghe JBL và giày thể thao thương hiệu lớn.</p>
                        <p class="mtb-15">Đặc biệt, trải nghiệm thực tế ảo 9D chính thức có mặt tại đây với hệ thống xem phim 9D, khác biệt so với các công nghệ phát 4D, 5D… ra mắt trước đây. Công nghệ phim 9D được kết hợp bởi công nghệ ảnh nổi 3D, ghế chuyển động 4D và tương tác nhân vật 7D.</p>
						
						<p class="mtb-15">Chỉ cần đeo kính thực tế ảo tích hợp sẵn màn hình bên trong và ngồi trên ghế hình vỏ trứng, có tác dụng tạo hiệu ứng âm thanh vòm sống động cùng các hiệu ứng như mưa, gió, rung lắc..., bạn như lạc vào thế giới phiêu lưu mạo hiểm đầy cảm giác mạnh.</p>
                        <p class="mtb-15">Với công nghệ thực tế ảo 9D, khách tham quan sẽ được trải nghiệm không gian siêu thực, trí tưởng tượng của người xem về bộ phim hoàn toàn độc lập, hình ảnh thay đổi tùy theo góc nhìn, việc tương tác với nhân vật trong phim ở mọi góc (360 độ) độc đáo và dễ dàng. Hiện có khoảng hơn 100 phim 9D với nhiều thể loại khác nhau từ phiêu lưu, mạo hiểm, kinh dị cho đến khoa học viễn tưởng, công nghệ, hoạt hình.</p>
                        <p class="mtb-15">Ngoài ra, Jazzy Paradise còn có các khu vực khác như JP Game & Bowling, Rainbow Fun, JP World, phòng chiếu mái vòm Dome Theater với công nghệ chiếu 720 độ… Tất cả cùng mang đến không gian rộng rãi, thoáng mát, trang thiết bị hiện đại, hứa hẹn chinh phục những bạn trẻ yêu thích công nghệ kết hợp giải trí.</p>
                        <p class="mtb-15">Bên cạnh đó, JP Sky Zone với tổ hợp nhà hàng JP Toppers Buffet Restaurant, sân khấu ngoài trời JP Theatre và Saigon Tonight, JP Garden và khu thuỷ cung 3D tại lầu 8 hứa hẹn mang đến cho giới trẻ những trải nghiệm đáng nhớ. Dù mới đi vào hoạt động, điểm đến độc đáo này vẫn được giới trẻ đánh giá là một trong những rooftop thú vị nhất của Sài Gòn.</p>'
                  
where IDBaiVIet ='BV16';
#----------------------
update baiviet
set TieuDe =N'Điện mặt trời áp mái - hệ thống năng lượng tương lai'
where IDBaiVIet ='BV17';
update baiviet
set TieuDe_KhongDau =N'Dien-mat-troi-ap-mai-he-thong-nang-luong-tuong-lai'
where IDBaiVIet ='BV17';
update baiviet
set NoiDungTomTat =N'Đi cùng sự phát triển của cuộc cách mạng công nghiệp 4.0 (CMCN 4.0), hệ thống năng lượng mặt trời dần phổ biến trong vài năm gần đây, đặc biệt trên địa bàn thành phố Hà Nội.'
where IDBaiVIet ='BV17';
update baiviet
set NoiDung =N'<p class="mt-30">Theo đó, ông Nguyễn Xuân Thắng, trưởng ban kinh doanh Tổng công ty Điện lực TP Hà Nội (EVN Hanoi), những năm gần đây, phát triển các nguồn năng lượng tái tạo, đặc biệt là năng lượng mặt trời, được đánh giá là có tiềm năng tại Việt Nam.
</p>
						
						<p class="mtb-15">EVN Hanoi cho triển khai lắp đặt hệ thống điện mặt trời áp mái tại trụ sở tổng công ty, trung tâm sửa chữa điện nóng (hotline), Công ty Điện lực Nam Từ Liêm, các trạm biến áp 110-220 kV… Việc sử dụng hệ thống năng lượng mặt trời sẽ góp phần tiết kiệm điện, tăng hiệu quả sản xuất kinh doanh đồng thời bảo vệ môi trường, ứng phó biến đổi khí hậu.</p>
                        <p class="mtb-15">Nhờ tận dụng diện tích mái nhà tại các công ty điện lực trên địa bàn Hà Nội, EVN Hanoi triển khai lắp đặt giảm chi phí và lượng điện năng tiêu thụ tại trụ sở và các trạm biến áp. Điều này góp phần giảm công suất nguồn cho lưới điện Hà Nội. Đồng thời, việc lắp đặt hệ thống năng lượng mặt trời áp mái sẽ che được việc chiếu nắng trực tiếp từ mặt trời vào các tòa nhà, công sở. </p>
						<p class="mtb-15">Ông Thắng cho biết, hệ thống năng lượng mặt trời áp mái là một phát minh lớn của thế giới. Đối với khách hàng tại thủ đô, việc lắp đặt hệ thống điện mặt trời trên mái nhà giảm sự lệ thuộc vào hệ thống năng lượng hiện phổ thông như lưới điện quốc gia. Nhờ đó, nhiều phương án được lựa chọn khi hệ thống điện có sự cố ngắn hạn trong những ngày thời tiết nắng nóng cực đoan.</p>
                        <p class="mtb-15">Tiếp theo, điện mặt trời giúp giảm chi phí năng lượng về tầm nhìn lâu dài cho doanh nghiệp. Cuối cùng, năng lượng này cũng một phần chung tay góp sức vì một xã hội sử dụng năng lượng sạch, giảm bớt gánh nặng cho các nhà máy điện, khi các nguồn tài nguyên như than đá, thủy điện dần cạn kiệt.</p>
                        <p class="mtb-15">Với giá thành hợp lý, đa dạng sản phẩm và tiện nghi về mẫu mã, hệ thống điện mặt trời áp mái ngày càng phát triển để đáp ứng các yêu cầu của khách hàng, hướng tới phát triển năng lượng sạch và tiết kiệm năng lượng quốc gia.</p>
                        <p class="mtb-15">Theo chuyên trang Hệ thống tự động hóa - Đại học Bách khoa Hà Nội, hệ thống năng lượng mặt trời là hệ thống chuyển năng lượng mặt trời (bức xạ ánh sáng và nhiệt) sang dạng năng lượng cần sử dụng. Hệ thống năng lượng mặt trời gồm các tấm panel pin mặt trời được làm từ vật liệu bán dẫn, có chức năng chuyển hóa năng lượng bức xạ nhiệt sang năng lượng điện.</p>
                        <p class="mtb-15">Công suất phát của nguồn điện phụ thuộc hoàn toàn vào cường độ ánh sáng mặt trời và diện tích của tấm panel điện. Năng lượng mặt trời chuyển hóa thành năng lượng điện thông qua các tấm panel pin, được sử dụng trực tiếp như chiếu sáng, phục vụ các thiết bị trong nhà. Điện mặt trời dư thừa có thể dự trữ vào ác quy hoặc bán lại điện cho các công ty điện lực.</p>'
                  
where IDBaiVIet ='BV17';
#----------------------
update baiviet
set TieuDe =N'Làm nhà bằng 5.000 ống hút, vlogger bị chê `tận cùng của thiếu ý thức`'
where IDBaiVIet ='BV18';
update baiviet
set TieuDe_KhongDau =N'Lam-nha-bang-5-000-ong-hut-vlogger-bi-che-tan-cung-cua-thieu-y-thuc'
where IDBaiVIet ='BV18';
update baiviet
set NoiDungTomTat =N'Nguyễn Thành Nam bị dân mạng chỉ trích là lãng phí, gây ô nhiễm môi trường khi quay video làm "ngôi nhà khổng lồ" từ 5.000 ống hút nhựa.'
where IDBaiVIet ='BV18';
update baiviet
set NoiDung =N'<p class="mt-30">Trong khi cộng đồng đang tích cực kêu gọi hạn chế rác thải nhựa để bảo vệ môi trường, thử thách làm ngôi nhà khổng lồ từ 5.000 ống hút của vlogger NTN (tên thật Nguyễn Thành Nam) đang khiến dân mạng bức xúc.
</p>
						
						<p class="mtb-15">Sau khi đổ 7 chậu ống hút màu đen (loại thường dùng để uống trà sữa) ra đầy một góc phòng, Nguyễn Thành Nam đề nghị người theo dõi đếm xem liệu có đủ số lượng như mình nói hay không. </p>
                        <p class="mtb-15">Theo lời vlogger quê Thái Bình, phải mất 8 giờ để dính ống hút thành các tấm nhựa và thêm 3 ngày liên tiếp để hoàn thành sản phẩm. </p>
						<p class="mtb-15">Anh còn "tự hào" khẳng định đây là "ngôi nhà làm từ ống hút to nhất thế giới".</p>
                        <p class="mtb-15">Anh chàng cũng tranh thủ "câu like", tuyên bố sẽ thực hiện thử thách 24 giờ sống trong căn nhà ống hút mới làm nếu video đạt 200.000 lượt thích. </p>
                        <p class="mtb-15">Từng gây tranh cãi với loạt thử thách được xem là nhảm nhí, vô bổ như "Tắm với 50 kg bỏng ngô", "thử thách ngủ ngoài đường", "thử thách 24h sống nghèo khổ"... dân mạng không cảm thấy lạ khi lần này Thành Nam tiếp tục nhận "cơn mưa gạch đá".</p>
                        <p class="mtb-15">Dưới video và bài đăng của anh trên trang cá nhân, người theo dõi cho rằng việc dùng 5.000 ống hút còn mới, khả năng cao không thể tái sử dụng là lãng phí và ảnh hưởng lớn tới môi trường.</p>
                        <p class="mtb-15">Tài khoản Khang Mai thắc mắc: "Sau khi làm video xong thì những ống hút nhựa này sẽ đi về đâu? Người ta thì đang hạn chế sử dụng rác thải nhựa, trước khi làm cũng phải nghĩ đến hậu quả của nó chứ".</p>'
                  
where IDBaiVIet ='BV18';
#----------------------
update baiviet
set TieuDe =N'Cuộc sống giản dị ăn cơm cá kho, tưới cây, nhặt cỏ của Hoài Linh'
where IDBaiVIet ='BV19';
update baiviet
set TieuDe_KhongDau =N'Cuoc-song-gian-di-an-com-ca-kho-tuoi-cay-nhat-co-cua-Hoai-Linh'
where IDBaiVIet ='BV19';
update baiviet
set NoiDungTomTat =N'Nam danh hài chia sẻ hai năm qua anh hạn chế nhận game show, dành thời gian nghỉ ngơi. Niềm vui hiện tại của anh là chăm sóc cây cối, nhặt cỏ ở nhà tổ.'
where IDBaiVIet ='BV19';
update baiviet
set NoiDung =N'<p class="mt-30">Hơn 20 năm gắn bó với nghề diễn, là ngôi sao được khán giả yêu thích song ở Hoài Linh luôn toát lên vẻ giản dị, gần gũi. Trong hậu trường sân khấu hay ngay cả trên thảm đỏ, anh đều trung thành với áo bà ba, dép lào. Ở sự kiện, nam danh hài luôn tìm chỗ ngồi ít ồn ào nhất. 
</p>
						
						<p class="mtb-15">Hai năm qua, nam danh hài hạn chế tham gia game show, hiếm hoi dự sự kiện. Trước đó, anh phủ sóng các chương trình trên HTV, THVL, VTV3. Hoài Linh chia sẻ về sự thay đổi công việc: “Bây giờ đền phủ xong rồi, tôi không cần phải lao vào kiếm tiền như trước. Tôi cũng không còn trẻ nữa nên để cho các em nhỏ có cơ hội làm chương trình. Tôi kén chọn show hơn trước, chương trình nào có ý nghĩa, nhân văn mới tham gia".</p>
                        <p class="mtb-15">Nói về cuộc sống của Hoài Linh sau ánh đèn sân khấu, hào quang của nghề diễn, anh cười cho biết: "Tôi đơn giản lắm, với người khác có thể là nhàm chán đấy. Hàng ngày, niềm vui của tôi là tưới cây, nhặt cỏ ở đền phủ". </p>
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Tôi đã xác định mình phải kiếm tiền để làm nhà tổ thì cứ quyết tâm làm, ai nói gì tôi cũng không quan tâm. Tôi làm đền phủ đâu có gì xấu xa. Mỗi người có một niềm tin, mục tiêu sống khác nhau"</em>
								
							</p>
							<h6><b>Hoài Linh</b></h6>
						</div>

						<p class="mtb-15">Khi được hỏi người hâm mộ đánh giá Hoài Linh khiêm nhường, anh thừa nhận mình hiểu bản thân, biết ưu nhược điểm ở đâu.</p>
                        <p class="mtb-15">Về mối quan hệ với con nuôi Hoài Lâm, Hoài Linh từ chối chia sẻ. Vừa qua, thông tin Hoài Lâm trở lại diễn trong live show của nam danh hài sau tuyên bố nghỉ ca hát khiến khán giả chú ý. Nhiều ý kiến cho rằng quán quân Gương mặt thân quen 2014 trở lại vì bố nuôi nhưng Hoài Linh phủ nhận: "Tôi không nhắc tới Hoài Lâm. Cát Phượng mời là chuyện của cô ấy, tôi không tham gia".</p>'
                  
where IDBaiVIet ='BV19';
#----------------------
update baiviet
set TieuDe =N'Cảnh nóng của cô bé 13 tuổi trong `Vợ ba`, trách nhiệm thuộc về ai?'
where IDBaiVIet ='BV20';
update baiviet
set TieuDe_KhongDau =N'Canh-nong-cua-co-be-13-tuoi-trong-Vo-ba-trach-nhiem-thuoc-ve-ai'
where IDBaiVIet ='BV20';
update baiviet
set NoiDungTomTat =N'Nam danh hài chia sẻ hai năm qua anh hạn chế nhận game show, dành thời gian nghỉ ngơi. Niềm vui hiện tại của anh là chăm sóc cây cối, nhặt cỏ ở nhà tổ.'
where IDBaiVIet ='BV20';
update baiviet
set NoiDung =N'<p class="mt-30">Nhà sản xuất “Vợ ba” từng dọa kiện báo chí, trong khi một vài người cho rằng việc phản biện một tác phẩm như vậy là “giết chết điện ảnh”. Nhưng sự thật vẫn phải là sự thật.
</p>
						
						<p class="mtb-15">Vợ ba là phim đầu tay của đạo diễn trẻ Nguyễn Phương Anh (Ash Mayfair). Phim có sự tham gia của nhiều diễn viên có tiếng, nhưng đáng quan tâm hơn cả là vai nữ chính được giao cho Nguyễn Phương Trà My, một cô gái 13 tuổi.</p>
                        <p class="mtb-15">Phim được quay tại Ninh Bình và Cao Bằng, với kinh phí sản xuất lên tới 1,2 triệu USD (khoảng 28 tỷ đồng). Đây được xem là một con số “khủng” với thị trường điện ảnh trong nước. </p>
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Việc nhà sản xuất phim Vợ ba cho bé Trà My trực tiếp đóng cảnh nóng ở tuổi 13 là vi phạm các điều trong mục 1 Chương XI của Luật Lao động năm 2012"</em>
								
							</p>
							<h6><b>Luật sư Trần Thị Ngọc Nữ, Chi hội trưởng chi hội Luật sư - Hội Bảo vệ quyền trẻ em TP.HCM</b></h6>
						</div>

						<p class="mtb-15">Trước sức ép của báo chí và dư luận, đoàn làm phim sau đó chủ động xin dừng chiếu Vợ ba kèm với một tâm thư gửi đến giới truyền thông. Theo đó, phía đoàn phim Vợ ba khẳng định việc dừng phim là do họ chủ động chứ không phải bị cấm chiếu, đồng thời cho biết sẽ xem xét kiện các trang tin, báo chí vì đã làm tổn hại đến phim và diễn viên.</p>
                        <p class="mtb-15">Cùng thời điểm đó, khi phim đã dừng chiếu trên mạng xã hội, một số người chuyển sang phản ứng gay gắt với báo chí. Một số thành viên của đoàn làm phim và một bộ phận trên mạng đã dùng hashtag “yeuvoba” (Yêu Vợ ba), đồng thời khẳng định việc Vợ ba bị dừng chiếu, bị lên án là “giết chết nghệ thuật”, “kìm hãm sự phát triển của điện ảnh Việt”, “sự đau lòng đáng thương"...</p>'
                  
where IDBaiVIet ='BV20';
#----------------------
update baiviet
set TieuDe =N'Chi Pu nhiều lần gây tranh cãi vì trang phục giống nhà mốt quốc tế'
where IDBaiVIet ='BV21';
update baiviet
set TieuDe_KhongDau =N'Chi-Pu-nhieu-lan-gay-tranh-cai-vi-trang-phuc-giong-nha-mot-quoc-te'
where IDBaiVIet ='BV21';
update baiviet
set NoiDungTomTat =N'Giọng ca "Đóa hoa hồng" diện jumpsuit xếp nếp có nhiều điểm tương đồng với thiết kế của Alexander McQueen.'
where IDBaiVIet ='BV21';
update baiviet
set NoiDung =N'<p class="mt-30">Đạo nhái ý tưởng từ lâu đã trở thành "chuyện thường ngày ở huyện" trong giới thời trang Việt. Chi Pu đã nhiều lần gây tranh cãi với trang phục học hỏi ý tưởng từ nhà mốt quốc tế. Mới đây, nữ ca sĩ tiếp tục vướng nghi án đạo nhái với bộ cánh có nhiều điểm tương đồng thiết kế của Alexander McQueen. Điểm giống nhau đến từ phần xếp nếp hình đóa hoa hồng trên cầu vai. Nhiều người nhận xét chi tiết sắp xếp vải của nhà mốt Pháp tinh tế, phù hợp vóc dáng người mặc còn bộ cánh của Chi Pu thô kệch, tạo cảm giác nặng nề. 
</p>
						
						<p class="mtb-15">Giọng ca Đóa hoa hồng từng bị chỉ trích với bộ trang phục lấp lánh giống các diễn viên xiếc. Tuy nhiên, trang phục có nhiều điểm tương đồng với thiết kế của Marc Jacobs từ phom dáng đến họa tiết. Điểm khác biệt so với bản gốc chính là màu sắc và cách đính kết trên trang phục chưa thật sự tinh tế, rườm rà.  </p>
                        <p class="mtb-15">Xuất hiện trên sân khấu âm nhạc, Chi Pu chọn áo crop-top ánh bạc đi kèm quần suông đính sequin lấp lánh. Mái tóc bob phù hợp với kiểu make up nhẹ nhàng, tập trung chủ yếu vào mắt và môi. Tuy nhiên, bộ cánh khiến khán giả liên tưởng đến hình ảnh Selena Gomez 7 năm trước, thậm chí giống đến 90% so với phiên bản gốc. Điểm khác biệt nằm ở việc biến tấu thiết kế thành áo dài tay, lược bỏ phần đính đá nặng nề cùng quần dài điểm thêm 2 đường kẻ sọc. </p>
						
						<p class="mtb-15">Chi Pu từng xuất hiện gợi cảm với mẫu váy voan lệch vai xẻ ngực xâu, đính kết hoa. Trang phục của Chi Pu bị phát hiện giống chiếc đầm Heidi Klum diện trên thảm đỏ Oscar 2016. Nhiều người chỉ ra mẫu váy của Chi Pu có nhiều điểm tương đồng với thiết kế của Marchesa. Chất liệu, phom dáng cho đến chi tiết đính kết trên vai và tay áo được đánh giá tương tự 95% so với bản gốc.</p>
                        <p class="mtb-15">Trang phục của Chi Pu do Đỗ Long thực hiện được cho là "lấy cảm hứng" từ thiết kế của nhà mốt Pamella Roland. Có thể thấy, hai bộ cánh dường như chỉ khác nhau ở chất liệu và màu sắc.</p>'
                  
where IDBaiVIet ='BV21';
#----------------------
update baiviet
set TieuDe =N'Phải nộp phí vô lý qua trạm T2, người dân có thể khởi kiện Bộ GTVT'
where IDBaiVIet ='BV22';
update baiviet
set TieuDe_KhongDau =N'Phai-nop-phi-vo-ly-qua-tram-T2-nguoi-dan-co-the-khoi-kien-Bo-GTVT'
where IDBaiVIet ='BV22';
update baiviet
set NoiDungTomTat =N'Luật sư cho rằng người dân có thể khởi kiện Bộ GTVT nếu có căn cứ chứng minh đơn vị này phê duyệt vị trí đặt trạm thu phí T2 làm ảnh hưởng đến quyền, lợi ích hợp pháp.'
where IDBaiVIet ='BV22';
update baiviet
set NoiDung =N'<p class="mt-30">Trạm thu phí T2 cùng với rất nhiều trạm BOT trên cả nước bị liệt vào danh sách đặt sai vị trí gây thiệt hại kinh tế cho người dân. Đã có nhiều hình thức phản đối các trạm này như dùng tiền lẻ, tiền mệnh giá lớn trả phí, dừng xe gây ùn tắc…
</p>
						
						<p class="mtb-15">Vì nhiều lý do, rất ít người chọn đấu tranh bằng con đường pháp lý là giải pháp bảo vệ quyền lợi. Và những bức xúc vẫn chưa khép lại dù người không sử dụng dịch vụ vẫn phải nộp tiền phi lý.

</p>
                        <p class="mtb-15">Ở đây khó có thể truy trách nhiệm của doanh nghiệp. Họ đề xuất vị trí đặt trạm dựa trên tính toán về lưu lượng phương tiện và số năm khai thác để đảm bảo phương án tài chính (thu hồi vốn). Điều này dẫn đến xu hướng doanh nghiệp luôn chọn đặt trạm ở vị trí có lưu lượng giao thông lớn nhất có thể. </p>
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Việc để trạm này đặt sai vị trí có phần trách nhiệm lớn của Bộ GTVT trong công tác thẩm định, phê duyệt"</em>
								
							</p>
							<h6><b> tiến sĩ Bình nhìn nhận</b></h6>
						</div>

						<p class="mtb-15">Đồng quan điểm, luật sư Vũ Tiến Vinh (Công ty luật Bảo An - Đoàn luật sư TP Hà Nội) cho biết án phí khởi kiện vụ án hành chính (sơ thẩm hoặc phúc thẩm) hiện nay là 300.000 đồng, không phân biệt cấp nào ban hành quyết định hành chính bị kiện.</p>
                        <p class="mtb-15">Tuy nhiên, trên thực tế, luật sư Vũ Tiến Vinh cho rằng việc khởi kiện hành chính này sẽ rất khó khăn bởi quá trình kiện sẽ rất phức tạp, kéo dài do liên quan đến nhiều ban ngành, tổ chức. Người khởi kiện sẽ phải thực hiện nhiều công việc có thể nói là quá sức đối với họ.</p>'
                  
where IDBaiVIet ='BV22';
#----------------------
update baiviet
set TieuDe =N'Hai dự án metro ở Sài Gòn đội vốn trên 2 tỷ USD'
where IDBaiVIet ='BV23';
update baiviet
set TieuDe_KhongDau =N'Hai-du-an-metro-o-Sai-Gon-doi-von-tren-2-ty-USD'
where IDBaiVIet ='BV23';
update baiviet
set NoiDungTomTat =N'Trong 5 dự án đường sắt đô thị được điểm danh, hai tuyến metro ở TP.HCM đội vốn trên 50.000 tỷ đồng.'
where IDBaiVIet ='BV23';
update baiviet
set NoiDung =N'<p class="mt-30">Trước phiên chất vấn, Bộ trưởng GTVT Nguyễn Văn Thể đã ký báo cáo gửi Quốc hội về một số nội dung liên quan đến nhóm vấn đề chất vấn tại kỳ họp này.
</p>
						
						<p class="mtb-15">Theo đó, Bộ Giao thông nêu danh nhóm 5 dự án đường sắt đô thị chậm tiến độ, tăng tổng mức đầu tư. Trong số này, 3 dự án do Hà Nội và TP.HCM làm chủ đầu tư, 2 dự án do Bộ Giao thông làm chủ đầu tư.

</p>
                        <p class="mtb-15">Cụ thể, dự án đường sắt đô thị TP.HCM, tuyến số 1 Bến Thành - Suối Tiên theo kế hoạch hoàn thành trong năm 2020. Dự án đề xuất điều chỉnh tổng mức đầu tư lên 47.325 tỷ đồng, dự kiến tăng 29.937 tỷ đồng so với tổng mức đầu tư được phê duyệt ban đầu. </p>
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Về cơ bản, việc để chậm tiến độ, tăng tổng mức đầu tư các dự án, trách nhiệm trước tiên thuộc về các chủ đầu tư, tuy nhiên các yếu tố chủ quan khác cũng là nguyên nhân chính gây ra việc chậm tiến độ, tăng tổng mức đầu tư"</em>
								
							</p>
							<h6><b>Bộ GTVT chỉ ra</b></h6>
						</div>

						<p class="mtb-15">Công tác đấu thầu, lựa chọn nhà thầu theo Bộ trưởng Giao thông cũng gặp nhiều vướng mắc, khó khăn do các ràng buộc phức tạp quy chế đấu thầu của các nhà tài trợ; hệ thống quy chuẩn còn nhiều bất cập.</p>
                        <p class="mtb-15">Về vấn đề tăng tổng mức đầu tư dự án chủ yếu do chất lượng công tác lập, thẩm định dự án đầu tư. Trách nhiệm trong việc này thuộc về chủ đầu tư, tư vấn thực hiện dự án.

Liên quan đến bất cập trong cơ chế vốn ODA, Bộ Giao thông nhận định đây là khó khăn chung, có liên quan đến trách nhiệm của rất nhiều cấp, bộ, ngành và cần được nghiên cứu, điều chỉnh cho phù hợp.</p>'
                  
where IDBaiVIet ='BV23';
#----------------------
update baiviet
set TieuDe =N'Thủ tướng kêu gọi `nói không với rác thải nhựa`'
where IDBaiVIet ='BV24';
update baiviet
set TieuDe_KhongDau =N'Thu-tuong-keu-goi-noi-khong-voi-rac-thai-nhua'
where IDBaiVIet ='BV24';
update baiviet
set NoiDungTomTat =N'Thủ tướng Nguyễn Xuân Phúc nêu rõ mục tiêu phấn đấu đến năm 2025 cả nước không sử dụng đồ nhựa dùng một lần.'
where IDBaiVIet ='BV24';
update baiviet
set NoiDung =N'<p class="mt-30">Sáng 9/6, tại khu vực Hồ Hoàn Kiếm, Hà Nội, Thủ tướng Nguyễn Xuân Phúc dự lễ ra quân toàn quốc phong trào chống rác thải nhựa.
</p>
						
						<p class="mtb-15">Dự lễ có Bí thư Trung ương Đảng, Chủ tịch Ủy ban Trung ương Mặt trận Tổ quốc Việt Nam Trần Thanh Mẫn, Phó thủ tướng Trịnh Đình Dũng, lãnh đạo các Bộ, ban ngành, địa phương, các tổ chức chính trị - xã hội, các tập đoàn, doanh nghiệp bán lẻ và đông đảo người dân.

</p>
                        <p class="mtb-15">Phát biểu tại buổi lễ, Thủ tướng nhấn mạnh rác thải nhựa đang là vấn đề nhức nhối mang tính toàn cầu. Mỗi năm lượng rác thải nhựa do con người thải ra đủ để phủ kín 4 lần diện tích bề mặt trái đất, trong đó 13 triệu tấn rác nhựa trôi nổi trên các đại dương. Rác thải nhựa đang tác động tiêu cực đến hệ sinh thái, môi trường sống, sức khỏe con người và sự phát triển bền vững của mỗi quốc gia. </p>
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Chính phủ kêu gọi cộng đồng doanh nghiệp cần nâng cao trách nhiệm xã hội, cùng chung tay chống rác thải nhựa, tích cực tham gia phân loại, thu hồi, tái chế, tái sử dụng túi nylon, sản phẩm nhựa sử dụng một lần; các cửa hàng, siêu thị, nhà hàng, khu du lịch, dịch vụ, khách sạn... không sử dụng túi nylon, sản phẩm nhựa dùng một lần; khuyến khích người mua sắm tự mang bao bì, túi đựng sử dụng nhiều lần, sử dụng sản phẩm thân thiện với môi trường."</em>
								
							</p>
							<h6><b>Chính Phủ nhấn mạnh</b></h6>
						</div>

						<p class="mtb-15">Từng cộng đồng, mỗi gia đình và từng người dân ngay từ bây giờ hãy thực hiện khẩu hiệu “nói không với rác thải nhựa” ngay từ những hành động nhỏ nhất, góp phần bảo vệ môi trường sống cho chúng ta và các thế hệ mai sau.</p>
                        <p class="mtb-15">Đoàn Thanh niên Cộng sản Hồ Chí Minh tiếp tục phát huy vai trò xung kích, chủ động, sáng tạo, tích cực triển khai các phong trào, hoạt động sâu rộng trong thế hệ trẻ, hướng đến nói không với rác thải nhựa. Cùng gia đình, cộng đồng và toàn xã hội thực hiện hiệu quả các chủ trương, cơ chế chính sách chống rác thải nhựa.

Chính phủ đề nghị Mặt trận Tổ quốc Việt Nam, các tổ chức chính trị - xã hội, các đoàn thể nhân dân cùng chung tay, đồng hành với các cấp các ngành trong việc đẩy mạnh tuyên truyền, vận động và giám sát thực hiện, góp phần đưa các chủ trương, cơ chế chính sách về chống rác thải nhựa đi vào thực tiễn cuộc sống.

Trong khuôn khổ sự kiện, Thủ tướng đã trao chứng nhận cho Liên minh chống rác thải nhựa với sự tham gia, cam kết của các đơn vị, tổ chức ngành hàng tiêu dùng, ngành hàng bán lẻ.

Sau đó, Thủ tướng và các đại biểu đi bộ đồng hành tại khu vực hồ Hoàn Kiếm để cổ vũ, hưởng ứng phong trào chống rác thải nhựa lan tỏa, phát triển mạnh mẽ hơn trên phạm vi cả nước.</p>'
                  
where IDBaiVIet ='BV24';
#----------------------
update baiviet
set TieuDe =N'Lĩnh 12 tháng tù vì 4 trái mít'
where IDBaiVIet ='BV25';
update baiviet
set TieuDe_KhongDau =N'Linh-12-thang-tu-vi-4-trai-mit'
where IDBaiVIet ='BV25';
update baiviet
set NoiDungTomTat =N'Sau khi cắt trộm 4 quả mít của nhà hàng xóm mang đi bán và bị phát hiện, Nguyễn Tấn Anh ở Tiền Giang bị tuyên 12 tháng tù.'
where IDBaiVIet ='BV25';
update baiviet
set NoiDung =N'<p class="mt-30">TAND thị xã Cai Lậy vừa mở phiên tòa xét xử với bị cáo Nguyễn Tấn Anh (28 tuổi, thường trú tại Cai Lậy, tỉnh Tiền Giang) về tội Trộm cắp tài sản.
</p>
						
						<p class="mtb-15">Theo cáo trạng, khoảng 22h ngày 9/6/2018, sau khi sử dụng ma túy tại nhà của Nguyễn Trọng Đậm (Long Khánh, Cai Lậy, Tiền Giang), bị cáo Tấn Anh rủ Đậm đi hái trộm mít bán lấy tiền tiêu xài và Đậm đồng ý.

</p>
                        <p class="mtb-15">Đậm đã đưa Tấn Anh đến vườn mít nhà ông Nguyễn Văn Thao cách đó khoảng 500 m cắt trộm 4 trái mít. Khi anh ta đang đem xuống vựa bán thì bị phát hiện. </p>

                        <p class="mtb-15">Tại phiên xử, HĐXX nhận định hành vi của bị cáo Tấn Anh là nguy hiểm cho xã hội. Tuy nhiên, bị cáo đã thành khẩn khai báo, ăn năn hối cải, mức độ thiệt hại không lớn.

HĐXX chấp nhận đề nghị của đại diện VKS tại tòa, tuyên phạt Tấn Anh 12 tháng tù.

Đối với hành vi của Nguyễn Trọng Đậm, do giá trị tài sản trộm cắp chưa đủ định lượng nên không cấu thành tội phạm.</p>'
                  
where IDBaiVIet ='BV25';
#----------------------
update baiviet
set TieuDe =N'Bi kịch của thiếu nữ mang thai bị người yêu đánh chết vì ghen'
where IDBaiVIet ='BV26';
update baiviet
set TieuDe_KhongDau =N'Bi-kich-cua-thieu-nu-mang-thai-bi-nguoi-yeu-danh-chet-vi-ghen'
where IDBaiVIet ='BV26';
update baiviet
set NoiDungTomTat =N'Cho rằng bạn gái không chung thủy, Thiện nổi cơn ghen rồi đánh đập thiếu nữ 17 tuổi. Sau 4 ngày nhập viện, nạn nhân qua đời khi đang mang thai.'
where IDBaiVIet ='BV26';
update baiviet
set NoiDung =N'<p class="mt-30">Bị cáo năm nay tròn 20 tuổi. Anh ta bị VKSND Hà Nội truy tối tội Giết người với tình tiết tăng nặng là có tính chất côn đồ, khung hình phạt cao nhất ở mức tử hình.

Sau khi rời quê ở huyện ngoại thành vào cuối năm 2011, anh ta đến thuê phòng trọ trong ngôi nhà 5 tầng trên phố Nguyễn Khiết (quận Hoàn Kiếm).
</p>
						
						<p class="mtb-15">Không có việc làm, Thiện sống nhờ bạn bè và anh em xã hội. Thi thoảng cần người làm, họ rủ Thiện đi giúp, trả công theo ngày.

Còn Yến, cô gái sinh năm 2001 có gia đình ở trên con phố trung tâm nội thành Hà Nội. Yến không sống cùng người thân mà bỏ đi lang thang.

</p>
                        <p class="mtb-15">háng 4/2018, Thiện quen và nảy sinh quan hệ yêu đương với Yến khi thiếu nữ ở tuổi 17. Hơn một tháng trò chuyện trên mạng, họ mới gặp mặt. Sau vài ngày hẹn hò, Yến dọn về ở cùng người yêu.

Đôi uyên ương đều thất nghiệp lại phải nuôi lẫn nhau nên chỉ sau chục ngày sống chung, họ bắt đầu mâu thuẫn.</p>
						
						<p class="mtb-15">Khai trước tòa sơ thẩm, bị cáo trình bày lúc anh ta đi vắng, Yến đã quan hệ tình dục với người khác ngay tại căn phòng trọ của 2 người từng sinh sống.

Trưa 11/6/2018, Thiện nổi cơn ghen nên cả 2 tiếp tục xảy ra cãi vã. Thấy bạn gái bỏ ra ngoài, bị cáo cầm cây chổi đuổi theo rồi đánh. Yến trở lại phòng trọ, tiếp tục bị người yêu dùng dây sạc điện thoại quất vào người.</p>
                        <p class="mtb-15">rong cơn cuồng nộ, Thiện đấm đá người con gái yếu ớt dù nạn nhân van xin, kêu cứu. Một số bạn bè của Thiện phát hiện sự việc, đến can ngăn nhưng bị anh ta đuổi ra ngoài.

Nửa giờ sau, Thiện vẫn hung hăng đánh đập bạn gái khiến khu nhà trọ náo loạn. Theo lời khai, trong lúc hành hạ nạn nhân, Thiện cầm cánh cửa sổ đánh vào đầu Yến.

Thấy thiếu nữ co giật, những người chứng kiến định đưa Yến đi cấp cứu nhưng Thiện ngăn cản. Phải đến khi có người dọa đánh, Thiện mới chịu buông tha.

Nạn nhân được đưa đến Bệnh viện Thanh Nhàn, còn Thiện bỏ về quê. Sau 4 ngày nhập viện, Yến tử vong do suy hô hấp và chấn thương sọ não.

Chỉ vài giờ sau khi biết bạn gái qua đời, Thiện ra công an đầu thú.</p>'
                  
where IDBaiVIet ='BV26';
#----------------------
update baiviet
set TieuDe =N'Tạm giữ người phụ nữ mang 50.000 USD qua biên giới'
where IDBaiVIet ='BV27';
update baiviet
set TieuDe_KhongDau =N'Tam-giu-nguoi-phu-nu-mang-50-000-USD-qua-bien-gioi'
where IDBaiVIet ='BV27';
update baiviet
set NoiDungTomTat =N'Phương mang 50.000 USD từ Campuchia qua An Giang để cho chồng làm ăn thì bị lực lượng biên phòng phát hiện.'
where IDBaiVIet ='BV27';
update baiviet
set NoiDung =N'<p class="mt-30">Ngày 9/6, Đồn Biên phòng Vĩnh Ngươn (An Giang) tiếp tục tạm giữ Phan Thị Hoài Phương (33 tuổi, ngụ phường Châu Phú A, TP Châu Đốc) để làm rõ hành vi Vận chuyển trái phép ngoại tệ qua biên giới.
</p>
						
						<p class="mtb-15">Sáng một ngày trước, Phương dắt xe tay ga biển số An Giang đi từ phía sòng bạc ở Tà Mâu (huyện Prey Chul Sar, tỉnh Tà Keo, Campuchia) qua An Giang. Phát hiện dấu hiệu nghi vấn, lực lượng biên phòng yêu cầu Phương dừng lại để kiểm tra.

</p>
                        <p class="mtb-15">Trong túi xách và trên người Phương lúc đó có 5 cọc tiền trị giá 50.000 USD. Đồn Biên phòng Vĩnh Ngươn đã lập biên bản tạm giữ người, phương tiện và tang vật để điều tra.
 </p>
						
						<p class="mtb-15">Phương khai mượn số ngoại tệ trên của người đàn ông tên Mít (khoảng 40 tuổi), tại casino ở Campuchia. Khi mang qua An Giang để gửi cho chồng làm ăn thì bị lực lượng biên phòng bắt giữ.</p>
                     '
                  
where IDBaiVIet ='BV27';
