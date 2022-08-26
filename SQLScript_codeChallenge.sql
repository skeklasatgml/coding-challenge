USE [master]
GO
/****** Object:  Database [codingChallenge]    Script Date: 26-08-2022 14:06:17 ******/
CREATE DATABASE [codingChallenge]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'codingChallenge', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\codingChallenge.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'codingChallenge_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\codingChallenge_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [codingChallenge] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [codingChallenge].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [codingChallenge] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [codingChallenge] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [codingChallenge] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [codingChallenge] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [codingChallenge] SET ARITHABORT OFF 
GO
ALTER DATABASE [codingChallenge] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [codingChallenge] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [codingChallenge] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [codingChallenge] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [codingChallenge] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [codingChallenge] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [codingChallenge] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [codingChallenge] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [codingChallenge] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [codingChallenge] SET  ENABLE_BROKER 
GO
ALTER DATABASE [codingChallenge] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [codingChallenge] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [codingChallenge] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [codingChallenge] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [codingChallenge] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [codingChallenge] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [codingChallenge] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [codingChallenge] SET RECOVERY FULL 
GO
ALTER DATABASE [codingChallenge] SET  MULTI_USER 
GO
ALTER DATABASE [codingChallenge] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [codingChallenge] SET DB_CHAINING OFF 
GO
ALTER DATABASE [codingChallenge] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [codingChallenge] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [codingChallenge] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [codingChallenge] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'codingChallenge', N'ON'
GO
ALTER DATABASE [codingChallenge] SET QUERY_STORE = OFF
GO
USE [codingChallenge]
GO
/****** Object:  Table [dbo].[Offices]    Script Date: 26-08-2022 14:06:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offices](
	[OfficeId] [int] IDENTITY(1,1) NOT NULL,
	[OfficeName] [varchar](100) NOT NULL,
	[City] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Latitude] [decimal](18, 15) NULL,
	[Longitude] [decimal](18, 15) NULL,
 CONSTRAINT [PK_Office] PRIMARY KEY CLUSTERED 
(
	[OfficeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Offices] ON 
GO
INSERT [dbo].[Offices] ([OfficeId], [OfficeName], [City], [Email], [Latitude], [Longitude]) VALUES (1, N'Dunder Mifflin Ghent', N'Ghent', N'ghent@dundermifflin.com', CAST(51.043476000000000 AS Decimal(18, 15)), CAST(3.709138000000000 AS Decimal(18, 15)))
GO
INSERT [dbo].[Offices] ([OfficeId], [OfficeName], [City], [Email], [Latitude], [Longitude]) VALUES (2, N'Dunder Mifflin Kortrijk', N'Kortrijk', N'kortrijk@dundermifflin.com', CAST(50.822956000000000 AS Decimal(18, 15)), CAST(3.250962000000000 AS Decimal(18, 15)))
GO
INSERT [dbo].[Offices] ([OfficeId], [OfficeName], [City], [Email], [Latitude], [Longitude]) VALUES (3, N'Dunder Mifflin Harelbeke', N'Harelbeke', N'harelbeke@dundermifflin.com', CAST(50.855366000000000 AS Decimal(18, 15)), CAST(3.312553000000000 AS Decimal(18, 15)))
GO
INSERT [dbo].[Offices] ([OfficeId], [OfficeName], [City], [Email], [Latitude], [Longitude]) VALUES (4, N'Dunder Mifflin Antwerp', N'Antwerp', N'Antwerp@dundermifflin.com', CAST(51.212152890000000 AS Decimal(18, 15)), CAST(4.393257870000000 AS Decimal(18, 15)))
GO
INSERT [dbo].[Offices] ([OfficeId], [OfficeName], [City], [Email], [Latitude], [Longitude]) VALUES (5, N'Dunder Mifflin Nazareth', N'Nazareth', N'Nazareth@dundermifflin.com', CAST(51.002396000000000 AS Decimal(18, 15)), CAST(3.660040000000000 AS Decimal(18, 15)))
GO
SET IDENTITY_INSERT [dbo].[Offices] OFF
GO
USE [master]
GO
ALTER DATABASE [codingChallenge] SET  READ_WRITE 
GO
