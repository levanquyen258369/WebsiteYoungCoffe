USE DO_AN_08
GO

select * from Product

insert into Category(categoryName,status) values
(N'Coffee',1)
insert into Category(categoryName,status) values
(N'Tea',2)
insert into Category(categoryName,status) values
(N'Equiment',3)
insert into Category(categoryName,status) values
(N'Drinkwave',4)
insert into Category(categoryName,status) values
(N'Gifts',5)
insert into Category(categoryName,status) values
(N'Sale',6)

/*Sản phẩm */
/*Sản phẩm Coffee */
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'CF01',
N'Cà phê Costarica',
100000,
N'assets/img/Thumbanil-3.png',
N'Vùng: Costa Rica – Tarrazu 
Giống: Caturra
Trồng tại Nông trại của Cộng đồng Santa Cruz
Sơ chế tại Nhà máy sơ chế El Palmichal
Độ cao: 1600m – 1700m
Phương pháp sơ chế: Sơ chế double washed',
15/01/2200,
N'Mỹ',
10,1,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'CF02',N'Breakfast Blend',200000,N'assets/img/coffee-10.jpg',
N'không chỉ tạo ra cà phê đậm đà từ những hỗn hợp đặc biệt mà còn giúp bạn dễ dàng uống nó. Bữa sáng Blend là cốc ăn sáng kiểu New England cổ điển, sống động và đầy sức sống của chúng tôi. Bữa sáng Blend cung cấp một loại cà phê Trung Mỹ thơm ngon, giòn và có múi kết hợp với vị ngọt, bùi và sâu của hạt cà phê Indonesia để tạo ra một hỗn hợp tỉnh táo sẽ không cố gắng cạnh tranh với nước cam của bạn về độ sáng của nó. Cà phê rang xay nhẹ, không chứa caffein, 100% hạt Arabica. Liên minh Chính thống Kosher. ',
16/01/2200,N'Mỹ',10,1,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'CF03',N'GuateMala',200000,N'assets/img/coffee-3.jpg',
N'- Giống: Bourbon, Typica, Catuai, Caturra.

- Vùng: Antigua/ Coban/ Huehuetenango, Guatemala

- Cao độ: 1200 - 1700m

- Thời gian thu hoạch: Tháng 12 đến tháng 4

- Chế biến: Ướt , Sun-dried.

- Mùi hương: Hương hoa cỏ (floral), hương cam quit (citrus)

- Mùi vị: chocolate, vị ngọt (sweet), vị hạt dẻ (nutty)

- Thể chất: đầy đủ (full, round)

- Độ chua: chua thanh, vừa phải.',
16/01/2200,N'Mỹ',10,1,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'CF04',N'Espresso',200000,N'assets/img/coffee-4.jpg',N'Làm Từ Cà Phê Arabica, Đậm Vị Cà Phê Ý
Cà phê Espresso được chế tác từ những hạt cà phê Arabica hảo hạng của vùng đất cà phê trứ danh Việt Nam, kết hợp với bí quyết phương Đông và công nghệ bậc nhất từ châu Âu, đem đến một hương vị đậm đà, mạnh mẽ như một ly Espresso Ý mới pha!',16/01/2200,N'Mỹ',10,1,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'CF05',N'Perugia blend',200000,N'assets/img/coffee-10.jpg',
N' Sự pha trộn nổi tiếng này, đã thu hút xếp hạng cao trong các lần nếm thử Coffee Review trước đó, đã thất vọng nhẹ trong hóa thân này (Willem 84, Ken 84). Hương thơm đủ tốt. Đối với Willem, đó là "hoa thanh lịch, phức tạp," đối với Ken "ngọt ngào, phong phú, với đu đủ và có lẽ là bạc hà." Tuy nhiên, cả hai đều thấy chiếc cốc nhỏ bị mất cân bằng. Willem mô tả nó là "chua [và] cay," Ken là "rất hăng với các ghi chú gỗ thơm." Sự mất cân bằng này có thể dự đoán sẽ làm mềm trong sữa: "Tốt hơn nhiều với sữa so với không có sữa", Willem kết luận, mặc dù Ken cảm thấy sự hiện diện trong sữa là đáng kể nhưng "khá đáng suy ngẫm với một kết thúc bằng gỗ."',
16/01/2200,N'Mỹ',10,1,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'CF06',N'Willow Blend',200000,N'assets/img/coffee-6.jpg',
N'Willow Blend là sản phẩm chính hãng. Không cung cấp dịch vụ xay sáng sủa, sạch sẽ, bí ẩn và truyền cảm hứng. Chúng tôi đã nhẹ nhàng dỗ dành hương vị lấp lánh từ sự pha trộn giữa đậu Mỹ Latinh và Đông Phi này với phong cách rang nhẹ hơn độc đáo cho những loại đậu có hương vị tinh tế đạt đến đỉnh cao vào thời gian rang ngắn hơn. Hương vị tươi sáng, sắc nét và sự phức tạp tinh tế tỏa sáng tuyệt đẹp để tạo ra một chiếc cốc mát mẻ, ngon miệng dễ uống. Tinh tế như nó vốn có, ảnh hưởng của cà phê này cũng không kém phần mê hoặc. Trải nghiệm của loại cà phê này giống như những nhánh cây nhẹ nhàng, pliant của cây liễu duyên dáng. Đáng yêu để nhìn, ánh sáng, tươi sáng và thanh lịch, nhưng không bao giờ áp đảo',
16/01/2200,N'Mỹ',10,1,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'CF07',N'Italian',200000,N'assets/img/coffee-7.jpg',N'Đó là sự pha trộn đặc biệt giữa các hạt cà phê từ Mỹ Latinh và Châu Á/Thái Bình Dương, được rang sẫm màu để tạo ra độ ngọt đậm và có vị caramel.Nhờ độ đậm đặc này mà cốc cà phê có vị đậm đà không bị hòa tan vào sữa, đây là nền tảng hoàn hảo để pha cốc cà phê sữa hoặc cappuccino tại nhà.',
10/01/2200,N'Mỹ',10,1,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'CF08',N'Cafe Estima',200000,N'assets/img/coffee-8.jpg',N'Sản phẩm chính hãng. Hạt Cafe Estima bắt nguồn từ công việc của Starbuck với những người nông dân trồng cà phê quy mô nhỏ. Một trong những hỗn hợp đậm hơn, cà phê này rất mịn và cân bằng.',
16/01/2200,N'Mỹ',10,1,1)

insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'CF09',N'Gold Coast',200000,N'assets/img/coffee-9.jpg',N'Sản phẩm chính hãngMột ly cà phê có ý nghĩa Chicago đối với chúng tôi. Khi chúng tôi mở các cửa hàng đầu tiên của mình ở đó vào năm 1987, chúng tôi muốn giới thiệu một hỗn hợp sẽ tôn vinh thành phố, và đây là nó. Các nhà xay cà phê bậc thầy của chúng tôi đã tập hợp rất nhiều hạt cà phê từ Mỹ Latinh và Indonesia với một chút vị ngọt rang từ món nướng Ý đậm màu của chúng tôi. Tạo ra một hương vị tinh vi như khu phố mà chúng tôi đặt tên cho nó. Và đủ thịnh soạn để đi lên chống lại mùa đông nổi tiếng cay đắng.',
16/01/2200,N'Mỹ',10,1,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'CF10',N'Sáng Tạo 8',200000,N'assets/img/sangtao8.jpg',N'Sản phẩm Việt Nam chính hãng. Cafe Trung Nguyên Sáng tạo 8  được chọn lọc từ những hạt cà phê ngon nhất của Việt Nam.Là sản phẩm siêu sạch và tuyệt ngon cho những ai là tín đồ của cà phê.

Bạn luôn mong muốn có những sáng tạo, ý tưởng mới mẻ trong công việc? Làm sao để luôn tỉnh táo, tràn đầy năng lượng. Với mong muốn đem đến cho bạn nguồn năng lượng cho sự khởi động của trí não. Cho cảm hứng của những ý tưởng sáng tạo và cho những thành công của bạn. Trung Nguyên tự hào mang đến cho bạn một sản phẩm tuyệt vời đúng như tên gọi của nó – Cà Phê Sáng Tạo 8 250gr

Từ bí quyết rang xay đặc biệt, những hạt cà phê ngon nhất, chất lượng nhất. Đã được chọn lựa một cách kĩ càng tạo nên hương vị riêng của dòng cà phê đặc biệt này.',
16/01/2200,N'Việt Nam',10,1,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'CF11',N'Chế Phin 1',200000,N'assets/img/coffee-12.jpg',N'Sản phẩm Việt Nam chính hãng.  Hương vị cân bằng, hương thơm nhẹ nhàng, không quá nồng nhưng lại rất khó quên. Chút đắng, chút ngọt dịu, chút chua hậu. Tất cả được hội tụ đầy đủ trong ly cà phê của bạn. Giúp bạn có những trải nghiệm phong phú hơn trong khi thưởng thức.

Chính vì hương vị dễ uống, khó quên nên sản phẩm phù hợp với cả nam và nữ giới. Chinh phục cả những khách hàng ưa thích sự mới mẻ trong việc thưởng thức cà phê, và những khách hàng khó tính.',
16/01/2200,N'Việt Nam',10,1,1)

/*Sản phẩm Tea */
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'T01',N'Awake-english Breafast',200000,N'assets/img/TEA/tea-4.png',N'Sản phẩm chính hãng Tazo Black Tea Awake English Breakfast là sự pha trộn của các loại trà hảo hạng từ hai nơi rất đặc biệt. Assam, gần biên giới Miến Điện ở phía đông bắc Ấn Độ, sản xuất các loại trà nổi tiếng với hương vị mạch nha đậm đặc. Chúng được kết hợp với các loại trà Dimbula tươi sáng, đầy đủ hương vị từ Ceylon để tạo ra một loại trà ăn sáng cân bằng hoàn hảo, thỏa mãn và tiếp thêm sinh lực. Bạn sẽ thấy Tazo Black Tea Awake English Breakfast đậm đà và hương vị hơn nhiều so với trà ăn sáng thông thường của bạn. Truyền thuyết kể rằng Tazo Black Tea Awake English Breakfast đã được những người chèo thuyền trên dòng sông thần thoại Styx sử dụng để giúp họ cảnh giác trong những chuyến đi thường xuyên đến thế giới ngầm.

