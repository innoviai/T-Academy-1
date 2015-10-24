USE [master]
GO
/****** Object:  Database [Performance]    Script Date: 24/10/2015 20:47:05 ******/
CREATE DATABASE [Performance]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Performance', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Performance.mdf' , SIZE = 1537024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Performance_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Performance_log.ldf' , SIZE = 517184KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Performance] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Performance].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Performance] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Performance] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Performance] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Performance] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Performance] SET ARITHABORT OFF 
GO
ALTER DATABASE [Performance] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Performance] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Performance] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Performance] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Performance] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Performance] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Performance] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Performance] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Performance] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Performance] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Performance] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Performance] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Performance] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Performance] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Performance] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Performance] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Performance] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Performance] SET RECOVERY FULL 
GO
ALTER DATABASE [Performance] SET  MULTI_USER 
GO
ALTER DATABASE [Performance] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Performance] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Performance] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Performance] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Performance] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Performance', N'ON'
GO
USE [Performance]
GO
/****** Object:  Table [dbo].[TestTable]    Script Date: 24/10/2015 20:47:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BirthDay] [datetime] NOT NULL,
	[Content] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [NonClusteredIndex-BirthdayColumn]    Script Date: 24/10/2015 20:47:05 ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-BirthdayColumn] ON [dbo].[TestTable]
(
	[BirthDay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Performance] SET  READ_WRITE 
GO
