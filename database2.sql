create database book_store;
use book_store;


create table `account`(
acc_name varchar(255) primary key,
acc_pass varchar(255),
acc_role bit
);


create table customer(
cus_id int primary key auto_increment,
cus_name varchar(255),
cus_email varchar(255),
cus_date_of_birth date,
cus_gender int,
acc_name varchar(255),
foreign key(acc_name) references `account`(acc_name)
);


create table category(
category_id varchar(255) primary key,
category_name varchar(255)
);



create table books(
book_id int primary key auto_increment,
book_name varchar(255),
book_price double,
book_author varchar(255),
publishing_company varchar(255),
publisher varchar(255),
translator varchar(255),
describes text,
image text,
category_id varchar(255),
foreign key(category_id) references category(category_id)
);
drop table books;


create table order_book(
order_id int primary key auto_increment,
order_date date,
book_id int,
cus_id int,
foreign key(book_id) references books(book_id),
foreign key(cus_id) references customer(cus_id)
);

insert into `account`(acc_name, acc_pass, acc_role)
value('admin','admin',1),
('vanminh','vanminhpro',0),
('vankhai','vankhai123',0),
('quocanh','quocanh123',0),
('nhuqunh','nhuquynh123',0),
('vanchinh','vanchinh123',0),
('minhlanh','minhlanh123',0),
('hoanghai','hoanghai123',0);

insert into customer(cus_name,cus_email,cus_date_of_birth,cus_gender,acc_name)
value('Nguyễn Hoàng Hải','hai@gmail.com','1993-02-02',0,'hoanghai'),
('Nguyễn Quốc Anh','anh@gmail.com','2001-02-02',0,'quocanh'),
('Nguyễn Thị Như Quỳnh','quỳnh@gmail.com','1995-01-01',1,'nhuqunh'),
('Nguyễn Minh Lãnh','lanh@gmail.com','1990-01-01',0,'minhlanh'),
('Nguyễn Văn Chính','chinh@gmail.com','2003-01-01',0,'vanchinh'),
('Nguyễn Văn Khải','khai@gmail.com','1999-01-01',0,'vankhai'),
('Nguyễn Văn Minh','minh@gmail.com','1999-02-01',0,'vanminh');

insert into category(category_id,category_name) values
('BT-01','Chính trị -Pháp luật'),
('BT-02','Khoa học công nghệ - Kinh tế'),
('BT-03','Văn hóa xã hội - Lịch sử'),
('BT-04','Văn học nghệ thuật'),
('BT-05','Giáo trình'),
('BT-06','Truyện, tiểu thuyết'),
('BT-07','Tâm lý, tâm linh, tôn giáo'),
('BT-08','Thiếu nhi');

