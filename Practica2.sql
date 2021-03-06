USE [Bar]
GO
/****** Object:  Index [IndProve]    Script Date: 02/03/2019 04:25:05 a. m. ******/
DROP INDEX [IndProve] ON [dbo].[Proveedor]
GO
/****** Object:  Index [IndNumCont]    Script Date: 02/03/2019 04:25:05 a. m. ******/
DROP INDEX [IndNumCont] ON [dbo].[NumeroContacto]
GO
/****** Object:  Index [IndMesa]    Script Date: 02/03/2019 04:25:05 a. m. ******/
DROP INDEX [IndMesa] ON [dbo].[Mesa]
GO
/****** Object:  Index [IndEmpl]    Script Date: 02/03/2019 04:25:05 a. m. ******/
DROP INDEX [IndEmpl] ON [dbo].[Empleados]
GO
/****** Object:  Index [IndBebSA]    Script Date: 02/03/2019 04:25:05 a. m. ******/
DROP INDEX [IndBebSA] ON [dbo].[BebidaSA]
GO
/****** Object:  Index [iIdBCA]    Script Date: 02/03/2019 04:25:05 a. m. ******/
DROP INDEX [iIdBCA] ON [dbo].[BebidaCA]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 02/03/2019 04:25:05 a. m. ******/
DROP TABLE [dbo].[Proveedor]
GO
/****** Object:  Table [dbo].[NumeroContacto]    Script Date: 02/03/2019 04:25:05 a. m. ******/
DROP TABLE [dbo].[NumeroContacto]
GO
/****** Object:  Table [dbo].[Mesa]    Script Date: 02/03/2019 04:25:05 a. m. ******/
DROP TABLE [dbo].[Mesa]
GO
/****** Object:  Table [dbo].[Header]    Script Date: 02/03/2019 04:25:05 a. m. ******/
DROP TABLE [dbo].[Header]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 02/03/2019 04:25:05 a. m. ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Detail]    Script Date: 02/03/2019 04:25:05 a. m. ******/
DROP TABLE [dbo].[Detail]
GO
/****** Object:  Table [dbo].[Cerveza]    Script Date: 02/03/2019 04:25:05 a. m. ******/
DROP TABLE [dbo].[Cerveza]
GO
/****** Object:  Table [dbo].[BebidaSA]    Script Date: 02/03/2019 04:25:05 a. m. ******/
DROP TABLE [dbo].[BebidaSA]
GO
/****** Object:  Table [dbo].[BebidaCA]    Script Date: 02/03/2019 04:25:05 a. m. ******/
DROP TABLE [dbo].[BebidaCA]
GO
USE [master]
GO
/****** Object:  Database [Bar]    Script Date: 02/03/2019 04:25:05 a. m. ******/
DROP DATABASE [Bar]
GO
/****** Object:  Database [Bar]    Script Date: 02/03/2019 04:25:05 a. m. ******/
CREATE DATABASE [Bar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bar', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Bar.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Bar_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Bar_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Bar] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bar] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bar] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Bar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bar] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Bar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bar] SET RECOVERY FULL 
GO
ALTER DATABASE [Bar] SET  MULTI_USER 
GO
ALTER DATABASE [Bar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bar] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Bar] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Bar', N'ON'
GO
ALTER DATABASE [Bar] SET QUERY_STORE = OFF
GO
USE [Bar]
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
USE [Bar]
GO
/****** Object:  Table [dbo].[BebidaCA]    Script Date: 02/03/2019 04:25:05 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BebidaCA](
	[IdBebCA] [uniqueidentifier] NOT NULL,
	[NomBCA] [varchar](20) NOT NULL,
	[Marca] [varchar](20) NULL,
	[Precio] [money] NOT NULL,
	[Status] [char](1) NOT NULL,
 CONSTRAINT [IdBebCa] PRIMARY KEY CLUSTERED 
(
	[IdBebCA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BebidaSA]    Script Date: 02/03/2019 04:25:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BebidaSA](
	[IdBebSA] [uniqueidentifier] NOT NULL,
	[NomBCA] [varchar](20) NOT NULL,
	[Marca] [varchar](20) NULL,
	[Precio] [money] NOT NULL,
	[Status] [char](1) NOT NULL,
 CONSTRAINT [PK__BebidaSA_] PRIMARY KEY CLUSTERED 
(
	[IdBebSA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cerveza]    Script Date: 02/03/2019 04:25:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cerveza](
	[IdCerv] [uniqueidentifier] NOT NULL,
	[NomCerv] [varchar](30) NOT NULL,
	[Marca] [varchar](30) NULL,
	[Precio] [money] NOT NULL,
	[Status] [char](1) NOT NULL,
 CONSTRAINT [idCerv] PRIMARY KEY CLUSTERED 
(
	[IdCerv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detail]    Script Date: 02/03/2019 04:25:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detail](
	[Idticket] [uniqueidentifier] NOT NULL,
	[Cantidad] [tinyint] NOT NULL,
	[descripcion] [varchar](20) NOT NULL,
	[Importe] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Idticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 02/03/2019 04:25:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[IdEmpl] [uniqueidentifier] NOT NULL,
	[NomEmp] [varchar](50) NOT NULL,
	[FechaNaci] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Header]    Script Date: 02/03/2019 04:25:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Header](
	[Idticket] [uniqueidentifier] NOT NULL,
	[NomLocal] [varchar](50) NOT NULL,
	[Ubicacion] [varchar](50) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Personas] [tinyint] NOT NULL,
	[NomEmp] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Idticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mesa]    Script Date: 02/03/2019 04:25:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesa](
	[IdMesa] [tinyint] NOT NULL,
	[UbicMesa] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NumeroContacto]    Script Date: 02/03/2019 04:25:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NumeroContacto](
	[IdNumCont] [tinyint] NOT NULL,
	[NomCont] [varchar](50) NOT NULL,
	[NumCont] [varchar](12) NOT NULL,
	[Status] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNumCont] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 02/03/2019 04:25:07 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[IdProv] [uniqueidentifier] NOT NULL,
	[NomProv] [varchar](50) NOT NULL,
	[NumCont] [varchar](12) NOT NULL,
	[Status] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [iIdBCA]    Script Date: 02/03/2019 04:25:07 a. m. ******/
CREATE NONCLUSTERED INDEX [iIdBCA] ON [dbo].[BebidaCA]
(
	[IdBebCA] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IndBebSA]    Script Date: 02/03/2019 04:25:07 a. m. ******/
CREATE NONCLUSTERED INDEX [IndBebSA] ON [dbo].[BebidaSA]
(
	[IdBebSA] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IndEmpl]    Script Date: 02/03/2019 04:25:07 a. m. ******/
CREATE NONCLUSTERED INDEX [IndEmpl] ON [dbo].[Empleados]
(
	[NomEmp] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IndMesa]    Script Date: 02/03/2019 04:25:07 a. m. ******/
CREATE NONCLUSTERED INDEX [IndMesa] ON [dbo].[Mesa]
(
	[UbicMesa] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IndNumCont]    Script Date: 02/03/2019 04:25:07 a. m. ******/
CREATE NONCLUSTERED INDEX [IndNumCont] ON [dbo].[NumeroContacto]
(
	[NomCont] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IndProve]    Script Date: 02/03/2019 04:25:07 a. m. ******/
CREATE NONCLUSTERED INDEX [IndProve] ON [dbo].[Proveedor]
(
	[NomProv] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Bar] SET  READ_WRITE 
GO
