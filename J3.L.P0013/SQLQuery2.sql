USE [master]
GO
/****** Object:  Database [P0013]    Script Date: 3/9/2020 4:19:41 PM ******/
CREATE DATABASE [P0013] ON  PRIMARY 
( NAME = N'P0013', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\P0013.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'P0013_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\P0013_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [P0013].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [P0013] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [P0013] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [P0013] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [P0013] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [P0013] SET ARITHABORT OFF 
GO
ALTER DATABASE [P0013] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [P0013] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [P0013] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [P0013] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [P0013] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [P0013] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [P0013] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [P0013] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [P0013] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [P0013] SET  ENABLE_BROKER 
GO
ALTER DATABASE [P0013] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [P0013] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [P0013] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [P0013] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [P0013] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [P0013] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [P0013] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [P0013] SET RECOVERY FULL 
GO
ALTER DATABASE [P0013] SET  MULTI_USER 
GO
ALTER DATABASE [P0013] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [P0013] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'P0013', N'ON'
GO
USE [P0013]
GO
/****** Object:  User [P0013]    Script Date: 3/9/2020 4:19:43 PM ******/
CREATE USER [P0013] FOR LOGIN [P0013] WITH DEFAULT_SCHEMA=[dbo]
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'P0013'
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 3/9/2020 4:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](100) NOT NULL,
	[MenuDetail] [ntext] NULL,
	[Price] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/9/2020 4:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductPicture] [text] NULL,
	[ProductContent] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_In_Menu]    Script Date: 3/9/2020 4:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_In_Menu](
	[ProductID] [int] NOT NULL,
	[MenuID] [int] NOT NULL,
 CONSTRAINT [PK_Product_In_Menu] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Product_In_Menu]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([MenuID])
GO
ALTER TABLE [dbo].[Product_In_Menu]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
USE [master]
GO
ALTER DATABASE [P0013] SET  READ_WRITE 
GO
