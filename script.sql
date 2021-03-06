USE [master]
GO
/****** Object:  Database [cakes]    Script Date: 10.10.2018 19:00:40 ******/
CREATE DATABASE [cakes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cakes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\cakes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'cakes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\cakes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [cakes] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cakes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cakes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cakes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cakes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cakes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cakes] SET ARITHABORT OFF 
GO
ALTER DATABASE [cakes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [cakes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cakes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cakes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cakes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cakes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cakes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cakes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cakes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cakes] SET  DISABLE_BROKER 
GO
ALTER DATABASE [cakes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cakes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cakes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cakes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cakes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cakes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cakes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cakes] SET RECOVERY FULL 
GO
ALTER DATABASE [cakes] SET  MULTI_USER 
GO
ALTER DATABASE [cakes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cakes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cakes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cakes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [cakes] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'cakes', N'ON'
GO
ALTER DATABASE [cakes] SET QUERY_STORE = OFF
GO
USE [cakes]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [cakes]
GO
/****** Object:  Table [dbo].[Korji]    Script Date: 10.10.2018 19:00:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Korji](
	[ID] [nchar](4) NOT NULL,
	[Name] [ntext] NULL,
	[Type] [ntext] NULL,
	[Ed. Izm.] [ntext] NULL,
	[Veight] [numeric](4, 0) NULL,
	[Price] [money] NULL,
 CONSTRAINT [PK_Korji] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Krema]    Script Date: 10.10.2018 19:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Krema](
	[ID] [nchar](4) NOT NULL,
	[Name] [ntext] NULL,
	[Type] [ntext] NULL,
	[Ed. Izm.] [ntext] NULL,
	[Veight] [numeric](4, 0) NULL,
	[Price] [money] NULL,
 CONSTRAINT [PK_Krema] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lenty]    Script Date: 10.10.2018 19:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lenty](
	[ID] [nchar](4) NOT NULL,
	[Name] [ntext] NULL,
	[Type] [ntext] NULL,
	[Ed. Izm.] [ntext] NULL,
	[Price] [money] NULL,
 CONSTRAINT [PK_Lenty] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nachinki]    Script Date: 10.10.2018 19:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nachinki](
	[ID] [nchar](4) NOT NULL,
	[Name] [ntext] NULL,
	[Type] [ntext] NULL,
	[Ed. Izm.] [ntext] NULL,
	[Veight] [numeric](4, 0) NULL,
	[Price] [money] NULL,
 CONSTRAINT [PK_Nachinki] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ukrashenia]    Script Date: 10.10.2018 19:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ukrashenia](
	[ID] [nchar](4) NOT NULL,
	[Name] [ntext] NULL,
	[Type] [ntext] NULL,
	[Ed. Izm.] [ntext] NULL,
	[Veight] [numeric](4, 0) NULL,
	[Price] [money] NULL,
 CONSTRAINT [PK_Ukrashenia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Upakovki]    Script Date: 10.10.2018 19:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Upakovki](
	[ID] [nchar](4) NOT NULL,
	[Name] [ntext] NULL,
	[Type] [ntext] NULL,
	[Ed. Izm.] [ntext] NULL,
	[Veight] [numeric](4, 0) NULL,
	[Price] [money] NULL,
 CONSTRAINT [PK_Upakovki2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Korji] ([ID], [Name], [Type], [Ed. Izm.], [Veight], [Price]) VALUES (N'bkor', N'бисквитный', N'корж', N'шт.', CAST(200 AS Numeric(4, 0)), 40.0000)
INSERT [dbo].[Korji] ([ID], [Name], [Type], [Ed. Izm.], [Veight], [Price]) VALUES (N'pkor', N'песочный', N'корж', N'шт.', CAST(180 AS Numeric(4, 0)), 40.0000)
INSERT [dbo].[Korji] ([ID], [Name], [Type], [Ed. Izm.], [Veight], [Price]) VALUES (N'tkor', N'творожный', N'корж', N'шт.', CAST(250 AS Numeric(4, 0)), 75.0000)
INSERT [dbo].[Korji] ([ID], [Name], [Type], [Ed. Izm.], [Veight], [Price]) VALUES (N'vkor', N'вафельный', N'корж', N'шт.', CAST(70 AS Numeric(4, 0)), 30.0000)
INSERT [dbo].[Krema] ([ID], [Name], [Type], [Ed. Izm.], [Veight], [Price]) VALUES (N'bkkr', N'белковый', N'крем', N'гр.', CAST(100 AS Numeric(4, 0)), 0.2300)
INSERT [dbo].[Krema] ([ID], [Name], [Type], [Ed. Izm.], [Veight], [Price]) VALUES (N'mskr', N'масляный', N'крем', N'гр.', CAST(100 AS Numeric(4, 0)), 0.3400)
INSERT [dbo].[Krema] ([ID], [Name], [Type], [Ed. Izm.], [Veight], [Price]) VALUES (N'tvkr', N'творожный', N'крем', N'гр.', CAST(100 AS Numeric(4, 0)), 0.4000)
INSERT [dbo].[Krema] ([ID], [Name], [Type], [Ed. Izm.], [Veight], [Price]) VALUES (N'vzsl', N'взбитые сливки', N'крем', N'гр.', CAST(100 AS Numeric(4, 0)), 0.5000)
INSERT [dbo].[Krema] ([ID], [Name], [Type], [Ed. Izm.], [Veight], [Price]) VALUES (N'ygkr', N'йогуртовый', N'крем', N'гр.', CAST(100 AS Numeric(4, 0)), 0.4400)
INSERT [dbo].[Lenty] ([ID], [Name], [Type], [Ed. Izm.], [Price]) VALUES (N'obln', N'обычная', N'лента', N'м.', 15.0000)
INSERT [dbo].[Lenty] ([ID], [Name], [Type], [Ed. Izm.], [Price]) VALUES (N'prln', N'праздничная', N'лента', N'м.', 25.0000)
INSERT [dbo].[Nachinki] ([ID], [Name], [Type], [Ed. Izm.], [Veight], [Price]) VALUES (N'cunc', N'цукаты', N'начинка', N'гр.', CAST(100 AS Numeric(4, 0)), 0.6350)
INSERT [dbo].[Nachinki] ([ID], [Name], [Type], [Ed. Izm.], [Veight], [Price]) VALUES (N'iznc', N'изюм', N'начинка', N'гр.', CAST(100 AS Numeric(4, 0)), 0.4280)
INSERT [dbo].[Nachinki] ([ID], [Name], [Type], [Ed. Izm.], [Veight], [Price]) VALUES (N'mdnc', N'M&Ms ', N'начинка', N'гр.', CAST(100 AS Numeric(4, 0)), 1.8500)
INSERT [dbo].[Nachinki] ([ID], [Name], [Type], [Ed. Izm.], [Veight], [Price]) VALUES (N'ornc', N'орех', N'начинка', N'гр.', CAST(100 AS Numeric(4, 0)), 1.2000)
INSERT [dbo].[Ukrashenia] ([ID], [Name], [Type], [Ed. Izm.], [Veight], [Price]) VALUES (N'uglz ', N'глазурь', N'украшение', N'шт.', CAST(150 AS Numeric(4, 0)), 100.0000)
INSERT [dbo].[Ukrashenia] ([ID], [Name], [Type], [Ed. Izm.], [Veight], [Price]) VALUES (N'umcf ', N'марципановая фигурка', N'украшение', N'шт.', CAST(25 AS Numeric(4, 0)), 25.0000)
INSERT [dbo].[Ukrashenia] ([ID], [Name], [Type], [Ed. Izm.], [Veight], [Price]) VALUES (N'ushk ', N'шоколодная крошка', N'украшение', N'шт.', CAST(80 AS Numeric(4, 0)), 75.0000)
INSERT [dbo].[Ukrashenia] ([ID], [Name], [Type], [Ed. Izm.], [Veight], [Price]) VALUES (N'uvis ', N'вишня', N'украшение', N'шт.', CAST(12 AS Numeric(4, 0)), 15.0000)
INSERT [dbo].[Ukrashenia] ([ID], [Name], [Type], [Ed. Izm.], [Veight], [Price]) VALUES (N'uzef ', N'зефир', N'украшение', N'шт.', CAST(30 AS Numeric(4, 0)), 14.0000)
INSERT [dbo].[Upakovki] ([ID], [Name], [Type], [Ed. Izm.], [Veight], [Price]) VALUES (N'krup', N'картонная', N'упаковка', N'шт.', CAST(150 AS Numeric(4, 0)), 25.0000)
INSERT [dbo].[Upakovki] ([ID], [Name], [Type], [Ed. Izm.], [Veight], [Price]) VALUES (N'plup', N'пластиковая', N'упаковка', N'шт.', CAST(200 AS Numeric(4, 0)), 50.0000)
USE [master]
GO
ALTER DATABASE [cakes] SET  READ_WRITE 
GO
