USE [test]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/23/2022 10:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Name] [nvarchar](50) NOT NULL,
    [NameVN] [nvarchar](50) NOT NULL,
    CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]

    GO
/****** Object:  Table [dbo].[Customers]    Script Date: 3/23/2022 10:58:04 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Customers](
    [Id] [nvarchar](20) NOT NULL,
    [Password] [nvarchar](50) NOT NULL,
    [Fullname] [nvarchar](50) NOT NULL,
    [Email] [nvarchar](50) NOT NULL,
    [Photo] [nvarchar](50) NOT NULL,
    [Activated] [bit] NOT NULL,
    [Admin] [bit] NOT NULL,
    CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]

    GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 3/23/2022 10:58:04 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[OrderDetails](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [OrderId] [int] NOT NULL,
    [ProductId] [int] NOT NULL,
    [UnitPrice] [float] NOT NULL,
    [Quantity] [int] NOT NULL,
    [Discount] [float] NOT NULL,
    CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]

    GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/23/2022 10:58:04 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Orders](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [CustomerId] [nvarchar](20) NOT NULL,
    [OrderDate] [datetime] NOT NULL,
    [Address] [nvarchar](60) NOT NULL,
    [Amount] [float] NOT NULL,
    [Description] [nvarchar](1000) NULL,
    [Status] [int] NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]

    GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/23/2022 10:58:04 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Products](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Name] [nvarchar](60) NOT NULL,
    [Image] [nvarchar](50) NOT NULL,
    [UnitPrice] [float] NOT NULL,
    [Discount] [float] NOT NULL,
    [Quantity] [int] NOT NULL,
    [ProductDate] [date] NOT NULL,
    [Available] [bit] NOT NULL,
    [CategoryId] [int] NOT NULL,
    [Description] [nvarchar](max) NULL,
    [ViewCount] [int] NULL,
    CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

    GO
    SET IDENTITY_INSERT [dbo].[Categories] ON

    INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (1000, N'Watches', N'Đồng hồ đeo tay')
    INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (1001, N'Laptops', N'Máy tính xách tay')
    INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (1002, N'Cameras', N'Máy ảnh')
    SET IDENTITY_INSERT [dbo].[Categories] OFF
    INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated], [Admin]) VALUES (N'12134567', N'sssss', N'Trịnh Tuấn Vũ', N'test@gmail.com', N'Phôt.png', 1, 1)
    INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated], [Admin]) VALUES (N'hien123', N'123456', N'Dương Thị Hiền', N'trinhtuanvuu@gmail.com', N'user.png', 1, 0)
    INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated], [Admin]) VALUES (N'hien123456', N'123456', N'Dương Thị Hiền', N'hien.qthk12@gmail.com', N'user.png', 0, 0)
    INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated], [Admin]) VALUES (N'trinhtuanvu', N'123', N'Trịnh Tuấn Vũ', N'trinhtuanvuu@gmail.com', N'avata_cv.jpg', 1, 1)
    INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated], [Admin]) VALUES (N'tuanvu', N'123456', N'Trinh Tuan Vu', N'tuanvuplbp@gmail.com', N'avata_cv.jpg', 1, 1)
    INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated], [Admin]) VALUES (N'vuongha', N'123', N'Vương', N'tuanvuplbp@gmail.com', N'user.png', 1, 0)
    SET IDENTITY_INSERT [dbo].[OrderDetails] ON

    INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1, 8, 1016, 17.45, 1, 0)
    INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2, 9, 1044, 19.45, 1, 0)
    INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (3, 9, 1003, 10, 1, 0)
    INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (4, 10, 1043, 46, 1, 0)
    INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (5, 10, 1076, 18, 1, 0)
    INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (6, 10, 1069, 36, 1, 0)
    INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (7, 10, 1071, 21.5, 1, 0)
    INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (8, 11, 1072, 34.8, 1, 0)
    INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (9, 11, 1043, 46, 1, 0)
    INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (10, 11, 1067, 14, 1, 0)
    INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (11, 12, 1001, 190, 1, 0)
    INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (12, 12, 1019, 9.2, 1, 0)
    INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (13, 12, 1021, 10, 1, 8)
    INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (14, 13, 1024, 4.5, 3, 0)
    INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (15, 14, 1016, 17.45, 2, 0)
    INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (16, 15, 1059, 55, 1, 0)
    INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (17, 15, 1027, 43.9, 1, 2)
    INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (18, 16, 1015, 15.5, 1, 0)
    INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (19, 17, 1044, 19.45, 10, 0)
    INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (20, 18, 1081, 19, 1, 0)
    SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
    SET IDENTITY_INSERT [dbo].[Orders] ON

    INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [Address], [Amount], [Description], [Status]) VALUES (10, N'trinhtuanvu', CAST(N'2020-10-26 00:00:00.000' AS DateTime), N'', 117.5, N'', 0)
    INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [Address], [Amount], [Description], [Status]) VALUES (11, N'vuongha', CAST(N'2020-10-31 00:00:00.000' AS DateTime), N'25 man thiện p.hiep phu quận 9', 91.8, N'<i><u style="background-color: rgb(51, 102, 153);"><font color="#6600ff">test</font></u></i>', 2)
    INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [Address], [Amount], [Description], [Status]) VALUES (12, N'vuongha', CAST(N'2020-11-03 00:00:00.000' AS DateTime), N'25 man thiện p.hiep phu quận 9', 214.2, N'<br>', 4)
    INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [Address], [Amount], [Description], [Status]) VALUES (13, N'tuanvu', CAST(N'2020-11-08 00:00:00.000' AS DateTime), N'25 man thiện', 12.5, N'', 1)
    INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [Address], [Amount], [Description], [Status]) VALUES (14, N'tuanvu', CAST(N'2020-11-08 00:00:00.000' AS DateTime), N'25 man thiện', 33.9, N'test', 0)
    INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [Address], [Amount], [Description], [Status]) VALUES (15, N'tuanvu', CAST(N'2020-11-14 00:00:00.000' AS DateTime), N'25 man thiện', 98.9, N'', 1)
    INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [Address], [Amount], [Description], [Status]) VALUES (16, N'tuanvu', CAST(N'2022-03-02 00:00:00.000' AS DateTime), N'binh phuoc', 15.5, N'', 1)
    INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [Address], [Amount], [Description], [Status]) VALUES (17, N'hien123', CAST(N'2022-03-02 00:00:00.000' AS DateTime), N'28/28 Văn Chung Q .Tân Bình', 194.5, N'giao thứ 7', 0)
    INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [Address], [Amount], [Description], [Status]) VALUES (18, N'hien123', CAST(N'2022-03-02 00:00:00.000' AS DateTime), N'25 man thiện p.hiep phu quận 9', 19, N'', 1)
    SET IDENTITY_INSERT [dbo].[Orders] OFF
    SET IDENTITY_INSERT [dbo].[Products] ON

    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1001, N'Aniseed Syrup', N'1001.jpg', 190, 0, 190, CAST(N'1980-03-29' AS Date), 1, 1000, N'<b><i><font color="#ff0000">EmEditor </font></i>uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, <font color="#999900">you can also troubleshoot your code easily</font>. For example, in JavaScript, you can use the following statement to troubleshoot err</b>ors<img src="/eStore040413/nicImages/anifire.gif">', 1)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1002, N'Change', N'1002.jpg', 19, 0, 19, CAST(N'1982-12-18' AS Date), 1, 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily.<b> <font color="#cc3399">For example</font></b>,<i> in JavaS</i><i>cript, you can use the following statement to troubleshoot errors&nbsp;&nbsp;</i><img src="https://i.imgur.com/9zayofL.gif" width="128">', 4)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1003, N'Aniseed Syrup', N'1003.jpg', 10, 0, 10, CAST(N'1973-06-14' AS Date), 1, 1001, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 5)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1004, N'Chef Anton''s Cajun Seasoning', N'1004.jpg', 22, 0, 22, CAST(N'1976-03-10' AS Date), 1, 1001, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 5)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1005, N'Chef Anton''s Gumbo Mix', N'1005.jpg', 21.35, 5, 21, CAST(N'1978-12-06' AS Date), 1, 1002, N'', 0)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1006, N'Grandma''s Boysenberry Spread', N'1006.jpg', 25, 0, 25, CAST(N'1981-09-03' AS Date), 1, 1001, N'<b style="color: rgb(153, 51, 153);">EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. </b><font size="3" style="" color="#660099"><b style="">For example</b></font><b style="color: rgb(153, 51, 153);">, in JavaScript, you can use the following statement to troubleshoot errors</b>', 0)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1008, N'Northwoods Cranberry Sauce', N'1008.jpg', 40, 0, 40, CAST(N'1972-02-26' AS Date), 0, 1001, NULL, 5)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1011, N'Queso Cabrales', N'1011.jpg', 21, 0, 21, CAST(N'1985-11-28' AS Date), 1, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1012, N'Queso Manchego La Pastora', N'1012.jpg', 38, 10, 38, CAST(N'1988-08-27' AS Date), 1, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 11)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1015, N'Genen Shouyu', N'1015.jpg', 15.5, 0, 15, CAST(N'1991-05-04' AS Date), 1, 1001, NULL, 4)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1016, N'Pavlova', N'1016.jpg', 17.45, 0, 17, CAST(N'1996-11-09' AS Date), 1, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 5)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1019, N'Teatime Chocolate Biscuits', N'1019.jpg', 9.2, 0, 9, CAST(N'2005-02-02' AS Date), 1, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 7)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1020, N'Sir Rodney''s Marmalade', N'1020.jpg', 81, 0, 81, CAST(N'2007-11-01' AS Date), 1, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1021, N'Sir Rodney''s Scones', N'1021.jpg', 10, 8, 10, CAST(N'2010-07-29' AS Date), 1, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1024, N'Guarana¡ Fanta¡stica', N'1024.jpg', 4.5, 0, 4, CAST(N'2008-03-13' AS Date), 0, 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 5)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1025, N'NuNuCa NuaaŸ-Nougat-Creme', N'1025.jpg', 14, 0, 14, CAST(N'2011-07-20' AS Date), 1, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1026, N'Gumbar Gummibarchen', N'1026.jpg', 31.23, 0, 31, CAST(N'2009-04-17' AS Date), 1, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1027, N'Schoggi Schokolade', N'1027.jpg', 43.9, 2, 43, CAST(N'2007-01-14' AS Date), 1, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 3)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1031, N'Gorgonzola Telino', N'1031.jpg', 12.5, 0, 12, CAST(N'2010-10-30' AS Date), 0, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 5)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1032, N'Mascarpone Fabioli', N'1032.jpg', 32, 0, 32, CAST(N'2011-07-30' AS Date), 0, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 3)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1033, N'Geitost', N'1033.png', 2.5, 0, 2, CAST(N'2010-04-29' AS Date), 1, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 2)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1034, N'Sasquatch Ale', N'1034.jpg', 14, 0, 14, CAST(N'2010-07-30' AS Date), 1, 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1035, N'Steeleye Stout', N'1035.jpg', 18, 0, 18, CAST(N'2011-04-25' AS Date), 1, 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1038, N'Cate de Blaye', N'1038.jpg', 263.5, 0, 263, CAST(N'1981-07-12' AS Date), 1, 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 4)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1039, N'Chartreuse verte', N'1039.jpg', 18, 0, 18, CAST(N'1984-04-08' AS Date), 1, 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1043, N'Ipoh Coffee', N'1043.jpg', 46, 0, 46, CAST(N'1980-03-20' AS Date), 1, 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 4)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1044, N'Gula Malacca', N'1044.jpg', 19.45, 0, 19, CAST(N'1970-10-25' AS Date), 1, 1001, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 11)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1047, N'Zaanse koeken', N'1047.jpg', 9.5, 0, 9, CAST(N'1981-11-25' AS Date), 1, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1048, N'Chocolade', N'1048.jpg', 12.75, 0, 12, CAST(N'1984-08-24' AS Date), 0, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 2)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1049, N'Maxilaku', N'1049.jpg', 20, 0, 20, CAST(N'1987-05-23' AS Date), 0, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 2)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1050, N'Valkoinen suklaa', N'1050.jpg', 16.25, 0, 16, CAST(N'1990-02-17' AS Date), 0, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1059, N'Raclette Courdavault', N'1059.jpg', 55, 0, 55, CAST(N'2007-09-22' AS Date), 1, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 6)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1060, N'Camembert Pierrot', N'1060.jpg', 34, 0, 34, CAST(N'2010-06-20' AS Date), 1, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1061, N'Sirop d''aOrable', N'1061.jpg', 28.5, 0, 28, CAST(N'2007-05-29' AS Date), 0, 1001, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1062, N'Tarte au sucre', N'1062.jpg', 49.3, 0, 49, CAST(N'2008-01-21' AS Date), 1, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1063, N'Vegie-spread', N'1063.jpg', 43.9, 0, 43, CAST(N'2007-11-21' AS Date), 1, 1001, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 7)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1065, N'Louisiana Fiery Hot Pepper Sauce', N'1065.jpg', 21.05, 0, 21, CAST(N'2008-05-15' AS Date), 1, 1001, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1066, N'Louisiana Hot Spiced Okra', N'1066.jpg', 17, 0, 17, CAST(N'2011-02-10' AS Date), 1, 1001, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 3)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1067, N'Laughing Lumberjack Lager', N'1067.jpg', 14, 0, 14, CAST(N'2010-12-05' AS Date), 1, 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 3)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1068, N'Scottish Longbreads', N'1068.jpg', 12.5, 0, 12, CAST(N'2009-07-08' AS Date), 0, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 2)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1069, N'Gudbrandsdalsost', N'1069.jpg', 36, 0, 36, CAST(N'2011-03-09' AS Date), 0, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 3)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1070, N'Outback Lager', N'1070.jpg', 15, 0, 15, CAST(N'2009-02-21' AS Date), 1, 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1071, N'Flotemysost', N'1071.jpg', 21.5, 0, 21, CAST(N'1980-09-04' AS Date), 1, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1072, N'Mozzarella di Giovanni', N'1072.jpg', 34.8, 0, 34, CAST(N'1983-06-03' AS Date), 1, 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 18)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1075, N'RhanbrAu Klosterbier', N'1075.jpg', 7.75, 0, 7, CAST(N'1982-10-31' AS Date), 1, 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1076, N'Lakkalik AAri', N'1076.jpg', 18, 0, 18, CAST(N'1970-07-28' AS Date), 1, 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1077, N'Original Frankfurter grane SoaŸe', N'1077.gif', 13, 0, 13, CAST(N'1976-04-04' AS Date), 1, 1001, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 2)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1081, N'Chai', N'1081.jpg', 19, 0, 19, CAST(N'1984-04-04' AS Date), 1, 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 4)
    INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [Available], [CategoryId], [Description], [ViewCount]) VALUES (1086, N'test', N'Trịnh Tuấn Vũ - FPAYHCM.jpg', 100, 10, 10, CAST(N'2022-01-09' AS Date), 1, 1001, N'ko có ', 10)
    SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  StoredProcedure [dbo].[SP_getAllProduct]    Script Date: 3/23/2022 10:58:04 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Partners](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [created_by]     varchar(255),
    [modified_by]    varchar(255),
    [modified_date]  varchar(255),
    [state]          varchar(255),
    [code]           varchar(255),
    [generate_uri]   varchar(255),
    [host]           varchar(255),
    [merchant_id]    varchar(255),
    [name]           nvarchar(50),
    [redirect_proxy] varchar(255),
    [uuid]           varchar(255),
    [created_date]   varchar(255),
    [secret_key]     varchar(255)
    CONSTRAINT [PK_Partners] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]

    GO
    SET IDENTITY_INSERT dbo.Partners ON
    INSERT INTO dbo.Partners (id, created_by, modified_by, modified_date, state, code, generate_uri, host, merchant_id, name, redirect_proxy, uuid, created_date, secret_key) VALUES (3, N'system', N'system', N'2023-04-24T23:44:03.094', N'ACTIVE', N'VNPAY', N'paymentv2/vpcpay.html', N'https://sandbox.vnpayment.vn/', N'NIE1ALRZ', N'Thanh toán trực tuyến VNPAY', N'http://localhost:8081/', N'cae8cc52-76cc-4d29-aef9-10ff4db28c95', N'2023-04-19T22:48:01.956', N'TfTn1GTqvtbBLVecA0XL0/Xa4nvWblS6jVq2wSiKNaOnwiLcLLkA4qzvSm0itgelrOPMRG2po+ikVHRv6s+ZK2mRQ6BSrDRTe+n5Fw==');
INSERT INTO dbo.Partners (id, created_by, modified_by, modified_date, state, code, generate_uri, host, merchant_id, name, redirect_proxy, uuid, created_date, secret_key) VALUES (4, N'system', N'system', N'2023-04-22T10:56:25.325', N'ACTIVE', N'COD', N'null', null, null, N'Thanh toán khi nhận hàng', null, N'483b6105-4f44-4484-85d6-1b53089931bf', N'2023-04-19T22:48:01.956', null);
SET IDENTITY_INSERT dbo.Partners off

create table Transactions
(
    id                       int identity,
    created_by               varchar(255),
    created_date             varchar(255),
    modified_by              varchar(255),
    modified_date            varchar(255),
    state                    varchar(255),
    amount                   varchar(255),
    bank_code                varchar(255),
    bank_transaction_id      varchar(255),
    card_no                  varchar(255),
    card_type                varchar(255),
    client_invoice_id        varchar(255),
    currency_code            varchar(255),
    description              nvarchar(255),
    partner_status           varchar(255),
    partner_transaction_date varchar(255),
    partner_transaction_id   varchar(255),
    status                   varchar(255),
    transaction_id           varchar(255),
    username                 varchar(255),
    partner_id               int,
    location                 varchar(255)
)


    SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROC [dbo].[SP_getAllProduct]
as
begin
SELECT * FROM Products

end

GO
/****** Object:  StoredProcedure [dbo].[sp_insertCategory]    Script Date: 3/23/2022 10:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_insertCategory]
(
@Na nvarchar(50),
@NaVN nvarchar(50)

 ) as
begin
INSERT INTO Categories(Name,NameVN) values(@Na ,@NaVN)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SearchProducts]    Script Date: 3/23/2022 10:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROC [dbo].[SP_SearchProducts]( @MaxPrice Float = 0,
@MinPrice float = 0)
as
begin
SELECT * FROM Products where UnitPrice between @MinPrice and @MaxPrice

end
GO



