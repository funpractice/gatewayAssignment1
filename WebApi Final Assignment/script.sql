USE [master]
GO
/****** Object:  Database [HotelManagementSystem]    Script Date: 13-01-2021 16:50:04 ******/
CREATE DATABASE [HotelManagementSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HotelManagementSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HotelManagementSystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HotelManagementSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HotelManagementSystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HotelManagementSystem] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HotelManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HotelManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HotelManagementSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HotelManagementSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HotelManagementSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HotelManagementSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [HotelManagementSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HotelManagementSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HotelManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HotelManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HotelManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HotelManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HotelManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HotelManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HotelManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HotelManagementSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HotelManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HotelManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HotelManagementSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HotelManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HotelManagementSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HotelManagementSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HotelManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HotelManagementSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HotelManagementSystem] SET  MULTI_USER 
GO
ALTER DATABASE [HotelManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HotelManagementSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HotelManagementSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HotelManagementSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HotelManagementSystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HotelManagementSystem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [HotelManagementSystem] SET QUERY_STORE = OFF
GO
USE [HotelManagementSystem]
GO
/****** Object:  Table [dbo].[tbl_Bookings]    Script Date: 13-01-2021 16:50:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Bookings](
	[BookingId] [int] NOT NULL,
	[Date] [date] NULL,
	[Status] [nvarchar](50) NULL,
	[RoomId] [int] NULL,
 CONSTRAINT [PK_tbl_Bookings] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Hotels]    Script Date: 13-01-2021 16:50:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Hotels](
	[HotelId] [int] NOT NULL,
	[HotelName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Pincode] [int] NULL,
	[ContactNumber] [nvarchar](50) NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[Website] [nvarchar](50) NULL,
	[Facebook] [nvarchar](50) NULL,
	[Twitter] [nvarchar](50) NULL,
	[IsActive] [nvarchar](50) NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [date] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Hotels] PRIMARY KEY CLUSTERED 
(
	[HotelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Rooms]    Script Date: 13-01-2021 16:50:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Rooms](
	[RoomId] [int] NOT NULL,
	[RoomName] [nvarchar](50) NULL,
	[Category] [nvarchar](50) NULL,
	[Price] [smallmoney] NULL,
	[IsActive] [nvarchar](50) NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [date] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_tbl_Rooms_1] PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_Bookings] ([BookingId], [Date], [Status], [RoomId]) VALUES (1, CAST(N'2021-01-13' AS Date), N'Not Available', 1)
GO
INSERT [dbo].[tbl_Hotels] ([HotelId], [HotelName], [Address], [City], [Pincode], [ContactNumber], [ContactPerson], [Website], [Facebook], [Twitter], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'ShethSaab', N'Odhav', N'Ahmedabad', 382415, N'1234567897', N'Harshil', N'hdfjhsgfhsgfjh', N'Harshil', N'Harshil', N'1', CAST(N'2000-04-13' AS Date), N'Harshil', CAST(N'2019-08-16' AS Date), N'Rushil')
GO
INSERT [dbo].[tbl_Rooms] ([RoomId], [RoomName], [Category], [Price], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (1, N'501', N'FiveStar', 300.0000, N'0', CAST(N'2020-05-24' AS Date), N'Harshil', CAST(N'2020-06-18' AS Date), N'HarshilSheth', 1)
GO
ALTER TABLE [dbo].[tbl_Bookings]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Rooms_tbl_Bookings] FOREIGN KEY([RoomId])
REFERENCES [dbo].[tbl_Rooms] ([RoomId])
GO
ALTER TABLE [dbo].[tbl_Bookings] CHECK CONSTRAINT [FK_tbl_Rooms_tbl_Bookings]
GO
ALTER TABLE [dbo].[tbl_Rooms]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Hotels_tbl_Rooms] FOREIGN KEY([HotelId])
REFERENCES [dbo].[tbl_Hotels] ([HotelId])
GO
ALTER TABLE [dbo].[tbl_Rooms] CHECK CONSTRAINT [FK_tbl_Hotels_tbl_Rooms]
GO
USE [master]
GO
ALTER DATABASE [HotelManagementSystem] SET  READ_WRITE 
GO
