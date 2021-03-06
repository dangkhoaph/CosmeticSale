USE [master]
GO
/****** Object:  Database [CSharpAssignment]    Script Date: 8/12/2020 5:48:35 PM ******/
CREATE DATABASE [CSharpAssignment]

USE [CSharpAssignment]
GO

CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[Fullname] [nvarchar](150) NOT NULL,
	[StatusID] [int] NOT NULL,
	[Email] [varchar](254) NOT NULL,
	[Picture] [varchar](150) NULL,
	[Role] [varchar](10) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
))
/****** Object:  Table [dbo].[Booking]    Script Date: 8/12/2020 5:48:36 PM ******/

CREATE TABLE [dbo].[Booking](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BookingCode] [varchar](30) NOT NULL,
	[CustomerName] [nvarchar](250) NULL,
	[AccountID] [int] NULL,
	[DiscountID] [int] NULL,
	[Address] [nvarchar](250) NOT NULL,
	[Phone] [nvarchar](250) NOT NULL,
	[StatusID] [int] NOT NULL,
	[ImportDate] [datetime] NOT NULL,
	[PaymentType] [varchar](20) NOT NULL,
	[ContactPerson] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
))

CREATE TABLE [dbo].[BookingDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BookingID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_BookingDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
))

CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
))

GO
CREATE TABLE [dbo].[Discount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NOT NULL,
	[Value] [decimal](18, 0) NOT NULL,
	[ImportDate] [datetime] NOT NULL,
	[StatusID] [int] NOT NULL,
	[ExpiredDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
))

CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Usage] [nvarchar](550) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[StatusID] [int] NOT NULL,
	[CateID] [int] NOT NULL,
	[ImageLink] [varchar](300) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
))
CREATE TABLE [dbo].[Status](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
))
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([ID], [Username], [Password], [Fullname], [StatusID], [Email], [Picture], [Role]) VALUES (-1, N'none', NULL, N'none', 2, N'none', NULL, N'')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Fullname], [StatusID], [Email], [Picture], [Role]) VALUES (1, N'trangcao', N'123', N'Cao Quynh Trang', 1, N'trangcq@gmail.com', NULL, N'USER')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Fullname], [StatusID], [Email], [Picture], [Role]) VALUES (2, N'quynhnhu', N'123', N'Nguyen Ngoc Quynh Nhu', 1, N'nhunnq@gmail.com', NULL, N'ADMIN')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Fullname], [StatusID], [Email], [Picture], [Role]) VALUES (3, NULL, NULL, N'Huỳnh Thế Hiển - K14', 1, N'hienhtse140848@fpt.edu.vn', N'https://lh3.googleusercontent.com/a-/AOh14GgXMFAk2bU_EBOjqZGMpc5K466i78jNY5AW5ra0', N'USER')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Fullname], [StatusID], [Email], [Picture], [Role]) VALUES (4, NULL, NULL, N'Thế Hiển Huỳnh', 1, N'thehienvnag@gmail.com', N'https://lh3.googleusercontent.com/a-/AOh14GhClDrFOQaY6NOFHBphoIzYMwSjC4wyP0q4OynI', N'USER')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (1, N'-- Select -- ', N'None')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (7, N'Dưỡng Da Mặt', N'Thành phần mạnh mẽ, kết cấu tốt cùng với công thức hiệu quả. dòng sản phẩm săn sóc da của chúng tôi với các tính năng sữa rửa mặt, nước cân bằng, dưỡng ẩm, serums và dưỡng mắt dành cho tất cả mọi loại da. Tại sao không sử dụng công cụ chẩn đoán loại da của chúng tôi để tìm ra chế độ chăm sóc da tốt nhất cho mình.')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (8, N'Tắm Dưỡng Thể', N'Nuông chiều cơ thể bạn với hàng loạt sản phẩm và chế độ chăm sóc cơ thể cho bạn. Xà bông, gel tắm, tẩy tế bào chết, bơ dưỡng thể, kem dưỡng thể, và kem dưỡng da tay với kết cấu tuyệt vời và hương thơm ngây ngất được truyền qua cơ thể bạn. Với chương trình hỗ trợ thương mại cộng đồng công bằng của chúng tôi, dòng chăm sóc cơ thể của chúng tôi sẽ giúp bạn và cả làn da bạn luôn luôn cảm thấy tuyệt vời.')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (9, N'Chăm Sóc Tóc', N'Hãy để mái tóc bạn được nâng niu mỗi ngày. Làm sạch, nuôi dưỡng và chăm sóc tóc với dầu gội, dầu xả và các sản phẩm tạo kiểu phù hợp cho mọi loại tóc.')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (11, N'Nước Hoa', N'Hương thơm cho nàng, cho chàng và cho cả ngôi nhà. Từ những hương thơm biểu tượng như xạ hương trắng cho nam và nữ, đến mùi hương hoa hiện đại như hoa lily trắng từ rừng Amazon và hoa hồng núi atlas. Lựa chọn ngay một hương thơm cho riêng mình Eau De Toilette, Eau De Parfum, Perfume Oils hay Fragrance Oils.')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (12, N'Trang Điểm', N'Làm tăng thêm vẻ đẹp tự nhiên của bạn với bộ sưu tập trang điểm độc đáo của chúng tôi. kem lót, kem nền, bb cream, phấn má hồng, phấn mắt, mascara, chì kẻ mắt được tạo ra để giúp bạn tạo nên được sự độc đáo và cái nhìn hoàn mỹ. Hãy thử những phấn mắt màu nhẹ để có ánh nhìn tự nhiên hoặc màu sắc rực rỡ cho sự ấn tượng của bạn.')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Discount] ON 

