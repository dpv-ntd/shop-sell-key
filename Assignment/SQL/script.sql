USE [Assignment_HE153430]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/22/2022 1:08:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[displayName] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[role] [nvarchar](255) NULL,
	[block] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/22/2022 1:08:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/22/2022 1:08:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
	[status] [varchar](255) NULL,
	[productId] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/22/2022 1:08:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](max) NULL,
	[created_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/22/2022 1:08:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[description] [nvarchar](255) NULL,
	[image_url] [nvarchar](255) NULL,
	[created_date] [date] NULL,
	[category_id] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 3/22/2022 1:08:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [role], [block]) VALUES (1, N'ducprovng', N'12345', N'DPV', N'Thái Nguyên', N'ducprovng@gmail.com', N'0866565950', N'Admin', N'no')
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [role], [block]) VALUES (13, N'admin', N'12345', NULL, NULL, NULL, NULL, N'Customer', N'no')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (18, N'Office')
INSERT [dbo].[Category] ([id], [name]) VALUES (19, N'Microsoft 365')
INSERT [dbo].[Category] ([id], [name]) VALUES (20, N'Windows 10')
INSERT [dbo].[Category] ([id], [name]) VALUES (21, N'Antivirus')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity], [status], [productId]) VALUES (41, 37, N'ESET Small Office Security - Windows 10 PC+ 01 Server+ 05 Mobile/Year', N'https://cdn.tgdd.vn/Products/Images/85/265719/eset-small-office-security-windows-10-pc-01-server-05-mobile-nam-thumb-600x600.jpg', 150, 1, NULL, 109)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (37, 1, 150, N'', CAST(N'2022-03-22' AS Date), 37)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (109, N'ESET Small Office Security - Windows 10 PC+ 01 Server+ 05 Mobile/Year', 99, 150, N'Endpoint Security - Protecting workstations, Mobile Security - Protecting smartphones, File Security - Protecting data servers, ESET Security management center - Centralized management', N'https://cdn.tgdd.vn/Products/Images/85/265719/eset-small-office-security-windows-10-pc-01-server-05-mobile-nam-thumb-600x600.jpg', CAST(N'2022-03-22' AS Date), 21)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (110, N'ESET Small Office Security - Windows 05 PC+ 01 Server+ 05 Mobile/Year', 100, 120, N'Endpoint Security - Protecting workstations, Mobile Security - Protecting smartphones, File Security - Protecting data servers, ESET Security management center - Centralized management', N'https://cdn.tgdd.vn/Products/Images/85/265718/eset-small-office-security-windows-05-pc-01-server-05-mobile-nam-thumb-600x600.jpg', CAST(N'2022-03-22' AS Date), 21)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (111, N'ESET Internet Security - Windows 03 PC/Year', 100, 50, N'Antivirus and Antispyware, Advanced Memory Scanner, UEFI Scanner, Ransomware Shield, Botnet Protection, Antispam, Gamer Mode', N'https://cdn.tgdd.vn/Products/Images/85/265717/eset-internet-security-windows-03-pc-nam-240122-081657-600x600.jpg', CAST(N'2022-03-22' AS Date), 21)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (112, N'ESET NOD32 Antivirus - Windows 03 PC/Year', 100, 15, N'Antivirus and Antispyware, Ransomware Shield, UEFI Scanner, Gamer Mode, Advanced Memory Scanner, ESET SysInspector', N'https://cdn.tgdd.vn/Products/Images/85/265291/eset-nod32-antivirus-windows-03-pc-nam-thumb-600x600.jpeg', CAST(N'2022-03-22' AS Date), 21)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (113, N'ESET Mobile Security - Android (1 device/ 1 year)', 100, 20, N'Antivirus and Antispyware, Ransomware Shield, UEFI Scanner, Gamer Mode, Advanced Memory Scanner, ESET SysInspector', N'https://cdn.tgdd.vn/Products/Images/85/199931/eset-mobile-security-danh-cho-dien-thoai-may-tinh-ava-600x600.jpg', CAST(N'2022-03-22' AS Date), 21)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (114, N'ESET Internet Security - Windows 1PC/Year', 100, 20, N'Antivirus and Antispyware, Ransomware Shield, UEFI Scanner, Gamer Mode, Advanced Memory Scanner, ESET SysInspector', N'https://cdn.tgdd.vn/Products/Images/85/199928/eset-internet-security-danh-cho-may-tinh-windows-1-ava-600x600.jpg', CAST(N'2022-03-22' AS Date), 21)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (115, N'ESET NOD32 Antivirus for Windows - 1 PC', 100, 30, N'Antivirus and Antispyware, Ransomware Shield, UEFI Scanner, Gamer Mode, Advanced Memory Scanner, ESET SysInspector', N'https://cdn.tgdd.vn/Products/Images/85/199928/eset-internet-security-danh-cho-may-tinh-windows-1-ava-600x600.jpg', CAST(N'2022-03-22' AS Date), 21)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (118, N'Windows 10 Pro 32-bit/64-bit All Languages (FQC-09131) ', 100, 200, N'Permanent license for 1 device: install for 1 Desktop or 1 Laptop.
Get updated with the latest features, free of charge during the time of use.
It is possible to switch to a new computer after removing Windows on the old machine.', N'https://cdn.tgdd.vn/Products/Images/85/155041/windows-10-pro-32-bit-64-bit-all-languages-fqc-09-cava-600x600.jpg', CAST(N'2022-03-22' AS Date), 20)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (119, N'Windows 10 Home 32-bit/64-bit All Languages (KW9-00265)', 100, 150, N'Permanent license for 1 device: install for 1 Desktop or 1 Laptop.
Get updated with the latest features, free of charge during the time of use.
It is possible to switch to a new computer after removing Windows on the old machine.', N'https://cdn.tgdd.vn/Products/Images/85/155012/windows-10-home-32-bit-64-bit-all-languages-kw9-0-cava-600x600.jpg', CAST(N'2022-03-22' AS Date), 20)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (120, N'Microsoft 365 Personal 32/64bit 1 year 1 user Win/Mac', 100, 50, N'Word, Excel, PowerPoint, OneNote, Outlook latest versions are always updated for free.', N'https://cdn.tgdd.vn/Products/Images/85/221162/1-600x600.jpg', CAST(N'2022-03-22' AS Date), 19)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (121, N'Microsoft 365 Family 32/64bit 1 year 6 users Win/Mac', 100, 50, N'12-month license to use up to 6 users (6 Microsoft accounts).
The software includes Office tools: Word, Excel, PowerPoint, Outlook,...
Each user gets 1 TB of OneDrive online storage.', N'https://cdn.tgdd.vn/Products/Images/85/221161/3-600x600-1.jpg', CAST(N'2022-03-22' AS Date), 19)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (122, N'Office Home & Student 2021 For PC/Mac Permanent All Languages', 100, 100, N'Permanent license, installation can only be used on 1 device.
Support devices operating on Windows/MacOS platforms.
Use a variety of languages.
Provides the most important Microsoft applications including Word, Excel, Powerpoint, OneNote.', N'https://cdn.tgdd.vn/Products/Images/85/251215/office-home-student-2021-for-pc-mac-vinh-vien-1-600x600.jpg', CAST(N'2022-03-22' AS Date), 18)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (123, N'Kaspersky Internet Security - 3 PC ', 100, 50, N'Software license 1 year used for 3 machines.
License key must be activated in Vietnam.
Use for Kaspersky Internet Security 2020 version.', N'https://cdn.tgdd.vn/Products/Images/85/84912/kaspersky-internet-security-3-org-pc2.jpg', CAST(N'2022-03-22' AS Date), 21)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (124, N'Kaspersky Internet Security - 1 PC', 100, 15, N'Software license 1 year use.
License key must be activated in Vietnam.
Use for Kaspersky Internet Security 2020 version.', N'https://cdn.tgdd.vn/Products/Images/85/84911/kaspersky-internet-security-1-2-org-pc1.jpg', CAST(N'2022-03-22' AS Date), 21)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (125, N'Microsoft Office Software Mac Home Business 1PK 2016 English APAC EM Medialess P2 (W6F-00882)', 100, 100, N'- Edit without print with Ink Editor
- Review the idea generation process with Ink Replay
- Quickly start presenting with QuickStarter', N'https://lh3.googleusercontent.com/KP5X-N3RfQpAc93tRdoK-tVPvl2UxnZRkpWew0L76BHA5r9Os7Sq88tbFMVdEwBR2fI_pQZlWfaKHJn2tsI0=w1000-rw', CAST(N'2022-03-22' AS Date), 18)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (126, N'Microsoft 365 Business software - 12 months - For 1 person - 5 devices/account - Word, Excel, PowerPoint - 1TB OneDrive for Business - Outlook', 100, 200, N'- 1 year subscription for 1 user.
- Use on 5 PCs / Macs, tablets and phones (including Windows, iOS and Android *).', N'https://lh3.googleusercontent.com/XQUd7IyJ6MMkQwBayE6UzxjissvGrZ7QznWJbOVejRa8fLvpD5uO-jvSnIRz5CJ_rDjvwRYOP1LPObuoG12z7Dli7zznw5sG=w1000-rw', CAST(N'2022-03-22' AS Date), 18)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (127, N'Microsoft Windows 10 Pro software 32/64 bit Eng Intl USB RS (HAV-00060)', 100, 100, N'- Number of devices: 1
- Packing: Physical Key
- Customer group: Individuals / Businesses', N'https://lh3.googleusercontent.com/M5DQN-sZq8bn3s9PDJu3sUdIpxb7KErTjdwirRySM1ZodPtgx6Kv3TGd9Y0t90E4IjeNIosv88mnX9FPI9LR=w1000-rw', CAST(N'2022-03-22' AS Date), 18)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (129, N'Phần mềm Microsoft Office 365 BusinessPrem ShrdSvr SNGL SubsVL OLP NL Qualified Annual(9F4-00003)', 100, 200, N'- For 5 PCs/Macs, 5 Tablets and 5 phones, Office Offline: Word, Excel, PowerPoint, OneNote, Outlook, Publisher. Office Online: Word, Powerpoint, Excel.', N'https://lh3.googleusercontent.com/40bHCUG0HvwrK6lZ2ZdyEe7hEpPcXf_PFCamKkXGThmrjcnR2tfci4AfrvvhvBdG6AmsaEzayKzB5uynRmY2=w1000-rw', CAST(N'2022-03-22' AS Date), 18)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (130, N'Microsoft Office 365 Personal English Software APAC EM Subscr 1YR Medialess P4 (QQ2-00807)', 100, 100, N'Create your best work. With Office 365 Personal, you get Word, Excel, PowerPoint, Outlook and more. Work anywhere with always up-to-date apps.', N'https://lh3.googleusercontent.com/O5OOPHvJBzFhXNKmZq7HJED15_0QVdH0GSQqxYC24BZNImHk0zyptykN2Y0SN8HcI3rch7jGMQPJrStMGQ=w1000-rw', CAST(N'2022-03-22' AS Date), 18)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([id], [name], [phone], [address], [email]) VALUES (37, N'DPV', N'0866565950', N'Thái Nguyên', N'ducprovng@gmail.com')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__order__30F848ED] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__order__30F848ED]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__account___2F10007B] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__account___2F10007B]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__shipping__300424B4] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__shipping__300424B4]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__categor__267ABA7A] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__categor__267ABA7A]
GO