Mặt trời ló qua đường chân trời qua những đám mây, một vệt sao không bị phát hiện trên bầu trời và thế giới bắt đầu lại. Tazo Black Tea Awake English Breakfast sẽ đưa bạn xuống con đường trong ngày tự hỏi nó sẽ đưa bạn đến đâu và liệu có thể mang theo một người bạn hay không.',
16/01/2200,N'Việt Nam',16,2,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'T02',N'Zen-Panda Blue',200000,N'assets/img/TEA/tea-9.png',N'Sản phẩm chính hãngHỗn hợp trà của chúng tôi phải được uống như một phần của chế độ ăn uống cân bằng, đa dạng. Nếu bạn có bất kỳ tình trạng y tế cụ thể nào, vui lòng tham khảo ý kiến bác sĩ trước khi uống hỗn hợp của chúng tôi. Giữ sản phẩm của bạn ở nơi khô ráo ngoài tầm nhìn và tầm với của trẻ em',
16/01/2200,N'Việt Nam',16,2,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'T03',N'Gingerly Jasmine',300000,N'assets/img/TEA/tea-2.png',N'Sản phẩm chính hãng .Trà xanh được chiếu sáng bởi những nét hoàn hảo của gừng, hoa nhài và cánh hoa hồng. Hướng dẫn về caffeine: Mức độ caffeine: 16-30 mg. Các giá trị dựa trên 8 fl. oz. phục vụ và phản ánh các phương pháp sản xuất bia tiêu chuẩn của chúng tôi. Một trải nghiệm trà phong phú hơn. Những điều kỳ diệu của các loại trà đầy đủ lá của chúng tôi bắt đầu với thiết kế chu đáo của gói của chúng tôi. Nước có thể chảy tự do trên lá, cho phép các hương vị đặc biệt mở ra và phát huy hết tiềm năng của chúng trong cốc của bạn. Thần chú về gừng (zing ngọt ngào), thiền định của hoa nhài (bình tĩnh mát mẻ) và một chút hoa hồng (flora rouge) kết hợp với nhau dưới những cây tre để tìm kiếm sự giác ngộ. Một thành viên đáng kính của gia đình trà xanh huyền ảo, Gingerly Jasmine, hoàn thiện nghệ thuật đi bộ trên mây.',
16/01/2200,N'Việt Nam',16,2,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'T04',N'Orange Chiffon',250000,N'assets/img/TEA/tea-1.png',N'Sản phẩm chính hãng. Một sự pha trộn vui tươi của Earl Grey, vỏ cam, vani và một chút hương vị kem bơ. Hướng dẫn về caffeine: Mức độ caffeine: 41-60 mg. Các giá trị dựa trên 8 fl. oz. phục vụ và phản ánh các phương pháp sản xuất bia tiêu chuẩn của chúng tôi. Một trải nghiệm trà phong phú hơn. Những điều kỳ diệu của các loại trà đầy đủ lá của chúng tôi bắt đầu với thiết kế chu đáo của gói của chúng tôi. Nước có thể chảy tự do trên lá, cho phép các hương vị đặc biệt mở ra và phát huy hết tiềm năng của chúng trong cốc của bạn. Khao khát một sự bổ sung ngọt ngào cho sự rung cảm cam quýt của mình, vỏ cam nắm lấy kem bơ để tìm kiếm vani. Cùng nhau cuối cùng, ba pirouette vào một đám mây kem nhảy múa do chính Earl Grey biên đạo.',
16/01/2200,N'Việt Nam',16,2,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'T05',N'Awake Breafast Blue',220000,N'assets/img/TEA/tea-5.png',
N'Sản phẩm chính hãng.Sản phẩm chính hãng  Tea Awake English Breakfast là sự pha trộn của các loại trà hảo hạng từ hai nơi rất đặc biệt. Assam, gần biên giới Miến Điện ở phía đông bắc Ấn Độ, sản xuất các loại trà nổi tiếng với hương vị mạch nha đậm đặc. Chúng được kết hợp với các loại trà Dimbula tươi sáng, đầy đủ hương vị từ Ceylon để tạo ra một loại trà ăn sáng cân bằng hoàn hảo, thỏa mãn và tiếp thêm sinh lực. Bạn sẽ thấy Tazo Black Tea Awake English Breakfast đậm đà và hương vị hơn nhiều so với trà ăn sáng thông thường của bạn. Truyền thuyết kể rằng Tazo Black Tea Awake English Breakfast đã được những người chèo thuyền trên dòng sông thần thoại Styx sử dụng để giúp họ cảnh giác trong những chuyến đi thường xuyên đến thế giới ngầm.',
16/01/2200,N'Việt Nam',16,2,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'T06',N'Earl Grey',220000,N'assets/img/TEA/tea-6.png',
N'Sản phẩm chính hãng. Trà Earl Grey còn có tên gọi là trà bá tước, có thành phần chính là trà Ceylon – một loại trà hảo hạng có hương vị dầu từ vỏ cam Bergamot. Ngoài ra, trà còn có mùi hương từ trái cây kết hợp giữa vị chanh và vị bưởi. Do đó trà Earl Grey khi uống vào có mùi vị của trái cây rất lạ miệng và không chát nhiều như những loại trà khác.

Nhiều người cho rằng trà Earl Grey là hỗn hợp giữa vị cam đắng của vùng Địa Trung Hải và vị chanh của Đông Nam Á.',
16/01/2200,N'Việt Nam',16,2,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'T07',N'Iced Blushberry black',270000,N'assets/img/TEA/tea-7.png',
N'Sản phẩm chính hãng. Iced Blushberry BlackTea túi là túi trà đá được truyền với hương vị tươi mát của quả mâm xôi, huckleberry &dâu tây mang đến một sự thay đổi ngon miệng cho trà đen. Hỗn hợp trà đen này được trình bày trong 6 túi trà đen kích thước bình. Để pha trà Đen Iced Blushberry, chỉ cần đổ nước sôi lên túi trà trong bình 64 fl oz cho đến khi nó đầy một nửa. Để nó ủ trong 5 phút, lấy túi trà ra, sau đó đổ đầy bình lên trên cùng bằng nước lạnh và phục vụ trên đá để thưởng thức một tách trà đá giải khát tuyệt vời. Tại đây, chúng tôi đang thực hiện nhiệm vụ trở thành những nhà sản xuất trà bất ngờ nhất thế giới. Chúng tôi khám phá sự pha trộn bất ngờ. Chúng tôi kể những câu chuyện bất ngờ để đi cùng họ. Những câu chuyện dí dỏm, giải trí, độc đáo về những người uống : Những người đang tìm cách pha chế những điều bất ngờ trong mọi khía cạnh của cuộc sống của họ. Chúng tôi luôn tò mò, luôn tìm kiếm, luôn luôn đặt câu hỏi. Đây là cái gì? Đó là cái gì? Chúng tôi thích vào ngay trong đó và trộn nó lên. Chúng tôi là một đứa trẻ nửa tò mò, một nửa nhà thám hiểm gan dạ, một nửa nhà giả kim không nản lòng. Có? một rưỡi. Đó là điều không thể đoán trước, không lường trước được thúc đẩy chúng ta. Họ đuổi chúng tôi ra khỏi vùng an toàn của chúng tôi trong một chiếc xe gôn được trưng dụng hoặc trên chuyến bay đầu tiên mà chúng tôi có thể tìm thấy để ai biết ở đâu hoặc đến điểm dừng cuối cùng của tàu điện ngầm, tùy theo điều kiện nào đưa chúng tôi đến những điểm chưa được khám phá. Tinh thần đó? Chúng tôi mang nó đến trà. Chúng tôi làm điều đó thông qua sự pha trộn sôi động, bất ngờ với một bước ngoặt mở ra những hương vị chưa được khám phá mà thế giới đã cất giấu.',
16/01/2200,N'Việt Nam',16,2,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'T08',N'YouthBerry',190000,N'assets/img/TEA/tea-8.png',N'chúng tôi kết hợp trà, trái cây và thực vật cao cấp, nhiều năm kinh nghiệm và thực hành chu đáo để tạo ra sự pha trộn trà ngon với hương vị nhiều lớp cho niềm vui nhấm nháp của bạn. Chúng tôi cố gắng sử dụng các loại trà, trái cây và thực vật cao cấp tốt nhất từ các khu vực được biết đến với sự xuất sắc của họ. Dứa thật, đu đủ và xoài kết hợp với hương vị trái cây, cánh hoa hồng và vỏ quýt trong hỗn hợp nhiệt đới có vị như một tia nắng mùa hè. Lấy cảm hứng từ ly cocktail rượu sâm banh cổ điển, nó rất ngon cho dù được phục vụ nóng hay đá.',16/01/2200,N'Việt Nam',16,2,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'T09',N'Mint Mosaic',220000,N'assets/img/TEA/tea-3.png',
N'Mint Mosaic Tea nâng tầm mỗi cốc với hương vị tươi mát, giòn tan, hương vị sạch sẽ của bạc hà và bạc hà mang đến trải nghiệm trà thảo mộc cân bằng hoàn hảo, nhưng có sắc thái. Một sự pha trộn tự tin, chào đón vừa thoải mái vừa kích thích, đó là một nghiên cứu về sự tương phản - tinh tế nhưng táo bạo, khá tự tin - làm cho nó có vị trí tốt cho bất kỳ dịp nào.',
16/01/2200,N'Việt Nam',16,2,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'T10',N'Trà Thái Nguyên',80000,N'assets/img/TEA/tea-10.png',N'Sản phẩm nâng tầm mỗi cốc với hương vị tươi mát, giòn tan, hương vị sạch sẽ của bạc hà và bạc hà mang đến trải nghiệm trà thảo mộc cân bằng hoàn hảo, nhưng có sắc thái. Một sự pha trộn tự tin, chào đón vừa thoải mái vừa kích thích, đó là một nghiên cứu về sự tương phản - tinh tế nhưng táo bạo, khá tự tin - làm cho nó có vị trí tốt cho bất kỳ dịp nào.',16/01/2200,N'Việt Nam',16,2,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'T11',N'Zen Tea',980000,N'assets/img/TEA/trathainguyen.jpg',N'Sản phẩm chính hãngMint Mosaic Tea nâng tầm mỗi cốc với hương vị tươi mát, giòn tan, hương vị sạch sẽ của bạc hà và bạc hà mang đến trải nghiệm trà thảo mộc cân bằng hoàn hảo, nhưng có sắc thái. Một sự pha trộn tự tin, chào đón vừa thoải mái vừa kích thích, đó là một nghiên cứu về sự tương phản - tinh tế nhưng táo bạo, khá tự tin - làm cho nó có vị trí tốt cho bất kỳ dịp nào.
',16/01/2200,N'Việt Nam',16,2,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'T12',N'Trà đào',980000,N'assets/img/TEA/tradao01.jpg',
N'Trà Cozy Đào hòa tan được sản xuất từ búp chè tươi chọn lọc, được hái và chế biến theo quy trình kỹ thuật nghiêm ngặt hòa quyện cùng hương đào đầy hấp dẫn cho hương thơm thanh khiết giúp tinh thần tỉnh táo, thư giãn, thanh nhiệt, chống dị ứng, giảm mệt mỏi vô cùng hiệu quả.Sản phẩm chính hãng việt nam',
16/01/2200,N'Việt Nam',16,2,1)

