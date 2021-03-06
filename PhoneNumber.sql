USE [master]
GO
/****** Object:  Database [PhoneNumber]    Script Date: 10/14/2016 1:13:03 AM ******/
CREATE DATABASE [PhoneNumber]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PhoneNumber', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\PhoneNumber.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PhoneNumber_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\PhoneNumber_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PhoneNumber] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PhoneNumber].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PhoneNumber] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PhoneNumber] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PhoneNumber] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PhoneNumber] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PhoneNumber] SET ARITHABORT OFF 
GO
ALTER DATABASE [PhoneNumber] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PhoneNumber] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [PhoneNumber] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PhoneNumber] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PhoneNumber] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PhoneNumber] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PhoneNumber] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PhoneNumber] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PhoneNumber] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PhoneNumber] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PhoneNumber] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PhoneNumber] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PhoneNumber] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PhoneNumber] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PhoneNumber] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PhoneNumber] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PhoneNumber] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PhoneNumber] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PhoneNumber] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PhoneNumber] SET  MULTI_USER 
GO
ALTER DATABASE [PhoneNumber] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PhoneNumber] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PhoneNumber] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PhoneNumber] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [PhoneNumber]
GO
/****** Object:  Table [dbo].[PhoneNumber]    Script Date: 10/14/2016 1:13:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhoneNumber](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[PhoneNumber] [varchar](15) NULL,
	[Gender] [varchar](10) NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_PhoneNumber] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PhoneNumber] ON 

INSERT [dbo].[PhoneNumber] ([id], [Name], [PhoneNumber], [Gender], [Description]) VALUES (1, N'mo', N'555', N'g', N'5h')
INSERT [dbo].[PhoneNumber] ([id], [Name], [PhoneNumber], [Gender], [Description]) VALUES (2, N'Mohon', N'1751187215', N'', N'I am a Student.')
INSERT [dbo].[PhoneNumber] ([id], [Name], [PhoneNumber], [Gender], [Description]) VALUES (3, N'1', N'', N'', N'')
INSERT [dbo].[PhoneNumber] ([id], [Name], [PhoneNumber], [Gender], [Description]) VALUES (4, N'1', N'', N'', N'')
INSERT [dbo].[PhoneNumber] ([id], [Name], [PhoneNumber], [Gender], [Description]) VALUES (5, N'1', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[PhoneNumber] OFF
USE [master]
GO
ALTER DATABASE [PhoneNumber] SET  READ_WRITE 
GO
