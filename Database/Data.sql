
#------------------------------PHÂN HỆ NGƯỜI DÙNG
select * from phanhenguoidung;
insert into phanhenguoidung values('PH1',N'Quản trị viên');
insert into phanhenguoidung values('PH2',N'Phóng viên');
insert into phanhenguoidung values('PH3',N'Biên tập viên');
insert into phanhenguoidung values('PH4',N'Độc giả ');
insert into phanhenguoidung values('PH5',N'Độc giả vãng lai');
#--------------------------------------HÌNH ẢNH
insert into urlhinhanh values(null,N'video-4-300x300.jpg');
insert into urlhinhanh values(null,'avatar.jpg');
#------------------------------------NGƯỜI DÙNG
insert into nguoidung values(null,'nhatpy','123456',N'Võ Hoàng Nhật',N'Nam','1998-02-02','vonhathoang10@gmail.com','0987620024','PH1',null,null,null,null,2);
insert into nguoidung values(null,'namvt','12345678',N'Vũ Thành Nam',N'Nam','1997-12-20','yvisvu@gmail.com','0987620025','PH2',null,null,null,'yvisvu',2);
insert into nguoidung values(null,'hoangcp','123456',N'Lê Văn Hoàng',N'Nam','1998-02-12','hoang19980@gmail.com','0987620555','PH3',null,null,null,null,2);
insert into nguoidung values(null,'hoadl','123456789',N'Mai Hương Hoa',N'Nữ','1996-07-22','cobebanhoa@gmail.com','0987627586','PH4','2019-05-01','2019-05-08',N'Còn hạn',null,2);
insert into nguoidung values(null,'daudl','123456789',N'Mai An Dâu',N'Nữ','1996-08-22','cobebandau@gmail.com','0987627588','PH4','2019-05-01','2019-05-08',N'Còn hạn',null,2);
insert into nguoidung values(null,'minhhn','0123456789',N'Lữ Thế Minh',N'Nam','1997-10-25','minhgiangho@gmail.com','098762235','PH5',null,null,null,null,2);
insert into nguoidung values(null,'sonhcm','0123456789',N'Giang Hoàng Sơn',N'Nam','1997-12-10','sondaica@gmail.com','098762356','PH5',null,null,null,null,2);

#------------------------------------TÀI KHOẢN THẺ
insert into taikhoanthe values('HN29755974',4,250000);
insert into taikhoanthe values('HN29755584',5,50000);

#------------------------------------CHUYÊN MỤC
select * from chuyenmuc;
insert into chuyenmuc values('CM1',N'Kinh doanh','kinhdoanh',null);
insert into chuyenmuc values('CM2',N'Thể thao','thethao',null);
insert into chuyenmuc values('CM3',N'Công nghê','congnghe',null);
insert into chuyenmuc values('CM4',N'Du lịch','dulich',null);
insert into chuyenmuc values('CM5',N'Đời sống','doisong',null);
insert into chuyenmuc values('CM6',N'Xã hội','xahoi',null);
insert into chuyenmuc values('CM7',N'Giải trí','giaitri',null);
insert into chuyenmuc values('CM8',N'Thời sự','thoisu',null);
insert into chuyenmuc values('CM9',N'Pháp luật','phapluat',null);

insert into chuyenmuc values('CM11',N'Tài chính','taichinh','CM1');
insert into chuyenmuc values('CM12',N'Bất động sản','doisong','CM1');
insert into chuyenmuc values('CM21',N'Bóng đá','bongda','CM2');
insert into chuyenmuc values('CM22',N'Thể thao thể giới','thethaothegioi','CM2');
insert into chuyenmuc values('CM31',N'Smart phone','smartphone','CM3');
insert into chuyenmuc values('CM32',N'Trí tuệ nhân tạo','trituenhantao','CM3');
insert into chuyenmuc values('CM41',N'Du lịch Việt Nam','dulichvietnam','CM4');
insert into chuyenmuc values('CM42',N'Du lịch thế giới','dulichthegioi','CM4');

insert into chuyenmuc values('CM51',N'Nhân vật','nhanvat','CM5');
insert into chuyenmuc values('CM52',N'Xem-Ăn-Chơi','xemanchoi','CM5');
insert into chuyenmuc values('CM61',N'Sống xanh','songxanh','CM6');
insert into chuyenmuc values('CM62',N'HOT trên mạng','hotrenmang','CM6');
insert into chuyenmuc values('CM71',N'Showbiz','showbiz','CM7');
insert into chuyenmuc values('CM72',N'Fashion','fashion','CM7');
insert into chuyenmuc values('CM81',N'Giao thông','giaothong','CM8');
insert into chuyenmuc values('CM82',N'Chính trị','chinhtri','CM8');
insert into chuyenmuc values('CM91',N'Pháp đình','phapdinh','CM9');
insert into chuyenmuc values('CM92',N'Vụ án','vuan','CM9');