/*Sản phẩm Equiment */
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'EQ01',N'Máy ủ caffe',9800000,N'assets/img/EQUIMENTS/equi-7.jpg',
N'Sản phẩm chính hãng tại Việt Nam ',
16/01/2200,N'Việt Nam',16,3,1)

insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'EQ02',N'Máy chiết suất',980000000,N'assets/img/EQUIMENTS/equi-6.jpg',
N'Với công suất pha 960 ly/ngày và 100 ly/giờ. Đây chính xác là dòng máy lý tưởng cho các chuỗi quán cà phê,nhà hàng, khách sạn lớn. Đáp ứng nhu cầu cường độ cao. Thứ 2 là thiết kế mới. Với hai dải crom ở phía sau, bao xung quanh, khiến chiếc máy trở nên quyến rũ, nhẹ nhàng. Thứ 3 là độ bền ít nhất 10 năm. Đây là 3 yếu tố quan trọng để LYON đánh giá cao máy pha cafe này. So với các sản phẩm khác đồng giá. Câu trả lời máy pha cà phê Nuova Simonelli Appia Life 2 Group có tốt bền không ? Đáp án là CÓ. Với giá mua chỉ tầm 95 triệu để sở hữu trọn bộ combo, kèm theo cả máy xay. Lyon Coffee cho rằng rất hợp lý cho những ai muốn một sản phẩm cao cấp, sang trọng.',
16/01/2200,N'Úc',16,3,1)

insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'EQ03',N'Máy pha cafe tự động',80000000,N'assets/img/EQUIMENTS/equi-9.jpg',
N'Sản phẩm chính hãng. Máy pha cà phê  là dòng máy pha cà phê bán tự động có khả năng pha chế thành nhiều loại cà phê thơm ngon khác nhau như espresso, capuchino,...

Máy có thiết kế nhỏ gọn, màu sắc sang trọng là thiết bị pha chế thường được sử dụng tại các nhà hàng, văn phòng, gia đình,...

Toàn thân máy được làm từ thép không gỉ sáng bóng, chắc chắn, siêu bền và có độ an toàn cao. Hộp đựng cà phê có nắp đậy kín đáo. Máy còn trang bị vòi hơi dài đa chiều, dễ dàng thao tác đánh sữa, tạo bọt sữa dày mịn hơn. Bình chứa nước có dung tích là 2 lít. Khay nước thải và bình có thể tháo lắp dễ dàng, thuận tiện hơn cho việc vệ sinh máy. La Specialista EC9355.M có công suất hoạt động là 1.450W, áp suất 19 bar cho phép pha tối đa 40 - 50 ly/ngày. Nhờ đó đáp ứng được nhu cầu sử dụng tại các văn phòng, cửa hàng nhỏ,...',
16/01/2200,N'Úc',16,3,1)

insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'EQ04',N'Ấm đun nước Bonavita',980000,N'assets/img/EQUIMENTS/equi-4.jpg',
N'Sản phẩm chính hãng. 
Ấm đun cho phép người dùng tùy chỉnh nhiệt độ và mực nước đun trong mỗi lần sử dụng vô cùng tiện lợi, nước đi vào bình được lọc tự động qua hệ thống lọc RO, cho gia đình bạn nguồn nước bảo đảm chất lượng và an toàn với sức khỏe.',
16/01/2200,N'Úc',16,3,1)

insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'EQ05',N'Ấm starbucks',9000000,N'assets/img/EQUIMENTS/equi-2.jpg',
N'Sản phẩm Việt Nam chính hãng. Sản phẩm cho phép người dùng tùy chỉnh nhiệt độ và mực nước đun trong mỗi lần sử dụng vô cùng tiện lợi, nước đi vào bình được lọc tự động qua hệ thống lọc RO, cho gia đình bạn nguồn nước bảo đảm chất lượng và an toàn với sức khỏe.',
16/01/2200,N'Việt Nam',16,3,1)

insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'EQ06',N'Máy pha tự động Daiky',67000000,N'assets/img/EQUIMENTS/equi-5.jpg',
N'Máy pha cà phê  là dòng máy pha cà phê bán tự động có khả năng pha chế thành nhiều loại cà phê thơm ngon khác nhau như espresso, capuchino,...

Máy có thiết kế nhỏ gọn, màu sắc sang trọng là thiết bị pha chế thường được sử dụng tại các nhà hàng, văn phòng, gia đình,...

Toàn thân máy được làm từ thép không gỉ sáng bóng, chắc chắn, siêu bền và có độ an toàn cao. Hộp đựng cà phê có nắp đậy kín đáo. Máy còn trang bị vòi hơi dài đa chiều, dễ dàng thao tác đánh sữa, tạo bọt sữa dày mịn hơn. Bình chứa nước có dung tích là 2 lít. Khay nước thải và bình có thể tháo lắp dễ dàng, thuận tiện hơn cho việc vệ sinh máy. La Specialista EC9355.M có công suất hoạt động là 1.450W, áp suất 19 bar cho phép pha tối đa 40 - 50 ly/ngày. Nhờ đó đáp ứng được nhu cầu sử dụng tại các văn phòng, cửa hàng nhỏ,...
.Sản phẩm chính hãng',
16/01/2200,N'Úc',16,3,1)

insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'EQ07',N'Ấm đun nước Nhôm',9800000,N'assets/img/EQUIMENTS/equi-1.jpg',
N'Sản phẩm chính hãng
Ấm đun nước nhôm 5L báo còi khi nước sôi (trắng).        .         Ấm đun nước nhôm 5L sử dụng được cho mọi.loại bếp, có dung tích 5 lít, là vật dụng không thể thiếu.trong mỗi gia đình và trong cuộc sống hiện đại như hiện nay. Ấm.được làm từ chất liệu inox cao cấp không những đảm bảo an toàn cho.sức khoẻ của gia đình bạn mà còn giúp đun nước sôi một cách nhanh.chóng và tiện lợi, dễ dàng mang lại cho bạn những tách.trà, tách cafe ấm nóng bất cứ lúc nào ngay tại văn phòng, hay trở.thành trợ thủ đắc lực cho bà nội trợ nấu nướng và chăm sóc gia.đình. ...Thiết kế an toàn và.tiện dụng..Nắp ấm được thiết kế kín hơi giúp bạn dễ dàng cầm ấm mà không lo bị.bỏng. Ngoài ra, miệng vòi có nắp đậy giữ nước sạch khỏi bụi bẩn.hoặc côn trùng...Dung tích 5L..Ấm đun có dung tích trung bình 5L, tiện lợi cho sử dụng tại văn.phòng đông người, dễ dàng mang lại cho bạn những tách trà, tách.cafe ấm nóng bất cứ lúc nào, hay trở thành trợ thủ đắc lực cho bà.nội trợ nấu nướng và chăm sóc gia đình...Ấm được làm từ chất liệu inox cao cấp, sáng bóng, không bám bẩn..Ngoài ra, chất liệu inox còn giúp thu nhiệt nhanh và tỏa đều khắp.nồi, đồng thời không rỉ sét, giữ được vẻ sáng bóng trong thời gian.dài và giúp việc chùi rửa dễ dàng hơn..Ấm đun nước sáng bóng và sạch sẽ,  truyền nhiệt nhanh giúp ta nhanh.chóng có được ấm nước nóng để phục vụ.nhu cầu nước uống, nước pha trà, cà.phê...
',
16/01/2200,N'Úc',16,3,1)

insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'EQ08',N'Ấm ủ trà Thanh Trì',560000,
N'assets/img/EQUIMENTS/equi-8.jpg',
N'Ấm ủ trà thanh trì 5L báo còi khi nước sôi (trắng).        .         Ấm đun nước nhôm 5L sử dụng được cho mọi.loại bếp, có dung tích 5 lít, là vật dụng không thể thiếu.trong mỗi gia đình và trong cuộc sống hiện đại như hiện nay. Ấm.được làm từ chất liệu inox cao cấp không những đảm bảo an toàn cho.sức khoẻ của gia đình bạn mà còn giúp đun nước sôi một cách nhanh.chóng và tiện lợi, dễ dàng mang lại cho bạn những tách.trà, tách cafe ấm nóng bất cứ lúc nào ngay tại văn phòng, hay trở.thành trợ thủ đắc lực cho bà nội trợ nấu nướng và chăm sóc gia.đình. ...Thiết kế an toàn và.tiện dụng..Nắp ấm được thiết kế kín hơi giúp bạn dễ dàng cầm ấm mà không lo bị.bỏng. Ngoài ra, miệng vòi có nắp đậy giữ nước sạch khỏi bụi bẩn.hoặc côn trùng...Dung tích 5L..Ấm đun có dung tích trung bình 5L, tiện lợi cho sử dụng tại văn.phòng đông người, dễ dàng mang lại cho bạn những tách trà, tách.cafe ấm nóng bất cứ lúc nào, hay trở thành trợ thủ đắc lực cho bà.nội trợ nấu nướng và chăm sóc gia đình...Ấm được làm từ chất liệu inox cao cấp, sáng bóng, không bám bẩn..Ngoài ra, chất liệu inox còn giúp thu nhiệt nhanh và tỏa đều khắp.nồi, đồng thời không rỉ sét, giữ được vẻ sáng bóng trong thời gian.dài và giúp việc chùi rửa dễ dàng hơn..Ấm đun nước sáng bóng và sạch sẽ,  truyền nhiệt nhanh giúp ta nhanh.chóng có được ấm nước nóng để phục vụ.nhu cầu nước uống, nước pha trà, cà.phê.',
16/01/2200,N'Úc',16,3,1)

insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'EQ09',N'Ấm đun mạ đồng',9800000,N'assets/img/EQUIMENTS/equi-3.jpg',
N'Ấm đun nước mạ đồng 5L báo còi khi nước sôi (trắng).        .         Ấm đun nước nhôm 5L sử dụng được cho mọi.loại bếp, có dung tích 5 lít, là vật dụng không thể thiếu.trong mỗi gia đình và trong cuộc sống hiện đại như hiện nay. Ấm.được làm từ chất liệu inox cao cấp không những đảm bảo an toàn cho.sức khoẻ của gia đình bạn mà còn giúp đun nước sôi một cách nhanh.chóng và tiện lợi, dễ dàng mang lại cho bạn những tách.trà, tách cafe ấm nóng bất cứ lúc nào ngay tại văn phòng, hay trở.thành trợ thủ đắc lực cho bà nội trợ nấu nướng và chăm sóc gia.đình. ...Thiết kế an toàn và.tiện dụng..Nắp ấm được thiết kế kín hơi giúp bạn dễ dàng cầm ấm mà không lo bị.bỏng. Ngoài ra, miệng vòi có nắp đậy giữ nước sạch khỏi bụi bẩn.hoặc côn trùng...Dung tích 5L..Ấm đun có dung tích trung bình 5L, tiện lợi cho sử dụng tại văn.phòng đông người, dễ dàng mang lại cho bạn những tách trà, tách.cafe ấm nóng bất cứ lúc nào, hay trở thành trợ thủ đắc lực cho bà.nội trợ nấu nướng và chăm sóc gia đình...Ấm được làm từ chất liệu inox cao cấp, sáng bóng, không bám bẩn..Ngoài ra, chất liệu inox còn giúp thu nhiệt nhanh và tỏa đều khắp.nồi, đồng thời không rỉ sét, giữ được vẻ sáng bóng trong thời gian.dài và giúp việc chùi rửa dễ dàng hơn..Ấm đun nước sáng bóng và sạch sẽ,  truyền nhiệt nhanh giúp ta nhanh.chóng có được ấm nước nóng để phục vụ.nhu cầu nước uống, nước pha trà, cà.phê...',
16/01/2200,N'Úc',16,3,1)

/*Sản phẩm Drinkwave */
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'DK01',N'Cốc Bát Tràng',50000,N'assets/img/DRINKWARE/cup-1.png',N'Cốc  là vật phẩm tuyệt vời đầy hữu ích mà những người thợ gốm sứ đã mang đến cho cuộc sống. Một chiếc cốc đẹp là lựa chọn hoàn hảo để thay thế cho các loại ly, cốc nhựa, giấy bởi đặc tính an toàn với sức khỏe người tiêu dùng và thân thiện với môi trường.

Nhiều năm gần đây, các sản phẩm cốc  được tìm kiếm và sử dụng với các mục đích khác nhau như dùng làm quà tặng, in cốc sứ cá nhân hay cốc sứ cao cấp quảng bá thương hiệu… và mang lại hiệu quả cao đến không ngờ.
Đặc biệt, được đánh giá là nơi có thị trường gốm sứ phát triển mạnh mẽ nhất cả nước, địa chỉ uy tín cung cấp ly sứ dễ thương  luôn nằm trong top tìm kiếm và chiếm được nhiều sự quan tâm của các công ty, doanh nghiệp.

Young Coffee, chuyên cung cấp các mặt hàng ly tách tại Hà Nội kết nối trực tiếp với xưởng nhiều kinh nghiệm hoạt động trong lĩnh vực sản xuất cốc sứ bát tráng theo yêu cầu nói chung và ly sứ nói riêng, đã – đang là đối tác tin cậy của hàng ngàn doanh nghiệp lớn nhỏ trong và ngoài nước.',16/01/2200,N'Việt Nam',16,4,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'DK02',N'Cốc Tráng Men',50000,N'assets/img/DRINKWARE/cup-2.png',N'Cốc  là vật phẩm tuyệt vời đầy hữu ích mà những người thợ gốm sứ đã mang đến cho cuộc sống. Một chiếc cốc đẹp là lựa chọn hoàn hảo để thay thế cho các loại ly, cốc nhựa, giấy bởi đặc tính an toàn với sức khỏe người tiêu dùng và thân thiện với môi trường.

Nhiều năm gần đây, các sản phẩm cốc  được tìm kiếm và sử dụng với các mục đích khác nhau như dùng làm quà tặng, in cốc sứ cá nhân hay cốc sứ cao cấp quảng bá thương hiệu… và mang lại hiệu quả cao đến không ngờ.
Đặc biệt, được đánh giá là nơi có thị trường gốm sứ phát triển mạnh mẽ nhất cả nước, địa chỉ uy tín cung cấp ly sứ dễ thương  luôn nằm trong top tìm kiếm và chiếm được nhiều sự quan tâm của các công ty, doanh nghiệp.

Young Coffee, chuyên cung cấp các mặt hàng ly tách tại Hà Nội kết nối trực tiếp với xưởng nhiều kinh nghiệm hoạt động trong lĩnh vực sản xuất cốc sứ bát tráng theo yêu cầu nói chung và ly sứ nói riêng, đã – đang là đối tác tin cậy của hàng ngàn doanh nghiệp lớn nhỏ trong và ngoài nước.',16/01/2200,N'Việt Nam',16,4,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'DK10',N'Cốc Sứ',50000,N'assets/img/DRINKWARE/cocsu.jpg',N'Cốc  là vật phẩm tuyệt vời đầy hữu ích mà những người thợ gốm sứ đã mang đến cho cuộc sống. Một chiếc cốc đẹp là lựa chọn hoàn hảo để thay thế cho các loại ly, cốc nhựa, giấy bởi đặc tính an toàn với sức khỏe người tiêu dùng và thân thiện với môi trường.

Nhiều năm gần đây, các sản phẩm cốc  được tìm kiếm và sử dụng với các mục đích khác nhau như dùng làm quà tặng, in cốc sứ cá nhân hay cốc sứ cao cấp quảng bá thương hiệu… và mang lại hiệu quả cao đến không ngờ.
Đặc biệt, được đánh giá là nơi có thị trường gốm sứ phát triển mạnh mẽ nhất cả nước, địa chỉ uy tín cung cấp ly sứ dễ thương  luôn nằm trong top tìm kiếm và chiếm được nhiều sự quan tâm của các công ty, doanh nghiệp.

