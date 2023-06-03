USE [Clothes_Web]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 6/3/2023 3:39:49 PM ******/
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
/****** Object:  Table [dbo].[orders]    Script Date: 6/3/2023 3:39:49 PM ******/
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
/****** Object:  Table [dbo].[products]    Script Date: 6/3/2023 3:39:49 PM ******/
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
/****** Object:  Table [dbo].[users]    Script Date: 6/3/2023 3:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[email] [varchar](250) NOT NULL,
	[password] [varchar](250) NOT NULL,
	[phone] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (1, 1, N'Chà đẹp quá !')
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (1, 1, N'Quá xinh đẹp tuyệt vời')
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (2, 1, N'Shop vjp quá @@')
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (3, 1, N'hehe')
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (6, 1, N'Oi that tuyet voi !')
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (1, 13, N'Vest đắt vậy')
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (2, 13, N'Xin chào')
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (8, 13, N'Đẹp !')
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (8, 1, N'Không đẹp !')
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (10, 1, N'Fix được bug rồi abf con ơi !!!')
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (10, 1, N'Rồi xong bình luận là ra lỗi mới :)')
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (7, 13, N'Xấu quá')
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (7, 13, N'Oi that tuyet voi !')
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (5, 13, N'Đẹp quá đẹp quá hahaa')
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (12, 13, N'Ôi đẹp tuyệt vời')
INSERT [dbo].[comments] ([p_id], [u_id], [detail]) VALUES (9, 18, N'Ôi đẹp quá !')
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([o_id], [p_id], [u_id], [o_quantity], [o_date]) VALUES (1, 3, 1, 3, N'2021-05-15')
INSERT [dbo].[orders] ([o_id], [p_id], [u_id], [o_quantity], [o_date]) VALUES (2, 2, 1, 1, N'2021-05-15')
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (1, N'Áo vest cổ điển', N'Ðồ nam', 1000000, N'ao-vest-co-dien.jpg')
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (2, N'Áo thun T-shirt', N'Đồ nam', 250000, N'ao-thun-T-shirt.jpg')
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (3, N'Áo thể thao cực mát mẻ', N'Đồ nam', 250000, N'ao-the-thao-mat-me.jpg')
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (5, N'Áo khoác da Gucci sành điệu', N'Đồ nam', 800000, N'ao-khoac-da-gucci.jpg')
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (6, N'Áo khoác lông phong cách', N'Đồ nam', 1500000, N'ao-khoac-long-ham-ho.jpg')
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (7, N'Áo len nam màu đỏ', N'Đồ nam', 500000, N'ao-len-nam.jpg')
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (8, N'Áo len nữ màu trắng', N'Đồ nữ', 600000, N'ao-len-nu-mau-trang.jpg')
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (9, N'Bộ quần áo thể thao nữ', N'Đồ nữ', 700000, N'bo-quan-ao-the-thao-nu.jpg')
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (10, N'Váy hoa nữ', N'Đồ nữ', 500000, N'vay-hoa-nu.jpg')
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (12, N'Áo ngủ nữ', N'Đồ nữ', 300000, N'ao-ngu-nu.jpg')
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (13, N'Áo cộc tay trẻ em', N'Đồ trẻ em', 200000, N'ao-coc-tre-em.jpg')
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (14, N'Váy hoa trẻ em màu trắng', N'Đồ trẻ em', 300000, N'vay-hoa-tre-em.jpg')
INSERT [dbo].[products] ([id], [name], [category], [price], [image]) VALUES (15, N'Áo gió trẻ em', N'Đồ trẻ em', 250000, N'ao-gio-tre-em.jpg')
SET IDENTITY_INSERT [dbo].[products] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [name], [email], [password], [phone]) VALUES (1, N'Mùa xuân hoa nở ... là vì iem', N'user1', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'0919213123')
INSERT [dbo].[users] ([id], [name], [email], [password], [phone]) VALUES (2, N'Thắng', N'user2', N'd4735e3a265e16eee03f59718b9b5d03019c07d8b6c51f90da3a666eec13ab35', N'0293712635')
INSERT [dbo].[users] ([id], [name], [email], [password], [phone]) VALUES (3, N'Hoa', N'user3', N'4e07408562bedb8b60ce05c1decfe3ad16b72230967de01f640b7e4729b49fce', N'0927123561')
INSERT [dbo].[users] ([id], [name], [email], [password], [phone]) VALUES (4, N'admin', N'admin', N'0dbf9324917af051c61ae955e464574cca60a5f57d3d8e0d7e49d7044d690eae', N'0129371263')
INSERT [dbo].[users] ([id], [name], [email], [password], [phone]) VALUES (6, N'testHashPass', N'Test', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', N'0941241241')
INSERT [dbo].[users] ([id], [name], [email], [password], [phone]) VALUES (7, N'test', N'Tets', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', N'0967834713')
INSERT [dbo].[users] ([id], [name], [email], [password], [phone]) VALUES (9, N'test2', N'Test2', N'0dbf9324917af051c61ae955e464574cca60a5f57d3d8e0d7e49d7044d690eae', N'0914235662')
INSERT [dbo].[users] ([id], [name], [email], [password], [phone]) VALUES (10, N'Helo', N'Helo', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'0912456538')
INSERT [dbo].[users] ([id], [name], [email], [password], [phone]) VALUES (11, N'xiaxia', N'XiaXia', N'd4735e3a265e16eee03f59718b9b5d03019c07d8b6c51f90da3a666eec13ab35', N'0912376455')
INSERT [dbo].[users] ([id], [name], [email], [password], [phone]) VALUES (12, N'Xiaoo', N'Xioa', N'4e07408562bedb8b60ce05c1decfe3ad16b72230967de01f640b7e4729b49fce', N'0927641646')
INSERT [dbo].[users] ([id], [name], [email], [password], [phone]) VALUES (13, N'truong', N'Truong', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'0912764147')
INSERT [dbo].[users] ([id], [name], [email], [password], [phone]) VALUES (18, N'Nguyễn Đắc Trường', N'truong2', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'0962842402')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_email]    Script Date: 6/3/2023 3:39:50 PM ******/
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [UC_email] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
