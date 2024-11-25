USE [Invoice]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/24/2024 10:52:37 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/24/2024 10:52:37 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/24/2024 10:52:37 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/24/2024 10:52:37 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/24/2024 10:52:37 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/24/2024 10:52:37 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/24/2024 10:52:37 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/24/2024 10:52:37 AM ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 11/24/2024 10:52:37 AM ******/
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
/****** Object:  Table [dbo].[Invoice]    Script Date: 11/24/2024 10:52:37 AM ******/
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
	[Invoice_ID] [nvarchar](max) NOT NULL,
	[grandTotal] [float] NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceItems]    Script Date: 11/24/2024 10:52:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Invoice_ID] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[ItemDiscount] [float] NOT NULL,
	[Price] [float] NOT NULL,
	[CreateBy] [uniqueidentifier] NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[Customer_Id] [int] NOT NULL,
	[TotalPrice] [float] NOT NULL,
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
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241121031737_update21-11-24v1', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241121070822_update21-11-24-v2', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241121080631_update21-11-24v3', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241121083307_update21-11-24v4', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241122053152_update22-11-24v1', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241122054201_update22-11-24v2', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241122062529_update22-11-24v3', N'8.0.10')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'348624a2-570e-4edf-befe-bd98f2ce9209', N'Developer89@firotech.com', N'DEVELOPER89@FIROTECH.COM', N'Developer89@firotech.com', N'DEVELOPER89@FIROTECH.COM', 1, N'AQAAAAIAAYagAAAAEJTY1sB/MtbzlcWkXv0a90bZJVAE/JSOg40tL0I7/m4x2BFdsAbaxcfB0F8Vk2GGOw==', N'NZ3ERMYJ3N32HYISETHV7TPFMJYWDOMV', N'52df1da4-8683-458e-9bbe-807900cdaf98', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', N'siam@siam.com', N'SIAM@SIAM.COM', N'siam@siam.com', N'SIAM@SIAM.COM', 1, N'AQAAAAIAAYagAAAAEDtCDP8ANGsEmbB9WFvNKqv8FL085oNkH1DgrWaqCRnzQ6GEeJeb08DYQFJ+nICXPg==', N'24ERLJM5FHL5W4SPSMXQUPKZ5PYWYLCO', N'f4da1e7e-62fd-45dd-ba0c-8dd1541c7f4f', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (1, NULL, N'0171545', NULL, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:00:20.0901215' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (2, N'akash', N'0171525', N'dhaka', N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:25:23.5375109' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (3, N'akash', N'0171525', N'dhaka', N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:25:24.2880338' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (4, N'Sam brown', N'017164', N'dhaka', N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:30:56.0606530' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (5, N'Samiul Alim', N'0171255489', N'Dhaka', N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T15:26:11.1249657' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (6, N'Samiul Alim', N'0171255489', N'Dhaka', N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T02:38:51.9799329' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (7, N'Samiul Alim', N'0171255489', N'Dhaka', N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T02:51:31.8134420' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (8, N'Samiul Alim', N'0171255489', N'Dhaka', N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T02:59:50.0986413' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (9, N'Samiul Alim', N'0171255489', N'Dhaka', N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T03:16:47.7715611' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoice] ON 

INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (1, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:00:20.1191601' AS DateTime2), 0, N'20241121145728', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (2, 2, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:25:23.7900950' AS DateTime2), 5, N'20241121152500', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (3, 3, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:25:54.8217668' AS DateTime2), 5, N'20241121152500', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (4, 4, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:30:56.0739799' AS DateTime2), 0.85, N'20241121152901', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (5, 4, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:33:34.2218230' AS DateTime2), 0.25, N'20241121153255', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (6, 4, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:55:32.5192131' AS DateTime2), 10, N'20241121155443', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (7, 4, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:56:19.2541967' AS DateTime2), 100, N'20241121095532', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (8, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T15:26:11.5415051' AS DateTime2), 1.8, N'20241121212430', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (9, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T15:34:00.9071454' AS DateTime2), 10, N'20241121213245', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (10, 4, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-22T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-22T05:46:36.8047389' AS DateTime2), 5, N'20241122114349', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (11, 4, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-22T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-22T05:53:57.8575667' AS DateTime2), 0, N'20241122115014', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (12, 4, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-22T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-22T06:06:11.6784112' AS DateTime2), 2, N'20241122120430', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (13, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-22T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-22T06:18:24.0650229' AS DateTime2), 5, N'20241122121717', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (14, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-22T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-22T06:27:14.3360898' AS DateTime2), 5, N'20241122122630', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (15, 4, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-22T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-22T06:28:06.5592812' AS DateTime2), 5, N'20241122062718', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (16, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-22T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-22T06:31:34.8172186' AS DateTime2), 5, N'20241122123118', 18.75)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (17, 6, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T02:38:52.2217598' AS DateTime2), 5, N'20241124083838', 18.75)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (18, 7, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T02:51:32.1038183' AS DateTime2), 0, N'20241124085124', 23.75)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (19, 8, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T02:59:50.2895184' AS DateTime2), 10, N'20241124085932', 12.5)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (20, 9, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T03:16:47.9634029' AS DateTime2), 0, N'20241124091642', 22.5)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (21, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T04:43:40.0947596' AS DateTime2), 1.5, N'20241124104151', 68)
SET IDENTITY_INSERT [dbo].[Invoice] OFF
GO
SET IDENTITY_INSERT [dbo].[InvoiceItems] ON 

INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (1, N'20241121145728', N'chocolate', 5, 0, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:00:20.1325551' AS DateTime2), 1, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (2, N'20241121152500', N'chocolate', 44, 5, 2, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:25:23.9216578' AS DateTime2), 2, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (3, N'20241121152500', N'chocolate', 44, 5, 2, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:25:54.8379862' AS DateTime2), 3, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (4, N'20241121152901', N'chocolate', 44, 5, 2, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:30:56.0881225' AS DateTime2), 4, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (5, N'20241121152901', N'mojo', 2, 0, 120, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:30:56.0943145' AS DateTime2), 4, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (6, N'20241121152901', N'tea', 1, 0, 255, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:30:56.0993679' AS DateTime2), 4, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (7, N'20241121152901', N'coffee', 1, 5, 255, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:30:56.1035628' AS DateTime2), 4, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (8, N'20241121153255', N'coffee', 1, 5, 255, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:33:34.4737497' AS DateTime2), 4, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (9, N'20241121153255', N'tea', 2, 0, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:33:34.4978017' AS DateTime2), 4, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (10, N'20241121153255', N'chocolate', 5, 0, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:33:34.5020939' AS DateTime2), 4, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (11, N'20241121155443', N'chocolate', 5, 0, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:55:32.8303114' AS DateTime2), 4, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (12, N'20241121155443', N'coffee', 45, 0, 100, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:55:32.8637542' AS DateTime2), 4, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (13, N'20241121155443', N'Tea', 5, 5, 100, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:55:32.8694495' AS DateTime2), 4, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (14, N'20241121095532', N'chocolate', 5, 0, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:56:19.2717350' AS DateTime2), 4, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (15, N'20241121095532', N'coffee', 5, 5, 100, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:56:19.2767848' AS DateTime2), 4, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (16, N'20241121095532', N'tea', 5, 0, 120, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T09:56:19.2829167' AS DateTime2), 4, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (17, N'20241121212430', N'tea', 5, 1, 120, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T15:26:11.7321845' AS DateTime2), 5, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (18, N'20241121212430', N'coffee', 5, 5, 100, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T15:26:11.8141734' AS DateTime2), 5, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (19, N'20241121212430', N'chocolate', 5, 10, 100, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T15:26:11.8250183' AS DateTime2), 5, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (20, N'20241121212430', N'icecream', 2, 1, 60, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T15:26:11.8347600' AS DateTime2), 5, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (21, N'20241121213245', N'icecream', 2, 1, 60, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T15:34:01.8825145' AS DateTime2), 5, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (22, N'20241121213245', N'asfg', 5, 2, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T15:34:01.9635280' AS DateTime2), 5, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (23, N'20241121213245', N'sdfgh', 52, 5, 22, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T15:34:01.9735079' AS DateTime2), 5, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (24, N'20241121213245', N'xcvb n ', 77, 3, 2, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-21T15:34:01.9814022' AS DateTime2), 5, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (25, N'20241122114349', N'xcvb n ', 77, 3, 2, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-22T05:46:37.6402733' AS DateTime2), 4, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (26, N'20241122115014', N'xcvb n ', 77, 3, 2, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-22T05:53:57.9783539' AS DateTime2), 4, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (27, N'20241122120430', N'chocolate', 5, 5, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-22T06:06:12.1585729' AS DateTime2), 4, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (28, N'20241122122630', N'chocolate', 5, 5, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-22T06:27:18.0153050' AS DateTime2), 5, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (29, N'20241122062718', N'chocolate', 5, 5, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-22T06:28:34.0700236' AS DateTime2), 4, 0)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (30, N'20241122123118', N'chocolate', 5, 5, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-22T06:31:57.4652122' AS DateTime2), 5, 23.75)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (31, N'20241124083838', N'chocolate', 5, 5, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T02:38:52.3024499' AS DateTime2), 6, 23.75)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (32, N'20241124085124', N'chocolate', 5, 5, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T02:51:32.2405875' AS DateTime2), 7, 23.75)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (33, N'20241124085932', N'chocolate', 5, 10, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T02:59:50.3769412' AS DateTime2), 8, 22.5)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (34, N'20241124091642', N'chocolate', 5, 10, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T03:16:48.0504895' AS DateTime2), 9, 22.5)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (35, N'20241124104151', N'chocolate', 5, 0, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T04:43:40.5560213' AS DateTime2), 5, 20)
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice]) VALUES (36, N'20241124104151', N'chocolate', 10, 0, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T04:43:40.5852241' AS DateTime2), 5, 49.5)
SET IDENTITY_INSERT [dbo].[InvoiceItems] OFF
GO
ALTER TABLE [dbo].[Invoice] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [PrintedBy]
GO
ALTER TABLE [dbo].[Invoice] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [ManualDiscount]
GO
ALTER TABLE [dbo].[Invoice] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [grandTotal]
GO
ALTER TABLE [dbo].[InvoiceItems] ADD  DEFAULT ((0)) FOR [Customer_Id]
GO
ALTER TABLE [dbo].[InvoiceItems] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [TotalPrice]
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