Young Coffee, chuyên cung cấp các mặt hàng ly tách tại Hà Nội kết nối trực tiếp với xưởng nhiều kinh nghiệm hoạt động trong lĩnh vực sản xuất cốc sứ bát tráng theo yêu cầu nói chung và ly sứ nói riêng, đã – đang là đối tác tin cậy của hàng ngàn doanh nghiệp lớn nhỏ trong và ngoài nước.',16/01/2200,N'Việt Nam',16,4,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'DK04',N'Gỗ',50000,N'assets/img/DRINKWARE/cocgo.jpg',N'SCốc  là vật phẩm tuyệt vời đầy hữu ích mà những người thợ gốm sứ đã mang đến cho cuộc sống. Một chiếc cốc đẹp là lựa chọn hoàn hảo để thay thế cho các loại ly, cốc nhựa, giấy bởi đặc tính an toàn với sức khỏe người tiêu dùng và thân thiện với môi trường.

Nhiều năm gần đây, các sản phẩm cốc  được tìm kiếm và sử dụng với các mục đích khác nhau như dùng làm quà tặng, in cốc sứ cá nhân hay cốc sứ cao cấp quảng bá thương hiệu… và mang lại hiệu quả cao đến không ngờ.
Đặc biệt, được đánh giá là nơi có thị trường gốm sứ phát triển mạnh mẽ nhất cả nước, địa chỉ uy tín cung cấp ly sứ dễ thương  luôn nằm trong top tìm kiếm và chiếm được nhiều sự quan tâm của các công ty, doanh nghiệp.

Young Coffee, chuyên cung cấp các mặt hàng ly tách tại Hà Nội kết nối trực tiếp với xưởng nhiều kinh nghiệm hoạt động trong lĩnh vực sản xuất cốc sứ bát tráng theo yêu cầu nói chung và ly sứ nói riêng, đã – đang là đối tác tin cậy của hàng ngàn doanh nghiệp lớn nhỏ trong và ngoài nước.',16/01/2200,N'Việt Nam',16,4,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'DK05',N'Cốc Tráng Men 2',50000,N'assets/img/DRINKWARE/coctrangmen.jpg',N'Cốc  là vật phẩm tuyệt vời đầy hữu ích mà những người thợ gốm sứ đã mang đến cho cuộc sống. Một chiếc cốc đẹp là lựa chọn hoàn hảo để thay thế cho các loại ly, cốc nhựa, giấy bởi đặc tính an toàn với sức khỏe người tiêu dùng và thân thiện với môi trường.

Nhiều năm gần đây, các sản phẩm cốc  được tìm kiếm và sử dụng với các mục đích khác nhau như dùng làm quà tặng, in cốc sứ cá nhân hay cốc sứ cao cấp quảng bá thương hiệu… và mang lại hiệu quả cao đến không ngờ.
Đặc biệt, được đánh giá là nơi có thị trường gốm sứ phát triển mạnh mẽ nhất cả nước, địa chỉ uy tín cung cấp ly sứ dễ thương  luôn nằm trong top tìm kiếm và chiếm được nhiều sự quan tâm của các công ty, doanh nghiệp.

Young Coffee, chuyên cung cấp các mặt hàng ly tách tại Hà Nội kết nối trực tiếp với xưởng nhiều kinh nghiệm hoạt động trong lĩnh vực sản xuất cốc sứ bát tráng theo yêu cầu nói chung và ly sứ nói riêng, đã – đang là đối tác tin cậy của hàng ngàn doanh nghiệp lớn nhỏ trong và ngoài nước.',16/01/2200,N'Việt Nam',16,4,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'DK06',N'Cốc Wood',50000,N'assets/img/DRINKWARE/cup-6.png',N'Cốc  là vật phẩm tuyệt vời đầy hữu ích mà những người thợ gốm sứ đã mang đến cho cuộc sống. Một chiếc cốc đẹp là lựa chọn hoàn hảo để thay thế cho các loại ly, cốc nhựa, giấy bởi đặc tính an toàn với sức khỏe người tiêu dùng và thân thiện với môi trường.

Nhiều năm gần đây, các sản phẩm cốc  được tìm kiếm và sử dụng với các mục đích khác nhau như dùng làm quà tặng, in cốc sứ cá nhân hay cốc sứ cao cấp quảng bá thương hiệu… và mang lại hiệu quả cao đến không ngờ.
Đặc biệt, được đánh giá là nơi có thị trường gốm sứ phát triển mạnh mẽ nhất cả nước, địa chỉ uy tín cung cấp ly sứ dễ thương  luôn nằm trong top tìm kiếm và chiếm được nhiều sự quan tâm của các công ty, doanh nghiệp.

Young Coffee, chuyên cung cấp các mặt hàng ly tách tại Hà Nội kết nối trực tiếp với xưởng nhiều kinh nghiệm hoạt động trong lĩnh vực sản xuất cốc sứ bát tráng theo yêu cầu nói chung và ly sứ nói riêng, đã – đang là đối tác tin cậy của hàng ngàn doanh nghiệp lớn nhỏ trong và ngoài nước.',16/01/2200,N'Việt Nam',16,4,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'DK07',N'Cốc Black',9800000,N'assets/img/DRINKWARE/cup-7.png',N'Cốc  là vật phẩm tuyệt vời đầy hữu ích mà những người thợ gốm sứ đã mang đến cho cuộc sống. Một chiếc cốc đẹp là lựa chọn hoàn hảo để thay thế cho các loại ly, cốc nhựa, giấy bởi đặc tính an toàn với sức khỏe người tiêu dùng và thân thiện với môi trường.

Nhiều năm gần đây, các sản phẩm cốc  được tìm kiếm và sử dụng với các mục đích khác nhau như dùng làm quà tặng, in cốc sứ cá nhân hay cốc sứ cao cấp quảng bá thương hiệu… và mang lại hiệu quả cao đến không ngờ.
Đặc biệt, được đánh giá là nơi có thị trường gốm sứ phát triển mạnh mẽ nhất cả nước, địa chỉ uy tín cung cấp ly sứ dễ thương  luôn nằm trong top tìm kiếm và chiếm được nhiều sự quan tâm của các công ty, doanh nghiệp.

Young Coffee, chuyên cung cấp các mặt hàng ly tách tại Hà Nội kết nối trực tiếp với xưởng nhiều kinh nghiệm hoạt động trong lĩnh vực sản xuất cốc sứ bát tráng theo yêu cầu nói chung và ly sứ nói riêng, đã – đang là đối tác tin cậy của hàng ngàn doanh nghiệp lớn nhỏ trong và ngoài nước.',16/01/2200,N'Việt Nam',16,4,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'DK08',N'Cốc Long Black',50000,N'assets/img/DRINKWARE/cup-8.png',N'Cốc  là vật phẩm tuyệt vời đầy hữu ích mà những người thợ gốm sứ đã mang đến cho cuộc sống. Một chiếc cốc đẹp là lựa chọn hoàn hảo để thay thế cho các loại ly, cốc nhựa, giấy bởi đặc tính an toàn với sức khỏe người tiêu dùng và thân thiện với môi trường.

