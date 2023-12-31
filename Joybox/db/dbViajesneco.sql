USE [master]
GO
/****** Object:  Database [agencia_de_viajes]    Script Date: 24/11/2023 05:15:39 ******/
CREATE DATABASE [agencia_de_viajes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'agencia_de_viajes', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\agencia_de_viajes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'agencia_de_viajes_log', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\agencia_de_viajes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [agencia_de_viajes] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [agencia_de_viajes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [agencia_de_viajes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [agencia_de_viajes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [agencia_de_viajes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [agencia_de_viajes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [agencia_de_viajes] SET ARITHABORT OFF 
GO
ALTER DATABASE [agencia_de_viajes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [agencia_de_viajes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [agencia_de_viajes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [agencia_de_viajes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [agencia_de_viajes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [agencia_de_viajes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [agencia_de_viajes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [agencia_de_viajes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [agencia_de_viajes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [agencia_de_viajes] SET  DISABLE_BROKER 
GO
ALTER DATABASE [agencia_de_viajes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [agencia_de_viajes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [agencia_de_viajes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [agencia_de_viajes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [agencia_de_viajes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [agencia_de_viajes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [agencia_de_viajes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [agencia_de_viajes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [agencia_de_viajes] SET  MULTI_USER 
GO
ALTER DATABASE [agencia_de_viajes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [agencia_de_viajes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [agencia_de_viajes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [agencia_de_viajes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [agencia_de_viajes] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [agencia_de_viajes] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [agencia_de_viajes] SET QUERY_STORE = ON
GO
ALTER DATABASE [agencia_de_viajes] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [agencia_de_viajes]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 24/11/2023 05:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[Cliente_ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
	[Preferencias_de_viaje] [varchar](50) NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[Cliente_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotel]    Script Date: 24/11/2023 05:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotel](
	[Hotel_ID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
	[Categoria] [varchar](50) NULL,
	[Capacidad] [int] NULL,
	[tarifa] [int] NULL,
 CONSTRAINT [PK_hotel] PRIMARY KEY CLUSTERED 
(
	[Hotel_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paquete_de_viaje]    Script Date: 24/11/2023 05:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paquete_de_viaje](
	[Paquete_ID] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Precio] [int] NULL,
 CONSTRAINT [PK_paquete_de_viaje] PRIMARY KEY CLUSTERED 
(
	[Paquete_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedor]    Script Date: 24/11/2023 05:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedor](
	[Proveedor_ID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
 CONSTRAINT [PK_proveedor] PRIMARY KEY CLUSTERED 
(
	[Proveedor_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reserva]    Script Date: 24/11/2023 05:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reserva](
	[Reserva_ID] [int] NOT NULL,
	[Cliente_ID] [int] NULL,
	[Fecha_de_Reserva] [date] NULL,
	[Fecha_de_Viaje] [date] NULL,
	[Estado_de_Reserva] [varchar](50) NULL,
 CONSTRAINT [PK_reserva] PRIMARY KEY CLUSTERED 
(
	[Reserva_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vuelo]    Script Date: 24/11/2023 05:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vuelo](
	[Vuelo_ID] [int] NOT NULL,
	[Aerolinea] [varchar](50) NULL,
	[Origen] [varchar](50) NULL,
	[Destino] [varchar](50) NULL,
	[Fecha] [date] NULL,
	[Hora] [varchar](50) NULL,
	[Capacidad] [int] NULL,
	[Tarifa] [int] NULL,
 CONSTRAINT [PK_vuelo] PRIMARY KEY CLUSTERED 
(
	[Vuelo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [agencia_de_viajes] SET  READ_WRITE 
GO