#--------------------------------------PHÂN HẠNG BÀI VIẾT
insert into PhanHang values(1,N'Thường');
insert into PhanHang values(2,N'Premium');
#--------------------------------------TÌNH TRẠNG BÀI VIẾT 
insert into tinhtrangbaiviet values(1,N'Đã được duyệt & chờ xuất bản');
insert into tinhtrangbaiviet values(2,N'Đã xuất bản');
insert into tinhtrangbaiviet values(3,N'Bị từ chối');
insert into tinhtrangbaiviet values(4,N'Chưa được duyệt');
#---------------------------------------BÀI VIẾT
insert into baiviet values('BV1','Nghỉ dưỡng tại Evason Ana Mandara Nha Trang', 'Nghi-Duong-Tai-Evason-Ana-Mandara-Nha-Trang','CM41','2019-05-05',N'<p class="mt-30">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class="mtb-15">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si."</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class="mtb-15">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV2',N'Năm điểm du lịch cần phải đi trong năm nay',null,'CM4','2019-05-05',N'<p class="mt-30">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class="mtb-15">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si."</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class="mtb-15">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV3',N'Khởi nghiệp với 100 triệu đồng',null,'CM1','2019-05-05',N'<p class="mt-30">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class="mtb-15">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si."</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class="mtb-15">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV4',N'Mệnh giá USD tăng nhanh trong những ngày qua',null,'CM11','2019-05-05',N'<p class="mt-30">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class="mtb-15">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si."</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class="mtb-15">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV5',N'Chứng khoán công ty Yeah1 giảm không phanh sau phốt tháng 4',null,'CM12','2019-05-05',N'<p class="mt-30">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class="mtb-15">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si."</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class="mtb-15">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV6',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM2','2019-05-05',N'<p class="mt-30">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class="mtb-15">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class="mtb-30 brdr-l-grey-2 pl-20">
							<p class="mb-15"><em>"Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si."</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class="mtb-15">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV7',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM21','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV8',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM22','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV9',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM3','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV10',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM31','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV11',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM32','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV12',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM42','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV13',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM5','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV14',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM51','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV15',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM52','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV16',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM6','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV17',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM61','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV18',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM62','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV19',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM7','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV20',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM71','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV21',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM72','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV22',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM8','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV23',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM81','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV24',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM82','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV25',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM9','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV26',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM91','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);
insert into baiviet values('BV27',N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',null,'CM92','2019-05-05',N'<p class=""mt-30"">Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
							Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at. Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus. </p>
						<p class=""mtb-15"">Sed finibus aliquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>
						
						<div class=""mtb-30 brdr-l-grey-2 pl-20"">
							<p class=""mb-15""><em>""Pellentes que velit, quis nulla effi citur at.
								Maecenas sed massa tristique.consectetur adipiscing elit. Nulla maximus pellentes que velit, quis 
								consequat nulla effi citur at. effi citur at.Maecenas sed massa tristique.
								Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
								Lorem ipsum dolor si.""</em>
								
							</p>
							<h6><b>MICHEL JORDAN</b></h6>
						</div>
						
						<p class=""mtb-15"">Liquam neque sit amet sodales. Lorem ipsum dolor sit amet, 
							consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nulla maximus pellentes que velit, quis nulla effi citur at.Maecenas sed massa tristique.
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla 
							effi citur at. effi citur at.Maecenas sed massa tristique.
							Duis non volutpat arcu, eu mollis tellus. Sed finibus aliquam neque sit amet sodales. 
							Lorem ipsum dolor sit amet
							consectetur adipiscing elit. Nulla maximus pellentes que velit, quis consequat nulla effi 
							citur at.Maecenas sed massa tristique.Duis non volutpat arcu, eu mollis tellus.
						</p>',0,2,null,2,1,N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',1);

#--------------------------------------BÀI VIẾT - HÌNH ẢNH
insert into baiviet_hinhanh values('BV1',1,1);
insert into baiviet_hinhanh values('BV2',1,1);
insert into baiviet_hinhanh values('BV3',1,1);
insert into baiviet_hinhanh values('BV4',1,1);
insert into baiviet_hinhanh values('BV5',1,1);
insert into baiviet_hinhanh values('BV6',1,1);
insert into baiviet_hinhanh values('BV7',1,1);
insert into baiviet_hinhanh values('BV8',1,1);
insert into baiviet_hinhanh values('BV9',1,1);
insert into baiviet_hinhanh values('BV10',1,1);
insert into baiviet_hinhanh values('BV11',1,1);
insert into baiviet_hinhanh values('BV12',1,1);
insert into baiviet_hinhanh values('BV13',1,1);
insert into baiviet_hinhanh values('BV14',1,1);
insert into baiviet_hinhanh values('BV15',1,1);
insert into baiviet_hinhanh values('BV16',1,1);
insert into baiviet_hinhanh values('BV17',1,1);
insert into baiviet_hinhanh values('BV18',1,1);
insert into baiviet_hinhanh values('BV19',1,1);
insert into baiviet_hinhanh values('BV20',1,1);
insert into baiviet_hinhanh values('BV21',1,1);
insert into baiviet_hinhanh values('BV22',1,1);
insert into baiviet_hinhanh values('BV23',1,1);
insert into baiviet_hinhanh values('BV24',1,1);
insert into baiviet_hinhanh values('BV25',1,1);
insert into baiviet_hinhanh values('BV26',1,1);
insert into baiviet_hinhanh values('BV27',1,1);

#--------------------------------------NHÃN
insert into nhan values('tag1','#nghiduong');
insert into nhan values('tag2','#NhaTrang');
insert into nhan values('tag3','#EvasonAnaMandara');
#---------------------------------------NHÃN-BÀI VIẾT
insert into nhan_baiviet values('BV1','tag1');
insert into nhan_baiviet values('BV1','tag2');
insert into nhan_baiviet values('BV1','tag3');
#-------------------------------------BÌNH LUẬN
insert into binhluan values(null,'BV1',4,N'Không hiểu luôn !!!',0,null);
insert into binhluan values(1,'BV1',5,N'Không hiểu gì ba??',0,1);
