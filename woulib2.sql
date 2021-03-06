USE [master]
GO
/****** Object:  Database [Woulib]    Script Date: 2/7/2019 7:40:50 PM ******/
CREATE DATABASE [Woulib]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Woulib', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Woulib.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Woulib_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Woulib_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Woulib] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Woulib].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Woulib] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Woulib] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Woulib] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Woulib] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Woulib] SET ARITHABORT OFF 
GO
ALTER DATABASE [Woulib] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Woulib] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Woulib] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Woulib] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Woulib] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Woulib] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Woulib] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Woulib] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Woulib] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Woulib] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Woulib] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Woulib] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Woulib] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Woulib] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Woulib] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Woulib] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Woulib] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Woulib] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Woulib] SET  MULTI_USER 
GO
ALTER DATABASE [Woulib] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Woulib] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Woulib] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Woulib] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Woulib] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Woulib] SET QUERY_STORE = OFF
GO
USE [Woulib]
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
USE [Woulib]
GO
/****** Object:  Table [dbo].[COMPAGNIE]    Script Date: 2/7/2019 7:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPAGNIE](
	[ID_compagnie] [int] NULL,
	[vacation] [nvarchar](50) NULL,
	[adresse] [nchar](10) NULL,
	[telephone] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[website] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LICENSE]    Script Date: 2/7/2019 7:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LICENSE](
	[ID_license] [int] NOT NULL,
	[nom] [varchar](50) NULL,
	[prenom] [varchar](50) NULL,
	[type] [varchar](50) NULL,
	[nif] [varchar](50) NULL,
	[date_de_naissaince] [varchar](50) NULL,
	[groupe_sanguin] [varchar](50) NULL,
	[date_emission] [date] NULL,
	[date_expiration] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MACHINE]    Script Date: 2/7/2019 7:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MACHINE](
	[ID_machine] [int] NOT NULL,
	[annee] [nvarchar](50) NULL,
	[plaque] [nvarchar](50) NULL,
	[marque] [nvarchar](50) NULL,
	[sous_marque] [nvarchar](50) NULL,
	[modele] [nvarchar](50) NULL,
	[photo_corps] [nvarchar](50) NULL,
	[photo_vignette] [nvarchar](50) NULL,
	[photo_papier] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROFESSION]    Script Date: 2/7/2019 7:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROFESSION](
	[Id_profession] [int] NOT NULL,
	[Id_compagnie] [int] NULL,
	[type] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RIDE]    Script Date: 2/7/2019 7:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RIDE](
	[ID_ride] [int] NOT NULL,
	[heure_depart] [datetime] NULL,
	[heure_arrivee] [datetime] NULL,
	[point_de_depart] [nvarchar](max) NULL,
	[point_arrivee] [nvarchar](max) NULL,
	[prix] [int] NULL,
	[place_disponible] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER]    Script Date: 2/7/2019 7:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER](
	[mail] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[date_de_naissance] [date] NULL,
	[profession] [nvarchar](50) NULL,
	[sexe] [nchar](10) NULL,
	[nom] [nvarchar](50) NULL,
	[prenom] [nvarchar](50) NULL,
	[adresse] [nvarchar](50) NULL,
	[compagnie] [nvarchar](50) NULL,
	[telephone] [nvarchar](50) NULL,
	[photo] [nvarchar](max) NULL,
	[licence] [nvarchar](max) NULL,
	[groupe sanguin] [nchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Woulib] SET  READ_WRITE 
GO
