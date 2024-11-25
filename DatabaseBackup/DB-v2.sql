USE [Invoice]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/24/2024 4:15:13 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/24/2024 4:15:13 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/24/2024 4:15:13 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/24/2024 4:15:13 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/24/2024 4:15:13 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/24/2024 4:15:13 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/24/2024 4:15:13 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/24/2024 4:15:13 PM ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 11/24/2024 4:15:13 PM ******/
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
/****** Object:  Table [dbo].[Invoice]    Script Date: 11/24/2024 4:15:13 PM ******/
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
/****** Object:  Table [dbo].[InvoiceItems]    Script Date: 11/24/2024 4:15:13 PM ******/
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
	[discountType] [nvarchar](max) NOT NULL,
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
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241124052645_update24-11-24v1', N'8.0.10')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'348624a2-570e-4edf-befe-bd98f2ce9209', N'Developer89@firotech.com', N'DEVELOPER89@FIROTECH.COM', N'Developer89@firotech.com', N'DEVELOPER89@FIROTECH.COM', 1, N'AQAAAAIAAYagAAAAEJTY1sB/MtbzlcWkXv0a90bZJVAE/JSOg40tL0I7/m4x2BFdsAbaxcfB0F8Vk2GGOw==', N'NZ3ERMYJ3N32HYISETHV7TPFMJYWDOMV', N'52df1da4-8683-458e-9bbe-807900cdaf98', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', N'siam@siam.com', N'SIAM@SIAM.COM', N'siam@siam.com', N'SIAM@SIAM.COM', 1, N'AQAAAAIAAYagAAAAEDtCDP8ANGsEmbB9WFvNKqv8FL085oNkH1DgrWaqCRnzQ6GEeJeb08DYQFJ+nICXPg==', N'24ERLJM5FHL5W4SPSMXQUPKZ5PYWYLCO', N'f4da1e7e-62fd-45dd-ba0c-8dd1541c7f4f', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (1, N'Samiul Alim', N'01712547812', N'Gazipur, Dhaka', N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T05:42:14.0878163' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (5, N'Sam Brown', N'01644877495', N'Uttara, Dhaka, Bangladesh', N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T08:47:39.9267759' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoice] ON 

INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (1, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T05:42:14.1135233' AS DateTime2), 4, N'20241124114022', 420)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (2, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T05:44:55.7091134' AS DateTime2), 3, N'20241124114406', 110)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (3, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T05:51:56.0483142' AS DateTime2), 0, N'20241124115107', 40)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (4, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T06:07:01.7288546' AS DateTime2), 0, N'20241124120626', 4.75)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (5, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T06:31:49.9204064' AS DateTime2), 0, N'20241124123125', 4)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (6, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T06:56:49.1494272' AS DateTime2), 0, N'20241124125631', 4)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (7, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T06:58:59.2594724' AS DateTime2), 0, N'20241124125653', 549.95)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (8, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T07:29:21.9799050' AS DateTime2), 0, N'20241124132834', 100)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (9, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T07:32:16.3298229' AS DateTime2), 0, N'20241124132834', 100)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (10, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T08:01:46.3760023' AS DateTime2), 0, N'20241124140131', 10)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (11, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T08:26:57.2652869' AS DateTime2), 0, N'20241124142644', 10)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (12, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T08:47:40.2795267' AS DateTime2), 0, N'20241124144528', 265)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (13, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T08:54:31.5392764' AS DateTime2), 10, N'20241124145357', 40)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (14, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T09:30:27.1318539' AS DateTime2), 0, N'20241124152949', 31)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal]) VALUES (15, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T09:46:41.7398305' AS DateTime2), 288, N'20241124154522', 3000)
SET IDENTITY_INSERT [dbo].[Invoice] OFF
GO
SET IDENTITY_INSERT [dbo].[InvoiceItems] ON 

INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (1, N'20241124114022', N'Icecream', 1, 10, 60, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T05:42:14.1275421' AS DateTime2), 1, 54, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (2, N'20241124114022', N'Chocolate', 10, 5, 2, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T05:42:14.1371891' AS DateTime2), 1, 15, N'৳')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (3, N'20241124114022', N'Mojo', 1, 10, 120, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T05:42:14.1412772' AS DateTime2), 1, 110, N'৳')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (4, N'20241124114022', N'kitkat', 10, 2, 25, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T05:42:14.1469966' AS DateTime2), 1, 245, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (5, N'20241124114406', N'kitkat', 1, 2, 25, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T05:44:55.7395194' AS DateTime2), 1, 23, N'৳')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (6, N'20241124114406', N'orio', 2, 10, 50, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T05:44:55.7471377' AS DateTime2), 1, 90, N'৳')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (7, N'20241124115107', N'orio', 1, 10, 50, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T05:51:56.0656534' AS DateTime2), 1, 40, N'৳')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (8, N'20241124120626', N'Email sending in asp .net core mvcfggffb', 1, 5, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T06:07:01.8686862' AS DateTime2), 1, 4.75, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (9, N'20241124123125', N'chocolate', 1, 1, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T06:31:49.9771124' AS DateTime2), 1, 4, N'৳')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (10, N'20241124125631', N'chocolate', 1, 1, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T06:56:49.1630268' AS DateTime2), 1, 4, N'৳')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (11, N'20241124125653', N'chocolate', 1, 1, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T06:58:59.2807305' AS DateTime2), 1, 4.95, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (12, N'20241124125653', N'Egg', 30, 5, 15, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T06:58:59.2868379' AS DateTime2), 1, 445, N'৳')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (13, N'20241124125653', N'Tea', 1, 0, 100, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T06:58:59.2952253' AS DateTime2), 1, 100, N'৳')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (14, N'20241124132834', N'Tea', 1, 0, 100, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T07:29:22.1062438' AS DateTime2), 1, 100, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (15, N'20241124132834', N'Tea', 1, 0, 100, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T07:32:16.3511760' AS DateTime2), 1, 100, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (16, N'20241124140131', N'chocolate', 1, 0, 10, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T08:01:46.6830263' AS DateTime2), 1, 10, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (17, N'20241124142644', N'chocolate', 1, 0, 10, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T08:26:57.6284868' AS DateTime2), 1, 10, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (18, N'20241124144528', N'Coke', 2, 10, 130, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T08:47:40.4015129' AS DateTime2), 5, 250, N'৳')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (19, N'20241124144528', N'chocolate', 1, 5, 10, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T08:47:40.4272321' AS DateTime2), 5, 5, N'৳')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (20, N'20241124144528', N'chocolate', 1, 0, 10, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T08:47:40.4317567' AS DateTime2), 5, 10, N'৳')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (21, N'20241124145357', N'chocolate', 1, 0, 10, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T08:54:31.8664073' AS DateTime2), 5, 10, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (22, N'20241124145357', N'chocolate', 1, 0, 10, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T08:54:31.9047541' AS DateTime2), 5, 10, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (23, N'20241124145357', N'chocolate', 1, 0, 10, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T08:54:31.9107563' AS DateTime2), 5, 10, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (24, N'20241124145357', N'chocolate', 1, 0, 10, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T08:54:31.9159160' AS DateTime2), 5, 10, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (25, N'20241124145357', N'chocolate', 1, 0, 10, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T08:54:31.9201205' AS DateTime2), 5, 10, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (26, N'20241124152949', N'chocolate', 1, 0, 10, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T09:30:27.5435174' AS DateTime2), 5, 10, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (27, N'20241124152949', N'chocolate', 1, 0, 10, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T09:30:27.6144241' AS DateTime2), 5, 10, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (28, N'20241124152949', N'sdfdsfgdgdsfdfdefddffdfdfdfd', 1, 0, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T09:30:27.6255926' AS DateTime2), 5, 5, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (29, N'20241124152949', N'Email sending in asp .net core mvc', 1, 0, 6, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T09:30:27.6586273' AS DateTime2), 5, 6, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (30, N'20241124154522', N'Email sending in asp .net core mvc', 1, 0, 6, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T09:46:42.3317205' AS DateTime2), 1, 6, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (31, N'20241124154522', N'Email sending in asp .net core mvc', 1, 0, 6, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T09:46:42.3765034' AS DateTime2), 1, 6, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (32, N'20241124154522', N'Email sending in asp .net core mvc', 1, 4, 600, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T09:46:42.3836112' AS DateTime2), 1, 576, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (33, N'20241124154522', N'Email sending in asp .net core mvc', 1, 100, 600, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T09:46:42.3879384' AS DateTime2), 1, 500, N'৳')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (34, N'20241124154522', N'Email sending in asp .net core mvc', 1, 0, 600, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T09:46:42.3940123' AS DateTime2), 1, 600, N'৳')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (35, N'20241124154522', N'Email sending in asp .net core mvc', 1, 100, 600, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T09:46:42.3980020' AS DateTime2), 1, 500, N'৳')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (36, N'20241124154522', N'Email sending in asp .net core mvc', 1, 100, 1200, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-24T09:46:42.4017972' AS DateTime2), 1, 1100, N'৳')
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
ALTER TABLE [dbo].[InvoiceItems] ADD  DEFAULT (N'') FOR [discountType]
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