INSERT [dbo].[Discount] ([ID], [Code], [Value], [ImportDate], [StatusID], [ExpiredDate]) VALUES (-1, N'none', CAST(0 AS Decimal(18, 0)), CAST(N'2020-07-30T00:00:00.000' AS DateTime), 2, CAST(N'2020-08-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Discount] ([ID], [Code], [Value], [ImportDate], [StatusID], [ExpiredDate]) VALUES (1, N'C01', CAST(10 AS Decimal(18, 0)), CAST(N'2020-07-25T00:00:00.000' AS DateTime), 1, CAST(N'2020-10-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Discount] ([ID], [Code], [Value], [ImportDate], [StatusID], [ExpiredDate]) VALUES (2, N'C04', CAST(25 AS Decimal(18, 0)), CAST(N'2020-07-30T16:08:25.000' AS DateTime), 1, CAST(N'2020-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Discount] ([ID], [Code], [Value], [ImportDate], [StatusID], [ExpiredDate]) VALUES (6, N'C07', CAST(25 AS Decimal(18, 0)), CAST(N'2020-07-30T16:08:25.000' AS DateTime), 1, CAST(N'2020-08-05T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Discount] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (61, 35, CAST(250000 AS Decimal(18, 0)), N'Sản phảm biểu tượng chưa bao giờ hết hot của TBS không thể thiếu trong qui trình dưỡng da cho làn da có khuyết điểm. Kích thức nhỏ gọn tiện lợi theo bạn mọi lúc mọi nơi', N'Gel Cho Da Thâm Mụn Tea Tree Targeted Gel 2.5ML', 1, 7, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/w/e/webimages_1052111_2_blemish_gel_tea_tree_2_5ml_silv_pck_inboops028_m_r_1.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (62, 35, CAST(349000 AS Decimal(18, 0)), N'Rửa sạch và làm mới làn da khuyết điểm với sửa rửa mặt tạo bọt của The Body Shop - sản phẩm giúp làm trôi mọi bụi bẩn và lớp trang điểm thừa.', N'Sữa Rửa Mặt Tạo Bọt Tea Tree Skin Clearing Foaming Cleanser 150ML', 1, 7, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/e/n/en-gb-tea-tree-skin-clearing-foaming-cleanser-2-640x640.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (63, 35, CAST(409000 AS Decimal(18, 0)), N'Tea Tree Mattifying Lotion có kết cấu nhẹ, không dầu và dễ dàng hấp thụ sẽ cho bạn làn da rạng rỡ và lâu trôi. Sản phẩm đã được chứng minh lâm sàng sẽ mang đến làn da sạch hơn.', N'Sữa Dưỡng Ẩm Kiềm Dầu Tea Tree Mattifying Lotion 50ML', 1, 7, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/t/e/tea-tree-mattifying-lotion-2-640x640_1.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (64, 35, CAST(299000 AS Decimal(18, 0)), N'Sữa rửa mặt Tea Tree Facial Wash là giải pháp hiệu quả và cực kì sảng khoái giúp bạn loại bỏ đi bụi bẩn cả ngày dài và mang lại làn da sạch sẽ. Sữa rửa mặt giúp cuốn trôi đi lớp trang điểm, bụi bẩn và dầu thừa mà không làm khô da. Đây là 1 trong những sản phẩm bán chạy nhất của chúng tôi đã được kiểm nghiệm và chứng minh mang lại cho bạn một làn da sạch sẽ.', N'Sữa Rửa Mặt Tea Tree Skin Clearing Facial Wash 250ML', 1, 7, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/2/0/2019-11-19_11h41_29_1_1.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (65, 35, CAST(309000 AS Decimal(18, 0)), N'Thích hợp cho làn da dễ bị mụn, nước cân bằng dành cho da dầu mụn Tea Tree bán chạy nhất của chúng tôi rửa trôi đi mọi bụi bẩn và lớp make up thừa trả lại cho bạn làn da sạch sẽ và không còn bóng dầu.', N'Nước Cân Bằng Cho Da Mụn Tea Tree Skin Clearing Toner 250ML', 1, 7, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/t/e/tea-tree-skin-clearing-mattifying-toner-2-640x640.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (66, 35, CAST(459000 AS Decimal(18, 0)), N'Làn da mụn cũng cần được dưỡng ẩm hàng ngày, kem dưỡng ẩm Tea Tree Night Lotion với kết cấu nhẹ giúp làn da trở nên tươi mới, mềm mịn và sạch hơn qua mỗi đêm sử dụng', N'Sữa Dưỡng Ẩm Ban Đêm Tea Tree Night Lotion 30ML', 1, 7, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/t/e/tea-tree-night-lotion-4-640x640.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (67, 35, CAST(689000 AS Decimal(18, 0)), N'Là sản phẩm hoàn hảo nếu bạn muốn cung cấp cho da mặt một liệu pháp tẩy tế bào chết chuyên nghiệp như tại spa. Tạm biệt làn da khô, kém tươi tắn và chào đón một làn da bừng sáng và tươi mới hơn.', N'Kem Tẩy Da Chết Vitamin C Microdermabrasion 100ML', 1, 7, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/v/i/vitamin-c-microdermabrasion-2-640x640.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (68, 35, CAST(199000 AS Decimal(18, 0)), N'Khăn giấy ướt zi-đa-năng giúp loại bỏ lớp trang điểm, phục hồi và dưỡng ẩm làn da. Công thức chứa Vitamin E giúp bảo vệ và tinh dầu mầm hạt lúa mì đầy dưỡng chất là một sự lựa chọn không thể thiếu trong hành trình chinh phục làn da khỏe đẹp', N'Khăn Giấy Ướt Tẩy Trang Vitamin E Cleansing Wipes', 1, 7, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/e/p/eps_jpg_1052011_2_cleansing-wipes-vit-e_silv_pck_inbosps342.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (69, 35, CAST(749000 AS Decimal(18, 0)), N'Sản phẩm chứa vitamin C được yêu chuộng của chúng tôi, ngay lập tức nhẹ nhàng làm sáng da cho bạn làn da mịn màng, đây là một liệu pháp lí tưởng cho da bạn làm tăng thêm vẻ rực rỡ của bạn. Cùng với dâu Amazonian camu camu, được biết đến như là một trong những thành chứa nhiều vitamin C nhất trong tự nhiên, và dầu phộng của chương trình Community Trade.', N'Tinh Chất Dưỡng Sáng Da Vitamin C Skin Boost 30ML', 1, 7, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/v/i/vitamin-c-skin-boost-3-640x640.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (70, 35, CAST(299000 AS Decimal(18, 0)), N'Sữa rửa mặt Vitamin E Gentle Facial Wash mang lại làn da sạch, mềm mịn và  nhẹ nhàng nuôi dưỡng làn da. Chứa chiết xuất Vitamin E và dầu mầm lúa mì giúp thủy hóa và bảo vệ làn da', N'Sữa Rửa Mặt Vitamin E Gentle Facial Wash 125ML', 1, 7, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/v/i/vitamin-e-gentle-facial-wash-2-640x640.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (71, 35, CAST(219000 AS Decimal(18, 0)), N'Tinh dầu tràm trà tea tree trứ danh với đặc tính kháng khuẩn và thanh lọc mạnh mẽ. chiết xuất từ tinh dầu của những chiếc lá tràm trà được thu hoạch bằng tay trong chương trình Thương mại cộng đồng. Những giọt tea tree tinh khiết nhất đã trải qua 12 giờ chưng cất, được kiểm nghiệm và chứng minh mang lại làn da sạch khuyết điểm cho bạn.', N'Tinh Dầu Tràm Trà Cho Da Mụn Tea Tree Oil 10ML', 1, 7, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/t/3/t3-oil.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (72, 35, CAST(529000 AS Decimal(18, 0)), N'Sản phẩm mới giúp se nhỏ lỗ chân lông. Chiết xuất từ tinh dầu tràm trà từ chương trình Thương mại Cộng đồng, Tea Tree Pore Minimiser sẽ làm dịu, kiềm dầu và làm mịn da, trả lại một làn da sạch và tươi mới.', N'Se Khít Lỗ Chân Lông New! Tea Tree Pore Minimiser', 1, 7, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/w/e/webimages_1053701_2_pore_perfector_tea_tree_30ml_silv_pck__inbosps018_m_r_1.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (73, 35, CAST(559000 AS Decimal(18, 0)), N'Lấy cảm hứng từ sức mạnh dưỡng ẩm thần kì của dầu Olive, Olive Body Butter như một vũ khí lợi hại  giàu dưỡng chất tan chảy vào làn da khô để trả lại vẻ ngoài mượt mà và ẩm mịn.', N'Bơ Dưỡng Thể Olive Nourishing Body Butter 200ML', 1, 8, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/o/l/olive-nourishing-body-butter-1055788-200ml-6-640x640.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (74, 35, CAST(559000 AS Decimal(18, 0)), N'Ướp hương cơ thể với hương thơm tuyệt vời từ hoa chùm ngây trắng  đang độ nở hoa. Bơ dưỡng ẩm nuông chiều làn da, đặc biệt những vùng da khô, trả lại làn da mịn màng và thơm ngát', N'Bơ Dưỡng Thể Moringa Body Butter 200ML', 1, 8, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/h/y/hybrisimages_1044879_2_body_butter_moringa_200ml_silv_pck_inbmups986_1.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (75, 35, CAST(99000 AS Decimal(18, 0)), N'Xà phòng mịn tạo bọt làm sạch làn da, mang lại cảm giác dễ chịu và mùi thơm tinh tế với hương thơm cây cỏ dễ chịu', N'Xà Phòng Tắm Moringa Soap 100G', 1, 8, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/m/o/moringa-soap-2-640x640.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (76, 35, CAST(599000 AS Decimal(18, 0)), N'Cho làn da sáng và mịn màng hơn với kem tẩy tế bào chết chứa chiết xuất vỏ quả óc chó nghiền và Oliu nghiền mịn . Thích hợp cho da thường đến khô. Lấy đi các tế bào da chết hiệu quả Kích thích tuần hoàn máu Cho làn da mềm mại và mịn màng Hương Oliu dịu nhẹ', N'Tẩy Da Chết Olive Creamy Body Scrub 250ML', 1, 8, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/b/o/body_scrub_olive_250ml.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (77, 35, CAST(169000 AS Decimal(18, 0)), N'Hãy để ánh nắng mặt trời làm tăng cường với sản phẩm này, làm sạch toàn thân, tốt nhất là vào các buổi sáng thứ Hai. Sản phẩm này có chứa tinh dầu đậu nành Community Trade.', N'Sữa Tắm Satsuma Bath & Shower Gel 250ML', 1, 8, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/w/e/webimages_1044963_2_shower_gel_satsuma_250ml_silv_pck_inbosps568_m_r.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (78, 35, CAST(339000 AS Decimal(18, 0)), N'Sữa tắm tẩy tế bào chết Satsuma dạng gel chứa vỏ quả óc chó và xơ mướp nghiền giúp lấy đi các tế bào da chết nhẹ nhàng, trả lại một làn da mềm mại và mịn màng. Hương cam chanh dịu nhẹ. Dành cho da thường và phù hợp để sử dụng hằng ngày. Tẩy tế bào chết dịu nhẹ Cho làn da mềm mại, mượt mà.', N'Sữa Tắm Tẩy Tế Bào Chết Satsuma Body Polish 200ML', 1, 8, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/b/o/body_polish_satsuma_200ml.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (79, 35, CAST(399000 AS Decimal(18, 0)), N'Với kết cấu dịu nhẹ, dễ dàng thẩm thấu, giúp giữ ẩm, cân bằng và thủy hóa làn da. Ướp hương hoa cỏ tinh tế. Giữ ẩm lên đến 12 tiếng.', N'Sữa Dưỡng Thể Moringa Milk Body Lotion 250ML', 1, 8, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/b/o/body_milk_moringa_250ml.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (80, 35, CAST(199000 AS Decimal(18, 0)), N'Bất kì ai khi thử nghiệm sản phẩm lăn khử mùi này đều cho biết đây là một giải pháp hiệu quả cho làn da nhạy cảm, rất dịu nhẹ, hiệu quả và không ngừng bảo vệ vùng da dưới cánh tay suốt 24 giờ.', N'Lăn Khử Mùi Aloe Anti-Perspirant Deodorant 50ML', 1, 8, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/a/l/aloe-caring-roll-on-deodorant-6-640x640.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (81, 35, CAST(269000 AS Decimal(18, 0)), N'Với dầu cọ và glycerine giúp làm sạch và giữ ẩm chỉ trong một bước. Giải pháp hiệu quả cho da khô Nhiều bọt Hương bơ hạt mỡ tự nhiên', N'Sữa Tắm Tea Tree Body Wash 250ML', 1, 8, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/t/e/tea-tree-skin-clearing-body-wash-2-640x640.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (82, 35, CAST(429000 AS Decimal(18, 0)), N'Sole Survivor! Một chất dưỡng ẩm hàng ngày cho bàn chân với các thành phần tự nhiên làm mịn da cho da mềm mịn và cho bàn chân có mùi thơm! Với sự tăng cường các axits nho tự nhiên sẽ làm cho làn da mịn thêm.', N'Sữa Dưỡng Chân Peppermint Cooling Foot Lotion 250ML', 1, 8, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/e/p/eps_jpg_1052705_2_foot-lotion-peppermint-250ml_silv_pck_inbosps582.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (83, 35, CAST(99000 AS Decimal(18, 0)), N'Với dầu cọ và glycerine giúp làm sạch và giữ ẩm chỉ trong một bước. Giải pháp hiệu quả cho da khô Nhiều bọt Hương bơ hạt mỡ tự nhiên', N'Xà Phòng Tắm Shea Soap 100G', 1, 8, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/s/h/shea-soap-2-640x640.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (84, 35, CAST(339000 AS Decimal(18, 0)), N'Một sản phẩm thiết yếu dành cho những ngày hè, cho đôi chân mát lạnh xua tan cái nóng, mệt mỏi và đánh bay mùi khó chịu. Mát lạnh sảng khoái Khử mùi hiệu quả', N'Xịt Khử Mùi Chân Peppermint Cooling Foot Spray 100ML', 1, 8, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/e/p/eps_jpg_1057156_2_foot-spray-peppermint-100ml_silv_pck_inbosps585.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (85, 35, CAST(779000 AS Decimal(18, 0)), N'Những lá trà xanh được chọn lọc tỉ mỉ từ thung lũng dưới chân núi Phú Sĩ, Nhật Bản. Tinh chất trà xanh tinh khiết của chúng tôi được hòa trộn trong sản phẩm tẩy tế bào chết, nhẹ nhàng kích thích da đầu cho cảm giác thật sảng khoái và mái tóc bóng khỏe.', N'Dầu Gội Tẩy Tế Bào Chết Cho Da Đầu Fuji Green Tea™ Refreshingly Purifying Scrub Shampoo 240ml', 1, 9, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/h/y/hybrisimages_sourcefile_1092412_1_hair_scrub_fuji_green_tea_240ml_brnz_innpdps443_copy.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (86, 35, CAST(269000 AS Decimal(18, 0)), N'Dồi dào chiết xuất từ lá trà xanh Nhật Bản căng tràn sức sống, dầu xả mỏng nhẹ của chúng tôi giúp cấp ẩm và cho mái tóc bạn đắm chìm trong cảm giác tươi mới.', N'Dầu Xả Fuji Green Tea™ Refreshingly Hydrating Conditioner 250ML', 1, 9, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/f/u/fuji-green-tea-refreshingly-hydrating-conditioner-1055318-fujigreentearefreshinglyhydratingconditioner250ml-1-640x640.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (87, 35, CAST(269000 AS Decimal(18, 0)), N'Dồi dào chiết xuất từ lá trà xanh Nhật Bản căng tràn sức sống, dầu gội của chúng tôi giúp làm sạch tạp chất, thanh lọc và cho mái tóc bạn đắm chìm trong cảm giác tươi mới.', N'Dầu Gội Fuji Green Tea™ Refreshingly Purifying Shampoo 250ML', 1, 9, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/f/u/fuji-green-tea-refreshingly-purifying-shampoo-1055312-fujigreentearefreshinglypurifyingshampoo250ml-2-640x640.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (88, 35, CAST(269000 AS Decimal(18, 0)), N'Dồi dào chiết xuất từ những quả chuối chín mọng ngon lành từ Ecuador được nghiền nhuyễn, loại dầu xả thơm ngon cho tóc được nuôi dưỡng sâu, mềm mượt và ỏng ả diệu kỳ.', N'Dầu Gội Ginger Scalp Care Shampoo 250ml', 1, 9, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/e/p/eps_jpg_1055316_1_shampoo-ginger-250ml-ax_brnz_innpdps478.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (89, 35, CAST(90000 AS Decimal(18, 0)), N'Dồi dào chiết xuất từ chuối Ecuador nghiền nhuyễn khiến loại dầu gội làm sạch này thật không thể cưỡng lại! Sử dụng hằng ngày để làm sạch tóc, cho bạn mái tóc óng ả, khỏe đẹp..', N'Dầu Gội Banana Truly Nourishing Shampoo 60ML', 1, 9, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/_/u/_update_banana_shampoo.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (90, 35, CAST(269000 AS Decimal(18, 0)), N'Là sự kết hợp của tinh dầu gừng từ Sri Lanka, tinh chất từ cây gỗ, liễu trắng và lô hội hữu cơ thu hoạch theo chương trình Thương Mại Cộng Đồng, Ginger Scalp Care Conditioner của chúng tôi nhẹ nhàng xoa dịu da đầu và giúp hỗ trợ chân tóc bị yếu. Sử dụng chung với dầu gội Ginger Scalp Care Shampoo để tối ưu hiệu quả.', N'Dầu Xả Ginger Scalp Care Conditioner 250ML', 1, 9, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/g/i/ginger_conditioner_250ml.png')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (91, 35, CAST(269000 AS Decimal(18, 0)), N'Dồi dào chiết xuất từ chuối Ecuador nghiền nhuyễn khiến loại dầu gội làm sạch này thật không thể cưỡng lại! Sử dụng hằng ngày để làm sạch tóc, cho bạn mái tóc óng ả, khỏe đẹp.', N'Dầu Gội Banana Truly Nourishing Shampoo 250ML', 1, 9, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/5/5/55314.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (92, 35, CAST(269000 AS Decimal(18, 0)), N'Dồi dào chiết xuất từ những quả chuối chín mọng ngon lành từ Ecuador được nghiền nhuyễn, loại dầu xả thơm ngon cho tóc được nuôi dưỡng sâu, mềm mượt và ỏng ả diệu kỳ.', N'Dầu Xả Banana Truly Nourishing Conditioner 250ML', 1, 9, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/5/5/55320.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (93, 35, CAST(399000 AS Decimal(18, 0)), N'Dồi dào chiết xuất từ lá trà xanh Nhật Bản căng tràn sức sống, dầu gội của chúng tôi giúp làm sạch tạp chất, thanh lọc và cho mái tóc bạn đắm chìm trong cảm giác tươi mới.', N'Dầu Gội Fuji Green Tea™ Refreshingly Purifying Shampoo 400ML', 1, 9, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/h/y/hybrisimages_1062019_1_shampoo_fuji_green_tea_400ml_brnz_innpdps711_1.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (94, 35, CAST(699000 AS Decimal(18, 0)), N'Đột phá với nguồn nguyên liệu tự nhiên và hữu cơ thơm ngon theo Chương Trình Thương Mại Cộng Đồng, bao gồm chuối nghiền nhuyễn từ Ecuador và dầu hạt brazil từ Peru. Tăng cường thêm tinh chất quả cupuacu từ Brazil, kem ủ tóc 100% thuần chay, sử sụng mỗi tuần 1 lần sẽ giúp tóc được nuôi dưỡng sâu từ gốc tới ngọn và quyện với hương thớm trái cây nhiệt đới. Mái tóc trở nên ít xơ rối và sáng bóng tức thì.', N'Kem Ủ Tóc Banana Truly Nourishing Hair Mask 240ML', 1, 9, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/b/a/banana.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (95, 35, CAST(90000 AS Decimal(18, 0)), N'Dầu gội đầu tiếp thêm sinh lực chiết xuất từ rễ cây gừng cay nồng sẽ đánh thức da dầu của bạn. Dầu gội giúp làm sạch và dưỡng ẩm da đầu, đánh bay mọi loại gàu khi sử dụng thường xuyên', N'Dầu gội đầu Ginger Scalp Care Shampoo 60ML', 1, 9, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/1/0/1076184_1_shampoo-ginger-60ml-a1a_inlasps309_1.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (96, 35, CAST(699000 AS Decimal(18, 0)), N'Xịt Thơm Toàn Thân Black Musk là sự pha trộn của xạ hương tuyệt phẩm nhất của chúng tôi. Những nốt hương ngọt ngào của lê bambinella, hạt tiêu hồng và cam bergamot hòa huyện  với xạ hương đen, tạo ra sản phẩm Black Musk bới mùi hương lôi cuốn, mới lạ và khác biệt.', N'Nước Hoa White Musk® Eau de Toilette 30ML', 1, 11, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/w/e/webimages_1036352_2_edt_white_musk_30ml__silv_pck_inbosps811_m_z.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (97, 35, CAST(399000 AS Decimal(18, 0)), N'Dầu gội đầu tiếp thêm sinh lực chiết xuất từ rễ cây gừng cay nồng sẽ đánh thức da dầu của bạn. Dầu gội giúp làm sạch và dưỡng ẩm da đầu, đánh bay mọi loại gàu khi sử dụng thường xuyên', N'Dầu Gội Ginger Scalp Care Shampoo 400ML', 1, 9, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/t/h/the_body_shop_d_u_g_i_ginger_shampoo_400ml.png')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (98, 35, CAST(599000 AS Decimal(18, 0)), N'Xịt Thơm Toàn Thân Black Musk là sự pha trộn của xạ hương tuyệt phẩm nhất của chúng tôi. Những nốt hương ngọt ngào của lê bambinella, hạt tiêu hồng và cam bergamot hòa huyện  với xạ hương đen, tạo ra sản phẩm Black Musk bới mùi hương lôi cuốn, mới lạ và khác biệt.', N'Xịt Thơm Toàn Thân Black Musk Body Mist 100ML', 1, 11, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/1/0/1040771_2_body_mist_black_musk_100ml__silv_pck_inbosps856_1.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (99, 35, CAST(599000 AS Decimal(18, 0)), N'Hương thơm White Musk gợi cảm của chúng tôi tỏa ngát toàn thân. Phiên bản nhẹ hơn của mùi hương mang tính biểu tượng của chúng tôi kết hợp các nốt hương của xạ hương với hoa hồng, hoa nhài, hổ phách và gỗ.', N'Xịt Thơm Toàn Thân White Musk® Fragrance Mist 100ML', 1, 11, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/w/h/white_musk_fragrance_mist_100ml.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (100, 35, CAST(999000 AS Decimal(18, 0)), N'Giới thiệu mùi hương tinh tế và nữ tính đến từ gia đình White Musk®. White Musk® Flora là sự pha trộn các nốt hương của cam bergamot và hạt tiêu hồng với một bó hoa mẫu đơn và hoa huệ nở rộ cho một sự tươi mới, hiện đại và táo bạo với xạ hương không tàn nhẫn của chúng tôi và hoàn toàn thuần chay.', N'Nước Hoa White Musk Flora Eau De Toilette 60ML', 1, 11, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/h/y/hybrisimages_1015817_1_white_musk_flora_edt_60ml_brnz_inrbfps085.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (101, 35, CAST(699000 AS Decimal(18, 0)), N'Giới thiệu mùi hương tinh tế và nữ tính đến từ gia đình White Musk®. White Musk® Flora là sự pha trộn các nốt hương của cam bergamot và hạt tiêu hồng với một bó hoa mẫu đơn và hoa huệ nở rộ cho một sự tươi mới, hiện đại và táo bạo với xạ hương không tàn nhẫn của chúng tôi và hoàn toàn thuần chay.', N'Nước Hoa White Musk Flora Eau De Toilette 30ML', 1, 11, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/h/y/hybrisimages_1015816_1_white_musk_flora_edt_30ml_brnz_inrbfps081.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (102, 35, CAST(1099000 AS Decimal(18, 0)), N'Hương thơm nồng ấm, trong trẻo và sành điệu', N'Nước Hoa Arber Eau de Toilette 100ML', 1, 11, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/h/y/hybrisimages_1025682_2_edt_arber_100ml_ayr_silv_pck_inbmups779.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (103, 35, CAST(399000 AS Decimal(18, 0)), N'Lăn khử mùi hoa anh đào Nhật Bản mang lại cảm giác khô thoáng và hương hoa thơm ngát suốt ngày dài. Được làm từ cánh hoa anh đào và hoa mộc lan được thu hoạch bằng tay và ép lạnh cùng với các tầng hương cuối là mùi gỗ hinoki', N'Lăn Khử Mùi Japanese Cherry Blossom Deodorant 50ML', 1, 11, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/h/y/hybrisimages_1081126_2_japanese_cherry_blossom_deodorant_50ml_silv_pck_innepps044.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (104, 35, CAST(1399000 AS Decimal(18, 0)), N'Truyền cảm hứng từ muôn hoa bí ẩn nở và tỏa hương về đêm, lọ nước hoa này là sự kết hợp tinh tế giữa hoa hoàng lan, và hỗn hợp của hoa vòi voi heliotrope và các loại quả mọng đỏ cùng xạ hương ấm áp. Black Musk Night Bloom đem lại cho dòng nước hoa đặc trưng - Black Musk - một tầm cao mới sâu sắc hơn, táo bạo hơn và cuốn hút khó cưỡng', N'Nước Hoa Black Musk Night Bloom Eau de Toilette 60ML', 1, 11, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/h/y/hybrisimages_1091135_3_black_musk_night_bloom_edt_60ml_silv_box_inneops164_1.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (105, 35, CAST(599000 AS Decimal(18, 0)), N'Dưỡng thể tươi mát giúp dưỡng ẩm làn da với hương hoa anh đào Nhật Bản đầy lãng mạn và cuốn hút, là sự hòa quyện của hương hoa và gỗ hinoki.', N'Sữa Dưỡng Thể Japanese Cherry Blossom Body Lotion 250ML', 1, 11, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/i/m/image_-_japanese_cherry_blossom_body_lotion.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (106, 35, CAST(999000 AS Decimal(18, 0)), N'Nhẹ nhàng ướp hương cơ thể với hương thơm ngọt ngào, quyến rũ của hoa anh đào Nhật Bản. Hoa anh đào được tôn sùng ở Nhật Bản vì vẻ đẹp và hương thơm yêu kiều của chúng. Chúng tôi thu hoạch hoa bằng tay trong suốt mùa xuân, ép lạnh từng cánh hoa để chiết xuất được hương thơm tinh tế này.', N'Nước Hoa Japanese Cherry Blossom Eau De Toilette 50ML', 1, 11, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/w/e/webimages_1040782_2_edt_japanese_cherry_blossom_50ml_silv_pck_inmbsps023_m_z.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (107, 35, CAST(999000 AS Decimal(18, 0)), N'Nước hoa Eau DeTtoilette dễ gây nghiện nhất của chúng tôi được chiết xuất hương thơm của hoa anh đào Nhật Bản kết hợp cùng quả dâu tây, hoa mẫu đơn màu hồng và hổ phách. Vì vậy bạn cảm thấy hương trái cây thơm không thể cưỡng lại được. Chai nước hoa được sản xuất theo phong cách retro, mùi hương thuần chay 100% này là món quà hoàn hảo để tặng ai đó đặc biệt.', N'Nước Hoa Japanese Cherry Blossom Strawberry Kiss Eau De Toilette 50ML', 1, 11, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/w/e/webimages_1076168_2_edt_jcb_strawberry_kiss__silv_pck_innedps136_m_r.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (108, 35, CAST(429000 AS Decimal(18, 0)), N'Son môi mịn như kem, công thức dưỡng ẩm đem lại sắc màu đột phá cho làn môi. Hương thớm nhẹ từ hoa hồng và dầu dưỡng ẩm marula theo chương trình Thương Mại Cộng Đồng. Bạn chắc chắn sẽ muốn sưu tập từng thỏi son cho mỗi màu.', N'Son Môi Colour Crush™ Lipsticks 125 Tokyo Lotus', 1, 12, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/h/y/hybrisimages_1077681_2_cc_lipstick_125_tokyo_lotus_3.3g_a0x_brnz_innepps119.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (109, 35, CAST(449000 AS Decimal(18, 0)), N'Không cần phải lo lắng về quầng thâm mắt. Kem che khuyết điểm Fresh Nude mới của chúng tôi mang đến cho bạn vẻ ngoài rạng rỡ, tươi tắn. Với chiết xuất từ cafein và lô hội làm dịu, kem che khuyết điểm dạng serum giúp che giấu quầng thâm và dấu hiệu mệt mỏi trong chớp mắt. Sản phẩm cung cấp độ che phủ nhẹ, lâu dài mà không bị nhăn mắt.', N'Che Khuyết Điểm Ẩm Mượt Fresh Nude Concealer 02 6ml', 1, 12, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/1/0/1057258_concealer-fresh-nude-med-fair-02-6ml-a0_silv_open_inlasps264.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (110, 35, CAST(429000 AS Decimal(18, 0)), N'Son môi mịn như kem, công thức dưỡng ẩm đem lại sắc màu đột phá cho làn môi. Hương thớm nhẹ từ hoa hồng và dầu dưỡng ẩm marula theo chương trình Thương Mại Cộng Đồng. Bạn chắc chắn sẽ muốn sưu tập từng thỏi son cho mỗi màu.', N'Son Môi Colour Crush™ Lipsticks 310 - canberra tulip', 1, 12, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/h/y/hybrisimages_1077693_1_cc_lipstick_310_canberra_tulip_3.3g_a0x_brnz_honey_innepps100.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (111, 35, CAST(469000 AS Decimal(18, 0)), N'Lash Sport Mascara sở hữu tính năng vượt trội trong việc làm dày và dài mi suốt cả ngày. Được tạo ra từ dầu marula trong Chương trình thương mại cộng đồng, Lash Sport Mascara chống thấm nước nhưng lại rất dễ dàng làm sạch với tẩy trang không thấm nước dành riêng cho vùng mắt. Tận hưởng một ngày dài mà không ngại hàng mi bị nhòe hay phai màu', N'Mascara Lash Sport Waterproof 9.5ML', 1, 12, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/h/y/hybrisimages_1091768_3_lash_sport_waterproof_mascara_9.5ml_silv_pck_inneops182.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (112, 35, CAST(950000 AS Decimal(18, 0)), N'Cho làn da đẹp mỗi ngày với Fresh Nude Foundation. Chứa tinh chất lô hội và nước hoa hồng Anh Quốc, công thức đầy độ ẩm này sẽ cho da bạn một cảm giác tươi mới và dễ chịu cả ngày. Sản phẩm còn chống nắng với SPF 15 giúp bảo vệ làn da của bạn. Với hiệu ứng nhẵn mịn, mỗi màu trong những tông màu lấy cảm hứng từ thiên nhiên này sẽ đều cho bạn vẻ ngoài tươi mới, tự nhiên và làn da căng mịn.', N'Kem Nền Fresh Nude Foundation Bali Vanilla 30ML 020', 1, 12, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/i/m/image.png')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (113, 35, CAST(328000 AS Decimal(18, 0)), N'Giúp nước da trông hoàn hảo và giải quyết các khuyết điểm trên da cùng Tea Tree Flawless BB Cream. Đây là kem có tác động kép giúp che phủ láng mịn và làm biến mất các khuyết điểm của gương mặt. Sản phẩm có công thứ từ thành phần tinh dầu Tràm Trà theo Chương Trình Thương Mại Cộng Đồng từ Kenya.', N'Kem Nền Tea Tree Flawless BB Cream Light 40ML', 1, 12, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/b/b/bb_cream_light.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (114, 35, CAST(599000 AS Decimal(18, 0)), N'Hãy trải nghiệm White Musk® Flora Frag Frag Mist -  một hương hoa tươi mát trên xạ hương không độc hại mang tính biểu tượng của chúng tôi. Những nốt hương tuyệt vời là sự kết hợp của hạt tiêu hồng, cam bergamot, hoa mẫu đơn và hoa huệ của thung lũng cho một bó hoa hiện đại, tinh xảo mà 100% thuần chay.', N'Xịt Thơm Toàn Thân White Musk® Flora Fragrance Mist 100ML', 1, 11, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/w/e/webimages_1015924_1_white_musk_flora_fragrance_mist_100ml_brnz_inrbfps099_m_z.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (115, 35, CAST(419000 AS Decimal(18, 0)), N'Lash Sport Mascara sở hữu tính năng vượt trội trong việc làm dày và dài mi suốt cả ngày. Được tạo ra từ dầu marula trong Chương trình thương mại cộng đồng, Lash Sport Mascara chống thấm nước nhưng lại rất dễ dàng làm sạch với tẩy trang không thấm nước dành riêng cho vùng mắt. Tận hưởng một ngày dài mà không ngại hàng mi bị nhòe hay phai màu', N'Mascara Super Volume', 1, 12, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/h/y/hybrisimages_1020032_2_mascara_super_volume_01_10ml_silv_pck_inmbsps524.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (116, 35, CAST(399000 AS Decimal(18, 0)), N'', N'Matte Clay Powder', 1, 12, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/w/e/webimages_range_5_powder_matte_clay_range_square_range_sqr_inneops416_m_l.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (117, 35, CAST(259000 AS Decimal(18, 0)), N'', N'Son Matte Lip Liquid Vienna Tulip 033', 1, 12, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/c/a/capture_4.png')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (118, 35, CAST(399000 AS Decimal(18, 0)), N'Một sản phẩm make-up không thể thiếu! Che phủ hoàn hảo mọi khuyết điểm của làn da suốt cả ngày với sản phẩm 100% hữu cơ của chúng tôi. Phấn che khuyết điểm cho lớp nền hoàn hảo từ tinh chất tràm trà, giúp bạn sở hữu lớp make-up trong suốt, mịn màng.', N'Kem Che Khuyết Điểm Concealer Matte Clay 021 1.5G', 1, 12, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/i/1/i114_cimgpsh_orig.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (119, 35, CAST(399000 AS Decimal(18, 0)), N'Một sản phẩm make-up không thể thiếu! Kem che khuyết điểm hoàn hảo mọi khuyết điểm của làn da suốt cả ngày với sản phẩm 100% hữu cơ của chúng tôi. Kem che khuyết điểm cho lớp nền hoàn hảo từ tinh chất tràm trà, giúp bạn sở hữu lớp make-up trong suốt, mịn màng.', N'Kem Che Khuyết Điểm Matte Clay Concealer 010 1.5G A0X', 1, 12, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/i/1/i110_cimgpsh_orig.jpg')
INSERT [dbo].[Product] ([ID], [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink]) VALUES (120, 35, CAST(259000 AS Decimal(18, 0)), N'', N'Metal Lip Liquid', 1, 12, N'https://www.thebodyshop.com.vn/media/catalog/product/cache/2/small_image/408x408/9df78eab33525d08d6e5fb8d27136e95/i/m/img_15112017_172611_0.png')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([ID], [Name]) VALUES (1, N'active')
INSERT [dbo].[Status] ([ID], [Name]) VALUES (2, N'inactive')
INSERT [dbo].[Status] ([ID], [Name]) VALUES (3, N'Accepted')
INSERT [dbo].[Status] ([ID], [Name]) VALUES (4, N'Canceled')
INSERT [dbo].[Status] ([ID], [Name]) VALUES (5, N'Pending')
INSERT [dbo].[Status] ([ID], [Name]) VALUES (6, N'New')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Status]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Account]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Discount] FOREIGN KEY([DiscountID])
REFERENCES [dbo].[Discount] ([ID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Discount]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Status]
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetail_Booking] FOREIGN KEY([BookingID])
REFERENCES [dbo].[Booking] ([ID])
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [FK_BookingDetail_Booking]
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [FK_BookingDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CateID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Status1] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Status1]
GO
USE [master]
GO
ALTER DATABASE [CSharpAssignment] SET  READ_WRITE 
GO
