USE [master]
GO
/****** Object:  Database [Product_management_DB]    Script Date: 27-10-2024 10:26:36 ******/
CREATE DATABASE [Product_management_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Product_management_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019WEB\MSSQL\DATA\Product_management_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Product_management_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019WEB\MSSQL\DATA\Product_management_DB_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Product_management_DB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Product_management_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Product_management_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Product_management_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Product_management_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Product_management_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Product_management_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Product_management_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Product_management_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Product_management_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Product_management_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Product_management_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Product_management_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Product_management_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Product_management_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Product_management_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Product_management_DB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Product_management_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Product_management_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Product_management_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Product_management_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Product_management_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Product_management_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Product_management_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Product_management_DB] SET RECOVERY FULL 
GO
ALTER DATABASE [Product_management_DB] SET  MULTI_USER 
GO
ALTER DATABASE [Product_management_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Product_management_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Product_management_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Product_management_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Product_management_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Product_management_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Product_management_DB] SET QUERY_STORE = OFF
GO
USE [Product_management_DB]
GO
/****** Object:  Table [dbo].[TblAddProducts]    Script Date: 27-10-2024 10:26:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblAddProducts](
	[Product_id] [int] IDENTITY(1,1) NOT NULL,
	[Brand_Name] [varchar](500) NULL,
	[Product_Name] [varchar](500) NULL,
	[Product_code] [varchar](50) NOT NULL,
	[Category] [int] NULL,
	[sub_category] [int] NULL,
	[Product_HSN_ode] [varchar](100) NULL,
	[Product_serial_No] [varchar](100) NULL,
	[Product_details] [varchar](max) NULL,
	[Product_varcode] [varchar](100) NULL,
	[CreateBy] [varchar](max) NULL,
	[Add_Date] [datetime] NULL,
	[Update_by] [varchar](max) NULL,
	[UpdateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCatogeryMaster]    Script Date: 27-10-2024 10:26:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCatogeryMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CatogeryName] [varchar](100) NULL,
	[CatogeryDescription] [varchar](200) NULL,
	[Status] [bit] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCustomerMaster]    Script Date: 27-10-2024 10:26:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCustomerMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Customerid] [varchar](30) NOT NULL,
	[Name] [varchar](300) NOT NULL,
	[Mobil_No] [varchar](15) NOT NULL,
	[Email_Id] [varchar](300) NULL,
	[status] [varchar](100) NULL,
	[CreateBy] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblDistrictMAster]    Script Date: 27-10-2024 10:26:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDistrictMAster](
	[District_Id] [int] IDENTITY(1,1) NOT NULL,
	[District_Name] [varchar](200) NULL,
	[StateId] [int] NULL,
	[CreateBy] [varchar](10) NULL,
	[CreateOn] [datetime] NULL,
	[UpdateBy] [varchar](10) NULL,
	[UpdateOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[District_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblOrderProduct]    Script Date: 27-10-2024 10:26:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOrderProduct](
	[Order_Id] [varchar](50) NOT NULL,
	[StockId] [varchar](50) NULL,
	[Qunatity] [int] NULL,
	[Order_By] [varchar](30) NULL,
	[PRICE] [decimal](18, 4) NULL,
	[Total_Amount] [decimal](18, 4) NULL,
	[PaymentIamge] [varchar](1000) NULL,
	[Status] [varchar](50) NULL,
	[Order_Date] [datetime] NULL,
	[UpdateBy] [varchar](20) NULL,
	[UpdateDate] [datetime] NULL,
	[Paymentmode] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblProductImages]    Script Date: 27-10-2024 10:26:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblProductImages](
	[Iamgeid] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[Product_Image1] [varchar](1000) NULL,
	[Product_Image2] [varchar](1000) NULL,
	[Product_Image3] [varchar](1000) NULL,
	[Product_Image4] [varchar](1000) NULL,
	[Product_Image5] [varchar](1000) NULL,
	[Product_Image6] [varchar](1000) NULL,
	[CreateBy] [varchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [varchar](100) NULL,
	[Updatedate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Iamgeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSalllerStock]    Script Date: 27-10-2024 10:26:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSalllerStock](
	[SellerStockid] [int] IDENTITY(1,1) NOT NULL,
	[SellerID] [varchar](50) NOT NULL,
	[Stockid] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 4) NULL,
	[PurchaseDate] [date] NULL,
	[Sell_Price] [decimal](18, 4) NULL,
	[Sdiscount] [decimal](18, 4) NULL,
	[DisCountType] [int] NULL,
	[MRP] [decimal](18, 4) NULL,
PRIMARY KEY CLUSTERED 
(
	[SellerStockid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSellMaster]    Script Date: 27-10-2024 10:26:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSellMaster](
	[Sell_id] [int] IDENTITY(1,1) NOT NULL,
	[Sell_Quentity] [int] NULL,
	[Customer_id] [varchar](100) NULL,
	[Product_Code] [varchar](30) NULL,
	[Cstockid] [int] NULL,
	[status] [varchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[updateDate] [datetime] NULL,
	[SellBy] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sell_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSizeMaster]    Script Date: 27-10-2024 10:26:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSizeMaster](
	[SizeID] [int] IDENTITY(1,1) NOT NULL,
	[SizeName] [varchar](50) NULL,
	[Size_Description] [varchar](500) NULL,
	[status] [int] NULL,
	[CreateBy] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL,
	[UpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblStateMaster]    Script Date: 27-10-2024 10:26:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblStateMaster](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[State_name] [varchar](200) NULL,
	[CreateBy] [varchar](10) NULL,
	[CreateOn] [datetime] NULL,
	[UpdateBy] [varchar](10) NULL,
	[UpdateOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStockManage]    Script Date: 27-10-2024 10:26:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStockManage](
	[ProductCode] [varchar](50) NULL,
	[ProductName] [varchar](50) NULL,
	[BrandName] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[SizeID] [int] NULL,
	[DistCountType] [varchar](50) NULL,
	[Discount] [decimal](18, 4) NULL,
	[ProductMRP] [decimal](18, 4) NULL,
	[ProductPrice] [decimal](18, 4) NULL,
	[SellPrice] [decimal](18, 4) NULL,
	[MFGDate] [date] NULL,
	[ExpriyDate] [date] NULL,
	[CreateBy] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[TaxTypeId] [int] NULL,
	[StId] [int] IDENTITY(1,1) NOT NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSubCatogeryMaster]    Script Date: 27-10-2024 10:26:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSubCatogeryMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Categoryid] [int] NULL,
	[SubCatogeryName] [varchar](100) NULL,
	[SubCatogeryDescription] [varchar](200) NULL,
	[Status] [bit] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTax]    Script Date: 27-10-2024 10:26:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTax](
	[TaxId] [int] IDENTITY(1,1) NOT NULL,
	[CGST] [decimal](18, 4) NULL,
	[SGST] [decimal](18, 4) NULL,
	[IGST] [decimal](18, 4) NULL,
	[CreateBy] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL,
	[UpdateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TaxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblUSerMaster]    Script Date: 27-10-2024 10:26:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblUSerMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](30) NOT NULL,
	[UserName] [varchar](200) NULL,
	[Mobile_No] [varchar](15) NOT NULL,
	[Email_id] [varchar](300) NOT NULL,
	[Company_Name] [varchar](400) NULL,
	[Password] [varchar](20) NULL,
	[Status] [int] NULL,
	[User_Type] [int] NULL,
	[Address] [varchar](1000) NULL,
	[Aadhar_No] [varchar](12) NULL,
	[Pancard_No] [varchar](10) NULL,
	[Gstin_no] [varchar](50) NULL,
	[User_Image] [varchar](500) NULL,
	[Aadhar_image] [varchar](500) NULL,
	[Pancard_image] [varchar](500) NULL,
	[Store_Name] [varchar](400) NULL,
	[Branch_details] [varchar](max) NULL,
	[Dob] [datetime] NULL,
	[ParentId] [varchar](30) NULL,
	[Create_On] [datetime] NULL,
	[UpdateBy] [varchar](30) NULL,
	[Update_On] [datetime] NULL,
	[State] [varchar](200) NULL,
	[distric] [varchar](200) NULL,
	[city] [varchar](200) NULL,
	[Adhar_back_image] [varchar](400) NULL,
	[Gender] [varchar](100) NULL,
	[Pin_Code] [int] NULL,
	[Company_Logo] [varchar](300) NULL,
	[InstagramLink] [varchar](max) NULL,
	[Facebooklink] [varchar](max) NULL,
	[TwiterLink] [varchar](max) NULL,
 CONSTRAINT [userkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblUserMasterType]    Script Date: 27-10-2024 10:26:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblUserMasterType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserType_Name] [varchar](200) NULL,
	[Create_date] [datetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [usermastekey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblAddProducts] ON 

INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (1, N'Vivo ', N'Vivo 2tx ', N'wts0509202340937', 1, 1, N'7451678', N'57529784', N'fdh', N'454', N'0', CAST(N'2023-09-05T16:34:00.167' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (2, N'Vivo ', N'Vivo 2tx ', N'wts0509202334405', 1, 1, N'7451678', N'57529784', N'fdh', N'454', N'0', CAST(N'2023-09-05T16:36:51.520' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (4, N'Pro', N'Redmi', N'wts0509202395193', 1, 1, N'938', N'874', N'best', N'', N'0', CAST(N'2023-09-05T17:12:45.543' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (5, N'', N'', N'wts0509202386170', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:12:49.140' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (6, N'', N'', N'wts0509202350253', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:12:55.657' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (7, N'', N'', N'wts0509202390920', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:14:38.390' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (8, N'', N'', N'wts0509202348646', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:14:56.967' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (9, N'Redmi', N'Redmi 6', N'wts0509202351923', 1, 1, N'4654141', N'54851', N'best', N'', N'0', CAST(N'2023-09-05T17:35:46.713' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (10, N'', N'', N'wts0509202357764', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:36:26.870' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (11, N'', N'', N'wts0509202390113', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:37:14.953' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (12, N'', N'', N'wts0509202379935', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:37:38.363' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (13, N'', N'', N'wts0509202383226', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:38:17.020' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (14, N'', N'', N'wts0509202332806', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:38:36.027' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (15, N'', N'', N'wts0509202318569', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:39:46.683' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (16, N'', N'', N'wts0509202347835', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:40:06.243' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (17, N'', N'', N'wts0509202390831', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:40:08.680' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (18, N'', N'', N'wts0509202394910', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:40:54.343' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (19, N'', N'', N'wts0509202393156', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:52:30.973' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (20, N'', N'', N'wts0509202355196', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:54:02.520' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (21, N'', N'', N'wts0509202335390', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:55:32.360' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (22, N'', N'', N'wts0509202399633', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:56:16.350' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (23, N'', N'', N'wts0509202388678', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:56:47.540' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (24, N'', N'', N'wts0509202387404', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:58:03.673' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (25, N'', N'', N'wts0509202331833', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:59:02.023' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (26, N'', N'', N'wts0509202377498', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:59:26.463' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (27, N'', N'', N'wts0509202326347', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T18:00:26.520' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (28, N'', N'', N'wts0509202356537', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T18:01:15.997' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (29, N'', N'', N'wts0509202358352', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T18:24:44.720' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (30, N'', N'', N'wts0509202397446', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T18:26:27.000' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (31, N'', N'', N'wts0509202352154', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T18:27:06.263' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (32, N'', N'', N'wts0509202322546', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T18:27:30.687' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (33, N'', N'', N'wts0509202355193', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T18:28:18.490' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (34, N'', N'', N'wts0509202393257', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T18:29:25.110' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (35, N'', N'', N'wts0509202313898', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-05T18:29:55.147' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (36, N'', N'', N'wts0609202365621', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:33:39.950' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (37, N'', N'', N'wts0609202356303', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:41:24.170' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (39, N'', N'', N'wts0609202337979', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:41:47.920' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (40, N'', N'', N'wts0609202392277', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:42:05.717' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (41, N'', N'', N'wts0609202345873', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:42:21.130' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (42, N'', N'', N'wts0609202334174', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:48.613' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (43, N'', N'', N'wts0609202381583', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:51.320' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (44, N'', N'', N'wts0609202389438', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:52.450' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (45, N'', N'', N'wts0609202380996', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:53.143' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (46, N'', N'', N'wts0609202364705', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:53.903' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (47, N'', N'', N'wts0609202365980', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:54.670' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (48, N'', N'', N'wts0609202332122', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:55.393' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (49, N'', N'', N'wts0609202397982', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:56.207' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (50, N'', N'', N'wts0609202317107', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:56.923' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (51, N'', N'', N'wts0609202387974', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:57.627' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (52, N'', N'', N'wts0609202356957', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:58.393' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (53, N'', N'', N'wts0609202363240', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:59.057' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (54, N'', N'', N'wts0609202311816', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:59.737' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (55, N'', N'', N'wts0609202344815', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:55:28.070' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (56, N'', N'', N'wts0609202384076', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:59:11.323' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (57, N'', N'', N'wts0609202361212', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:59:12.850' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (58, N'', N'', N'wts0609202324753', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:36:44.437' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (59, N'', N'', N'wts0609202360414', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:39:44.057' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (60, N'', N'', N'wts0609202334175', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:43:08.063' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (61, N'', N'', N'wts0609202381149', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:43:51.717' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (62, N'', N'', N'wts0609202337233', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:44:36.313' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (63, N'', N'', N'wts0609202337151', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:44:47.897' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (64, N'', N'', N'wts0609202310291', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:45:09.133' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (65, N'', N'', N'wts0609202385837', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:46:08.510' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (66, N'', N'', N'wts0609202358173', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:46:20.290' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (67, N'', N'', N'wts0609202327332', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:49:49.840' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (68, N'', N'', N'wts0609202335288', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:49:55.420' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (69, N'', N'', N'wts0609202399891', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:50:11.590' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (70, N'', N'', N'wts0609202311194', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:50:29.563' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (71, N'', N'', N'wts0609202378340', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:50:45.913' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (72, N'', N'', N'wts0609202346033', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:53:03.713' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (73, N'', N'', N'wts0609202359710', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:53:29.017' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (74, N'', N'', N'wts0609202357637', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T11:02:16.023' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (75, N'', N'', N'wts0609202311927', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T11:02:35.223' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (76, N'', N'', N'wts0609202391647', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T11:02:54.200' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (77, N'', N'', N'wts0609202370374', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T11:03:12.297' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (78, N'', N'', N'wts0609202318773', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T11:03:33.770' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (79, N'', N'', N'wts0609202396821', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T11:05:04.747' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (80, N'', N'', N'wts0609202353265', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T11:05:21.390' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (81, N'', N'', N'wts0609202310506', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T11:07:03.217' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (82, N'', N'', N'wts0609202330946', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T11:07:21.733' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (83, N'', N'', N'wts0609202373555', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T11:07:34.853' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (84, N'', N'', N'wts0609202331008', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T12:37:10.180' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (85, N'', N'', N'wts0609202366357', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T12:37:21.387' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (86, N'', N'', N'wts0609202390750', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T12:38:03.930' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (87, N'', N'', N'wts0609202319956', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T12:51:40.603' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (88, N'', N'', N'wts0609202388764', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T12:51:47.000' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (89, N'', N'', N'wts0609202398195', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T12:54:22.507' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (90, N'', N'', N'wts0609202323714', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T12:57:03.307' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (91, N'', N'', N'wts0609202323752', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T12:57:35.380' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (92, N'', N'', N'wts0609202353153', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T12:58:17.803' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (93, N'', N'', N'wts0609202375513', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T12:59:23.353' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (94, N'', N'', N'wts0609202356925', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-06T13:00:05.893' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (95, N'Vivo ', N'', N'wts0709202399948', 1, 1, N'7451678', N'57529784', N'd', N'454', N'0', CAST(N'2023-09-07T11:53:24.330' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (96, N'', N'', N'wts0709202316818', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-07T12:03:36.063' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (97, N'redmi ', N'Redmi  6', N'wts0809202397044', 1, 1, N'64963', N'15415', N'best', N'5346356', N'0', CAST(N'2023-09-08T14:12:52.450' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (98, N'redmi ', N'Redmi  6', N'wts0809202339802', 1, 1, N'64963', N'15415', N'gyu', N'5346356', N'0', CAST(N'2023-09-08T14:26:32.677' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (99, N'redmi ', N'Redmi  6', N'wts0809202370119', 1, 1, N'64963', N'15415', N'b', N'5346356', N'0', CAST(N'2023-09-08T14:29:00.697' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (100, N'', N'', N'wts0809202387135', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-08T14:48:31.250' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (101, N'', N'', N'wts0809202333673', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-08T14:50:10.670' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (102, N'', N'', N'wts0809202399615', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-08T14:51:16.817' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (103, N'', N'', N'wts0809202332588', 1, 1, N'', N'', N'', N'', N'0', CAST(N'2023-09-08T14:56:27.350' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (104, N'Redmi', N'Redmi 6', N'wts1309202394794', 1, 1, N'4654141', N'184145562', N'dfbfcngfhg', N'15135', N'0', CAST(N'2023-09-13T09:51:49.060' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (105, N'Redmi', N'Redmi 6', N'wts1309202320311', 1, 1, N'4654141', N'184145562', N'dfbfcngfhg', N'15135', N'0', CAST(N'2023-09-13T09:53:13.023' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (106, N'Redmi', N'Redmi 6', N'wts1309202322573', 1, 1, N'4654141', N'5451', N'dfghfdhte', N'15135', N'0', CAST(N'2023-09-13T09:54:54.177' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (107, N'Redmi', N'Redmi 6', N'wts1309202373422', 1, 1, N'4654141', N'5451', N'best ', N'', N'0', CAST(N'2023-09-13T10:09:57.590' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (108, N'Redmi', N'Redmi 6', N'wts1309202372876', 1, 1, N'4654141', N'54851', N'best ', N'15135', N'0', CAST(N'2023-09-13T10:18:16.613' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (109, N'Pro', N'Redmi', N'wts1309202381903', 1, 1, N'938', N'874', N'best product ', N'5452416', N'0', CAST(N'2023-09-13T13:11:10.353' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (111, N'Pro', N'Redmi', N'wts1309202387817', 1, 1, N'938', N'874', N'b', N'5452416', N'0', CAST(N'2023-09-13T13:18:53.323' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (112, N'rteer', N'yy5r', N'wts1609202382011', 1, 1, N'544', N'2545254', N'dfsdfsd44e', N'545', N'0', CAST(N'2023-09-16T17:56:06.520' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (113, N'rteer', N'yy5r', N'wts1609202371145', 1, 1, N'544', N'2545254', N'dfsdfsd44e', N'545', N'0', CAST(N'2023-09-16T17:56:27.320' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (114, N'rteer', N'yy5r', N'wts1609202393846', 1, 1, N'544', N'2545254', N'dfsdfsd44e', N'545', N'0', CAST(N'2023-09-16T17:56:48.913' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (115, N'rteer', N'yy5r', N'wts1609202386307', 1, 1, N'544', N'2545254', N'dfsdfsd44e', N'545', N'0', CAST(N'2023-09-16T17:57:15.487' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (116, N'rteer', N'yy5r', N'wts1609202312581', 1, 1, N'544', N'2545254', N'dfsdfsd44e', N'545', N'0', CAST(N'2023-09-16T17:58:11.220' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (117, N'Redmi ', N'Redmi 6', N'wts1609202320017', 1, 1, N'46541411', N'54851', N'best', N'15135', N'0', CAST(N'2023-09-16T18:06:51.070' AS DateTime), NULL, NULL)
INSERT [dbo].[TblAddProducts] ([Product_id], [Brand_Name], [Product_Name], [Product_code], [Category], [sub_category], [Product_HSN_ode], [Product_serial_No], [Product_details], [Product_varcode], [CreateBy], [Add_Date], [Update_by], [UpdateDate]) VALUES (118, N'Redmi', N'Redmi 6', N'wts1609202344076', 1, 1, N'4654141', N'54851', N'ytuj', N'15135', N'0', CAST(N'2023-09-16T18:08:08.340' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblAddProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[TblCatogeryMaster] ON 

INSERT [dbo].[TblCatogeryMaster] ([Id], [CatogeryName], [CatogeryDescription], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, N'Electronic', N'best', 1, 1, CAST(N'2023-09-07T18:30:14.513' AS DateTime), NULL, NULL)
INSERT [dbo].[TblCatogeryMaster] ([Id], [CatogeryName], [CatogeryDescription], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, N'Electronics', N'best', 1, 0, CAST(N'2023-09-08T10:11:57.917' AS DateTime), NULL, NULL)
INSERT [dbo].[TblCatogeryMaster] ([Id], [CatogeryName], [CatogeryDescription], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, N'Cloth', N'best', 1, 0, CAST(N'2023-09-08T11:53:18.033' AS DateTime), NULL, NULL)
INSERT [dbo].[TblCatogeryMaster] ([Id], [CatogeryName], [CatogeryDescription], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, N'Cloth', N'b', 1, 0, CAST(N'2023-09-08T11:58:07.840' AS DateTime), NULL, NULL)
INSERT [dbo].[TblCatogeryMaster] ([Id], [CatogeryName], [CatogeryDescription], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, N'Electronics1', N'', 1, 0, CAST(N'2023-09-08T12:01:52.803' AS DateTime), NULL, NULL)
INSERT [dbo].[TblCatogeryMaster] ([Id], [CatogeryName], [CatogeryDescription], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, N'Electronics2', N'', 1, 0, CAST(N'2023-09-08T12:22:42.490' AS DateTime), NULL, NULL)
INSERT [dbo].[TblCatogeryMaster] ([Id], [CatogeryName], [CatogeryDescription], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, N'Electrical', N'best', 1, 0, CAST(N'2023-09-16T17:49:04.187' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblCatogeryMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[TblCustomerMaster] ON 

INSERT [dbo].[TblCustomerMaster] ([id], [Customerid], [Name], [Mobil_No], [Email_Id], [status], [CreateBy], [CreateDate], [UpdateBy]) VALUES (1, N'mobile no', N'pankaj', N'mobile no', NULL, N'1', N'1809202384090', CAST(N'2023-09-30T17:37:12.820' AS DateTime), NULL)
INSERT [dbo].[TblCustomerMaster] ([id], [Customerid], [Name], [Mobil_No], [Email_Id], [status], [CreateBy], [CreateDate], [UpdateBy]) VALUES (2, N'7459093390', N'pankaj', N'7459093390', NULL, N'1', N'1809202384090', CAST(N'2023-09-30T17:54:43.237' AS DateTime), NULL)
INSERT [dbo].[TblCustomerMaster] ([id], [Customerid], [Name], [Mobil_No], [Email_Id], [status], [CreateBy], [CreateDate], [UpdateBy]) VALUES (3, N'7459226563', N'pankaj', N'7459226563', NULL, N'1', N'1809202384090', CAST(N'2023-10-03T11:32:58.573' AS DateTime), NULL)
INSERT [dbo].[TblCustomerMaster] ([id], [Customerid], [Name], [Mobil_No], [Email_Id], [status], [CreateBy], [CreateDate], [UpdateBy]) VALUES (4, N'gfd', N'hffg', N'gfd', NULL, N'1', N'0310202389714', CAST(N'2023-10-09T13:05:11.370' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[TblCustomerMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[TblDistrictMAster] ON 

INSERT [dbo].[TblDistrictMAster] ([District_Id], [District_Name], [StateId], [CreateBy], [CreateOn], [UpdateBy], [UpdateOn]) VALUES (1, N'Jalaun', 1, N'1', CAST(N'2023-09-11T13:31:27.550' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblDistrictMAster] OFF
GO
INSERT [dbo].[TblOrderProduct] ([Order_Id], [StockId], [Qunatity], [Order_By], [PRICE], [Total_Amount], [PaymentIamge], [Status], [Order_Date], [UpdateBy], [UpdateDate], [Paymentmode]) VALUES (N'0310202336949', N'6', 5, N'0310202389714', CAST(780.0000 AS Decimal(18, 4)), CAST(780.0000 AS Decimal(18, 4)), N'', N'Approve', CAST(N'2023-10-03T15:26:18.260' AS DateTime), N'0310202389714', CAST(N'2023-10-03T15:27:05.177' AS DateTime), N'Offline Mode')
INSERT [dbo].[TblOrderProduct] ([Order_Id], [StockId], [Qunatity], [Order_By], [PRICE], [Total_Amount], [PaymentIamge], [Status], [Order_Date], [UpdateBy], [UpdateDate], [Paymentmode]) VALUES (N'0310202356511', N'2', 4, N'0310202389714', CAST(194.4000 AS Decimal(18, 4)), CAST(777.6000 AS Decimal(18, 4)), N'', N'Approve', CAST(N'2023-10-03T13:13:11.000' AS DateTime), N'1109202336095', CAST(N'2023-10-03T14:59:38.373' AS DateTime), N'Select Payment Mode')
INSERT [dbo].[TblOrderProduct] ([Order_Id], [StockId], [Qunatity], [Order_By], [PRICE], [Total_Amount], [PaymentIamge], [Status], [Order_Date], [UpdateBy], [UpdateDate], [Paymentmode]) VALUES (N'0310202382814', N'2', 5, N'0310202389714', CAST(194.4000 AS Decimal(18, 4)), CAST(972.0000 AS Decimal(18, 4)), N'', N'Approve', CAST(N'2023-10-03T13:22:51.667' AS DateTime), N'0310202389714', CAST(N'2023-10-03T15:22:15.347' AS DateTime), N'Offline Mode')
INSERT [dbo].[TblOrderProduct] ([Order_Id], [StockId], [Qunatity], [Order_By], [PRICE], [Total_Amount], [PaymentIamge], [Status], [Order_Date], [UpdateBy], [UpdateDate], [Paymentmode]) VALUES (N'0310202398805', N'2', 5, N'0310202389714', CAST(194.4000 AS Decimal(18, 4)), CAST(972.0000 AS Decimal(18, 4)), N'', N'Reject', CAST(N'2023-10-03T13:19:31.773' AS DateTime), N'1109202336095', CAST(N'2023-10-03T15:27:35.050' AS DateTime), N'Offline Mode')
INSERT [dbo].[TblOrderProduct] ([Order_Id], [StockId], [Qunatity], [Order_By], [PRICE], [Total_Amount], [PaymentIamge], [Status], [Order_Date], [UpdateBy], [UpdateDate], [Paymentmode]) VALUES (N'2509202340072', N'2', 5, N'1809202384091', CAST(194.4000 AS Decimal(18, 4)), CAST(194.4000 AS Decimal(18, 4)), N'', N'Approve', CAST(N'2023-09-25T16:39:08.820' AS DateTime), N'1109202336095', CAST(N'2023-09-27T14:53:32.750' AS DateTime), NULL)
INSERT [dbo].[TblOrderProduct] ([Order_Id], [StockId], [Qunatity], [Order_By], [PRICE], [Total_Amount], [PaymentIamge], [Status], [Order_Date], [UpdateBy], [UpdateDate], [Paymentmode]) VALUES (N'2509202352933', N'2', 5, N'1809202384090', CAST(194.4000 AS Decimal(18, 4)), CAST(972.0000 AS Decimal(18, 4)), N'~/AdminModule/ImagePayment/bbps (1).jpg', N'Approve', CAST(N'2023-09-25T16:37:52.930' AS DateTime), N'1109202336095', CAST(N'2023-09-27T14:54:38.227' AS DateTime), NULL)
INSERT [dbo].[TblOrderProduct] ([Order_Id], [StockId], [Qunatity], [Order_By], [PRICE], [Total_Amount], [PaymentIamge], [Status], [Order_Date], [UpdateBy], [UpdateDate], [Paymentmode]) VALUES (N'2509202396757', N'3', 5, N'1809202384090', CAST(194.4000 AS Decimal(18, 4)), CAST(194.4000 AS Decimal(18, 4)), N'', N'Approve', CAST(N'2023-09-25T16:39:51.363' AS DateTime), N'1109202336095', CAST(N'2023-09-27T14:55:22.503' AS DateTime), NULL)
INSERT [dbo].[TblOrderProduct] ([Order_Id], [StockId], [Qunatity], [Order_By], [PRICE], [Total_Amount], [PaymentIamge], [Status], [Order_Date], [UpdateBy], [UpdateDate], [Paymentmode]) VALUES (N'2609202322035', N'3', 4, N'1809202384090', CAST(194.4000 AS Decimal(18, 4)), CAST(777.6000 AS Decimal(18, 4)), N'', N'Approve', CAST(N'2023-09-26T14:51:19.477' AS DateTime), N'1109202336095', CAST(N'2023-09-27T14:55:47.343' AS DateTime), N'
                                                            Offline Mode 
                       ')
INSERT [dbo].[TblOrderProduct] ([Order_Id], [StockId], [Qunatity], [Order_By], [PRICE], [Total_Amount], [PaymentIamge], [Status], [Order_Date], [UpdateBy], [UpdateDate], [Paymentmode]) VALUES (N'2609202351461', N'2', 6, N'1809202384090', CAST(194.4000 AS Decimal(18, 4)), CAST(1166.4000 AS Decimal(18, 4)), N'~/AdminModule/ImagePayment/about-1.png', N'Approve', CAST(N'2023-09-26T12:42:56.663' AS DateTime), N'1109202336095', CAST(N'2023-09-27T14:56:45.627' AS DateTime), NULL)
INSERT [dbo].[TblOrderProduct] ([Order_Id], [StockId], [Qunatity], [Order_By], [PRICE], [Total_Amount], [PaymentIamge], [Status], [Order_Date], [UpdateBy], [UpdateDate], [Paymentmode]) VALUES (N'2609202370472', N'2', 4, N'1809202384090', CAST(194.4000 AS Decimal(18, 4)), CAST(777.6000 AS Decimal(18, 4)), N'', N'Pending', CAST(N'2023-09-26T14:55:00.567' AS DateTime), N'1109202336095', CAST(N'2023-09-27T14:08:49.387' AS DateTime), N'Offline Mode')
GO
SET IDENTITY_INSERT [dbo].[TblProductImages] ON 

INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (2, 4, N'~/AdminModule/Productsimage/aadhaar2''.png', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:12:45.570' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (3, 5, N'~/AdminModule/Productsimage/aadhaar2''.png', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:12:49.150' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (4, 6, N'~/AdminModule/Productsimage/aadhaar2''.png', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:12:55.667' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (5, 7, N'~/AdminModule/Productsimage/aadhaar2''.png', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:14:38.407' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (6, 8, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:14:56.980' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (7, 9, N'~/AdminModule/Productsimage/17-domestic-money-transfer-software-api.jpg', N'~/AdminModule/Productsimage/mobile-recha.jpg', N'~/AdminModule/Productsimage/AePS-service-for-better-financial-inclusion-in-the-country-1.jpg', N'~/AdminModule/Productsimage/17-domestic-money-transfer-software-api.jpg', N'~/AdminModule/Productsimage/mobile-recha.jpg', N'~/AdminModule/Productsimage/17-domestic-money-transfer-software-api.jpg', N'0', CAST(N'2023-09-05T17:35:46.730' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (8, 10, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:36:26.883' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (9, 11, N'~/AdminModule/Productsimage/aadhaar2''.png', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:37:14.963' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (10, 12, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:37:38.373' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (11, 13, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:38:17.030' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (12, 14, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:38:36.033' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (13, 15, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:39:46.697' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (14, 16, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:40:08.657' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (15, 17, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:40:08.687' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (16, 18, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:40:54.350' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (17, 19, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:52:31.000' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (18, 20, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:54:02.540' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (19, 21, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:55:32.370' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (20, 22, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:56:16.357' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (21, 23, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:56:47.550' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (22, 24, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:58:03.683' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (23, 25, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:59:02.033' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (24, 26, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T17:59:26.480' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (25, 27, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T18:00:26.530' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (26, 28, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T18:01:16.003' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (27, 29, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T18:24:44.733' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (28, 30, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T18:26:27.020' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (29, 31, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T18:27:06.270' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (30, 32, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T18:27:30.697' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (31, 33, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T18:28:18.500' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (32, 34, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T18:29:25.120' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (33, 35, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-05T18:29:55.160' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (34, 36, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:33:39.993' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (35, 37, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:41:24.183' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (36, 37, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:41:24.303' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (37, 39, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:41:47.937' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (38, 40, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:42:05.730' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (39, 41, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:42:21.143' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (40, 42, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:48.640' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (41, 43, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:51.330' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (42, 44, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:52.460' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (43, 45, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:53.157' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (44, 46, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:53.920' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (45, 47, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:54.677' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (46, 48, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:55.403' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (47, 49, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:56.223' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (48, 50, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:56.940' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (49, 51, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:57.647' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (50, 52, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:58.417' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (51, 53, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:59.067' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (52, 54, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:54:59.747' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (53, 55, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:55:37.610' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (54, 56, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:59:11.340' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (55, 57, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T09:59:12.860' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (56, 58, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:36:44.473' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (57, 59, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:39:44.077' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (58, 60, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:43:08.077' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (59, 61, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:43:51.730' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (60, 62, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:44:36.323' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (61, 63, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:44:47.910' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (62, 64, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:45:09.147' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (63, 65, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:46:08.520' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (64, 66, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:46:20.300' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (65, 67, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:49:49.850' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (66, 68, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:49:55.430' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (67, 69, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:50:11.610' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (68, 70, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:50:29.580' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (69, 71, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:50:45.927' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (70, 72, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:53:03.723' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (71, 73, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T10:53:29.027' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (72, 74, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T11:02:16.040' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (73, 75, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T11:02:35.237' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (74, 76, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T11:02:54.210' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (75, 77, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T11:03:12.303' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (76, 78, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T11:03:33.787' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (77, 79, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T11:05:04.757' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (78, 80, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T11:05:21.400' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (79, 81, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T11:07:03.237' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (80, 82, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T11:07:21.743' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (81, 83, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T11:07:34.863' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (82, 84, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T12:37:10.200' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (83, 85, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T12:37:21.400' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (84, 86, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T12:38:03.940' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (85, 87, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T12:51:40.620' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (86, 88, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T12:51:47.013' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (87, 89, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T12:54:22.523' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (88, 90, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T12:57:03.317' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (89, 91, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T12:57:35.390' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (90, 92, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T12:58:17.813' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (91, 93, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T12:59:23.360' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (92, 94, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-06T13:00:05.903' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (93, 95, N'~/AdminModule/Images/aadhaar_Services.png', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-07T11:53:24.357' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (94, 96, N'~/AdminModule/Productsimage/Aeps_bimage.png', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-07T12:03:36.073' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (95, 97, N'~/AdminModule/Productsimage/dp.jpg', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-08T14:12:52.497' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (96, 98, N'~/AdminModule/Productsimage/dp.jpg', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-08T14:26:32.717' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (97, 99, N'~/AdminModule/Productsimage/dp.jpg', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-08T14:29:00.740' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (98, 100, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-08T14:48:31.613' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (99, 101, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-08T14:50:10.730' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (100, 102, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-08T14:51:16.860' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (101, 103, N'', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-08T14:56:27.387' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (102, 107, N'~/AdminModule/Productsimage/aadhaar2''.png', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-13T10:09:57.820' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (103, 108, N'~/AdminModule/Productsimage/aadhaar2''.png', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-13T10:18:56.533' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (104, 111, N'~/AdminModule/Productsimage/Aadhaar_banner.png', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-13T13:18:53.333' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (105, 117, N'~/AdminModule/Productsimage/mobile-recha.jpg', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-16T18:07:06.233' AS DateTime), NULL, NULL)
INSERT [dbo].[TblProductImages] ([Iamgeid], [product_id], [Product_Image1], [Product_Image2], [Product_Image3], [Product_Image4], [Product_Image5], [Product_Image6], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (106, 118, N'~/AdminModule/Productsimage/mobile-recha.jpg', N'', N'', N'', N'', N'', N'0', CAST(N'2023-09-16T18:08:08.393' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[TblSalllerStock] ON 

INSERT [dbo].[TblSalllerStock] ([SellerStockid], [SellerID], [Stockid], [Quantity], [Price], [PurchaseDate], [Sell_Price], [Sdiscount], [DisCountType], [MRP]) VALUES (1, N'1809202384090', 2, 6, CAST(194.4000 AS Decimal(18, 4)), CAST(N'2023-09-27' AS Date), CAST(279.0000 AS Decimal(18, 4)), CAST(7.0000 AS Decimal(18, 4)), 1, CAST(300.0000 AS Decimal(18, 4)))
INSERT [dbo].[TblSalllerStock] ([SellerStockid], [SellerID], [Stockid], [Quantity], [Price], [PurchaseDate], [Sell_Price], [Sdiscount], [DisCountType], [MRP]) VALUES (2, N'0310202389714', 3, 4, CAST(194.4000 AS Decimal(18, 4)), CAST(N'2023-09-27' AS Date), CAST(204.1200 AS Decimal(18, 4)), CAST(3.0000 AS Decimal(18, 4)), 1, CAST(209.9520 AS Decimal(18, 4)))
INSERT [dbo].[TblSalllerStock] ([SellerStockid], [SellerID], [Stockid], [Quantity], [Price], [PurchaseDate], [Sell_Price], [Sdiscount], [DisCountType], [MRP]) VALUES (3, N'1109202336095', 2, 4, CAST(194.4000 AS Decimal(18, 4)), CAST(N'2023-10-03' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[TblSalllerStock] ([SellerStockid], [SellerID], [Stockid], [Quantity], [Price], [PurchaseDate], [Sell_Price], [Sdiscount], [DisCountType], [MRP]) VALUES (4, N'0310202389714', 2, 5, CAST(194.4000 AS Decimal(18, 4)), CAST(N'2023-10-03' AS Date), CAST(300.0000 AS Decimal(18, 4)), CAST(7.0000 AS Decimal(18, 4)), 0, CAST(300.0000 AS Decimal(18, 4)))
INSERT [dbo].[TblSalllerStock] ([SellerStockid], [SellerID], [Stockid], [Quantity], [Price], [PurchaseDate], [Sell_Price], [Sdiscount], [DisCountType], [MRP]) VALUES (5, N'0310202389714', 6, 5, CAST(780.0000 AS Decimal(18, 4)), CAST(N'2023-10-03' AS Date), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblSalllerStock] OFF
GO
SET IDENTITY_INSERT [dbo].[TblSellMaster] ON 

INSERT [dbo].[TblSellMaster] ([Sell_id], [Sell_Quentity], [Customer_id], [Product_Code], [Cstockid], [status], [CreateDate], [updateDate], [SellBy]) VALUES (1, 5, N'mobile no', N'wts1309202372876', 1, N'Success', CAST(N'2023-09-30T17:38:16.867' AS DateTime), NULL, N'1809202384090')
INSERT [dbo].[TblSellMaster] ([Sell_id], [Sell_Quentity], [Customer_id], [Product_Code], [Cstockid], [status], [CreateDate], [updateDate], [SellBy]) VALUES (2, 2, N'7459093390', N'wts1309202372876', 1, N'Success', CAST(N'2023-09-30T17:56:59.140' AS DateTime), NULL, N'1809202384090')
INSERT [dbo].[TblSellMaster] ([Sell_id], [Sell_Quentity], [Customer_id], [Product_Code], [Cstockid], [status], [CreateDate], [updateDate], [SellBy]) VALUES (3, 5, N'7459093390', N'wts1309202372876', 1, N'Success', CAST(N'2023-09-30T18:02:30.720' AS DateTime), NULL, N'1809202384090')
INSERT [dbo].[TblSellMaster] ([Sell_id], [Sell_Quentity], [Customer_id], [Product_Code], [Cstockid], [status], [CreateDate], [updateDate], [SellBy]) VALUES (4, 5, N'7459093390', N'wts1309202372876', 1, N'Success', CAST(N'2023-09-30T18:02:32.033' AS DateTime), NULL, N'1809202384090')
INSERT [dbo].[TblSellMaster] ([Sell_id], [Sell_Quentity], [Customer_id], [Product_Code], [Cstockid], [status], [CreateDate], [updateDate], [SellBy]) VALUES (5, 5, N'7459093390', N'wts1309202372876', 2, N'Success', CAST(N'2023-10-06T14:40:52.840' AS DateTime), NULL, N'0310202389714')
SET IDENTITY_INSERT [dbo].[TblSellMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[TblSizeMaster] ON 

INSERT [dbo].[TblSizeMaster] ([SizeID], [SizeName], [Size_Description], [status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, N'M', N'this  medium size', 1, N'0', CAST(N'2023-09-09T13:48:07.580' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblSizeMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[TblStateMaster] ON 

INSERT [dbo].[TblStateMaster] ([StateId], [State_name], [CreateBy], [CreateOn], [UpdateBy], [UpdateOn]) VALUES (1, N'Utter Pradesh ', N'1', CAST(N'2023-09-11T13:29:35.230' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblStateMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[tblStockManage] ON 

INSERT [dbo].[tblStockManage] ([ProductCode], [ProductName], [BrandName], [Quantity], [SizeID], [DistCountType], [Discount], [ProductMRP], [ProductPrice], [SellPrice], [MFGDate], [ExpriyDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [TaxTypeId], [StId], [status]) VALUES (N'wts0509202340937', N'Vivo 2tx', N'Vivo', 100, 1, N'1', CAST(5.0000 AS Decimal(18, 4)), CAST(580.0000 AS Decimal(18, 4)), NULL, CAST(750.0000 AS Decimal(18, 4)), CAST(N'2023-09-12' AS Date), CAST(N'2023-09-12' AS Date), N'1', CAST(N'2023-09-12T17:18:38.360' AS DateTime), NULL, NULL, NULL, 1, 1)
INSERT [dbo].[tblStockManage] ([ProductCode], [ProductName], [BrandName], [Quantity], [SizeID], [DistCountType], [Discount], [ProductMRP], [ProductPrice], [SellPrice], [MFGDate], [ExpriyDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [TaxTypeId], [StId], [status]) VALUES (N'wts1309202372876', N'Redmi 6', N'Redmi', 95, 1, N'1', CAST(10.0000 AS Decimal(18, 4)), CAST(300.0000 AS Decimal(18, 4)), CAST(180.0000 AS Decimal(18, 4)), CAST(194.4000 AS Decimal(18, 4)), CAST(N'2023-09-07' AS Date), CAST(N'2023-09-30' AS Date), N'0', CAST(N'2023-09-13T10:24:28.993' AS DateTime), NULL, CAST(N'2023-09-27T14:56:45.633' AS DateTime), 1, 2, 1)
INSERT [dbo].[tblStockManage] ([ProductCode], [ProductName], [BrandName], [Quantity], [SizeID], [DistCountType], [Discount], [ProductMRP], [ProductPrice], [SellPrice], [MFGDate], [ExpriyDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [TaxTypeId], [StId], [status]) VALUES (N'wts1309202372876', N'Vivo t2X', N'Redmi 8', 100, 1, N'1', CAST(10.0000 AS Decimal(18, 4)), CAST(300.0000 AS Decimal(18, 4)), CAST(180.0000 AS Decimal(18, 4)), CAST(194.4000 AS Decimal(18, 4)), CAST(N'2023-09-07' AS Date), CAST(N'2023-09-30' AS Date), N'0', CAST(N'2023-09-13T10:25:49.253' AS DateTime), NULL, CAST(N'2023-09-27T14:55:47.350' AS DateTime), 1, 3, 1)
INSERT [dbo].[tblStockManage] ([ProductCode], [ProductName], [BrandName], [Quantity], [SizeID], [DistCountType], [Discount], [ProductMRP], [ProductPrice], [SellPrice], [MFGDate], [ExpriyDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [TaxTypeId], [StId], [status]) VALUES (N'wts1309202387817', N'Redmi', N'Pro', 100, 1, N'1', CAST(5.0000 AS Decimal(18, 4)), CAST(300.0000 AS Decimal(18, 4)), CAST(240.0000 AS Decimal(18, 4)), CAST(273.6000 AS Decimal(18, 4)), CAST(N'2023-10-05' AS Date), CAST(N'2023-11-01' AS Date), N'0', CAST(N'2023-09-13T13:20:43.263' AS DateTime), NULL, NULL, 1, 4, 1)
INSERT [dbo].[tblStockManage] ([ProductCode], [ProductName], [BrandName], [Quantity], [SizeID], [DistCountType], [Discount], [ProductMRP], [ProductPrice], [SellPrice], [MFGDate], [ExpriyDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [TaxTypeId], [StId], [status]) VALUES (N'wts1309202387817', N'Redmi', N'Pro', 100, 1, N'1', CAST(5.0000 AS Decimal(18, 4)), CAST(300.0000 AS Decimal(18, 4)), CAST(240.0000 AS Decimal(18, 4)), CAST(273.6000 AS Decimal(18, 4)), CAST(N'2023-10-05' AS Date), CAST(N'2023-11-01' AS Date), N'0', CAST(N'2023-09-13T13:23:08.070' AS DateTime), NULL, NULL, 1, 5, 1)
INSERT [dbo].[tblStockManage] ([ProductCode], [ProductName], [BrandName], [Quantity], [SizeID], [DistCountType], [Discount], [ProductMRP], [ProductPrice], [SellPrice], [MFGDate], [ExpriyDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [TaxTypeId], [StId], [status]) VALUES (N'wts1609202344076', N'Redmi 6', N'Redmi', 95, 1, N'1', CAST(0.0000 AS Decimal(18, 4)), CAST(700.0000 AS Decimal(18, 4)), CAST(650.0000 AS Decimal(18, 4)), CAST(780.0000 AS Decimal(18, 4)), CAST(N'2023-08-29' AS Date), CAST(N'2023-09-19' AS Date), N'0', CAST(N'2023-09-16T18:09:39.137' AS DateTime), NULL, NULL, 1, 6, NULL)
SET IDENTITY_INSERT [dbo].[tblStockManage] OFF
GO
SET IDENTITY_INSERT [dbo].[TblSubCatogeryMaster] ON 

INSERT [dbo].[TblSubCatogeryMaster] ([Id], [Categoryid], [SubCatogeryName], [SubCatogeryDescription], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, 1, N'Mobile', N'best', 1, 0, CAST(N'2023-09-08T11:30:53.060' AS DateTime), NULL, NULL)
INSERT [dbo].[TblSubCatogeryMaster] ([Id], [Categoryid], [SubCatogeryName], [SubCatogeryDescription], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, 1, N'Mobile', N'best', 1, 0, CAST(N'2023-09-08T11:31:13.277' AS DateTime), NULL, NULL)
INSERT [dbo].[TblSubCatogeryMaster] ([Id], [Categoryid], [SubCatogeryName], [SubCatogeryDescription], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, 7, N'stp', N'yryr', 1, 0, CAST(N'2023-09-16T17:54:16.417' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblSubCatogeryMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[TblTax] ON 

INSERT [dbo].[TblTax] ([TaxId], [CGST], [SGST], [IGST], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, CAST(10.0000 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(20.0000 AS Decimal(18, 4)), N'0', CAST(N'2023-09-09T13:46:54.973' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblTax] OFF
GO
SET IDENTITY_INSERT [dbo].[TblUSerMaster] ON 

INSERT [dbo].[TblUSerMaster] ([Id], [UserId], [UserName], [Mobile_No], [Email_id], [Company_Name], [Password], [Status], [User_Type], [Address], [Aadhar_No], [Pancard_No], [Gstin_no], [User_Image], [Aadhar_image], [Pancard_image], [Store_Name], [Branch_details], [Dob], [ParentId], [Create_On], [UpdateBy], [Update_On], [State], [distric], [city], [Adhar_back_image], [Gender], [Pin_Code], [Company_Logo], [InstagramLink], [Facebooklink], [TwiterLink]) VALUES (1, N'1109202336095', N'Pankaj Pal', N'7459093390', N'pankaj@gmail.com', N'4578418784', N'1234', 1, 1, N'orai konch', N'542155', N'958659461', N'9595', N'~/AdminModule/Productsimage/t2.png', N'', N'', N'4544', N'new ', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'1', CAST(N'2023-09-11T16:42:28.887' AS DateTime), N'1', CAST(N'2023-09-21T10:57:34.620' AS DateTime), N'1', N'1', N'konch', N'', N'Male', 285015, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblUSerMaster] ([Id], [UserId], [UserName], [Mobile_No], [Email_id], [Company_Name], [Password], [Status], [User_Type], [Address], [Aadhar_No], [Pancard_No], [Gstin_no], [User_Image], [Aadhar_image], [Pancard_image], [Store_Name], [Branch_details], [Dob], [ParentId], [Create_On], [UpdateBy], [Update_On], [State], [distric], [city], [Adhar_back_image], [Gender], [Pin_Code], [Company_Logo], [InstagramLink], [Facebooklink], [TwiterLink]) VALUES (2, N'1809202384090', N'Rahul', N'716546', N'rahul', N' new ', N'94994', 1, 2, N'orai', N'542155', N'958659461', N'9595', N'~/AdminModule/Userimage/aadhaar2''.png', N'', N'', N'new ', N'4544', CAST(N'2023-09-20T00:00:00.000' AS DateTime), N'2', CAST(N'2023-09-18T16:48:43.300' AS DateTime), NULL, NULL, N'1', N'1', N'orai', N'', N'Male', 110087, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblUSerMaster] ([Id], [UserId], [UserName], [Mobile_No], [Email_id], [Company_Name], [Password], [Status], [User_Type], [Address], [Aadhar_No], [Pancard_No], [Gstin_no], [User_Image], [Aadhar_image], [Pancard_image], [Store_Name], [Branch_details], [Dob], [ParentId], [Create_On], [UpdateBy], [Update_On], [State], [distric], [city], [Adhar_back_image], [Gender], [Pin_Code], [Company_Logo], [InstagramLink], [Facebooklink], [TwiterLink]) VALUES (3, N'0310202389714', N'RAM', N'7458548587', N'test@gmai.com', N'RAM', N'12345', 1, 2, N'fhgdh', N'895465949', N'78745346', N'54465', N'~/AdminModule/Userimage/aadhaar-enabled-payment-system-service.jpg', N'~/AdminModule/Userimage/aadhaar-enabled-payment-system-service.jpg', N'~/AdminModule/Userimage/aadhaar-enabled-payment-system-service.jpg', N'rgr', N'fgsdgfdgfd', CAST(N'2023-10-18T00:00:00.000' AS DateTime), N'1109202336095', CAST(N'2023-10-03T13:09:49.123' AS DateTime), NULL, NULL, N'1', N'1', N'thgfjn', N'~/AdminModule/Userimage/aadhaar-enabled-payment-system-service.jpg', N'Male', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblUSerMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[TblUserMasterType] ON 

INSERT [dbo].[TblUserMasterType] ([Id], [UserType_Name], [Create_date], [Status]) VALUES (1, N'Admin', CAST(N'2023-09-29T10:01:11.910' AS DateTime), 1)
INSERT [dbo].[TblUserMasterType] ([Id], [UserType_Name], [Create_date], [Status]) VALUES (2, N'Saller', CAST(N'2023-09-29T10:01:11.910' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[TblUserMasterType] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [pdcode]    Script Date: 27-10-2024 10:26:43 ******/
ALTER TABLE [dbo].[TblAddProducts] ADD  CONSTRAINT [pdcode] UNIQUE NONCLUSTERED 
(
	[Product_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TblCusto__A4AD5891B628B742]    Script Date: 27-10-2024 10:26:43 ******/
ALTER TABLE [dbo].[TblCustomerMaster] ADD UNIQUE NONCLUSTERED 
(
	[Customerid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_email_id]    Script Date: 27-10-2024 10:26:43 ******/
ALTER TABLE [dbo].[TblUSerMaster] ADD  CONSTRAINT [UQ_email_id] UNIQUE NONCLUSTERED 
(
	[Email_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_mobile_no]    Script Date: 27-10-2024 10:26:43 ******/
ALTER TABLE [dbo].[TblUSerMaster] ADD  CONSTRAINT [UQ_mobile_no] UNIQUE NONCLUSTERED 
(
	[Mobile_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Userid]    Script Date: 27-10-2024 10:26:43 ******/
ALTER TABLE [dbo].[TblUSerMaster] ADD  CONSTRAINT [UQ_Userid] UNIQUE NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TblDistrictMAster]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[TblStateMaster] ([StateId])
GO
ALTER TABLE [dbo].[TblProductImages]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[TblAddProducts] ([Product_id])
GO
ALTER TABLE [dbo].[TblSubCatogeryMaster]  WITH CHECK ADD  CONSTRAINT [subpk] FOREIGN KEY([Categoryid])
REFERENCES [dbo].[TblCatogeryMaster] ([Id])
GO
ALTER TABLE [dbo].[TblSubCatogeryMaster] CHECK CONSTRAINT [subpk]
GO
ALTER TABLE [dbo].[TblUSerMaster]  WITH CHECK ADD FOREIGN KEY([User_Type])
REFERENCES [dbo].[TblUserMasterType] ([Id])
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActiveUpdate]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Sp_ActiveUpdate]
	@userid varchar (30),
	@username varchar (200),
	@mobileNo varchar (15),
	@emailId varchar (300),
	@Address varchar (1000),
	@State varchar(100) ,
	@District varchar(100) ,
	@city varchar (300),
	@pincode int,
	@image varchar(300),
	@updateBy varchar (100)
	as
	begin
	update TblUSerMaster set UserName=@username,Mobile_No=@mobileNo,Email_id=@emailId,Address=@Address,State=@State,distric=@District,city=@city,Pin_Code=@pincode, User_Image=@image,UpdateBy=@updateBy,Update_On=GETDATE() where UserId=@userid
	end
GO
/****** Object:  StoredProcedure [dbo].[Sp_AddSallerStock]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc  [dbo].[Sp_AddSallerStock]    
@SellerID varchar(50) ,    
@Stockid int ,    
@Quantity INT,    
@Price DECIMAL(18, 4)   
  
as    
begin    
if not Exists (select Stockid from TblSalllerStock where  Stockid =@Stockid and SellerID=@SellerID )  
begin  
update tblStockManage set Quantity-=@Quantity where StId=@Stockid    
insert into TblSalllerStock (SellerID,Stockid,Quantity,Price,PurchaseDate)values(@SellerID,@Stockid,@Quantity,@Price,GetDate())  
end  
else  
begin  
  
update tblStockManage set Quantity-=@Quantity,UpdateDate=GETDATE() where StId=@Stockid    
UPDATE TblSalllerStock  
SET Quantity = ISNULL(Quantity, 0)+@Quantity,PurchaseDate=GETDATE()  
WHERE Stockid = @Stockid and SellerID=@SellerID  
end  
end
GO
/****** Object:  StoredProcedure [dbo].[SP_CategoryGet]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_CategoryGet]
as
begin
select *from  TblCatogeryMaster
end 
GO
/****** Object:  StoredProcedure [dbo].[Sp_CheckCustomerRegister]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Sp_CheckCustomerRegister]
@Mobil_No varchar(15)
as
begin
select *from TblCustomerMaster where Mobil_No=@Mobil_No
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_CustomerList]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 Create proc [dbo].[Sp_CustomerList]
 as 
 begin
select *from tblcustomermaster
end
GO
/****** Object:  StoredProcedure [dbo].[sp_customerSearch]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  proc [dbo].[sp_customerSearch] 
@search varchar  (100),
@userid varchar (100),
@action varchar (100)
as
begin
if @action='1'
begin
select *from TblCustomerMaster where CreateBy=@userid and  Mobil_No like @search+'%'
end
else if @action='2'
begin
select *from TblCustomerMaster where CreateBy=@userid and  Name like @search+'%'
end
end 
GO
/****** Object:  StoredProcedure [dbo].[Sp_Deletestokaddproduct]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[Sp_Deletestokaddproduct]  
@product_code varchar (50)  
as   
begin
declare @Product_id int=(select Product_id from TblAddProducts where Product_code=@product_code )

delete from TblProductImages where product_id=@Product_id
delete from tblStockManage where ProductCode=@product_code;  
delete from TblAddProducts where Product_code=@product_code 


 
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_DeleteUSer]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_DeleteUSer]  
@userid varchar(30)   
as  
begin  
delete from TblUSerMaster where UserId=@userid  
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetAdminOrderListAll]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Sp_GetAdminOrderListAll]
as
begin
select *from TblOrderProduct
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetOrderList]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_GetOrderList] 
@userid varchar(50)
as   
begin  
select *from TblOrderProduct  where Order_By=@userid 
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetProductid]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Sp_GetProductid]
@Product_code  varchar(50)      
as       
begin 
select *from TblAddProducts where Product_code=@Product_code
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetQuantity]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 Create Proc [dbo].[Sp_GetQuantity]
 @stockId int 
 as
 begin
 select *from tblStockManage  where StId=@stockId
 end
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetSaller]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Sp_GetSaller]
@userid varchar (50)
as 
begin
select *from TblSalllerStock as tbsell join tblStockManage as tbstock on tbsell.Stockid=tbstock.StId join TblAddProducts as adproduct on tbstock.ProductCode=adproduct.Product_code join TblProductImages as pimage on adproduct.Product_id=pimage.product_id join TblSizeMaster as tblsize on tbstock.status=tblsize.SizeID join TblCatogeryMaster as tblcat on adproduct.Category=tblcat.Id join TblSubCatogeryMaster tblsubcat on adproduct.sub_category=tblsubcat.Id where tbsell.SellerID=@userid
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetSallerProductList]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE proc [dbo].[Sp_GetSallerProductList]    
    as       
  begin      
  select * from TblAddProducts as tbpro inner join TblProductImages as pbimage on  tbpro.Product_id =pbimage.product_id join tblStockManage as tblstock on tbpro.Product_code=tblstock.ProductCode  join TblSizeMaster as size on size.SizeID=tblstock.SizeID  join TblTax on tblstock.TaxTypeId=TblTax.TaxId
  end
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetSallerProductListSearching]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Sp_GetSallerProductListSearching]      
@Search varchar (max)      ,
@action varchar (100)
as      
begin  
if @action='1'
 select *from TblAddProducts join TblProductImages on TblAddProducts.Product_id=TblProductImages.product_id join tblStockManage as tblstock on TblAddProducts.Product_code=tblstock.ProductCode join TblSizeMaster as size on tblstock.SizeID=size.SizeID join TblTax on tblstock.TaxTypeId=TblTax.TaxId    where  Product_code  like @Search+ '%'    

else if @action='2'
 select *from TblAddProducts join TblProductImages on TblAddProducts.Product_id=TblProductImages.product_id join tblStockManage as tblstock on TblAddProducts.Product_code=tblstock.ProductCode join TblSizeMaster as size on tblstock.SizeID=size.SizeID join TblTax on tblstock.TaxTypeId=TblTax.TaxId    where  Brand_Name like @Search+ '%' 

else if @action='3'
 select *from TblAddProducts join TblProductImages on TblAddProducts.Product_id=TblProductImages.product_id join tblStockManage as tblstock on TblAddProducts.Product_code=tblstock.ProductCode join TblSizeMaster as size on tblstock.SizeID=size.SizeID join TblTax on tblstock.TaxTypeId=TblTax.TaxId    where Product_serial_No like @Search+ '%'  

else if @action='4'
 select *from TblAddProducts join TblProductImages on TblAddProducts.Product_id=TblProductImages.product_id join tblStockManage as tblstock on TblAddProducts.Product_code=tblstock.ProductCode join TblSizeMaster as size on tblstock.SizeID=size.SizeID join TblTax on tblstock.TaxTypeId=TblTax.TaxId    where SellPrice like  @Search+ '%'   

else if @action='5'
 select *from TblAddProducts join TblProductImages on TblAddProducts.Product_id=TblProductImages.product_id join tblStockManage as tblstock on TblAddProducts.Product_code=tblstock.ProductCode join TblSizeMaster as size on tblstock.SizeID=size.SizeID join TblTax on tblstock.TaxTypeId=TblTax.TaxId    where Product_Name like @Search+ '%'  

--else if @action='6'
-- select *from TblAddProducts join TblProductImages on TblAddProducts.Product_id=TblProductImages.product_id join tblStockManage as tblstock on TblAddProducts.Product_code=tblstock.ProductCode join TblSizeMaster as size on tblstock.SizeID=size.SizeID join TblTax on tblstock.TaxTypeId=TblTax.TaxId    where Product_Name like @Search+ '%' or( Brand_Name like @Search+ '%' ) or( Product_code  like @Search+ '%' ) or( Product_serial_No like @Search+ '%' )  or (SellPrice like  @Search+ '%' )    

end
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetStocks]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Sp_GetStocks]    
 as    
 begin     
 select *from tblStockManage tbstok join TblSizeMaster as tbsize on tbsize.SizeID=tbstok.SizeID  where tbstok.ExpriyDate>GETDATE()
 end
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetSubCategory]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_GetSubCategory]
@CatogeryId int 
as 
begin
select *from TblSubCatogeryMaster where Categoryid=@CatogeryId
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetTblSizeMaster]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_GetTblSizeMaster]
	as
	begin
	select *from TblSizeMaster
	end
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetTblTax]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[Sp_GetTblTax]    
 @TblTax int  
 as    
 begin    
 select TaxId, cast(CGST as decimal(18,2))as CGST, cast(SGST as decimal(18,2))as SGST, cast(IGST as decimal(18,2))as IGST from TblTax  where TaxId=@TblTax  
 end
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetTblTaxd]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[Sp_GetTblTaxd]  

 as  
 begin  
 select TaxId, cast(CGST as decimal(18,2))as CGST, cast(SGST as decimal(18,2))as SGST, cast(IGST as decimal(18,2))as IGST from TblTax  
 end
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetUser]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_GetUser]  
as  
begin  
select *from TblUSerMaster  where User_Type>1
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetUserSigleuser]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_GetUserSigleuser]       
@UserId varchar(50) ,    
@Action varchar(100)    
as        
begin       
begin    
if @Action='Userid'    
select *from TblUSerMaster  where UserId=@UserId       
end    
begin    
if @Action='id'    
select *from TblUSerMaster as tblus join TblUserMasterType as tbltype on tblus.User_Type=tbltype.Id join TblStateMaster as tstate  on tblus.State =tstate.StateId join TblDistrictMAster as tbldis on tblus.distric=tbldis.District_Id where tblus.UserId=@UserId
end    
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetUserType]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Sp_GetUserType]  
@id int 
as    
begin    
select *from TblUserMasterType where  id>@id  
end
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertCatogery]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

   CREATE Proc [dbo].[SP_InsertCatogery]  
   @CatogeryName varchar(100),
   @CatogeryDescription varchar(200),
   @CreateBy int

    
   As   Begin            
   insert into TblCatogeryMaster(CatogeryName,CatogeryDescription, Status, CreateDate, CreateBy) values
(@CatogeryName,@CatogeryDescription, 1, GETDATE(), @CreateBy)    End 
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertCustomer]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[SP_InsertCustomer]    
@Customerid varchar (30)  ,    
@Name varchar (300) ,    
@Mobil_No Varchar (15) ,    
@status Varchar (100),    
@CreateBy varchar(50)    
as     
begin    
insert Into TblCustomerMaster(Customerid,Name,Mobil_No,status,CreateBy,CreateDate)values(@Customerid,@Name,@Mobil_No,@status,@CreateBy,GETDATE())    
end 
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertSubCatogery]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_InsertSubCatogery]     
@CatogeryId int,    
@SubCatogeryName varchar(100),    
@SubCatogeryDescription varchar(100),   
@CreateBy int  
  
As   Begin        
insert into TblSubCatogeryMaster(SubCatogeryName, SubCatogeryDescription, Categoryid, Status, CreateDate, CreateBy) values (@SubCatogeryName,@SubCatogeryDescription, @CatogeryId, 1, GETDATE(), @CreateBy)     End 
GO
/****** Object:  StoredProcedure [dbo].[SP_OrderSearchAdmin]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SP_OrderSearchAdmin]
@search varchar (100),
@action varchaR (100)
AS 
BEGIN
if @action ='1'
SELECT *FROM TblOrderProduct where Order_Id like @search+'%'
else if @action ='2'
SELECT *FROM TblOrderProduct where Order_By like @search+'%'
else if @action ='3'
SELECT *FROM TblOrderProduct where  CONVERT(VARCHAR(10), Order_Date, 101) =CONVERT (VARCHAR(10), @search, 101)
else if @action ='4'
SELECT *FROM TblOrderProduct where Status like @search+'%'
else if @action ='5'
SELECT *FROM TblOrderProduct where Paymentmode like @search+'%'
END 
GO
/****** Object:  StoredProcedure [dbo].[Sp_ProductUpdate]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Sp_ProductUpdate]  
  @brand_name varchar (500),  
  @Product_Name varchar(500),  
  @Product_serial_No varchar (500),  
  @Product_HSN_ode varchar (50),  
  @Product_details varchar(500),  
  @Product_Image1 varchar (300),  
  @Product_Image2 varchar  (300),  
  @Product_Image3 varchar (300),  
   @Product_Image4 varchar (300),  
    @Product_Image5 varchar (300),  
  @Product_Image6 varchar (300),  
  @Product_code varchar(50)  
  as  
  begin  

      update  TblAddProducts  set brand_name=@brand_name,Product_Name=@Product_Name,Product_serial_No=@Product_serial_No,Product_HSN_ode=@Product_HSN_ode,Product_details=@Product_details  where Product_code=@Product_code;  
  declare @product_id int =(select Product_id from TblAddProducts where Product_code=@Product_code)
  update TblProductImages set Product_Image1=@Product_Image1,Product_Image2=@Product_Image2,Product_Image3=@Product_Image3,Product_Image4=@Product_Image4,Product_Image5=@Product_Image5,Product_Image6=@Product_Image6 where product_id=@product_id
  END
GO
/****** Object:  StoredProcedure [dbo].[Sp_QuntityAdd]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE pROC [dbo].[Sp_QuntityAdd]    
@product_code varchar (50),    
@quntity int     
as    
begin    
   
 
UPDATE tblStockManage
SET Quantity = ISNULL(Quantity, 0) + @quntity
WHERE stid = @product_code;    
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_Searching]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Sp_Searching]
@Search varchar (max)
as
begin
	select *from TblAddProducts join TblProductImages on TblAddProducts.Product_id=TblProductImages.product_id  where Product_Name like @Search+ '%' or( Brand_Name like @Search+ '%' ) or( Product_code  like @Search+ '%' ) or( Product_serial_No like @Search+ '%' )
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_SearchOrder]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_SearchOrder]
@search varchar (100),
@userid varchar(100),
@action varchar (100)
as
begin
if @action='1'
select *from TblOrderProduct where  Order_By=@userid and Order_Id like @search+'%'
else if @action='2'
select *from TblOrderProduct where  Order_By=@userid and Cast(PRICE as varchar(100)) like  @search+'%'
else if @action='3'
select *from TblOrderProduct where  Order_By=@userid and  Status like @search+'%'
else if @action='4'
 SELECT *
FROM TblOrderProduct
WHERE Order_By = @userid
  AND CONVERT(VARCHAR(10), Order_Date, 101) =CONVERT (VARCHAR(10), @search, 101)
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_Searchsallerstock]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_Searchsallerstock]
@search varchar (100),
@userid varchar(100),
@action varchar (100)
as
begin
if @action='1'
select *from TblSalllerStock as tbsell join tblStockManage as tbstock on tbsell.Stockid=tbstock.StId join TblAddProducts as adproduct on tbstock.ProductCode=adproduct.Product_code join TblProductImages as pimage on adproduct.Product_id=pimage.product_id join TblSizeMaster as tblsize on tbstock.status=tblsize.SizeID join TblCatogeryMaster as tblcat on adproduct.Category=tblcat.Id join TblSubCatogeryMaster tblsubcat on adproduct.sub_category=tblsubcat.Id where tbsell.SellerID =@userid and   tbstock.ProductCode like @search+'%'

else if @action='2'
select *from TblSalllerStock as tbsell join tblStockManage as tbstock on tbsell.Stockid=tbstock.StId join TblAddProducts as adproduct on tbstock.ProductCode=adproduct.Product_code join TblProductImages as pimage on adproduct.Product_id=pimage.product_id join TblSizeMaster as tblsize on tbstock.status=tblsize.SizeID join TblCatogeryMaster as tblcat on adproduct.Category=tblcat.Id join TblSubCatogeryMaster tblsubcat on adproduct.sub_category=tblsubcat.Id where tbsell.SellerID=@userid  and tbstock.BrandName like @search+'%'

else if @action='3'
select *from TblSalllerStock as tbsell join tblStockManage as tbstock on tbsell.Stockid=tbstock.StId join TblAddProducts as adproduct on tbstock.ProductCode=adproduct.Product_code join TblProductImages as pimage on adproduct.Product_id=pimage.product_id join TblSizeMaster as tblsize on tbstock.status=tblsize.SizeID join TblCatogeryMaster as tblcat on adproduct.Category=tblcat.Id join TblSubCatogeryMaster tblsubcat on adproduct.sub_category=tblsubcat.Id where tbsell.SellerID=@userid  and adproduct.Product_serial_No like @search+'%'
else if @action='4'
select *from TblSalllerStock as tbsell join tblStockManage as tbstock on tbsell.Stockid=tbstock.StId join TblAddProducts as adproduct on tbstock.ProductCode=adproduct.Product_code join TblProductImages as pimage on adproduct.Product_id=pimage.product_id join TblSizeMaster as tblsize on tbstock.status=tblsize.SizeID join TblCatogeryMaster as tblcat on adproduct.Category=tblcat.Id join TblSubCatogeryMaster tblsubcat on adproduct.sub_category=tblsubcat.Id where tbsell.SellerID=@userid  and adproduct.Product_HSN_ode like @search+'%'
else if @action='5'
select *from TblSalllerStock as tbsell join tblStockManage as tbstock on tbsell.Stockid=tbstock.StId join TblAddProducts as adproduct on tbstock.ProductCode=adproduct.Product_code join TblProductImages as pimage on adproduct.Product_id=pimage.product_id join TblSizeMaster as tblsize on tbstock.status=tblsize.SizeID join TblCatogeryMaster as tblcat on adproduct.Category=tblcat.Id join TblSubCatogeryMaster tblsubcat on adproduct.sub_category=tblsubcat.Id where tbsell.SellerID=@userid  and tblcat.CatogeryName like @search+'%'
else if @action='6'
select *from TblSalllerStock as tbsell join tblStockManage as tbstock on tbsell.Stockid=tbstock.StId join TblAddProducts as adproduct on tbstock.ProductCode=adproduct.Product_code join TblProductImages as pimage on adproduct.Product_id=pimage.product_id join TblSizeMaster as tblsize on tbstock.status=tblsize.SizeID join TblCatogeryMaster as tblcat on adproduct.Category=tblcat.Id join TblSubCatogeryMaster tblsubcat on adproduct.sub_category=tblsubcat.Id where tbsell.SellerID=@userid  and tblsubcat.SubCatogeryName like @search+'%'

end 
GO
/****** Object:  StoredProcedure [dbo].[Sp_SearchSellingList]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_SearchSellingList]  
@userid varchar (50),  
@search varchar (100),  
@action varchar (100)  
as  
begin   
if @action='1'  
select *from TblSalllerStock as tbsell join tblStockManage as tbstock on tbsell.Stockid=tbstock.StId join TblAddProducts as adproduct on tbstock.ProductCode=adproduct.Product_code join TblProductImages as pimage on adproduct.Product_id=pimage.product_id join TblSizeMaster as tblsize on tbstock.status=tblsize.SizeID join TblCatogeryMaster as tblcat on adproduct.Category=tblcat.Id join TblSubCatogeryMaster tblsubcat on adproduct.sub_category=tblsubcat.Id where tbsell.SellerID=@userid and adproduct.Product_code like @search+'%'
else if @action='2'  
select *from TblSalllerStock as tbsell join tblStockManage as tbstock on tbsell.Stockid=tbstock.StId join TblAddProducts as adproduct on tbstock.ProductCode=adproduct.Product_code join TblProductImages as pimage on adproduct.Product_id=pimage.product_id join TblSizeMaster as tblsize on tbstock.status=tblsize.SizeID join TblCatogeryMaster as tblcat on adproduct.Category=tblcat.Id join TblSubCatogeryMaster tblsubcat on adproduct.sub_category=tblsubcat.Id where tbsell.SellerID=@userid and tbstock.BrandName like @search+'%' 
else if @action='3'  
select *from TblSalllerStock as tbsell join tblStockManage as tbstock on tbsell.Stockid=tbstock.StId join TblAddProducts as adproduct on tbstock.ProductCode=adproduct.Product_code join TblProductImages as pimage on adproduct.Product_id=pimage.product_id join TblSizeMaster as tblsize on tbstock.status=tblsize.SizeID join TblCatogeryMaster as tblcat on adproduct.Category=tblcat.Id join TblSubCatogeryMaster tblsubcat on adproduct.sub_category=tblsubcat.Id where tbsell.SellerID=@userid and cast(tbsell.MRP as varchar(50)) like @search+'%' 
 
else if @action='4'  
select *from TblSalllerStock as tbsell join tblStockManage as tbstock on tbsell.Stockid=tbstock.StId join TblAddProducts as adproduct on tbstock.ProductCode=adproduct.Product_code join TblProductImages as pimage on adproduct.Product_id=pimage.product_id join TblSizeMaster as tblsize on tbstock.status=tblsize.SizeID join TblCatogeryMaster as tblcat on adproduct.Category=tblcat.Id join TblSubCatogeryMaster tblsubcat on adproduct.sub_category=tblsubcat.Id where tbsell.SellerID=@userid and cast(tbsell.Sell_Price as varchar(50)) like @search+'%'
else if @action='5'  
select *from TblSalllerStock as tbsell join tblStockManage as tbstock on tbsell.Stockid=tbstock.StId join TblAddProducts as adproduct on tbstock.ProductCode=adproduct.Product_code join TblProductImages as pimage on adproduct.Product_id=pimage.product_id join TblSizeMaster as tblsize on tbstock.status=tblsize.SizeID join TblCatogeryMaster as tblcat on adproduct.Category=tblcat.Id join TblSubCatogeryMaster tblsubcat on adproduct.sub_category=tblsubcat.Id where tbsell.SellerID=@userid and tblcat.CatogeryName like @search+'%'  
  
else if @action='6'  
select *from TblSalllerStock as tbsell join tblStockManage as tbstock on tbsell.Stockid=tbstock.StId join TblAddProducts as adproduct on tbstock.ProductCode=adproduct.Product_code join TblProductImages as pimage on adproduct.Product_id=pimage.product_id join TblSizeMaster as tblsize on tbstock.status=tblsize.SizeID join TblCatogeryMaster as tblcat on adproduct.Category=tblcat.Id join TblSubCatogeryMaster tblsubcat on adproduct.sub_category=tblsubcat.Id where tbsell.SellerID=@userid and tblsubcat.SubCatogeryName like @search+'%'     
  
end	
GO
/****** Object:  StoredProcedure [dbo].[Sp_SearchStock]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  CREATE  PROc [dbo].[Sp_SearchStock]
  @Search varchar (100)
  as begin
  select *from tblStockManage as tbstok join TblSizeMaster as tbsize on tbsize.SizeID=tbstok.SizeID where  tbstok.ProductCode like @Search+'%' or ProductName like @Search+'%' or BrandName like @Search+'%' or Quantity like @Search+'%' or SizeName like @Search+'%' or SellPrice like @Search+'%'
  end
GO
/****** Object:  StoredProcedure [dbo].[Sp_SellPriceFixed]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  proc [dbo].[Sp_SellPriceFixed]
@sell_Price decimal(18,4),
@SDiscount decimal(18,4),
@DisCountType int,


@SellerStockId int,
@MRP decimal(18,4)
as
begin
Update TblSalllerStock set sell_Price =@sell_Price ,SDiscount=@SDiscount,DisCountType=@DisCountType,MRP=@MRP where SellerStockId=@SellerStockId
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblAddProduct]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_TblAddProduct]    
   
@Brand_Name varchar (500),    
@Product_Name varchar (500),    
@Product_code varchar (50),    
@Category int ,    
@sub_category int ,    
@Product_HSN_ode varchar (100),    
@Product_serial_No  varchar (100),    
@Product_details varchar(max),    
@Product_varcode varchar(100),    
  
   
    
    
@CreateBy varchar (max)   
  
as     
begin     
insert into TblAddProducts(Brand_Name,Product_Name,Product_code,Category,sub_category,Product_HSN_ode,Product_serial_No,Product_details,Product_varcode,CreateBy,Add_Date) values (@Brand_Name,@Product_Name,@Product_code,@Category,@sub_category,@Product_HSN_ode,@Product_serial_No,@Product_details,@Product_varcode,@CreateBy,GetDate()  
)    
end  
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblAddProduct_GetId]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  CREATE proc [dbo].[Sp_TblAddProduct_GetId]    
@Product_code  varchar(50)    
as     
begin 
begin
 declare @product_id int=( select Product_id  from  TblAddProducts where Product_code=@Product_code )   
  end
  select *from  TblAddProducts as Tblpd join TblProductImages as pimage on Tblpd.Product_id=pimage.product_id where  Tblpd.Product_id=@product_id
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblAddProductImagesGet]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[Sp_TblAddProductImagesGet]
  as 
  begin
  select * from TblAddProducts as tbpro inner join TblProductImages as pbimage on  tbpro.Product_id =pbimage.product_id
  end
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblAddProductImagesGetUpdate]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_TblAddProductImagesGetUpdate]    
  @Product_code varchar (50)    
  as       
  begin  
    select * from TblAddProducts as tbpro inner join TblProductImages as pbimage on  tbpro.Product_id =pbimage.product_id   where tbpro.Product_code=@Product_code    

  end
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblDistrictMAster]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Sp_TblDistrictMAster]
@StateId int
as
begin
select *from TblDistrictMAster where StateId= @StateId
end 
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblOrderProductInsert]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_TblOrderProductInsert]  
  
@Order_Id varchar (50),  
@StockId varchar(50) ,  
@Qunatity int ,  
@Order_By VARCHAR(30),  
@PRICE DECIMAL (18,4),  
@Total_Amount decimal(18,4),  
@PaymentIamge varchar (1000),  
@Status varchar(50),
@Paymentmode varchar (100)
  
as   
begin   
insert into TblOrderProduct(Order_Id,StockId,Qunatity,Order_By,PRICE,Total_Amount,PaymentIamge,Status,Order_Date,Paymentmode)values(@Order_Id,@StockId,@Qunatity,@Order_By,@PRICE,@Total_Amount,@PaymentIamge,@Status,GETDATE(),@Paymentmode)  
end 
GO
/****** Object:  StoredProcedure [dbo].[SP_TblProductImage]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_TblProductImage]  
  
@product_id int ,  
@Product_Image1 varchAR  (500),  
@Product_Image2 varchAR  (500),  
@Product_Image3 varchAR  (500),  
@Product_Image4 varchAR  (500),  
@Product_Image5 varchAR  (500),  
@Product_Image6 varchAR  (500),  
@CreateBy varchAR  (50)  
AS   
BEGIN   
INSERT INTO TblProductImages(product_id,Product_Image1,Product_Image2,Product_Image3,Product_Image4,Product_Image5,Product_Image6,CreateBy,CreateDate)VALUES(@product_id,@Product_Image1,@Product_Image2,@Product_Image3,@Product_Image4,@Product_Image5,@Product_Image6,@CreateBy,GetDate())  
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblSellMaster]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_TblSellMaster]    
@Sell_Quentity int,    
@Customer_id varchar(100),    
@Product_Code varchar(30),    
@Cstockid int ,    
@status varchar (100) ,  
@SellBy varchar(30)  
as    
begin 
update TblSalllerStock set Quantity-=@Sell_Quentity where SellerStockid=@Cstockid
insert into TblSellMaster(Sell_Quentity,Customer_id,Product_Code,Cstockid,status,CreateDate,SellBy)values(@Sell_Quentity,@Customer_id,@Product_Code,@Cstockid,@status,getdate(),@SellBy)    
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblSizeMaster]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	 create proc  [dbo].[Sp_TblSizeMaster]
	@SizeName varchar(50),
	@Size_Description varchar (500),
	
	@CreateBy  varchar (50)
	as 
	begin
	insert into TblSizeMaster(SizeName,Size_Description, status,CreateBy,CreateDate)values(@SizeName,@Size_Description,1,@CreateBy,getdate())
	end 
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblStateMaster]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Sp_TblStateMaster]
as
begin
select *from TblStateMaster
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblStockManage]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_TblStockManage]  
 @ProductCode varchar(50),  
 @ProductName varchar (50),   
 @BrandName varchar (50),  
 @Quantity int,  
 @SizeID  int ,  
 @DistCountType varchar(50),  
 @Discount decimal (18,4),  
 @ProductMRP decimal (18,4),  
 @ProductPrice decimal (18,4),  
 @SellPrice decimal (18,4),  
 @MFGDate date,  
 @ExpriyDate date,  
 @CreateBy varchar (50) ,
 @TaxTypeId int
   
 as  
 begin  
 insert into tblStockManage(ProductCode,ProductName,BrandName,Quantity,SizeID,DistCountType,Discount,ProductMRP,ProductPrice,SellPrice,MFGDate,ExpriyDate,CreateBy,CreateDate,TaxTypeId)values(@ProductCode,@ProductName,@BrandName,@Quantity,@SizeID,@DistCountType,@Discount,@ProductMRP,@ProductPrice,@SellPrice,@MFGDate,@ExpriyDate,@CreateBy,GETDATE(),@TaxTypeId)  
 end
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblTax]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_TblTax]
	@CGST Decimal (18,4),
	@SGST decimal (18,4),
	@IGST decimal (18,4),
	@CreateBy varchar (20)
	as 
	begin
	insert into TblTax (CGST,SGST,IGST,CreateBy,CreateDate)VALUES (@CGST,@SGST,@IGST,@CreateBy,GETDATE())
	end
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblUSerMaster]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_TblUSerMaster]        
@Userid varchar(30),        
@Username varchar (200),        
@Mobile_no varchar (15),        
@Email_id varchar (500),        
@Company_Name varchar (500),        
@Password varchar (20),        
      
@User_Type int,        
@Address vARCHAR (1000),        
@Aadhar_No varchar  (12),        
@Pancard_No varchar (10),        
@Gstin_no varchar(50),        
@User_image varchar(500),        
@Aadhar_image varchar (500),        
@Pancard_image varchar (500),        
@Store_Name varchar (500),        
@Branch_Details varchar (max),        
@Dob DateTime,        
@Create_By varchar(30),        
@state varchar (200),        
@District varchar(200),        
@city varchar (200)  ,      
@Adhar_back_image varchar (400) ,  
@gender varchar(100)  
as        
begin        
insert into TblUSerMaster(UserId,UserName,Mobile_No,Email_id,Company_Name,Password,Status,User_Type,Address,Aadhar_No,Pancard_No,Gstin_no,User_Image,Aadhar_image,Pancard_image,Store_Name,Branch_details,Dob,ParentId,Create_On,State,distric,city,Adhar_back_image,Gender)values(@UserId,@UserName,@Mobile_No,@Email_id,@Company_Name,@Password,1,@User_Type,@Address,@Aadhar_No,@Pancard_No,@Gstin_no,@User_Image,@Aadhar_image,@Pancard_image,@Store_Name,@Branch_details,@Dob,@Create_By,GETDATE(),@State,@district,@city,@Adhar_back_image,@gender)        
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_UpdateOrderStatus]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Sp_UpdateOrderStatus]
@order_id varchar(30),
@status varchar(100),
@updatby varchar  (30)
as
begin
update TblOrderProduct set Order_Id=@order_id,Status=@status,UpdateBy=@updatby,UpdateDate=GETDATE() where Order_Id=@order_id
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_UserLogin]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[Sp_UserLogin]    
@Mobile_No varchar (300),    
@password varchar (20)    
as     
begin     
select *from  TblUSerMaster where (Mobile_No=@Mobile_No or Email_id=@Mobile_No  )and (Password=@password and Status=1 )
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_UserSearch]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[Sp_UserSearch]  
 @search varchar (100)  
 as  
 begin  
 select *from TblUSerMaster where  UserId like @search +'%' or UserName like @search +'%' or Mobile_No like @search +'%' or Email_id like @search +'%'  and User_Type>1
  
  end
GO
/****** Object:  StoredProcedure [dbo].[Sp_UserUpdate]    Script Date: 27-10-2024 10:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_UserUpdate]    
@Userid varchar(30),    
@Username varchar (200),      
@Mobile_no varchar (15),      
@Email_id varchar (500),      
@Company_Name varchar (500),      
@Password varchar (20),        
@Address vARCHAR (1000),      
@Aadhar_No varchar  (12),      
@Pancard_No varchar (10),      
@Gstin_no varchar(50),      
@User_image varchar(500),      
@Aadhar_image varchar (500),      
@Pancard_image varchar (500),      
@Store_Name varchar (500),      
@Branch_Details varchar (max),      
@Dob DateTime,      
@UpdateBy varchar(30),      
@state varchar (200),      
@District varchar(200),      
@city varchar (200)  ,  
@Adhar_back_image varchar(200)  ,
@gender varchar (100)
as    
begin    
update TblUSerMaster set UserName=@Username,Mobile_No=@Mobile_no,Email_id=@Email_id,Company_Name=@Company_Name,Password=@Password,Address=@Address,Aadhar_No=@Aadhar_No,Pancard_No=@Pancard_No,Gstin_no=@Gstin_no,    
User_Image=@User_image,Aadhar_image=@Aadhar_image,Pancard_image=@Pancard_image,Store_Name=@Store_Name,Branch_details=@Branch_Details,Dob=@Dob,UpdateBy=@UpdateBy,Update_On=getdate(),state=@state,Distric=@District,city=@city,Adhar_back_image=@Adhar_back_image ,gender=@gender where UserId=@Userid    
end
GO
USE [master]
GO
ALTER DATABASE [Product_management_DB] SET  READ_WRITE 
GO