insert into books(book_name,book_price,book_author,publishing_company,publisher,translator,describes,image,category_id) values
-- 1
('100 Mưu Lược Trong Chính Trị, Quân Sự & Đời Sống (Tái Bản)',115.200,'Quách Thành','VanLangBooks','Nhà Xuất Bản Hồng Đức',null,'Xã hội không ngừng phát triển, trên mọi phương diện đều có sự cạnh tranh gay gắt, vì thế việc vận dụng mưu lược là không thể thiếu. Trong các lĩnh vực chính trị, quân sự hay kinh tế, ngoại giao, ngoài tầm nhìn xa trông rộng, tài phân tích, phán đoán nhạy bén, người lãnh đạo còn phải biết cách nhìn người và dùng người trong mọi hoàn cảnh.

MƯU LƯỢC TRONG CHÍNH TRỊ - QUÂN SỰ & ĐỜI SỐNG tập hợp nhiều kế sách cũng như thuật dùng người khôn khéo của các nhân vật nổi tiếng trong lịch sử giúp chúng ta nhìn lại quá khứ, học hỏi kinh nghiệm, từ đó vận dụng một cách sáng tạo trong cuộc sống hàng ngày.','https://salt.tikicdn.com/cache/750x750/ts/product/ef/ea/4e/eade954a52fd03c696168041bde8671b.jpg.webp',1),
('Từ điển pháp luật Việt Nam',280.000,'Luật gia Nguyễn Ngọc Điệp','Trung tâm giới thiệu sách Thành phố Hồ Chí Minh','Nhà Xuất Bản Thế Giới',null,'Trong những năm qua, cùng với việc từng bước hoàn thiện hệ thống pháp luật thì việc giải thích các từ ngữ pháp luật trong các văn bản mang tính pháp lý cũng được các cơ quan soạn thảo coi trọng, vì vậy đa số các văn bản qui phạm pháp luật và văn bản hướng dẫn thi hành thông thường đều có quy định giải thích những từ ngữ cơ bản nhằm làm rõ nghĩa của từ ngữ sử dụng trong văn bản đó, nhằm tạo sự thống nhất trong cách hiểu, hiểu đúng tinh thần của khái niệm, trên cơ sở đó giúp cho việc trong áp dụng pháp luật được dễ dàng và thuận lợi.
Bên cạnh đó, trong hoạt động nghiên cứu, học tập cũng như áp dụng pháp luật thì việc sử dụng các từ ngữ, định nghĩa pháp lý ngày càng trở nên phổ biến và cũng là một yêu cầu cần thiết để hỗ trợ việc nâng cao chất lượng của các hoạt động nói trên, nhất là trong việc soạn thảo các văn bản mang tính pháp lý.
Tuy nhiên trên thực tế cho thấy các lĩnh vực pháp luật thì khá rộng với số lượng văn bản lớn và rải rác trong nhiều văn bản pháp luật, dẫn đến khi cần tra cứu từ ngữ pháp lý thì hết sức khó khăn cho những người có nhu cầu.
Với mong muốn có một cuốn sách có thể đáp ứng nhu cầu tìm hiểu các từ ngữ pháp luật một cách có hệ thống, nhằm tạo thuận lợi cho những người làm công tác nghiên cứu, học tập và áp dụng pháp luật, tác giả đã dành thời gian hơn 20 năm với nhiều tâm huyết để thu thập, sưu tầm và biên soạn cuốn sách này. Có thể nói đây là công trình mang tính khoa học có giá trị, được biên soạn khá công phu với số lượng từ ngữ pháp luật Việt Nam nhiều nhất cho đến thời điểm hiện tại (5.665 từ). Đồng thời đây cũng là cuốn Từ điển pháp luật đầu tiên của Việt Nam do một cá nhân biên soạn.','https://salt.tikicdn.com/cache/750x750/ts/product/34/05/c3/d8d12e6c95cd3a5a000482748255698e.jpg.webp',1),
('SÁCH HƯỚNG DẪN MÔN HỌC LUẬT HIẾN PHÁP (SÁCH THAM KHẢO)',57.000,'Nhiều tác giả','Nhà Sách Dân Hiền','Nhà Xuất Bản Công An Nhân Dân',null,'Luật Hiến pháp là một ngành độc lập trong hệt hống pháp luật Việt Nam, đồng thời là một môn học bắt buộc trong các cơ sở đào tạo Luật. Đây là môn học luật chuyên ngành đầu tiên mà sinh viên luật được học trong chương trình đào tạo. Môn học Luật Hiến pháp cung cấp những kiến thức cơ bản, nền tảng, nguyên tắc để người học tiếp tục học tập, nghiên cứu các môn luật chuyên ngành tiếp theo
Việc biên soạn cuốn sách "Hướng dẫn môn học luật Hiến pháp" nhằm đáp ứng nhu cầu nghiên cứu, học tập, tìm hiểu Luật Hiến pháp của người học. Cuốn sách tập trung phân tích lý giải một cách khoa học các khái niệm, các vấn đề lý luận về hiến pháp cùng nội dung các quy định trong hệ thống pháp luật hiện hành về Luật Hiến pháp. Để thuận tiện cho việc nghiên cứu, học tập, tìm hiểu, cuốn sách được chia ra thành 10 vấn đề. Các vấn đề được trình bày ngắn gọn, rõ ràng, súc tích, Trong mỗi vấn đề có các câu hỏi hướng dẫn học tập để người đọc, người học có thể kiểm tra kết quả học tập của mình cũng như sự trang bị cho mình những kiến thức cốt lõi về Luật Hiến pháp','https://salt.tikicdn.com/cache/750x750/ts/product/69/fe/c8/76c9f456cc14f4d594c881b255c6ae56.jpg.webp',1),
('Quân Vương – Thuật Cai Trị (Tái Bản)',73.800,'Niccolò Machiavelli','Omega Plus','Nhà Xuất Bản Thế Giới','Vũ Thái Hà','Quân Vương – Thuật Cai Trị (Tái Bản 2018) là cuốn sách gối đầu giường của rất nhiều thế hệ chính trị gia và lãnh đạo trên thế giới.

Cuốn sách nhỏ của Niccolò Machiavelli đã hội tự những nguyên tắc làm nền móng cho khoa học quản trị nói chung và chính trị học nói riêng.

Người ta sẽ luôn đọc Quân vương chừng nào con người vẫn chưa thôi trò chơi nguy hiểm nhưng hấp dẫn có cái tên "chính trị".

Qua cuốn sách, độc giả sẽ tìm ra chân dung một vị quân vương hình mẫu : keo kiệt hay rộng lượng, độc ác hay nhân từ, thất hứa hay giữ lời nếu lời hứa đi ngược lại lợi ích của mình, phải làm gì để tránh bị dân chúng căm ghét, phải thực thi những hành động lớn lao để nâng cao uy tín của mình.

Cuốn sách bàn về khoa học chính trị của nhà ngoại giao, nhà triết học và nhà quân sự người Ý – Niccolò Machiavelli. Xuất hiện lần đầu tiên vào năm 1513 nhưng mãi đến năm 1532, ấn bản đầu tiên mới được chính thức xuất bản dưới sự cho phép của Giáo hoàng Clement VII.','https://salt.tikicdn.com/cache/750x750/ts/product/37/ac/1c/eb40db51e8203143d9c0b4839046c76a.jpg.webp',1),
('Bàn Về Khế Ước Xã Hội (Tái Bản)',83.300,'Jean - Jacques Rousseau','Omega Plus','Nhà Xuất Bản Thế Giới','Hoàng Thanh Đạm','Khế ước xã hội là tên gọi vắn tắt của bản luận văn lớn mà J. J. Rousseau đặt dưới một nhan đề khá dài: Bàn về khế ước xã hội hay là các nguyên tắc của quyền chính trị (Du Contrat social – ou principes du droit politique).
Về lai lịch cuốn sách, tác giả viết: “Luận văn nhỏ này trích từ một công trình nghiên cứu rộng lớn mà trước kia tôi đã viết, nhưng vì chưa lượng được sức mình nên phải bỏ đi từ lâu”.
Về mục đích cuốn sách, tác giả viết: “Tôi muốn tìm xem trong trật tự dân sự có hay không một số quy tắc cai trị chính đáng, vững chắc, biết đối đãi với con người như con người. Và có hay không luật pháp đúng với những ý nghĩa chân thực của nó”. Với luận văn này, J. J. Rousseau muốn “gắn liền cái mà luật pháp cho phép làm với cái mà lợi ích thúc đẩy phải làm, khiến cho công lý và lợi ích không tách rời nhau”.
Toàn bộ luận văn trên dưới sáu vạn chữ được chia làm bốn quyển:
Quyển thứ nhất gồm 9 chương, mở ra những ý niệm chung về sự hình thành một xã hội người từ trạng thái tự nhiên chuyển sang trạng thái dân sự và những ý niệm chung về việc thành lập Công ước xã hội.
Quyển thứ hai gồm 12 chương, chủ yếu bàn về vấn đề lập pháp.
Quyển thứ ba gồm 18 chương, bàn chủ yếu về vấn đề cơ quan hành pháp.
Quyển thứ tư gồm 9 chương, bàn tiếp nhiều vấn đề, trong đó nổi lên vấn đề cơ quan tư pháp.','https://salt.tikicdn.com/cache/750x750/ts/product/95/ff/e1/4eb022fa43485b63bf31ea66e9ec108d.jpg.webp',1),
('Hồ Sơ Mật Lầu 5 Góc Và Hồi Ức Về Chiến Tranh Việt Nam (Sách Tham Khảo)',260.000,'Daniel Ellsberg','NXB Chính Trị Quốc Gia','Nhà Xuất Bản Chính Trị Quốc Gia',null,'Tối ngày 1 tháng Mười năm 1969, tôi rảo bước qua dãy bàn dành cho nhân viên bảo vệ của Rand Corporation (RAND) ở Santa Monica, xách theo một vali đầy tài liệu tối mật mà tôi dự định sẽ sao chụp vào đêm hôm đó. Số tài liệu này là một phần trong công trình nghiên cứu tối mật gồm 7000 trang liên quan tới những quyết sách của Mỹ ở Việt Nam, sau này được biết đến dưới tên gọi Hồ sơ Lầu Năm Góc. Phần còn lại của công trình nằm trong két đựng tài liệu trong văn phòng của tôi. Tôi quyết định sao chụp và đưa ra công chúng toàn bộ nghiên cứu này, hoặc là thông qua các cuộc điều trấn tại Thượng viện, hoặc là thông qua báo chí, nếu cần thiết. Tôi tin rằng tôi có thể sẽ phải ngồi tù suốt đời vì những việc này, nhất là việc đưa ra công chúng bộ Hồ sơ Lầu Năm Góc. Quá trình dẫn dắt tôi đi đến hành động nói trên chính là nội dung trọng tâm của hồi ký này.','https://salt.tikicdn.com/cache/750x750/ts/product/95/6b/03/17339640f5ba57eaee56e2b605130f48.jpg.webp',1),
('Giới Tinh Hoa Quyền Lực',181.300,'Charles Wright Mills','Omega Plus','Nhà Xuất Bản Thế Giới','Nguyễn Thành Châu','Xuất bản lần đầu tiên năm 1956, Giới Tinh Hoa Quyền Lực là tác phẩm kinh điển về khoa học xã hội và phê bình xã hội của nhà xã hội học uy tín C. Wright Mills. Qua những phân tích toàn diện và phê bình sắc sảo, tác phẩm chỉ ra rõ cấu trúc quyền lực tại Mỹ là đi theo mô hình ba gọng kìm ăn khớp chặt chẽ với nhau, bao gồm: giới quân sự, giới doanh nghiệp và giới chính trị.

 Trong lần tái bản năm 2000, Alan Wolfe đã cập nhật và minh họa thêm những thay đổi diễn ra từ năm 1956 ở phần Lời bạt. Đồng thời, Wolfe cũng khám phá các dự báo mà trước đây chưa nói tới, luận bàn về những thay đổi cơ bản trong chủ nghĩa tư bản Mỹ, từ sự cạnh tranh toàn cầu căng thẳng tới những thay đổi công nghệ nhanh chóng và thị hiếu thường thay đổi của người tiêu dùng.

 Không đơn thuần mô tả chính xác thực tại nước Mỹ vào thời điểm cuốn sách ra mắt, Giới Tinh Hoa Quyền Lực còn phân tích tính dân chủ của xã hội Mỹ trên thực tế trong tương quan với lý thuyết – một vấn đề đến nay vẫn nguyên tầm quan trọng và gợi nhiều suy tư xa hơn về tương lai cho các thế hệ độc giả.','https://salt.tikicdn.com/cache/750x750/ts/product/4d/d3/09/74563cb5a4fe359ab774c74734368650.jpg.webp',1),
 ('Nguồn Gốc Trật Tự Chính Trị',235.943,'Francis Fukuyama','Alpha Books','Nhà Xuất Bản Thế Giới','Nguyễn Khắc Giang','rước khi đế chế Liên Xô sụp đổ, nhà khoa học chính trị người Mỹ Francis Fukuyama đã nổi tiếng sau khi tuyên bố về chiến thắng toàn cầu của ý tưởng "dân chủ tự do" kiểu Mỹ. Gần ba thập kỷ sau, mọi thứ có vẻ tồi tệ đối với luận điểm "kết thúc lịch sử" của ông, mặc dù những độc giả thân thiết của cuốn sách mới nhất của Fukuyama chắc chắn sẽ kết luận rằng mặc dù tư duy của ông đã bị bảo vệ bởi trình độ chuyên môn, và theo sự tổng hợp, câu chuyện cũ của ông về chiến thắng ở Mỹ trong thế giới ý tưởng về cơ bản không thay đổi.

“Một chiến thắng về học thuật, đồ sộ về quy mô, vững vàng về lý luận, và giàu tính khuyến nghị. Nói tóm lại, đây là một tác phẩm kinh điển.” ― Ian Morris','https://salt.tikicdn.com/cache/750x750/ts/product/88/46/74/d91b79e90aff50f541d748f92ebe6cae.JPG.webp',1),
('Quan hệ công chúng của Chính phủ trong bối cảnh cải cách hành chính nhà nước ở Việt Nam(Sách chuyên khảo)',137.760,'PGS. TS. Nguyễn Văn Hậu - TS. Nguyễn Quỳnh Nga ( Đồng Chủ biên)','Nhà Xuất Bản Chính Trị Quốc Gia Sự Thật','Nhà Xuất Bản Chính Trị Quốc Gia Sự Thật',null,'Sách Luật Online xin trân trọng giới thiệu bạn đọc cuốn sách này!','https://salt.tikicdn.com/cache/750x750/ts/product/82/7e/d3/54763fae4dc8372f588bf29ddf2cd640.jpg.webp',1),
-- -- 2
 ('LÀM GIÀU TỪ SIÊU CỔ PHIẾU – Câu Chuyện Của Gã Du Mục Phố Wall – JESSE C. STINE',399.000,'JESSE C. STINE','Công ty TNHH Phạm Lê Minh','Nhà Xuất Bản Hồng Đức','KHÚC NGỌC TUYÊN, ĐỖ PHAN THU HÀ, TRƯƠNG MINH HUY','LÀM GIÀU TỪ SIÊU CỔ PHIẾU là tinh túy của quá trình giao dịch với tổng giá trị lên đến 2.5 tỷ đô la và 30,000 giờ thực chiến trong thị trường của STINE. Nội dung cuốn sách xoay quanh:

 NHỮNG ĐỊNH LUẬT ĐẦU TƯ SIÊU HẠNG

NHỮNG THÀNH PHẨN CỦA MỘT SIÊU CỔ PHIẾU

 KHI NÀO NÊN MUA – Điểm mua lợi nhuận cao nhất/rủi ro thấp nhất

KHI NÀO NÊN BÁN – Làm chủ nghệ thuật bán siêu hạng khi rủi ro thấp. ','https://salt.tikicdn.com/cache/750x750/ts/product/7a/f3/1c/7f60818be2c7bcf0290a90c96879dcef.jpg.webp',2),
('AI Chuyện Chưa Kể (Sách Kinh Doanh Ứng Dụng AI - Công Nghệ Trí Tuệ Nhân Tạo)',98.100,'Tomoe Ishizumi','Thái Hà','Nhà Xuất Bản Công Thương','Hằng Hache','“Tôi không thể tưởng tượng AI có thể được sử dụng như thế nào trong công việc kinh doanh của chúng tôi”, một người quản lý cho hay.

 “Tôi muốn biết công việc và sự nghiệp của mình sẽ thay đổi như thế nào nếu ứng dụng AI”, một doanh nhân bày tỏ.

 Cuốn sách AI Chuyện chưa kể của tác giả Tomoe Ishizumi sẽ giải thích hoạt động kinh doanh AI theo cách diễn đạt dễ hiểu nhất có thể và cố gắng không sử dụng các thuật ngữ chuyên ngành, đây là cuốn sách dành cho những người không phải là chuyên gia về công nghệ AI đang có băn khoăn, lo lắng, nghi ngờ về lĩnh vực này.

Nó cũng sẽ giúp ích cho sinh viên, doanh nhân, nhà quản lý, những người muốn biết công việc của họ sẽ liên quan như thế nào đến AI trong tương lai. Đối với các chuyên gia và kỹ sư chuyên môn, tôi hy vọng thông qua cuốn sách này, các bạn có thể biết được rằng khách hàng của các bạn, những doanh nghiệp không chuyên về AI khó có thể lý giải được vấn đề gì hay có thể dễ dàng nắm bắt được vấn đề dưới góc độ như thế nào.
','https://salt.tikicdn.com/cache/750x750/ts/product/d3/44/34/36a843fa28107ac82b4c8de0fc8ee538.png.webp',2),
('Tâm Lý Học Về Tiền',112.800,'Morgan Housel','1980 Books','Nhà Xuất Bản Dân Trí','Hoàng Thị Minh Phúc','Một thiên tài không kiểm soát được cảm xúc của anh ta có thể dẫn tới một thảm họa tài chính. Điều ngược lại cũng đúng. Những người bình thường không có kiến thức về tài chính có thể trở nên giàu có nếu họ nắm trong tay những kỹ năng hành xử không liên quan đến những thước đo chính thống về trí thông minh.

Sự thành công trong tài chính không phải là một lĩnh vực khoa học khó nhằn. Nó là một kỹ năng mềm, nơi mà cách bạn hành xử quan trọng hơn điều mà bạn biết. Trong “Tâm lý học về tiền”, tác giả từng đoạt giải thưởng Morgan Housel chia sẻ 19 câu chuyện ngắn khám phá những cách kỳ lạ mà mọi người nghĩ về tiền bạc và dạy bạn cách hiểu rõ hơn về một trong những chủ đề quan trọng nhất của cuộc sống.','https://salt.tikicdn.com/cache/750x750/ts/product/83/23/b7/14a42ae4f66c9b8b298aaef4b9671442.jpg.webp',2),
('Bách Khoa Tri Thức Về Khám Phá Thế Giới Cho Trẻ Em - Earth - Trái Đất',30.000,'Penelope York','Đinh Tị','Nhà xuất bản Hà Nội',null,'Bách khoa tri thức về khám phá thế giới cho trẻ em là bộ sách được biên soạn dành riêng cho các bạn nhỏ từ 6 tuổi trở lên. Bộ sách cực kỳ hấp dẫn với:

 Nội dung đa dạng, thuộc nhiều lĩnh vực từ khoa học tự nhiên đến khoa học xã hội bao gồm thiên văn, động vật, lịch sử, địa chất, thiên nhiên
Ảnh chụp minh họa chân thực, sắc nét có sức tác động mạnh đến thị giác của các bạn nhỏ.
Lối viết đơn giản, mạch lạc, kèm theo bảng thuật ngữ giải thích rõ ràng ý nghĩa của các từ chuyên môn trong từng chủ đề.
 Nhiều trò chơi thú vị giúp các em ôn lại những kiến thức vừa được học.','https://salt.tikicdn.com/cache/750x750/ts/product/fa/30/ae/34dd61247b3535e879aaa466d311941a.jpg.webp',2),
('Trên Đỉnh Phố Wall (Tái bản 2021)',153.000,'John Rothchild, Peter Lynch','Alphabooks','Nhà Xuất Bản Lao Động','Trần Thanh Hương','Peter Lynch là nhà quản lý tài chính số 1 ở Mỹ. Quan điểm của ông là: Tất cả các nhà đầu tư trung bình đều có thể trở thành những chuyên gia hàng đầu trong lĩnh vực của họ và họ có thể chọn được những cổ phiếu hời nhất không kém gì các chuyên gia đầu tư trên Phố Wall chỉ bằng việc thực hiện một cuộc điều tra nhỏ.
Trong cuốn sách, Lynch đề cập đến cách thức mà ông đã đạt được thành tích đầu tư vĩ đại của mình khi là cựu giám đốc xuất sắc của quỹ đầu tư hàng tỷ đô-la Magellan. Viết cùng Joghn Rothchild, Trên đỉnh Phố Wall đưa ra những chỉ dẫn dễ dàng áp dụng để có thể lựa chọn được những danh mục từ việc đánh giá các báo cáo tài chính của công ty và nhận ra những con số thực sự có giá trị. Ông giải thích và đưa ra những chỉ dẫn để đầu tư theo chu kỳ, hay thay đổi hoàn toàn danh mục đầu tư để theo đuổi những công ty đang phát triển nhanh.

Lynch khẳng định rằng, nếu bạn không bị chi phối bởi sự thất thường của thị trường sự ham muốn tức thời về lợi nhuận, bạn sẽ được đền đáp bởi danh mục đầu tư của mình, (sau khoảng từ 5 đến 15 năm). Lời khuyên này đã được chứng minh là sống mãi với thời gian và đã biến Trên đỉnh Phố Wall trở thành tác phẩm bán chạy số 1 ở Mỹ. Và cho đến bây giờ, cuốn sách kinh điển này vẫn giữ nguyên giá trị ban đầu của nó.','https://salt.tikicdn.com/cache/750x750/ts/product/01/8b/26/50309bf39284ada0939361cf4131916b.jpg.webp',2),
('Charlie Munger - Phương pháp đầu tư giá trị',109.850,'Tren Griffin','1980 Books','Nhà Xuất Bản Lao Động','Từ Uyển Linh','“Bí quyết đánh bại thị trường của thiên tài đầu tư hàng đầu thế giới, cánh tay phải đã cùng Warren Buffett tạo nên đế chế Berkshire Hathaway vĩ đại”         -Tren Griffin -

 “Charlie Munger, vị phó Chủ tịch có tầm nhìn xa trông rộng của Berkshire Hathaway và là cánh tay phải đắc lực của

 Warren Buffett, đã nhiều lần đánh bại thị trường và tin rằng bất cứ nhà đầu tư nào cũng có thể làm được điều này.

Nền tảng cơ bản mang lại thành công cho Munger là phương pháp đầu tư giá trị, phương pháp đã giúp ông đánh bại thị trường trong suốt sự nghiệp trải dài gần sáu thập kỷ. Cuốn sách này trình bày các yếu tố cơ bản trong chiến lược đầu tư của Munger, với trích dẫn từ các cuộc phỏng vấn, bài phát biểu, bài viết và thư gửi cổ đông, kết hợp với bình luận từ các nhà quản lý quỹ, nhà đầu tư giá trị và các nhà nghiên cứu lịch sử thị trường. Phương pháp đơn giản của Munger hoàn toàn phù hợp để nhà đầu tư bình thường có thể áp dụng, từ đó thu được lợi nhuận cao trên thị trường chứng khoán.”','https://salt.tikicdn.com/cache/750x750/ts/product/26/d1/e5/3157415a922031ba94a6bc7942f3858b.png.webp',2),
-- -- 3
('Giải Mã Văn Hóa Việt',122.000,' PGS. TS. Dương Văn Sáu','Công ty TNHH Quốc Tế Mai Hà','Nhà Xuất Bản Khoa Học Xã Hội',null,'Giải mã văn hóa tức là tiếp cận những sự vật và hiện tượng xã hội, các vấn đề của cuộc sống qua góc nhìn và sự lý giải về nguồn cội và nội hàm của nó; đặt nó trong tiến trình phát triển của lịch sử dân tộc. Thực chất của quá trình “giải mã văn hóa”, “giải ảo hiện thực” là việc tác giả cố gắng nhất có thể để trả lời những câu hỏi: Ai? Cái gì? Ở đâu? Tại sao? Như thế nào?... đối với sự hiện diện các hình tượng của văn hóa dân tộc trong những không gian và thời gian xác định.
Cuốn sách được trình bày thành 6 phần lớn:
- Phần 1: Thời gian và những con số
- Phần 2: Những câu chuyện về văn hóa - lịch sử
- Phần 3: Giải mã văn hóa địa danh
- Phần 4: Hình tượng văn hóa trong kiến trúc truyền thống Việt
- Phần 5: Hình tượng linh vật trong đời sống văn hóa - tinh thần của người Việt
- Phần 6: Hình tượng cỏ cây trong đời sống văn hóa - tinh thần của người Việt','https://salt.tikicdn.com/cache/750x750/ts/product/36/b4/2c/35fa87f0bef168ae1bd2810cff281066.jpg.webp',3),
('Văn Hóa, Tín Ngưỡng Và Thực Hành Tôn Giáo Người Việt',643.300,'Léopold Cadière','Công ty TNHH Quốc Tế Mai Hà','Nhà Xuất Bản Thế Giới','Đỗ Trinh Huệ','Trong tác phẩm này, Léopold Cadière đã nghiên cứu văn hóa Việt Nam với các nội dung; Phong tục dân gian tại thung lũng Nguồn Son; Thần Kinh.

 Tập 3: Triết lý dân gian người Việt: Vũ trụ quan; Triết lý dân gian người Việt: Nhân sinh quan; Nghệ thuật Huế; Người Việt: Dân tộc – Ngôn ngữ; Một vài quy luật tu duy nơi người Việt, xét từ ngôn ngữ của họ; Một vài chỉ dẫn thiết thực dành cho các vị thừa sai khi giảng đạo.','https://salt.tikicdn.com/cache/750x750/ts/product/55/21/01/be340f1cbad677efd6f87fd863c518b8.jpg.webp',3),
('Việt Nam Văn Hóa Sử Cương (In Theo Bản 1938 , Xuất Bản Bốn Phương)',78.999,'Đào Duy Anh','Nhà sách Minh Thắng','Nhà Xuất Bản Văn Học',null,'Theo giới thuyết của Felix Sartiaux thì “văn hóa, về phương diện động, là cuộc phát triển tiến bộ mà không ngừng của những tác dụng xã hội của những tác dụng xã hội về kỹ thuật, kinh tế, tư tưởng, nghệ thuật, xã hội tổ chức, những tác dụng ấy tuy liên lạc mà vấn riêng nhau. Về phương diện tĩnh thì văn hóa là trạng thái tiến bộ của những tác dụng ấy ở một thế giới nhất định, và tất cả các tính chất mà những tác dụng ấy bày ra ở các xã hội loài người”.

 Bỉ nhân biên sách này, cũng dựa theo giới thuyết của Felix Sartiaux mà chia đại khái ra ba bộ phận như sau:

 Kết quả sinh hoạt
 Xã hội sinh hoạt
 Trí thức sinh hoạt','https://salt.tikicdn.com/cache/750x750/ts/product/a3/a8/b2/d923365602dc763d008d7cf99af8e42d.jpg.webp',3),
('Lược Sử Thế Giới',227.000,'E.H. Gombrich','Nhã Nam','Nhà Xuất Bản Thế Giới','Phan Linh Lan','Từ khi được viết ra bằng tiếng Đức năm 1935, Lược sử thế giới đã trở thành cuốn sách lịch sử bán chạy ở ba mươi ngôn ngữ. Năm 2005, cuốn sách được xuất bản bằng tiếng Anh với phần minh họa bổ sung, và phiên bản này bán được hơn nửa triệu bản trên toàn thế giới.

Như một bài thơ về lịch sử thế giới, E. H. Gombrich lịch lãm dẫn người đọc đi từ thời kỳ Đồ đá đến thời kỳ của năng lượng nguyên tử, với những biến cố lịch sử phức tạp nhất, các trào lưu tư tưởng khó hiểu nhất, những nhân vật lịch sử đa chiều nhất, các thành tựu lớn lao nhất của trí tuệ con người… tất cả đều được tác giả mô tả và diễn giải dễ hiểu đến bất ngờ.

Với cuốn sách này trong tay, bạn sẽ thấy niềm vui to lớn trong việc tìm hiểu lịch sử, cùng vô số khoảnh khắc quên hết tất cả để say mê đắm mình trong quá vãng của dòng chảy lịch sử.','https://salt.tikicdn.com/cache/750x750/ts/product/cb/8b/79/b8d41e532fe26463870fe270949f72e8.jpg.webp',3),
('Sapiens Lược Sử Loài Người (Tái Bản)',237.000,'Yuval Noah Harari','OMEGA PLUS+','Nhà Xuất Bản Tri Thức','Nguyễn Thủy Chung','Điểm độc đáo ở Harari là ông tập trung vào sức mạnh của câu chuyện và huyền thoại để đưa mọi người lại gần Tôi muốn giới thiệu cuốn sách này cho bất cứ ai hứng thú quan tâm tới một cách nhìn đầy hấp dẫn và thú vị về lịch sử ban đầu của con ngườ Harari kể về lịch sử loài người theo một cách dễ tiếp cận khiến bạn thật khó có thể đặt nó xuống”. – Bill Gates

“Sapiens tìm câu trả lời cho vấn đề lớn nhất của lịch sử cũng như của thế giới hiện đại, và nó được viết bằng một thứ ngôn ngữ tuyệt vời khiến người ta không thể quên được”. – Jared Diamond, tác giả cuốn sách đoạt giải Pulitzer Súng, vi trùng và thép

“Sapiens thuộc loại sách có thể giúp dọn sạch tâm trí bạn. Tác giả của nó, Yuval Noah Harari, là một học giả người Israel trẻ tuổi và là một người làm xiếc tri thức điêu luyện với những bước nhảy logic khiến bạn phải thót tim ngưỡng mộ Ngòi bút của Harari tỏa ra sức mạnh và sự sáng rõ, làm cho thế giới trở nên kỳ lạ và mới mẻ”.','https://salt.tikicdn.com/cache/750x750/ts/product/f1/30/2f/e90b72d0bad16ea627ccce67c8ba7aae.jpg.webp',3),
('Những trận chiến thay đổi lịch sử (Bìa cứng)',350.000,'DK','Công Ty Cổ Phần Văn Hóa Đông A','Nhà Xuất Bản Dân Trí','Nguyễn Minh','Những trận chiến thay đổi lịch sử là tuyển tập hơn 90 trận giao tranh quan trọng nhất thế giới, từ thời cổ đại cho đến kỷ nguyên nguyên tử. Được minh họa sống động bằng bản đồ, tranh vẽ, vật chứng và ảnh chụp, mỗi chương sách giúp tái hiện những trận chiến quan trọng của thời đại, cho thấy cách mà những thời khắc then chốt và những quyết định mang tính chiến lược đã thay đổi tiến trình lịch sử như thế nào.

“Có bao nhiêu trận chiến đã làm thay đổi tiến trình lịch sử? Đó là một câu hỏi hay. Mỗi khi đọc về cách bày binh bố trận trên một chiến trường xưa, ta thường chỉ nghĩ đây là thông tin lịch sử thú vị chứ không cho rằng cuộc giao tranh ấy vẫn còn ý nghĩa đến tận ngày nay','https://salt.tikicdn.com/cache/750x750/ts/product/11/fb/22/51c353ba1d90c38f4f216e903c62eb37.jpg.webp',3),
-- 4
('The Story Of Art - Câu Chuyện Nghệ Thuật',833.999,'E.H Gombrich','Omega Plus','Nhà Xuất Bản Dân Trí','Lưu Bích Ngọc','Câu Chuyện Nghệ Thuật là một tác phẩm kể về lịch sử nghệ thuật châu Âu từ thời cổ đại đến hiện đại, được tác giả khảo sát và đánh giá trong các lĩnh vực khác nhau như hội họa, điêu khắc, kiến trúc… song hành với những chuyển biến và giao thoa của các nền văn hóa, chính trị, và tôn giáo. Nguồn tư liệu phong phú về các tác phẩm đáng chú ý, những tên tuổi tài năng, những trường phái, phong cách đặc sắc trong dòng chảy nghệ thuật.','https://salt.tikicdn.com/cache/750x750/ts/product/f3/c4/85/f1a6e801e34e9b86888763ffc2dffa80.jpg.webp',4),
('Bách Khoa Thư Về Nghệ Thuật',349.300,'DK','Alphabooks','Nhà Xuất Bản Dân Trí','Alphabooks','Toàn bộ lịch sử của những tác phẩm vĩ đại nhất trong hội họa, điêu khắc và nhiếp ảnh đã được đưa vào chuyến tham quan xuyên thời gian toàn diện và đầy màu sắc mà cuốn sách tuyệt đẹp này mang đến cho độc giả.

Từ những nét vẽ đầu tiên trên các hang động thời tiền sử đến nghệ thuật đường phố đương đại trong thế kỷ 21, mọi phong cách và bước dịch chuyển trong nghệ thuật đều được khám phá, giải thích chi tiết và đầy tính nghệ thuật. Bách khoa thư về Nghệ thuật cũng đặc biệt tôn vinh cuộc đời của các họa sĩ, nhà điêu khắc và nhiếp ảnh gia đột phá, từ bậc thầy người Hà Lan Johannes Vermeer đến nhà tiên phong nhiếp ảnh Julia Margaret Cameron. Nhiều tác phẩm nghệ thuật được yêu thích nhất được giới thiệu bằng những hình ảnh mang tính biểu tượng. Độc giả sẽ được kinh ngạc trước nàng Mona Lisa bí ẩn của Leonardo da Vinci, “người phụ nữ trong tranh” nổi tiếng nhất; được song hành bên những bức tượng trong Đội quân đất nung của Trung Hoa; hay được chiêm ngưỡng tác phẩm điêu khắc Pelagos tuyệt đẹp của Barbara Hepworth.

Với những hình ảnh ấn tượng và thông tin đầy đủ, toàn diện, Bách khoa thư về Nghệ thuật chắc chắn sẽ trở thành một cuốn sách yêu thích của cả gia đình.','https://salt.tikicdn.com/cache/750x750/ts/product/b0/ac/5d/73748dab6db5be69a2b052d27ece07c8.jpg.webp',4),
('Nghệ Thuật Thị Giác & Những Vấn Đề Cơ Bản: Các Yếu Tố Thị Giác, Nguyên Lý Thị Giác, Tư Duy Thị Giác và Bố Cục Thị Giác',630.000,'Uyên Huy','Nhà Sách Lộc','Nhà xuất bản Mỹ Thuật',null,'Cuốn sách đã đạt Giải thưởng của Hội Mỹ thuật Việt Nam năm 2018 và nhận được vô vàn những đánh giá cao. Xin mời các bạn cùng xem qua một số trích đoạn đánh giá:

“…Đây thật sự là một công trình khoa học lý luận mỹ thuật vô cùng quý giá, vô cùng cần thiết đối với giảng viên, sinh viên các chuyên ngành mỹ thuật….”

                          – Nhà giáo nhân dân – Tiến sĩ TRƯƠNG PHI ĐỨC, Nguyên Hiệu Trưởng Trường Đại học Mỹ thuật Tp. Hồ Chí Minh.

“…Có thể nói cuốn sách này là nền tảng quý giá cho người muốn tìm hiểu và mong muốn thực hành mỹ thuật, kể cả người đã học hoặc đang hành nghề nhưng chưa có điều kiện nghiên cứu một cách bài bản, đầy đủ…”

                            – Họa sĩ NGUYỄN HÁO THOẠI, Nguyên Phó Hiệu trưởng Trường Cao Đẳng Mỹ Thuật Trang trí Đồng Nai.

“…Đây là công trình sưu tầm, nghiên cứu, biên tập có ý nghĩa, giá trị học thuật phục vụ cho công tác chuyên ngành, giảng dạy, sáng tạo nghệ thuật; là nguồn tư liệu bổ ích cho sinh viên các ngành mỹ thuật, các giảng viên văn hóa nghệ thuật, các cơ sở đào tạo mỹ thuật và những đọc giả yêu thích về Nghệ thuật thị giác…”

                                – NGND.GS.TS NGUYỄN XUÂN TIÊN,  Phó Hiệu trưởng Trường Đại học Mỹ thuật Tp. Hồ Chí Minh.

“…Một cuốn sách rất cần thiết cho các Nghệ sĩ Tạo hình, các nhà nghiên cứu mỹ thuật và công chúng yêu nghệ thuật ở nhiều góc độ khác nhau, từ nghiên cứu, giảng dạy, thưởng thức nghệ thuật…”','https://salt.tikicdn.com/cache/750x750/ts/product/04/d0/15/bce498a64dc460a849020443932d8dd5.jpg.webp',4),
('Nghệ Thuật Minh Họa Áo Mũ Thời Nguyễn: Đầu Thế Kỷ XX',348.000,'Trần Minh Nhựt (Biên soạn)','Công ty Cổ phần Sách Omega Việt Nam','Công ty Cổ phần Sách Omega Việt Nam',null,'Nghệ thuật minh họa áo mũ thời Nguyễn đầu thế kỷ XX của tác giả Trần Minh Nhựt là công trình nghiên cứu nghệ thuật với trọng tâm là khảo cứu bộ tác phẩm nghệ thuật công phu Grande Tenue de la Cour d’Annam (tạm dịch Đại Lễ phục triều đình An Nam) của họa sĩ Nguyễn Văn Nhân, nhằm giải mã ngôn ngữ tạo hình nghệ thuật đặc trưng, hay sự tác động của nghệ thuật phương Tây trong giai đoạn giao thoa văn hóa Đông - Tây đầu thế kỷ XX. Qua đó, tôn vinh tài năng vẽ tranh điêu luyện của họa sĩ Nguyễn Văn Nhân; củng cố và đánh giá những giá trị nghệ thuật của bộ tranh khi soi chiếu đến trang phục triều Nguyễn, đồng thời đề cao những đóng góp của họa sĩ cho nền mỹ thuật nước nhà.','https://salt.tikicdn.com/cache/750x750/ts/product/de/26/09/186248919a0929fdcb7bcb50b7d398e0.jpg.webp',4),
('Đây Là Leonardo Da Vinci',120.000,'Joost Keizer','Công Ty Cổ Phần Văn Hóa Đông A','Nhà Xuất Bản Dân Trí','Nguyễn Quí Hiển','Đây là Leonardo da Vinci kể về cuộc đời của thiên tài toàn năng này, theo diễn biến thời gian, từ đứa con ngoài giá thú ở xứ Vinci, đến khi lớn lên theo cha và mẹ kế đến Florence, rồi học việc tại xưởng vẽ của họa sỹ tài danh nhất tại đây - Andrea del Verrocchio. Khi đạt được những thành công nhất định, Leonardo rời Florence đến Milan, rồi từ đó, ông sống cuộc sống nay đây mai đó, di chuyển qua lại giữa các cung điện ở những thành quốc dọc theo bán đảo Italy. Trong bối cảnh chính trị phức tạp và liên tục thay đổi lúc bấy giờ, người đọc có thể cảm thấy ngạc nhiên vì Leonardo không hề cho thấy ông có bất kỳ lý tưởng chính trị nào. Tất cả những sự kiện quan trọng trong cuộc đời Leonardo, những mối quan hệ ảnh hưởng lớn đến thiên tài vĩ đại này đều được thuật lại một cách đầy đủ và hấp dẫn thông qua lời kể ngắn gọn và những minh họa sống động.','https://salt.tikicdn.com/cache/750x750/ts/product/82/e4/55/f9d47a42372bf5aa1d59e67cdb2d7ffd.jpg.webp',4),
('How To Draw – Vẽ Nguệch Ngoạc Cả Thế Giới',96.900,'Chika Miyata','Bloom Books','Nhà Xuất Bản Thế Giới','Hạ Pu','/Nguệch ngoạc/

Tính từ, nhưng có thể dùng như động từ. Vẽ cả thế giới xiên xiên vẹo vẹo, nhưng dễ thương.
Dành cho người không biết vẽ nhưng thích vẽ, hoặc những người thi thoảng cứ cầm bút vẽ vô thức ra giấy nhưng không thể vẽ được bất cứ thứ gì khác ngoài bông hoa hay ngôi nhà :”)

Một cuốn sách giúp bạn nguệch ngoạc cả thế giới theo phong cách dễ thương ngoài-tầm-với.','https://salt.tikicdn.com/cache/750x750/ts/product/b0/a5/20/00c793b5bdd58652d8fcbfa892338697.png.webp',4),
-- 5
('Sách - Giáo Trình Autocad 3D - Lý Thuyết & Thực Hành - Bìa mềm ( Tặng sổ tay xương rồng )',136.344,'Phạm Phương Hoa, Phạm Quang Hiển','Công Ty TNHH Thương Mại STK','Nhà Xuất Bản Thanh Niên',null,'CAD là từ viết tắt của Computer Aided Design. Đây là quy trình dùng để thiết kế và soạn thảo các thành phần trên máy vi tính. Quá trình này bao gồm việc thiết kế và tạo ra các bản vẽ của sản phẩm hoặc hệ thống. AutoCAD là một trong những gói phần mềm CAD đầu tiên được phát triển và giới thiệu ra thị trường bởi Autodesk Inc vào năm 1982 và là phần mềm CAD được sử dụng rộng rãi nhất. AutoCAD có thể được sử dụng để tạo mô hình hai chiều (2D) và ba chiều (3D) của sản phẩm. Các mô hình này có thể được chuyển sang các chương trình máy tính khác để phân tích và thử nghiệm thêm. Ngoài ra, bạn có thể chuyển đổi các mô hình máy tính này thành dữ liệu số. Dữ liệu số này có thể được sử dụng trong thiết bị sản xuất như trung tâm gia công, máy tiện, nhà máy hoặc nhanh máy tạo mẫu để sản xuất sản phẩm. Các lệnh và các khái niệm được giới thiệu bởi AutoCAD được sử dụng bởi các hệ thống khác. Đối với sinh viên, kỹ sư chuyên ngành kỹ thuật, việc học AutoCAD mang lại cho bạn một lợi thế lớn hơn so với bất kỳ phần mềm CAD nào khác. AutoCAD đã đã phát triển qua nhiều năm để trở thành một ứng dụng phần mềm toàn diện giải quyết tất cả các khía cạnh của thiết kế và soạn thảo kỹ thuật. Cuốn sách này khám phá môi trường 3D của AutoCAD, hướng dẫn người đọc cách tạo và chỉnh sửa các đối tượng 3D và tạo ra những hình ảnh ấn tượng. Cuốn sách này lý tưởng cho người dùng AutoCAD nâng cao cũng như sinh viên đại học, những thầy/cô muốn phổ biến những kiến ​​thức về AutoCAD cả lý thuyết lẫn thực hành','https://salt.tikicdn.com/cache/750x750/ts/product/73/a7/56/4a6b117e04d5625d0b9e32b4338c22fd.jpg.webp',5),
('Giáo Trình Quản Lý Bất Động Sản ( Tặng sổ tay xương rồng )',120.600,'Đoàn Dương Hải','NXB Xây Dựng','Nhà Xuất Bản Xây Dựng',null,'Bất động sản là một trong những ngành kinh tế quan trọng, sôi động trong một đất nước đang trong giai đoạn phát triển, đang trong quá trình đô thị hóa nhanh như ở nước ta. Trong nền kinh tế thị trường định hướng xã hội chủ nghĩa, các doanh nghiệp kinh doanh bất động sản, dịch vụ bất động sản thuộc nhiều thành phần sở hữu, nhiều thành phần kinh tế đều bình đẳng, hợp tác và cạnh tranh theo pháp luật dưới sự quản lý của nhà nước pháp quyền xã hội chủ nghĩa và sự tham gia của các tổ chức chính trị xã hội, xã hội, xã hội nghề nghiệp có liên quan trong bảo vệ quyền lợi của nhà đầu tư kinh doanh và người sử dụng dịch vụ bất động sản. Điều đó đòi hỏi phải nâng cao kiến thức có hệ thống của người tham gia quản lý nhà nước và của các chủ thể sở hữu, các tổ chức kinh doanh dịch vụ bất động sản.

Cùng với giáo trình Kinh tế bất động sản, giáo trình Quản lý bất động sản phục vụ cho công tác đào tạo chuyên ngành Kinh tế và Quản lý bất động sản tại trường Đại học Xây dựng Hà Nội. Giáo trình quản lý bất động sản nhằm cung cấp những hiểu biết cơ bản về lý luận và thực tiễn quản lý bất động sản cho các bạn sinh viên cũng như học viên cao học đang theo học chuyên ngành kinh tế và quản lý bất động sản.','https://salt.tikicdn.com/cache/750x750/ts/product/94/2d/13/e3116c0a942593e155275be55026c3fd.jpg.webp',5),
('Kế Toán Tài Chính Trong Doanh Nghiệp - Lý Thuyết Và Thực Hành',158.400,' Nhiều Tác Giả','Văn hóa Hà Nội','Nhà Xuất Bản Tài Chính',null,'Cuốn sách “Kế toán tài chính trong doanh nghiệp lý thuyết và thực hành”  được biên soạn trên cơ sở cập nhật chế độ kế toán hiện hành, thực tiễn trong quá trình giảng dạy nhiều năm về kế toán và kiểm toán; thực tiễn thực hành công tác kế toán cũng như kiểm toán báo cáo tài chính của các doanh nghiệp. Theo đó, ngoài giới thiệu những nội dung chung nhất về kế toán, nhóm tác giả nhấn mạnh nhiều hơn đến thực hành kế toán cùng các ví dụ và bài tập cụ thể nhằm giúp cho người học  và những người hành nghề kế toán kiểm toán có được những kiến thức sâu rộng về chuyên ngành kế toán tài chính.','https://salt.tikicdn.com/cache/750x750/ts/product/ae/57/56/ea076815c8ce2a6ed2a8d74c09ff71f4.jpg.webp',5),
('135 Sơ Đồ Kế Toán Doanh Nghiệp',29.000,'PGS. TS. Võ Văn Nhị','Hương Huy','Nhà Xuất Bản Lao Động',null,'Phần 1: Sơ đồ kế toán theo từng tài khoản

Phần 2: Một số sơ đồ có tính đặc thù và sơ đồ tổng hợp

Phụ lục: Báo cáo tài chính áp dụng cho doanh nghiệp nhỏ và vừa','https://salt.tikicdn.com/cache/750x750/media/catalog/product/1/3/135-so-do-ke-toan-doanh-nghiep.jpg.webp',5),
('Giáo Trình C++ Và Lập Trình Hướng Đối Tượng',104.400,'Phạm Văn Ất, Lê Trường Thông','Huy Hoàng Bookstore','Nhà Xuất Bản Bách Khoa Hà Nội',null,'Giáo Trình C++ Và Lập Trình Hướng Đối Tượng

Lập trình cấu trúc là phương pháp tổ chức, phân chia chương trình thành các hàm, thủ tục. Chúng được dùng để xử lý dữ liệu nhưng lại tách rời các cấu trúc dữ liệu.

Lập trình hướng đối tượng dựa trên việc tổ chức chương trình thành các lớp. Khác với hàm và thủ tục, lớp là một đơn vị bao gồm cả dữ liệu và các phương thức xử lý.

“Giáo trình C++ & lập trình hướng đối tượng” trình bày một cách hệ thống các khái niệm của lập trình hướng đối tượng được cài đặt trong C++ như lớp, đối tượng, sự thừa kế, tính tương ứng bội và các khả năng mới trong xây dựng, sử dụng hàm như đối tham chiếu, đối mặc định, hàm trùng tên, hàm toán tử. “Giáo trình C++ & lập trình hướng đối tượng” gồm 13 chương và 5 phụ lục được trình bày khá khoa học. Ngoài ra, cuốn sách còn đề cập đến một số vấn đề còn ít được biết đến như cách xây dựng hàm với số đối bất định trong C cũng sẽ được giới thiệu .','https://salt.tikicdn.com/cache/750x750/ts/product/d6/0e/09/7c48a0e134d985f72b84f63727d6a09d.jpg.webp',5),
('Giáo Trình Triết Học Mác – Lênin (Dành Cho Bậc Đại Học Hệ Không Chuyên Lý Luận Chính Trị) - Bộ mới năm 2021',94.000,'Bộ Giáo Dục Và Đào Tạo','Nhà Xuất Bản Chính Trị Quốc Gia Sự Thật','Nhà Xuất Bản Chính Trị Quốc Gia Sự Thật',null,'Giáo trình được biên soạn theo yêu cầu đổi mới căn bản, toàn diện giáo dục và đào tạo, phù hợp với đối tượng người học, nhằm cung cấp những tri thức hiểu biết có tính nền tảng và hệ thống về triết học Mác - Lênin; xây dựng thế giới quan duy vật và phương pháp luận biện chứng duy vật làm nền tảng lý luận cho việc nhận thức các vấn đề, nội dung của các môn học khác; nhận thức được thực chất giá trị, bản chất khoa học, cách mạng của triết học Mác - Lênin. Đồng thời, giúp cho sinh viên vận dụng tri thức triết học Mác - Lênin, thế giới quan duy vật và phương pháp luận biện chứng duy vật để rèn luyện tư duy, giúp ích trong học tập và cuộc sống.','https://salt.tikicdn.com/cache/750x750/ts/product/83/f7/1f/0c3a491b7e23820a5907adef10ef8033.jpg.webp',5),
-- 6
('Khu Vườn Bí Mật ( Tái Bản 2019 )',67.000,'Frances Hodgson Burnett','Nhã Nam','Nhã Nam',null,'Mary Lennox, một cô bé mồ côi, cáu kỉnh, không ai ưa, tới sống tại nhà ông bác ở vùng đồng hoang Yorkshire, nước Anh, nơi có rất nhiều bí mật đang đợi cô. Ban đêm, có tiếng khóc của ai đó từ một hành lang gần phòng cô. Còn ban ngày, cô gặp Dickon, một cậu bé biết thuần dưỡng và nói chuyện cùng loài vật. Rồi một ngày, nhờ sự giúp đỡ của một con chim ức đỏ, Mary khám phá ra một nơi bí ẩn nhất trên thế gian này – Khu vườn bí mật. Mọi thứ dường như đã chết trong khu vườn mười năm qua khóa kín. Cùng với Colin, vị chủ nhân ốm yếu của tiếng khóc bí ẩn kia, và Dickon, cậu bé mà tất cả mọi người đều yêu mến, Mary đã tìm ra những thứ sẽ làm thay đổi cuộc đời cô mãi mãi, khi mùa xuân về đánh thức cả khu vườn tuyệt đẹp.','https://salt.tikicdn.com/cache/750x750/ts/product/30/74/bd/e8883d02bba0ca7c232ebde1672462b6.jpg.webp',6),
('Thợ Săn Bóng Tối (Tiểu Thuyết Trinh Thám)',131.000,'Donato Carrisi','NXB Phụ Nữ Việt Nam','Nhà Xuất Bản Phụ Nữ Việt Nam','Phạm Bích Ngọc','Sau Tòa án linh hồn, Thợ săn bóng tối là phần tiếp theo trong xê ri trinh thám mang đậm chất tôn giáo của nhà văn người Italia Donato Carrisi.
Marcus, một linh mục ân giải, tỉnh dậy sau cơn hôn mê ở Prague và hoàn toàn mất trí nhớ. Bên giường bệnh, anh tìm thấy hai phong bì dán kín: một chiếc chứa vé tàu tới Roma cùng với lời cam kết ở đó, anh sẽ tìm lại được quá khứ của mình; trong phong bì còn lại chứa 20.000 euro cùng một hộ chiếu mang danh tính giả để Marcus làm lại cuộc đời. Vị linh mục sẽ lựa chọn cái nào?

Marcus quyết định vò nát chiếc phong bì chứa tiền và hộ chiếu giả để anh không có cơ hội đổi ý, và lựa chọn trở về Rome. Ở đó, anh được dẫn đến Vatican, và lần đầu tiên nhận ra khả năng nhìn thấu cái ác như đang diễn ra ngay trước mắt của bản thân mình. Sau khi được huấn luyện, Marcus sẵn sàng thực hiện nhiệm vụ của mình đúng vào lúc cả thành phố Rome đang lâm vào trạng thái hoảng loạn bởi một tên sát nhân hàng loạt. Hắn lựa chọn nạn nhân là các cặp đôi đang thân mật với nhau ở ngoại ô thành phố với cùng một cách thức gây án: nạn nhân nam nhận cái chết êm ái với một phát đạn vào gáy trong khi nạn nhân nữ phải chứng kiến cái chết của người tình, sau đó bị tra tấn dã man trước khi những nhát dao chí tử cướp đi mạng sống của họ.

Trong lúc Marcus thâm nhập các hiện trường án mạng để tìm kiếm manh mối, anh gặp lại Sandra - nữ cảnh sát chụp ảnh hiện trường. Cả hai nhanh chóng phát hiện ra kết quả khám nghiệm tử thi đã bị làm cho sai lệch bởi chính vị chuyên gia pháp y - kẻ đứng đầu một giáo phái bí truyền và từng điều hành một bệnh viện dành cho tội phạm vị thành niên trong quá khứ.

Tuyến nhân vật đa dạng, các vụ án kép diễn ra liên tục với nhịp điệu điên cuồng cùng tình tiết truyện phức tạp tạo nên một tác phẩm cuốn hút và thể hiện tài năng phi thường của Donato Carrisi.','https://salt.tikicdn.com/cache/750x750/ts/product/4f/dc/4b/50d89bd168adfab52e43f8b27aec1797.jpg.webp',6),
('Cáo Pax',84.200,'Sara Pennypacker','Nhã Nam','Nhà Xuất Bản Hội Nhà Văn','Mèo Xanh Biển','Chiến tranh, bố nhập ngũ, Peter phải chuyển đến sống cùng ông nội. Nhưng đau buồn hơn cả việc xa rời mái nhà thân thuộc, Peter phải lìa bỏ Pax, chú cáo được cậu cứu sống và đã bên cậu từ khi chỉ là cáo con. Từ đây bắt đầu hành trình vượt hàng trăm dặm cùng biết bao nỗ lực sinh tồn giữa thiên nhiên hoang dã để hai người bạn tìm về bên nhau. Một cậu bé. Một chú cáo. Không thể chia lìa, cho đến khi bị chia cắt 300 dặm trường.
Câu chuyện về tình yêu, ý chí và lòng trung thành được kể qua những áng văn giàu cảm xúc cùng minh họa tuyệt đẹp đã minh chứng một chân lý: dù đau thương hay chiến tranh có đào sâu bám rễ, tình bạn và tình yêu vẫn đưa tâm hồn ta về bến bình yên.','https://salt.tikicdn.com/cache/750x750/ts/product/5b/36/d2/98867ec1bf4432c70d138985d17df349.jpg.webp',6),
('Kafka bên bờ biển (Tái Bản 2020)',113.000,'Haruki Murakami','Nhã Nam','Nhà Xuất Bản Hội Nhà Văn','Dương Tường','Kafka Tamura, mười lăm tuổi, bỏ trốn khỏi nhà ở Tokyo để thoát khỏi lời nguyền khủng khiếp mà người cha đã giáng xuống đầu mình.Ở phía bên kia quần đảo, Nakata, một ông già lẩm cẩm cùng quyết định dấn thân. Hai số phận đan xen vào nhau để trở thành một tấm gương phản chiếu lẫn nhau. Trong khi đó, trên đường đi, thực tại xào xạc lời thì thầm quyến rũ. Khu rừng đầy những người linh vừa thoát khỏi cuộc chiến tranh vừa qua, cá mưa từ trên trời xuống và gái điếm trích dẫn Hegel. Kafka bên bờ biển, câu chuyện hoang đường mở đầu thế kỷ XXI, cho chúng ta đắm chìm trong một chuyến du hành đầy sóng gió đầy chất hiện đại và mơ mộng trong lòng Nhật Bản đương đại','https://salt.tikicdn.com/cache/750x750/ts/product/63/99/70/ec162960adeabe3f2ce2f63fe4a2ebf7.jpeg.webp',6),
('Giá Như Thế Gian Này Ai Cũng Chân Thật',66.500,'Brianna Wiest','Skybooks','Nhà Xuất Bản Dân Trí','Nhân dịch','“Ánh sáng lọt qua từ những rạn nứt trong đời.”

Đó là chiêm nghiệm của Brianna Wiest - một tác giả nổi tiếng của Thought Catalog - trong cuốn sách “Giá như thế gian này ai cũng chân thật”.

Brianna là cô gái đã từng trải qua tan vỡ, đã vượt qua và dạn dĩ trưởng thành từ những nỗi đau.

Để trở thành phiên bản “một người lớn hạnh phúc” như hiện tại, cô gái ấy đã đánh đổi nhiều thứ trong đời…

ĐÁNH ĐỔI những đêm thao thức, ám ảnh bởi những điều chưa “hoàn hảo” của bản thân, để chấp nhận rằng đó là điều hiển nhiên của Vũ Trụ và của tất cả những sinh linh đang tồn tại trong nó. Từ đó đạt tới trạng thái yên bình trong tâm trí.

ĐÁNH ĐỔI những mối quan hệ dù thân thiết nhưng độc hại, để hiểu được rằng yêu chính mình là biết cố gắng vì những điều tốt đẹp và biết buông bỏ những con người, sự vật, hoài niệm khiến mình tổn thương.
ĐÁNH ĐỔI những lần thất bại để tìm được một công việc phù hợp và đạt tới một trạng thái lạc quan, luôn trân trọng mọi điều xảy ra trong đời mình, dù tốt hay xấu.

Chúng ta, những người trẻ đang vật lộn với những vấn đề riêng của mình đều sẽ được truyền cảm hứng từ những cố gắng của Brianna.

Không chỉ chia sẻ những trải nghiệm của bản thân khi đối mặt với những vấn đề của cuộc sống, Brianna trong “Giá như thế gian này ai cũng chân thật” còn gây ấn tượng bởi hành trình “tỉnh thức tâm linh”. Đó là điều mà tôi, bạn, gia đình chúng ta hoặc bất kỳ ai đều có thể sẽ trải qua. Nếu nó đã xảy ra với bạn, tôi cảm thấy rất mừng cho bạn. Còn nếu điều đó chưa đến, thì mong rằng bạn trang bị cho mình một tâm trí mở rộng, một tâm thái lạc quan, và một tâm hồn tĩnh lặng để đón nhận tất cả những màu nhiệm sẽ xảy đến trong cuộc đời.

“Giá như thế gian này ai cũng chân thật” - Hy vọng bạn sống trọn vẹn từng phút giây, không nhớ mong quá khứ, không ám ảnh bởi tương lai và tận hưởng hiện tại ở trạng thái tốt đẹp nhất.','https://salt.tikicdn.com/cache/750x750/ts/product/ff/54/4a/23f251b3ac3f1551feead3c8c2cfc37d.jpg.webp',6),
('Heidi',163.000,'Johanna Spyri','Công Ty Cổ Phần Văn Hóa Đông A','Nhà Xuất Bản Văn Học','Thanh Vân','Vì vội vã đi kiếm việc làm mới, người dì ích kỉ đã gửi Heidi đến cho ông nội của cô bé, đang sống cô độc trên vùng núi Alm. Ai cũng ái ngại cho Heidi khi phải sống với ông già lập dị và cục cằn ấy. Nhưng ai ngờ được rằng, Heidi bé bỏng với tấm lòng nhân hậu tự nhiên, chẳng những giúp ông nội tìm lại lòng yêu cuộc sống, mà còn mang đến bao đổi thay kì diệu. Những ai từng gặp Heidi, dù ở Dörfli hay Frankfurt, đều muốn cô bé mãi mãi ở bên mình. Nhưng tất cả đều hiểu, chỉ ở giữa cánh đồng hoa rực rỡ, thung lũng mênh mông và ráng chiều rực đỏ trên những ngọn núi thanh tĩnh ngàn đời của dãy Alm, Heidi mới thực sự hạnh phúc để tặng niềm vui cho mọi người.','https://salt.tikicdn.com/cache/750x750/ts/product/77/1e/ad/64783611735cad6e26249646d1f6c3c4.jpg.webp',6),
-- 7
('Thao Túng Tâm Lý',100.900,'Shannon Thomas','1980 Books','Nhà Xuất Bản Dân Trí','Trương Tuấn','Trong cuốn Thao túng tâm lý, tác giả Shannon Thomas giới thiệu đến độc giả những hiểu biết liên quan đến thao túng tâm lý và lạm dụng tiềm ẩn.
“Thao túng tâm lý” là một dạng của lạm dụng tâm lý. Cũng giống như lạm dụng tâm lý, thao túng tâm lý có thể xuất hiện ở bất kỳ môi trường nào, từ bất cứ đối tượng độc hại nào. Đó có thể là bố mẹ ruột, anh chị em ruột, người yêu, vợ hoặc chồng, sếp hay đồng nghiệp… của bạn. Với tính chất bí hiểm, âm thầm gây hại, thao túng, lạm dụng tâm lý làm tổn thương cảm xúc, lòng tự trọng, cuộc sống của mỗi nạn nhân. Những người từng bị lạm dụng tâm lý thường không thể miêu tả rõ ràng điều gì đã xảy ra với mình. Trong nhiều trường hợp, nạn nhân bị thao túng đến mức tự hỏi có phải họ là người có lỗi, thậm chí họ có phải là người độc hại trong mối quan hệ đó.
Hành vi của (những) kẻ lạm dụng giống như một trò chơi bí ẩn, tệ hại và lặp đi lặp lại, do một cá nhân hoặc một nhóm người thực hiện với nạn nhân. Những hành vi này được ngụy trang tài tình đến mức hành vi độc ác của họ diễn ra thường xuyên, nhưng không bị phát hiện.Shannon Thomas giới thiệu những kiến thức cơ bản về đặc điểm, các dạng của lạm dụng tâm lý nói chung, thao túng tâm lý nói riêng, và cung cấp cho người đọc hành trình chữa lành.
Bằng những kiến thức chuyên sâu và sự thấu hiểu, tác giả sẽ giúp bạn từng bước vượt qua những rắc rối của thao túng tâm lý, lạm dụng tiểm ẩn để có cuộc sống ý nghĩa và lành mạnh hơn.','https://salt.tikicdn.com/cache/750x750/ts/product/90/49/97/ec88ab408c1997378344486c94dbac40.jpg.webp',7),
('Thức Tỉnh Điều Vô Hình (Hành Trình Khám Phá Tâm Linh)',103.000,'Sam Harris','First News - Trí Việt','Nhà Xuất Bản Dân Trí','Thi Lăng','Một tác phẩm hiếm có, truyền cảm hứng về chủ đề tâm linh, được kể với ngôn ngữ hoài nghi, hài hước và đầy minh triết.Chúng ta đang chứng kiến một thời đại nở rộ các nội dung liên quan đến chủ đề tâm linh. Điều này đẩy con người đến các thái độ cực đoan khi nhắc đến tâm linh, người tin thì tin đến sùng tín, người hoài nghi thì càng cực đoan bài trừ. Cứ như vậy, tâm linh dần trở thành một điều gì đó có vẻ cao đạo và “hết sức nghiêm trọng”. Hãy tạm bỏ qua con đường và trải nghiệm của những bậc giác ngộ minh triết, liệu còn có cách nào đó nói về tâm linh một cách thú vị hơn không?
Rất khó để kiếm tìm một dạng tài liệu hay một cuốn sách như vậy. Tuy nhiên, Thức tỉnh điều vô hình (tựa gốc: Waking up) của Sam Harris lại là một ngoại lệ thú vị. “Sam Harris xứng đáng là một kẻ hoài nghi yêu thích của tôi, chẳng ai sánh bằng. Trong tác phẩm này, anh mang lại một góc nhìn tỉnh táo, không chút khoan nhượng về "siêu thị tâm linh", gọi tên những món ăn vặt và chỉ cho chúng ta biết thành phần dinh dưỡng đích thực có thể tìm thấy ở đâu. Bất cứ ai nhận ra giá trị của đời sống tâm linh sẽ cảm thấy có nhiều điều để thưởng thức - và những ai không thấy giá trị ở đó sẽ còn tìm thấy nhiều điều hơn nữa để chiêm nghiệm” - Daniel Goleman, tác giả của Emotional Intelligence và Focus – đã hào phóng nhận định về cuốn sách của đồng nghiệp như thế.','https://salt.tikicdn.com/cache/750x750/ts/product/44/0e/38/2cd246d628617740c06bf45d462837b4.jpg.webp',7),
('Sách Muôn Kiếp Nhân Sinh',163.500,'Nguyên Phong','First News - Trí Việt','Nhà Xuất Bản Tổng hợp TP.HCM',null,'“Muôn kiếp nhân sinh” cung cấp cho bạn đọc kiến thức mới mẻ, vô tận của nhân loại lần đầu được hé mở, cùng những phân tích uyên bác, tiên đoán bất ngờ về hiện tại và tương lai thế giới của những bậc hiền triết thông thái. Đời người tưởng chừng rất dài nhưng lại trôi qua rất nhanh, sinh vượng suy tử, mong manh như sóng nước. Luật nhân quả cực kỳ chính xác, chi tiết, phức tạp được thu thập qua nhiều đời, nhiều kiếp, liên hệ tương hỗ đan xen chặt chữ lẫn nhau, không ai có thể tính được tích đức này có thể trừ được nghiệp kia không, không ai có thể biết được khi nào nhân sẽ trổ quả. Nhưng, một khi đã gây ra nhân thì chắc chắn sẽ gặt quả - luật Nhân quả của vũ trụ trước giờ không bao giờ sai.

Luật Luân hồi và Nhân quả đã tạo nhân duyên để người này gặp người kia. Gặp nhau có khi là duyên, có khi là nợ; gặp nhau có lúc để trả nợ, có lúc để nối lại duyên xưa. Có biết bao việc diễn ra trong đời, tưởng chừng như là ngẫu nhiên nhưng thật ra đã được sắp đặt từ trước. Luân hồi là một ngôi trường rộng lớn, nơi tất cả con người, tất cả sinh vật đều phải học bài học của riêng mình cho đến khi thật hoàn thiện mới thôi. Nếu không chịu học hay chưa học được trọn vẹn thì buộc phải học lại, chính xác theo quy luật của Nhân quả.','https://salt.tikicdn.com/cache/750x750/ts/product/30/ee/5a/e2aed009bb558b5d2cfbbe157b428ba4.jpg.webp',7),
('Tâm Lý Học Biểu Cảm',69.300,'Mã Hạo Thiên','Mintbooks','Nhà Xuất Bản Văn Học','Phi Tường','Cuốn sách dạy bạn cách nhìn thấu người khác một cách rõ ràng nhất và chân thực nhất

Từ gương mặt đến bước chân, từ ngôn ngữ đến cơ thể, từ biểu cảm bên ngoài đến nội tâm bên trong.

Giúp bạn nắm bắt tính cách đối phương, thấu hiểu trái tim con người.

Nhắc đến biểu cảm siêu nhỏ, đa số chúng ta đều cho rằng đó chỉ là những biểu hiện cảm xúc từ ngũ quan trên khuôn mặt. Tuy nhiên, phạm vi của biểu cảm siêu nhỏ không chỉ gói gọn trên khuôn mặt một người, mà còn bao gồm những biểu cảm trên cơ thể, trong ngôn ngữ và hành vi của người đó.','https://salt.tikicdn.com/cache/750x750/ts/product/93/f2/e6/730bd2d3a52f6254801e5fa71d0e8122.jpg.webp',7 ),
('Tâm Lý Học Về Rối Loạn Nhân Cách Tránh Né',88.500,'Okada Takashi','Peachbooks','Nhà Xuất Bản Văn Học','Nhi Lâm','Cuốn sách “Tâm lý học về rối loạn nhân cách tránh né” là giải pháp dành cho những người đã, đang và có thể chưa hiểu rõ về “chứng rối loạn nhân cách tránh né”. Những kiến thức trong sách sẽ mang tới cho bạn một cái nhìn tổng quát, kết hợp lý thuyết với những ví dụ thực tế để bạn hiểu hơn về hội chứng tâm lý này và sẵn sàng bước khỏi bức màn khép kín, đón nhận những yêu thương và sống một cuộc đời trọn vẹn!','https://salt.tikicdn.com/cache/750x750/ts/product/51/bf/46/5cd9d9e5d1f970d44961cccc149a779c.jpg.webp',7),
('Không Ai Có Thể Làm Bạn Tổn Thương Trừ Khi Bạn Cho Phép',82.800,'Yoo Eun Jung','Mood to Read','Nhà Xuất Bản Dân Trí','Sun Tzô','Chúng ta vẫn thường nghĩ mình sẽ chỉ hạnh phúc khi ở bên cạnh ai đó và nhận được yêu thương từ họ. Nhưng thực chất, hạnh phúc đơn giản chỉ là biết trân trọng bản thân và tận hưởng niềm vui trong chính cuộc sống mà bạn mong ước. Vậy nên, hãy nhớ rằng không ai có thể làm bạn tổn thương, trừ khi bạn cho phép.','https://salt.tikicdn.com/cache/750x750/ts/product/0c/ff/1f/091c739d2cc4c1b2a3a9c5025930adcc.jpg.webp',7),
-- 8
('Lỗi tại cái đuôi diều',53.500,'Cao Văn Quyền','NXB Tổng Hợp TP. HCM','Nhà Xuất Bản Tổng hợp TP.HCM',null,'Tập truyện ngắn Lỗi tại cái đuôi diều của Cao Văn Quyền, không đặt nặng tính giáo dục, không dùng một tâm hồn già cỗi để viết về thế giới trẻ thơ. Về thế giới của chính tác giả và những đứa trẻ ở làng quê thế hệ 8x – 9x. Trong trẻo, hồn nhiên, yêu ghét rõ ràng. Bằng giọng văn hóm hỉnh, vui tươi cùng với cách xây dựng tình huống truyện bất ngờ, qua các chương Xuất hiện trên báo, Giấc mơ làm công an, Lỗi tại cái đuôi diều hình ảnh những đứa trẻ nông thôn hiện lên vừa đáng yêu, tinh nghịch vừa láu cá, lém lỉnh. Hình ảnh mà bất kỳ đứa trẻ nào cũng có thể bắt gặp mình trong đó.

Đồng thời, với Chú chó xám cụt đuôi, Thằng Lì, Chiếc rá thủ công, Tôi đã biết bơi như thế đấy… những cung bậc cảm xúc khác nhau của cậu bé Quyền được thể hiện qua giọng văn nhẹ nhàng. Khắc họa tình yêu thương chan chứa mà cậu dành cho bà ngoại, bố mẹ, bạn bè và cậu em Lực.','https://salt.tikicdn.com/cache/750x750/ts/product/35/f0/f6/38c759caa4b7a6e297b3c07be9c4e7c6.jpg.webp',8),
('Hạt giống của lòng trắc ẩn',51.750,'Đức Đạt Lai Lạt Ma','Quảng Văn','Nhà Xuất Bản Phụ Nữ Việt Nam','CLB ngôn ngữ & EQ','“Hạt giống của lòng trắc ẩn ” là câu chuyện kể về cuộc đời của Đức Đạt Lai Lạt Ma thứ 14, tái hiện hành trình phát triển và trưởng thành của Ngài từ một cậu bé nghịch ngợm sống ở một ngôi làng nhỏ ở Tây Tạng cho đến khi trở thành vị lãnh tụ tinh thần được toàn thể nhân dân Tây Tạng kính trọng và được nhiều người trên thế giới mến mộ.
Trong quá trình học tập và tu dưỡng, ngoài những môn học như lịch sử và triết học Phật giáo, luận lý học, thơ ca, y học… thì Ngài luôn quan tâm đến “lòng trắc ẩn”. Đây chính là “hạt giống” mà mẹ Ngài đã gieo từ khi Ngài còn nhỏ và Ngài luôn mang theo bên mình. Trong ký ức của Ngài, mẹ luôn đối xử tử tế với người xung quanh với niềm tin rằng chúng ta có thể đối xử với tất cả mọi người bằng tấm lòng nhân hậu và giúp họ giảm bớt khổ đau.
Ngài đã dành cả cuộc đời mình để lan tỏa lòng trắc ẩn, lan tỏa lòng tốt đến với mọi người trên khắp thế giới với hi vọng làm cho thế giới trở thành một nơi tốt đẹp hơn. Và Ngài luôn đặc biệt tin tưởng rằng “Khả năng tạo một thế kỷ giàu lòng trắc ẩn hơn cũng như thúc đẩy tinh thần hoà hợp trong toàn nhân loại luôn có sẵn trong mỗi đứa trẻ trên thế giới này”.
Chính vì thế, Ngài đã gửi gắm rất nhiều hi vọng vào trong cuốn sách “Hạt giống của lòng trắc ẩn”. Cuốn sách khích lệ các độc giả nhỏ tuổi chú ý đến những thời khắc ngày thường và nhận ra những bài học quan trọng ẩn chứa xung quanh, đồng thời góp phần nuôi dưỡng tâm trí của trẻ và giúp trẻ trở thành những con người giàu lòng trắc ẩn.','https://salt.tikicdn.com/cache/750x750/ts/product/75/f8/a6/4620b544b827ec20da6b7125d5f1c20a.jpg.webp',8),
('Băng Đảng Quái Kiệt - Tập 2',53.100,'Aaron Blabey','Crabit Kidbooks','Nhà Xuất Bản Hà Nội','Mai Ngọc Tú','“Băng Đảng Quái Kiệt” là bộ sách nói về các quý anh Sói, Rắn, Cá Mập và Cá Cọp. Họ có vẻ ngoài xấu xa, lời nói hiểm ác, thậm chí còn toát lên mùi nguy hiểm. Nhưng, họ cho rằng những tai tiếng đồn thổi đó khiến họ bị người đời hiểu lầm bao đời nay. Đây còn là bộ sách 120 tuần lọt top bán chạy nhất theo tờ New York Times, với hơn 16 triệu bản của xê-ri này đã được bán ra trên toàn cầu. Bộ sách cũng được hãng Dreamworks chuyển thể thành phim hoạt hình.','https://salt.tikicdn.com/cache/750x750/ts/product/c6/ed/2b/bfeebb41c038cb6974656fd78bd075cd.png.webp',8),
('Kính Vạn Hoa Thiên Nhiên: Cuộc Thi Ở Làng Nấm',27.000,'Giai Phần','Nhà Xuất Bản Kim Đồng','Nhà Xuất Bản Kim Đồng','Khánh Nguyên','Làng Nấm thường tổ chức đại hội hái nấm mỗi năm một lần. Cư dân của làng Nấm là các chú lùn tí hon ra sức tìm kiếm những cây nấm thơm ngon, bổ dưỡng để giành giải quán quân năm nay. Và họ đã hái được những gì nào? Cùng theo dõi câu chuyện trong cuốn sách và tìm hiểu về những kiến thức lí thú về loài nấm nhé!

Em biết gì về chim sẻ - loài chim bé nhỏ đáng yêu thường nhìn thấy quanh ta?

Em biết gì về loài Nấm? Liệu đó có phải là một loài cây không nhỉ?

Em biết gì về koala - loài gấu túi đáng yêu mà bạn nhỏ nào cũng mê tít?

Thế giới tự nhiên xung quanh ta có vô vàn điều kì thú, tựa như một chiếc kính vạn hoa với thật nhiều màu sắc, nhiều hình ảnh và khía cạnh đang chờ em khám phá! Bộ sách Kính vạn hoa thiên nhiên sẽ mang tới 12 câu chuyện nhỏ hóm hỉnh, dễ thương kèm theo những kiến thức khoa học dễ hiểu, bổ ích ở cuối mỗi cuốn. Em đã sẵn sàng để quan sát tự nhiên qua những lăng kính vạn hoa chưa? Hãy nhìn ngắm thật kĩ nhé!','https://salt.tikicdn.com/cache/750x750/ts/product/9a/bc/93/8bc20f4de51d22c91596d64fa55baff8.jpg.webp',8),
('Trời Đất Gà Vịt Ơi, Mặt Trời Đã Bị Đánh Cắp (Tái Bản)',51.040,' Christian Jolibois, Christian Heinrich','Nhã Nam','Nhà Xuất Bản Hà Nội','Ong Ong Ong','Ở chuồng gà, mọi chuyện không được suôn sẻ lắm: Pitikok không thể đánh thức mặt trời! Như mọi buổi sáng khác, bố của Carmen và Carmélito đã cất tiếng gáy: "Ò ó o o!" Nhưng không ăn thua. Vầng dương đã biến mất. Carmen, Carmélito và Bélinon quyết định tìm lại mặt trời! Nhân danh gà mái!','https://salt.tikicdn.com/cache/750x750/ts/product/85/7a/89/8dc7d8849d48b116cba93c4815e7aa2f.jpg.webp',8),
('Đường Về Nhà',71.500,'Go Hey Jin','Nhã Nam','Nhã Nam','Uyên Uyên','Cuốn sách này khởi nguồn từ trải nghiệm thời thơ ấu của tác giả. Anh vẽ về thế giới tưởng tượng mở ra trong đầu của đứa trẻ lần đầu đi một mình ra ngõ, trông thấy những cánh cổng, những ô cửa sổ cũ kỹ đầy màu sắc.
Dành cho bạn nhỏ 3-6 tuổi','https://salt.tikicdn.com/cache/750x750/ts/product/fe/e5/19/c2ea78a1204a1e2730fdf82c138eb4d0.jpg.webp',8);

DELIMITER //
create trigger delete_customer
after delete on customer for each row
begin
delete from `account`
where acc_name = old.acc_name;
end ;//
DELIMITER ;