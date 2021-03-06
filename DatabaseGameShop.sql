USE [master]
GO
/****** Object:  Database [GameShop]    Script Date: 12/27/2021 1:08:22 PM ******/
CREATE DATABASE [GameShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopGameDB', FILENAME = N'E:\SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ShopGameDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShopGameDB_log', FILENAME = N'E:\SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ShopGameDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [GameShop] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GameShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GameShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GameShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GameShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GameShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GameShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [GameShop] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GameShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GameShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GameShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GameShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GameShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GameShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GameShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GameShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GameShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GameShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GameShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GameShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GameShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GameShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GameShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GameShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GameShop] SET RECOVERY FULL 
GO
ALTER DATABASE [GameShop] SET  MULTI_USER 
GO
ALTER DATABASE [GameShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GameShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GameShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GameShop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [GameShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GameShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [GameShop] SET QUERY_STORE = OFF
GO
USE [GameShop]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/27/2021 1:08:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactUs]    Script Date: 12/27/2021 1:08:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[email] [nvarchar](150) NULL,
	[phone] [varchar](20) NULL,
	[content] [nvarchar](2000) NULL,
 CONSTRAINT [PK_ContactUs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 12/27/2021 1:08:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[GenresId] [int] IDENTITY(1,1) NOT NULL,
	[Genres] [varchar](50) NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[GenresId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Model]    Script Date: 12/27/2021 1:08:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model](
	[ModelId] [int] IDENTITY(1,1) NOT NULL,
	[Model] [varchar](50) NULL,
 CONSTRAINT [PK_Model] PRIMARY KEY CLUSTERED 
(
	[ModelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 12/27/2021 1:08:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewsId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Title] [nvarchar](250) NULL,
	[ShortDescription] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[Content] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[NewsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 12/27/2021 1:08:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderName] [nvarchar](50) NULL,
	[OrderDate] [date] NULL,
	[PaymentType] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[CustomerName] [nvarchar](50) NULL,
	[CustomerPhone] [varchar](15) NULL,
	[CustomerEmail] [nvarchar](100) NULL,
	[CustomerAddress] [nvarchar](250) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 12/27/2021 1:08:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Price] [float] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/27/2021 1:08:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](250) NULL,
	[Image] [nvarchar](250) NULL,
	[Price] [float] NULL,
	[UserId] [int] NULL,
	[CategoryId] [int] NULL,
	[GenresId] [int] NULL,
	[ModelId] [int] NULL,
	[StorageId] [int] NULL,
	[SellStartDate] [datetime] NULL,
	[SellEndDate] [datetime] NULL,
	[IsNew] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Storage]    Script Date: 12/27/2021 1:08:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Storage](
	[StorageId] [int] IDENTITY(1,1) NOT NULL,
	[Storage] [varchar](50) NULL,
 CONSTRAINT [PK_Storage] PRIMARY KEY CLUSTERED 
(
	[StorageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/27/2021 1:08:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [Name]) VALUES (1, N'Action')
INSERT [dbo].[Category] ([CategoryId], [Name]) VALUES (2, N'RPG')
INSERT [dbo].[Category] ([CategoryId], [Name]) VALUES (3, N'Strategy')
INSERT [dbo].[Category] ([CategoryId], [Name]) VALUES (6, N'Adventure & Casual')
INSERT [dbo].[Category] ([CategoryId], [Name]) VALUES (7, N'Simulation')
INSERT [dbo].[Category] ([CategoryId], [Name]) VALUES (8, N'Sports & Racing')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Genres] ON 

INSERT [dbo].[Genres] ([GenresId], [Genres]) VALUES (1, N'Bestseller')
INSERT [dbo].[Genres] ([GenresId], [Genres]) VALUES (2, N'New & Emerging')
INSERT [dbo].[Genres] ([GenresId], [Genres]) VALUES (3, N'Current promotion')
INSERT [dbo].[Genres] ([GenresId], [Genres]) VALUES (4, N'Update')
INSERT [dbo].[Genres] ([GenresId], [Genres]) VALUES (5, N'Popular and Coming Soon')
SET IDENTITY_INSERT [dbo].[Genres] OFF
GO
SET IDENTITY_INSERT [dbo].[Model] ON 

INSERT [dbo].[Model] ([ModelId], [Model]) VALUES (1, N'New')
INSERT [dbo].[Model] ([ModelId], [Model]) VALUES (2, N'Old')
SET IDENTITY_INSERT [dbo].[Model] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (2, 1, N'My Testing First', N'This is the short description first', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (3, 1, N'My Testing 2', N'This is the short description 2', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (4, 1, N'My Testing 3', N'This is the short description 3', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (5, 1, N'My Testing 4', N'This is the short description 4', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (6, 1, N'My Testing 5', N'This is the short description 5', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (7, 1, N'My Testing 6', N'This is the short description 6', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (8, 1, N'My Testing 7', N'This is the short description 7', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (9, 1, N'My Testing 8', N'This is the short description 8', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (10, 1, N'My Testing 9', N'This is the short description 9', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (11, 1, N'My Testing 10', N'This is the short description 10', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (12, 1, N'My Testing 11', N'This is the short description 11', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (13, 1, N'My Testing 12', N'This is the short description 12', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (14, 1, N'My Testing 13', N'This is the short description 13', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (15, 1, N'My Testing 14', N'This is the short description 14', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (16, 1, N'My Testing 15', N'This is the short description 15', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (17, 1, N'My Testing 16', N'This is the short description 16', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (18, 1, N'My Testing 17', N'This is the short description 17', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (19, 1, N'My Testing 18', N'This is the short description 18', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (20, 1, N'My Testing 19', N'This is the short description 19', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (21, 1, N'My Testing 20', N'This is the short description 20', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (22, 1, N'My Testing 21', N'This is the short description 21', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[News] ([NewsId], [UserId], [Title], [ShortDescription], [Image], [Content], [CreatedDate], [Status]) VALUES (23, 1, N'My Testing 22', N'This is the short description 22', N'51101.jpg', N'Content should be here. Will be updated later', CAST(N'2015-11-11T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderName], [OrderDate], [PaymentType], [Status], [CustomerName], [CustomerPhone], [CustomerEmail], [CustomerAddress]) VALUES (11, N'', CAST(N'2021-12-07' AS Date), N'Cash', N'Processing', N'viet', N'0928528369', N'tomviet741@gmail.com', N'138D/94 khu phố 4 phường Trung Mỹ Tây')
INSERT [dbo].[Order] ([OrderID], [OrderName], [OrderDate], [PaymentType], [Status], [CustomerName], [CustomerPhone], [CustomerEmail], [CustomerAddress]) VALUES (12, NULL, CAST(N'2021-12-16' AS Date), N'Cash', N'Processing', N'VIỆT', N'0938598541', N'1mail.com', N'138D/94 khu phố 4 phường Trung Mỹ Tây')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (11, 4, 649, 4)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (11, 6, 649, 1)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (12, 59, 445, 1)
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (1, N'GTFO', N'GTFO.png', 232, 1, 1, 1, 1, 1, CAST(N'2015-09-09T00:00:00.000' AS DateTime), CAST(N'2016-09-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (2, N'Chorus', N'Chorus.png', 310, 1, 1, 2, 1, 1, CAST(N'2014-09-09T00:00:00.000' AS DateTime), CAST(N'2015-09-09T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (3, N'This Land Is My Land', N'This Land Is My Land.png', 310, 1, 1, 3, 1, 1, CAST(N'2015-09-09T00:00:00.000' AS DateTime), CAST(N'2015-09-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (4, N'Dark Souls III', N'dark-souls-3.png', 977, 1, 1, 3, 2, 1, CAST(N'2015-09-09T00:00:00.000' AS DateTime), CAST(N'2015-09-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (5, N'World War Z: Aftermath', N'World-War-Z-Aftermath.png', 299, 1, 1, 3, 1, 1, CAST(N'2015-09-09T00:00:00.000' AS DateTime), CAST(N'2015-09-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (6, N'Cyberpunk 2077', N'Cyberdunk.jpg', 277, 1, 2, 3, 1, 1, CAST(N'2015-09-09T00:00:00.000' AS DateTime), CAST(N'2015-09-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (7, N'Red Dead Redemption 2', N'Red Dead Redemption 2.jpg', 690, 1, 2, 3, 1, 1, CAST(N'2015-09-09T00:00:00.000' AS DateTime), CAST(N'2015-09-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (37, N'DelayedSun', N'DelayedSun.png', 103, 1, 2, 1, 2, 1, CAST(N'2015-09-09T00:00:00.000' AS DateTime), CAST(N'2015-09-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (38, N'Project Nightmares Case 36', N'Project Nightmares Case 36.jpg', 198, 1, 2, 1, 2, 1, CAST(N'2015-09-09T00:00:00.000' AS DateTime), CAST(N'2015-09-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (39, N'The Elder Scrolls® Online
', N'The Elder Scrolls Online.jpg', 135, 1, 2, 1, 2, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-09-05T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (40, N'Crusader Kings III', N'Crusader Kings III.jpg', 312, 1, 3, 1, 2, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-09-05T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (41, N'The Legend of Nayuta', N'The Legend of Nayuta.jfif', 733, 1, 3, 1, 1, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-09-05T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (42, N'A Total War Saga TROY', N'A Total War Saga TROY.jpg', 558, 1, 3, 1, 1, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (43, N'This Is the President', N'This Is the President.jfif', 145, 1, 3, 1, 2, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (44, N'Far Cry 6', N'Far Cry 6.jpeg', 356, 1, 3, 1, 1, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (45, N'Alan Wake 2', N'Alan Wake 2.png', 9999, 1, 6, 1, 1, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (46, N'Battlefield 2042', N'Battlefield 2042.png', 6049, 1, 6, 1, 1, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (47, N'SpellForce 3 Reforced', N'SpellForce 3 Reforced.jfif', 3089, 1, 6, 1, 1, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (48, N'Shadow Tactics  Aiko''s Choice', N'Shadow Tactics  Aiko''s Choice.jfif', 1125, 1, 6, 1, 1, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (49, N'Dead by Daylight', N'Dead by Daylight.jpg', 2262, 1, 6, 1, 1, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (50, N'Star Trek Resurgence', N'Star Trek Resurgence.jfif', 3256, 1, 6, 1, 1, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (51, N'Blasphemous', N'Blasphemous.jfif', 959, 1, 7, 1, 1, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (52, N'NBA 2K21', N'NBA 2K21.jfif', 365, 1, 7, 1, 1, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (53, N'Farming Simulator 19', N'Farming Simulator 22.jfif', 444, 1, 7, 1, 1, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (54, N'Satisfactory', N'Satisfactory.jpeg', 554, 1, 7, 1, 1, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (55, N'theHunter', N'theHunter.jfif', 662, 1, 8, 1, 1, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (56, N'ARK Survival Evolved', N'ARK Survival.jpg', 585, 1, 8, 1, 1, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (57, N'Borderlands 3', N'Borderlands 3.jfif', 696, 1, 8, 1, 1, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (58, N'Godfall Challenger Edition', N'Godfall Challenger Edition.jfif', 564, 1, 8, 1, 1, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Image], [Price], [UserId], [CategoryId], [GenresId], [ModelId], [StorageId], [SellStartDate], [SellEndDate], [IsNew]) VALUES (59, N'Star Trek Resurgence', N'Star Trek Resurgence.jfif', 445, 1, 8, 1, 1, 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Storage] ON 

INSERT [dbo].[Storage] ([StorageId], [Storage]) VALUES (1, N'Yes')
INSERT [dbo].[Storage] ([StorageId], [Storage]) VALUES (2, N'No')
SET IDENTITY_INSERT [dbo].[Storage] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [Username], [Password]) VALUES (1, N'Viet', N'123')
INSERT [dbo].[User] ([UserId], [Username], [Password]) VALUES (2, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_User]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Color] FOREIGN KEY([GenresId])
REFERENCES [dbo].[Genres] ([GenresId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Color]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Model] FOREIGN KEY([ModelId])
REFERENCES [dbo].[Model] ([ModelId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Model]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Storage] FOREIGN KEY([StorageId])
REFERENCES [dbo].[Storage] ([StorageId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Storage]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_User]
GO
USE [master]
GO
ALTER DATABASE [GameShop] SET  READ_WRITE 
GO
