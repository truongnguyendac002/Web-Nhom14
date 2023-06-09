USE [Clothes_Web]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 6/14/2023 9:55:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[p_id] [int] NOT NULL,
	[u_id] [int] NOT NULL,
	[detail] [nvarchar](2000) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 6/14/2023 9:55:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[o_id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [int] NOT NULL,
	[u_id] [int] NOT NULL,
	[o_quantity] [int] NOT NULL,
	[o_date] [varchar](450) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[o_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 6/14/2023 9:55:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](450) NOT NULL,
	[category] [nvarchar](450) NOT NULL,
	[price] [float] NOT NULL,
	[image] [varchar](450) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 6/14/2023 9:55:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[username] [varchar](250) NOT NULL,
	[password] [varchar](250) NOT NULL,
	[phone] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (1, 1, N'Chà đẹp quá !')
GO
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (1, 1, N'Quá xinh đẹp tuyệt vời')
GO
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (2, 1, N'Shop vjp quá @@')
GO
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (3, 1, N'hehe')
GO
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (6, 1, N'Oi that tuyet voi !')
GO
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (1, 13, N'Vest đắt vậy')
GO
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (2, 13, N'Xin chào')
GO
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (8, 13, N'Đẹp !')
GO
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (8, 1, N'Không đẹp !')
GO
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (10, 1, N'Fix được bug rồi abf con ơi !!!')
GO
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (10, 1, N'Rồi xong bình luận là ra lỗi mới :)')
GO
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (2, 1, N'Oi that tuyet voi !')
GO
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (7, 13, N'Xấu quá')
GO
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (7, 13, N'Oi that tuyet voi !')
GO
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (5, 13, N'Đẹp quá đẹp quá hahaa')
GO
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (12, 13, N'Ôi đẹp tuyệt vời')
GO
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (9, 18, N'Ôi đẹp quá !')
GO
SET IDENTITY_INSERT [dbo].[orders] ON 
GO
INSERT [dbo].[orders] ([o_id], [p_id], [u_id], [o_quantity], [o_date]) VALUES (1, 3, 1, 3, N'2021-05-15')
GO
INSERT [dbo].[orders] ([o_id], [p_id], [u_id], [o_quantity], [o_date]) VALUES (2, 2, 1, 1, N'2021-05-15')
GO
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[products] ON 
GO
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (1, N'Áo vest cổ điển', N'Ðồ nam', 1000000, N'ao-vest-co-dien.jpg')
GO
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (2, N'Áo thun T-shirt', N'Đồ nam', 250000, N'ao-thun-T-shirt.jpg')
GO
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (3, N'Áo thể thao cực mát mẻ', N'Đồ nam', 250000, N'ao-the-thao-mat-me.jpg')
GO
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (5, N'Áo khoác da Gucci sành điệu', N'Đồ nam', 800000, N'ao-khoac-da-gucci.jpg')
GO
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (6, N'Áo khoác lông phong cách', N'Đồ nam', 1500000, N'ao-khoac-long-ham-ho.jpg')
GO
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (7, N'Áo len nam màu đỏ', N'Đồ nam', 500000, N'ao-len-nam.jpg')
GO
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (8, N'Áo len nữ màu trắng', N'Đồ nữ', 600000, N'ao-len-nu-mau-trang.jpg')
GO
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (9, N'Bộ quần áo thể thao nữ', N'Đồ nữ', 700000, N'bo-quan-ao-the-thao-nu.jpg')
GO
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (10, N'Váy hoa nữ', N'Đồ nữ', 500000, N'vay-hoa-nu.jpg')
GO
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (12, N'Áo ngủ nữ', N'Đồ nữ', 300000, N'ao-ngu-nu.jpg')
GO
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (13, N'Áo cộc tay trẻ em', N'Đồ trẻ em', 200000, N'ao-coc-tre-em.jpg')
GO
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (14, N'Váy hoa trẻ em màu trắng', N'Đồ trẻ em', 300000, N'vay-hoa-tre-em.jpg')
GO
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (15, N'Áo gió trẻ em', N'Đồ trẻ em', 250000, N'ao-gio-tre-em.jpg')
GO
SET IDENTITY_INSERT [dbo].[products] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 
GO
INSERT [dbo].[users] ([id], [name], [username], [password], [phone]) VALUES (1, N'Mùa xuân hoa nở ... là vì iem', N'user1', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'0919213123')
GO
INSERT [dbo].[users] ([id], [name], [username], [password], [phone]) VALUES (2, N'Thắng', N'user2', N'd4735e3a265e16eee03f59718b9b5d03019c07d8b6c51f90da3a666eec13ab35', N'0293712635')
GO
INSERT [dbo].[users] ([id], [name], [username], [password], [phone]) VALUES (3, N'Hoa', N'user3', N'4e07408562bedb8b60ce05c1decfe3ad16b72230967de01f640b7e4729b49fce', N'0927123561')
GO
INSERT [dbo].[users] ([id], [name], [username], [password], [phone]) VALUES (6, N'testHashPass', N'Test', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', N'0941241241')
GO
INSERT [dbo].[users] ([id], [name], [username], [password], [phone]) VALUES (7, N'test', N'Tets', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', N'0967834713')
GO
INSERT [dbo].[users] ([id], [name], [username], [password], [phone]) VALUES (9, N'test2', N'Test2', N'0dbf9324917af051c61ae955e464574cca60a5f57d3d8e0d7e49d7044d690eae', N'0914235662')
GO
INSERT [dbo].[users] ([id], [name], [username], [password], [phone]) VALUES (10, N'Helo', N'Helo', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'0912456538')
GO
INSERT [dbo].[users] ([id], [name], [username], [password], [phone]) VALUES (11, N'xiaxia', N'XiaXia', N'd4735e3a265e16eee03f59718b9b5d03019c07d8b6c51f90da3a666eec13ab35', N'0912376455')
GO
INSERT [dbo].[users] ([id], [name], [username], [password], [phone]) VALUES (12, N'Xiaoo', N'Xioa', N'4e07408562bedb8b60ce05c1decfe3ad16b72230967de01f640b7e4729b49fce', N'0927641646')
GO
INSERT [dbo].[users] ([id], [name], [username], [password], [phone]) VALUES (13, N'truong', N'Truong', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'0912764147')
GO
INSERT [dbo].[users] ([id], [name], [username], [password], [phone]) VALUES (18, N'Nguyễn Đắc Trường', N'truong2', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'0962842402')
GO
INSERT [dbo].[users] ([id], [name], [username], [password], [phone]) VALUES (19, N'admin', N'admin', N'8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', N'098288818')
GO
INSERT [dbo].[users] ([id], [name], [username], [password], [phone]) VALUES (22, N'Alibaba', N'a', N'ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb', N'092929191')
GO
SET IDENTITY_INSERT [dbo].[users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_email]    Script Date: 6/14/2023 9:55:47 AM ******/
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [UC_email] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
