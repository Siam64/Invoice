USE [master]
GO
/****** Object:  Database [Invoice]    Script Date: 11/20/2024 3:59:47 PM ******/
CREATE DATABASE [Invoice]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Invoice', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Invoice.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Invoice_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Invoice_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Invoice] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Invoice].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Invoice] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Invoice] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Invoice] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Invoice] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Invoice] SET ARITHABORT OFF 
GO
ALTER DATABASE [Invoice] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Invoice] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Invoice] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Invoice] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Invoice] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Invoice] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Invoice] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Invoice] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Invoice] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Invoice] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Invoice] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Invoice] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Invoice] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Invoice] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Invoice] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Invoice] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Invoice] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Invoice] SET RECOVERY FULL 
GO
ALTER DATABASE [Invoice] SET  MULTI_USER 
GO
ALTER DATABASE [Invoice] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Invoice] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Invoice] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Invoice] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Invoice] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Invoice] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Invoice', N'ON'
GO
ALTER DATABASE [Invoice] SET QUERY_STORE = ON
GO
ALTER DATABASE [Invoice] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Invoice]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/20/2024 3:59:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/20/2024 3:59:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/20/2024 3:59:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/20/2024 3:59:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/20/2024 3:59:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/20/2024 3:59:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/20/2024 3:59:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/20/2024 3:59:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/20/2024 3:59:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[CreateBy] [uniqueidentifier] NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 11/20/2024 3:59:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_Id] [int] NOT NULL,
	[PrintedBy] [uniqueidentifier] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[CreateBy] [uniqueidentifier] NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[ManualDiscount] [float] NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceItems]    Script Date: 11/20/2024 3:59:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Invoice_ID] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[ItemDiscount] [float] NOT NULL,
	[Price] [float] NOT NULL,
	[CreateBy] [uniqueidentifier] NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_InvoiceItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241114022213_CreateDb', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241117073511_createTable', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241117091358_createTableV2', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241118042246_fixtables', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241118050919_update-2024-11-18-v2', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241120083601_update-11-20-v1', N'8.0.10')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'348624a2-570e-4edf-befe-bd98f2ce9209', N'Developer89@firotech.com', N'DEVELOPER89@FIROTECH.COM', N'Developer89@firotech.com', N'DEVELOPER89@FIROTECH.COM', 1, N'AQAAAAIAAYagAAAAEJTY1sB/MtbzlcWkXv0a90bZJVAE/JSOg40tL0I7/m4x2BFdsAbaxcfB0F8Vk2GGOw==', N'NZ3ERMYJ3N32HYISETHV7TPFMJYWDOMV', N'52df1da4-8683-458e-9bbe-807900cdaf98', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', N'siam@siam.com', N'SIAM@SIAM.COM', N'siam@siam.com', N'SIAM@SIAM.COM', 1, N'AQAAAAIAAYagAAAAEDtCDP8ANGsEmbB9WFvNKqv8FL085oNkH1DgrWaqCRnzQ6GEeJeb08DYQFJ+nICXPg==', N'24ERLJM5FHL5W4SPSMXQUPKZ5PYWYLCO', N'f4da1e7e-62fd-45dd-ba0c-8dd1541c7f4f', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (1, N'samiul', N'017154185', N'dhaka', N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:07:38.4839314' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (2, N'sam', N'0135646', N'dhaka', N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:25:52.9006230' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (3, N'sam', N'01715644', N'dhaka', N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:30:18.2989518' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (4, N'sam', N'017652656', N'dhaka', N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:31:26.9480941' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (5, NULL, N'0171665615', NULL, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:34:18.3592034' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (6, N'samiul', N'015416516', N'dhaka', N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:42:53.8114886' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoice] ON 

INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount]) VALUES (1, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:07:38.5245228' AS DateTime2), 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount]) VALUES (2, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:16:17.4315931' AS DateTime2), 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount]) VALUES (3, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:20:14.7118866' AS DateTime2), 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount]) VALUES (4, 2, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:25:53.0903360' AS DateTime2), 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount]) VALUES (5, 3, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:30:18.4618895' AS DateTime2), 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount]) VALUES (6, 4, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:31:26.9626805' AS DateTime2), 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount]) VALUES (7, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:34:18.5997331' AS DateTime2), 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount]) VALUES (8, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:37:43.8418890' AS DateTime2), 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount]) VALUES (9, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:38:36.7685314' AS DateTime2), 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount]) VALUES (10, 6, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:42:54.0668850' AS DateTime2), 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount]) VALUES (11, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:48:58.0790705' AS DateTime2), 75)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount]) VALUES (12, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:50:01.8299234' AS DateTime2), 0.25)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount]) VALUES (13, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:50:22.5648694' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Invoice] OFF
GO
SET IDENTITY_INSERT [dbo].[InvoiceItems] ON 

INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt]) VALUES (1, 1, N'chocolate', 545, 0, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:07:38.5366502' AS DateTime2))
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt]) VALUES (2, 2, N'mojo', 4, 0, 120, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:16:17.7751368' AS DateTime2))
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt]) VALUES (3, 3, N'mojo', 4, 0, 120, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:20:14.7351629' AS DateTime2))
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt]) VALUES (4, 4, N'mojo', 4, 0, 120, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:25:57.3193651' AS DateTime2))
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt]) VALUES (5, 7, N'chocolate', 1, 0, 10, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:34:21.5802154' AS DateTime2))
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt]) VALUES (6, 8, N'chocolate', 15, 0, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:37:46.1537950' AS DateTime2))
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt]) VALUES (7, 9, N'Email sending in asp .net core mvc', 55, 0, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:38:36.7916422' AS DateTime2))
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt]) VALUES (8, 10, N'odonil', 55, 0, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:42:54.1301768' AS DateTime2))
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt]) VALUES (9, 11, N'odonil', 55, 0, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:48:58.2266514' AS DateTime2))
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt]) VALUES (10, 12, N'odonil', 55, 0, 8, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:50:01.8488748' AS DateTime2))
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt]) VALUES (11, 12, N'chocolate', 5, 3, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:50:01.8537329' AS DateTime2))
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt]) VALUES (12, 13, N'odonil', 55, 0, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-20T09:50:22.5842872' AS DateTime2))
SET IDENTITY_INSERT [dbo].[InvoiceItems] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 11/20/2024 3:59:47 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/20/2024 3:59:47 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 11/20/2024 3:59:47 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 11/20/2024 3:59:47 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 11/20/2024 3:59:47 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 11/20/2024 3:59:47 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/20/2024 3:59:47 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Invoice] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [PrintedBy]
GO
ALTER TABLE [dbo].[Invoice] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [ManualDiscount]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [Invoice] SET  READ_WRITE 
GO