Nhiều năm gần đây, các sản phẩm cốc  được tìm kiếm và sử dụng với các mục đích khác nhau như dùng làm quà tặng, in cốc sứ cá nhân hay cốc sứ cao cấp quảng bá thương hiệu… và mang lại hiệu quả cao đến không ngờ.
Đặc biệt, được đánh giá là nơi có thị trường gốm sứ phát triển mạnh mẽ nhất cả nước, địa chỉ uy tín cung cấp ly sứ dễ thương  luôn nằm trong top tìm kiếm và chiếm được nhiều sự quan tâm của các công ty, doanh nghiệp.

Young Coffee, chuyên cung cấp các mặt hàng ly tách tại Hà Nội kết nối trực tiếp với xưởng nhiều kinh nghiệm hoạt động trong lĩnh vực sản xuất cốc sứ bát tráng theo yêu cầu nói chung và ly sứ nói riêng, đã – đang là đối tác tin cậy của hàng ngàn doanh nghiệp lớn nhỏ trong và ngoài nước.',16/01/2200,N'Việt Nam',16,4,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'DK09',N'Cốc Short',50000,N'assets/img/DRINKWARE/cup-9.png',N'Cốc  là vật phẩm tuyệt vời đầy hữu ích mà những người thợ gốm sứ đã mang đến cho cuộc sống. Một chiếc cốc đẹp là lựa chọn hoàn hảo để thay thế cho các loại ly, cốc nhựa, giấy bởi đặc tính an toàn với sức khỏe người tiêu dùng và thân thiện với môi trường.

Nhiều năm gần đây, các sản phẩm cốc  được tìm kiếm và sử dụng với các mục đích khác nhau như dùng làm quà tặng, in cốc sứ cá nhân hay cốc sứ cao cấp quảng bá thương hiệu… và mang lại hiệu quả cao đến không ngờ.
Đặc biệt, được đánh giá là nơi có thị trường gốm sứ phát triển mạnh mẽ nhất cả nước, địa chỉ uy tín cung cấp ly sứ dễ thương  luôn nằm trong top tìm kiếm và chiếm được nhiều sự quan tâm của các công ty, doanh nghiệp.

Young Coffee, chuyên cung cấp các mặt hàng ly tách tại Hà Nội kết nối trực tiếp với xưởng nhiều kinh nghiệm hoạt động trong lĩnh vực sản xuất cốc sứ bát tráng theo yêu cầu nói chung và ly sứ nói riêng, đã – đang là đối tác tin cậy của hàng ngàn doanh nghiệp lớn nhỏ trong và ngoài nước.',16/01/2200,N'Việt Nam',16,4,1)

/*Sản phẩm Gifts */
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'G01',N'Set 1',50000,N'assets/img/GIFTS/gift-1.jpg',N'Sản phẩm chính hãng',16/01/2200,N'Việt Nam',16,5,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'G02',N'Set 2',50000,N'assets/img/GIFTS/gift-2.jpg',N'Sản phẩm chính hãng',16/01/2200,N'Việt Nam',16,5,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'G03',N'Set 3',50000,N'assets/img/GIFTS/gift-3.jpg',N'Sản phẩm chính hãng',16/01/2200,N'Việt Nam',16,5,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'G04',N'Set 4',50000,N'assets/img/GIFTS/gift-4.jpg',N'Sản phẩm chính hãng',16/01/2200,N'Việt Nam',16,5,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'G07',N'Set 7',50000,N'assets/img/GIFTS/gift-7.jpg',N'Sản phẩm chính hãng',16/01/2200,N'Việt Nam',16,5,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'G08',N'Set 8',50000,N'assets/img/GIFTS/gift-8.jpg',N'Sản phẩm chính hãng',16/01/2200,N'Việt Nam',16,5,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'G09',N'Set 9',50000,N'assets/img/GIFTS/gift-9.jpg',N'Sản phẩm chính hãng',16/01/2200,N'Việt Nam',16,5,1)


/*Sản phẩm Sales */

insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'S01',N'Sale 1',1000000,N'assets/img/SALE/sale1.jpg',N'Sản phẩm chính hãng',16/01/2200,N'Việt Nam',16,6,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'S02',N'Sale 2',1000000,N'assets/img/SALE/sale2.jpg',N'Sản phẩm chính hãng',16/01/2200,N'Việt Nam',16,6,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'S03',N'Sale 3',1000000,N'assets/img/SALE/sale3.jpg',N'Sản phẩm chính hãng',16/01/2200,N'Việt Nam',16,6,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'S04',N'Sale 4',1000000,N'assets/img/SALE/sale4.jpg',N'Sản phẩm chính hãng',16/01/2200,N'Việt Nam',16,6,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'S05',N'Sale 5',1000000,N'assets/img/SALE/sale5.jpg',N'Sản phẩm chính hãng',16/01/2200,N'Việt Nam',16,6,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'S06',N'Sale 6',1000000,N'assets/img/SALE/sale6.jpg',N'Sản phẩm chính hãng',16/01/2200,N'Việt Nam',16,6,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'S07',N'Sale 7',1000000,N'assets/img/SALE/sale7.jpg',N'Sản phẩm chính hãng',16/01/2200,N'Việt Nam',16,6,1)
insert into Product(productId, productName, price, productImage, description, exprity, madeIn, quantity,categoryId, status) values
(N'S08',N'Sale 8',1000000,N'assets/img/SALE/sale8.jpg',N'Sản phẩm chính hãng',16/01/2200,N'Việt Nam',16,6,1)




Insert into Orders (fullName, phone, address, email) values
(N'Lê Văn Quyền')

select * from Customer


Insert into OrderDetail(orderId, productId, quantity, price) values
(3,'T05',10,12344)


/*Câu lệnh truy  vấn lọc dữ liệu*/

SELECT * FROM Product
WHERE categoryId=2;


SELECT * FROM Product p
WHERE productId = LEFT

//sắp xếp tăng dần 
SELECT * FROM Product p 
ORDER BY p.price

sắp xếp giảm dần
SELECT * FROM Product p 
ORDER BY p.price desc


