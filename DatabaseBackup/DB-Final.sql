USE [Invoice]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/2/2024 2:06:46 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/2/2024 2:06:46 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/2/2024 2:06:46 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/2/2024 2:06:46 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/2/2024 2:06:46 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/2/2024 2:06:46 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/2/2024 2:06:46 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/2/2024 2:06:46 PM ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 12/2/2024 2:06:46 PM ******/
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
/****** Object:  Table [dbo].[Invoice]    Script Date: 12/2/2024 2:06:46 PM ******/
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
	[Due] [float] NOT NULL,
	[Paid] [float] NOT NULL,
	[PaymentMethod] [nvarchar](max) NOT NULL,
	[Total_Discount] [float] NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceItems]    Script Date: 12/2/2024 2:06:46 PM ******/
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
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241125024409_update25-11-24v1', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241125041911_update25-11-24v2', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241125044126_update25-11-24v3', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241127064207_update27-11-24v1', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241129040222_update29-11-24v1', N'8.0.10')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', N'user1@gmail.com', N'USER1@GMAIL.COM', N'user1@gmail.com', N'USER1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEIz6bPgX7Ni/ocMe9fS3PB87Ukucl19kn7dcYZEE43ufXMJ0+nXgBposP/RFUkQZiw==', N'EMNWWYLX7ANAUGCZIMUQTFIR7P7DXMUG', N'1b3fc8a8-1494-42f9-9433-4616b3d3d76c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'348624a2-570e-4edf-befe-bd98f2ce9209', N'Developer89@firotech.com', N'DEVELOPER89@FIROTECH.COM', N'Developer89@firotech.com', N'DEVELOPER89@FIROTECH.COM', 1, N'AQAAAAIAAYagAAAAEJTY1sB/MtbzlcWkXv0a90bZJVAE/JSOg40tL0I7/m4x2BFdsAbaxcfB0F8Vk2GGOw==', N'NZ3ERMYJ3N32HYISETHV7TPFMJYWDOMV', N'52df1da4-8683-458e-9bbe-807900cdaf98', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', N'siam@siam.com', N'SIAM@SIAM.COM', N'siam@siam.com', N'SIAM@SIAM.COM', 1, N'AQAAAAIAAYagAAAAEDtCDP8ANGsEmbB9WFvNKqv8FL085oNkH1DgrWaqCRnzQ6GEeJeb08DYQFJ+nICXPg==', N'24ERLJM5FHL5W4SPSMXQUPKZ5PYWYLCO', N'f4da1e7e-62fd-45dd-ba0c-8dd1541c7f4f', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (1, N'Samiul Alim', N'0171254959', N'Gazipur, Dhaka, Bangladesh', N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T07:57:10.9205478' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (2, N'Sam Brown', N'01644044785', N'Gazipur, Dhaka, Bangladesh', N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:00:34.9905194' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (3, NULL, N'3543', NULL, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:22:03.3952766' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (4, N'sami', N'0176582552', N'Gazipur, Dhaka, Bangladesh', N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:35:07.6760386' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (5, NULL, N'017256', NULL, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T09:13:40.8819637' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (6, N'Make it first', N'0156569', N'Gazipur, Dhaka, Bangladesh', N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-29T03:25:49.9612199' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (7, N'test', N'01852', N'Gazipur, Dhaka, Bangladesh', N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-29T03:54:58.3264109' AS DateTime2))
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Address], [CreateBy], [CreateAt]) VALUES (8, N'disco', N'65656', N'Gazipur, Dhaka, Bangladesh', N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-29T04:15:23.9183589' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoice] ON 

INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (1, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T07:57:11.0335054' AS DateTime2), 0, N'20241127135613', 15000, 0, 15000, N' Bank', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (2, 2, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:00:35.0063298' AS DateTime2), 1000, N'20241127075711', 114000, 0, 114000, N'Cash', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (3, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:10:31.0950091' AS DateTime2), 0, N'20241127140927', 500, 0, 500, N'Bkash', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (4, 2, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:11:18.9524689' AS DateTime2), 0, N'20241127081031', 5000000, 5000, 4995000, N' Rocket', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (5, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:13:36.2343099' AS DateTime2), 0, N'20241127081118', 50000, 855, 49145, N'Cash', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (6, 2, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:17:14.5576134' AS DateTime2), 0, N'20241127081336', 499998000, 500000, 499498000, N'Cash', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (7, 3, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:22:03.9215849' AS DateTime2), 0, N'20241127142141', 5000, 0, 5000, N' Bank', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (8, 2, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:29:20.1540842' AS DateTime2), 2.31, N'20241127082204', 5497.81, 1000.52, 4497.29, N'Cash', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (9, 4, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:35:07.6981794' AS DateTime2), 20000, N'20241127143057', 49984999, 0, 49984999, N'Nagad', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (10, 2, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:50:35.1418640' AS DateTime2), 0, N'20241127145014', 50000000, 0, 50000000, N' Rocket', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (11, 2, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:52:39.6111327' AS DateTime2), 45, N'20241127085036', 4665455, 8000, 4657455, N'Card', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (12, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:57:38.2385172' AS DateTime2), 0, N'20241127145722', 153000, 0, 153000, N' Bank', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (13, 2, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T09:05:37.9903514' AS DateTime2), 0, N'20241127150513', 153000, 0, 153000, N'Cash', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (14, 4, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T09:06:59.0180830' AS DateTime2), 5.36, N'20241127090538', 44.38, 8.12, 36.26, N'Cash', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (15, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T09:11:42.9857240' AS DateTime2), 0, N'20241127151114', 5000.53, 0, 5000.53, N'Cash', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (16, 5, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T09:13:40.9431669' AS DateTime2), 0, N'20241127151309', 50000.81, 0, 50000.81, N'Cash', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (17, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T09:30:13.3434157' AS DateTime2), 2000, N'20241127152729', 63000, 10000, 53000, N'Card', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (18, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T03:36:41.4561362' AS DateTime2), 0, N'20241128093545', 23000, 1000, 22000, N'Nagad', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (19, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T03:37:06.3197146' AS DateTime2), 0, N'20241128033641', 23000, 0, 23000, N' Rocket', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (20, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T03:53:23.4189963' AS DateTime2), 0, N'20241128095256', 23000, 0, 23000, N'Rocket', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (21, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T03:54:24.0541763' AS DateTime2), 0, N'20241128035323', 23000, 0, 23000, N'Bank', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (22, 4, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T04:24:33.4308671' AS DateTime2), 0, N'20241128102417', 23000, 0, 23000, N'Cash', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (23, 2, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T04:34:31.9864605' AS DateTime2), 0, N'20241128103413', 500, 0, 500, N'Bank', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (24, 1, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T04:41:08.4514196' AS DateTime2), 0, N'20241128104048', 500, 0, 500, N'Bank', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (25, 4, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T04:44:46.9744661' AS DateTime2), 0, N'20241128104430', 500, 0, 500, N'Bank', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (26, 2, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T00:00:00.0000000' AS DateTime2), N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T04:49:39.7240532' AS DateTime2), 0, N'20241128104923', 500, 0, 500, N'Bank', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (27, 2, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-28T00:00:00.0000000' AS DateTime2), N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-28T06:33:09.9847283' AS DateTime2), 100, N'20241128123232', 3800, 800, 3000, N'Rocket', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (28, 2, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-28T00:00:00.0000000' AS DateTime2), N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-28T06:34:36.8200859' AS DateTime2), 100, N'20241128123420', 3800, 800, 3000, N'Rocket', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (29, 2, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-28T00:00:00.0000000' AS DateTime2), N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-28T06:37:24.9314719' AS DateTime2), 0, N'20241128123712', 3900, 0, 3900, N'Bkash', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (30, 2, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-28T00:00:00.0000000' AS DateTime2), N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-28T06:38:36.7335362' AS DateTime2), 100, N'20241128063805', 3800, 800, 3000, N'Bkash', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (31, 2, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-28T00:00:00.0000000' AS DateTime2), N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-28T06:43:42.6997136' AS DateTime2), 0, N'20241128063836', 3900, 0, 3900, N'Bkash', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (32, 2, N'00000000-0000-0000-0000-000000000000', CAST(N'2024-11-28T00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2024-11-28T06:45:06.3668250' AS DateTime2), 0, N'20241128064342', 3900, 0, 3900, N'Rocket', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (33, 2, N'00000000-0000-0000-0000-000000000000', CAST(N'2024-11-28T00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2024-11-28T06:45:26.9604883' AS DateTime2), 0, N'20241128064506', 3900, 0, 3900, N'Card', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (34, 2, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-28T00:00:00.0000000' AS DateTime2), N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-28T07:10:56.9871557' AS DateTime2), 0, N'20241128131037', 3900, 0, 3900, N'Bank', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (35, 6, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-29T00:00:00.0000000' AS DateTime2), N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-29T03:25:50.3427005' AS DateTime2), 0, N'20241129092527', 3900, 0, 3900, N'Nagad', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (36, 2, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-29T00:00:00.0000000' AS DateTime2), N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-29T03:36:00.0512627' AS DateTime2), 0, N'20241129093433', 3900, 0, 3900, N'Cash', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (37, 7, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-29T00:00:00.0000000' AS DateTime2), N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-29T03:54:59.1944559' AS DateTime2), 0, N'20241129095442', 3900, 0, 3900, N'Card', 0)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (38, 8, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-29T00:00:00.0000000' AS DateTime2), N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-29T04:15:24.3039249' AS DateTime2), 0, N'20241129101507', 3900, 0, 3900, N'Cash', 1100)
INSERT [dbo].[Invoice] ([Id], [Customer_Id], [PrintedBy], [Date], [CreateBy], [CreateAt], [ManualDiscount], [Invoice_ID], [grandTotal], [Due], [Paid], [PaymentMethod], [Total_Discount]) VALUES (39, 2, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-29T00:00:00.0000000' AS DateTime2), N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-29T06:06:06.6899307' AS DateTime2), 481, N'20241129120423', 744000, 9800, 734200, N'Bank', 15741)
SET IDENTITY_INSERT [dbo].[Invoice] OFF
GO
SET IDENTITY_INSERT [dbo].[InvoiceItems] ON 

INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (1, N'20241127135613', N'Asp .net core course', 1, 0, 15000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T07:57:11.0857046' AS DateTime2), 1, 15000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (2, N'20241127075711', N'Report Generator', 1, 0, 15000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:00:35.0295321' AS DateTime2), 2, 15000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (3, N'20241127075711', N'Result Maker', 1, 0, 25000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:00:35.0323404' AS DateTime2), 2, 25000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (4, N'20241127075711', N'Attendence  keeper', 1, 0, 50000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:00:35.0340935' AS DateTime2), 2, 50000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (5, N'20241127075711', N'Notification System', 2, 0, 10000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:00:35.0493318' AS DateTime2), 2, 20000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (6, N'20241127075711', N'Time Keeper', 1, 0, 5000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:00:35.0515218' AS DateTime2), 2, 5000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (7, N'20241127140927', N'Email sending in asp .net core mvc', 1, 0, 500, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:10:31.3164902' AS DateTime2), 1, 500, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (8, N'20241127081031', N'Email sending in asp .net core mvc', 1, 0, 5000000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:11:18.9628842' AS DateTime2), 2, 5000000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (9, N'20241127081118', N'Email sending in asp .net core mvc', 1, 0, 50000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:13:36.2484788' AS DateTime2), 1, 50000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (10, N'20241127081336', N'Email sending in asp .net core mvc', 1, 2000, 500000000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:17:14.7767506' AS DateTime2), 2, 499998000, N'৳')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (11, N'20241127142141', N'Email sending in asp .net core mvc', 1, 0, 5000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:22:04.1352110' AS DateTime2), 3, 5000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (12, N'20241127082204', N'Email sending in asp .net core mvc', 1, 0, 500.41, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:29:20.1920869' AS DateTime2), 2, 500.41, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (13, N'20241127082204', N'Email sending in asp .net core mvc', 1, 1.1, 5000.81, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:29:20.2028877' AS DateTime2), 2, 4999.71, N'৳')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (14, N'20241127143057', N'Email sending in asp .net core mvc', 1, 1, 5000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:35:07.7158328' AS DateTime2), 4, 4999, N'৳')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (15, N'20241127143057', N'Email sending in asp .net core mvc', 1, 0, 50000000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:35:07.7245096' AS DateTime2), 4, 50000000, N'৳')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (16, N'20241127145014', N'Email sending in asp .net core mvc', 1, 0, 50000000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:50:35.7219086' AS DateTime2), 2, 50000000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (17, N'20241127085036', N'Email sending in asp .net core mvc', 1, 0, 4512500, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:52:39.6347505' AS DateTime2), 2, 4512500, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (18, N'20241127085036', N'Email sending in asp .net core mvc', 1, 0, 153000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:52:39.6435779' AS DateTime2), 2, 153000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (19, N'20241127145722', N'Email sending in asp .net core mvc', 1, 0, 153000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T08:57:38.2678489' AS DateTime2), 1, 153000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (20, N'20241127150513', N'Email sending in asp .net core mvc', 1, 0, 153000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T09:05:38.4996714' AS DateTime2), 2, 153000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (21, N'20241127090538', N'chocolate', 1, 1.63, 50.56, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T09:06:59.0511158' AS DateTime2), 4, 49.735872, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (22, N'20241127151114', N'asp', 1, 0, 5000.53, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T09:11:43.7533231' AS DateTime2), 1, 5000.53, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (23, N'20241127151309', N'Email sending in asp .net core mvc', 1, 0, 50000.81, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T09:13:40.9645794' AS DateTime2), 5, 50000.81, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (24, N'20241127152729', N'Report Generator', 1, 0, 5000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T09:30:13.8534204' AS DateTime2), 1, 5000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (25, N'20241127152729', N'Result Maker', 1, 5, 20000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T09:30:13.9358745' AS DateTime2), 1, 19000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (26, N'20241127152729', N'Time Keeper', 1, 0, 8000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T09:30:13.9427842' AS DateTime2), 1, 8000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (27, N'20241127152729', N'Attendence Keeper', 1, 0, 10000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T09:30:13.9465518' AS DateTime2), 1, 10000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (28, N'20241127152729', N'Notification System', 1, 8, 25000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-27T09:30:13.9504928' AS DateTime2), 1, 23000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (29, N'20241128093545', N'Notification System', 1, 8, 25000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T03:36:41.5774010' AS DateTime2), 1, 23000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (30, N'20241128033641', N'Notification System', 1, 8, 25000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T03:37:06.3352623' AS DateTime2), 1, 23000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (31, N'20241128095256', N'Notification System', 1, 8, 25000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T03:53:23.7076244' AS DateTime2), 1, 23000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (32, N'20241128035323', N'Notification System', 1, 8, 25000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T03:54:24.0801998' AS DateTime2), 1, 23000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (33, N'20241128102417', N'Notification System', 1, 8, 25000, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T04:24:33.6510852' AS DateTime2), 4, 23000, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (34, N'20241128103413', N'chocolate', 1, 0, 500, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T04:34:32.2814243' AS DateTime2), 2, 500, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (35, N'20241128104048', N'chocolate', 1, 0, 500, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T04:41:08.7809495' AS DateTime2), 1, 500, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (36, N'20241128104430', N'chocolate', 1, 0, 500, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T04:44:46.9970842' AS DateTime2), 4, 500, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (37, N'20241128104923', N'chocolate', 1, 0, 500, N'a20be9d7-9e26-4e2c-b961-fbaf1ef6ffef', CAST(N'2024-11-28T04:49:40.0415461' AS DateTime2), 2, 500, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (38, N'20241128123232', N'chocolate', 1, 22, 5000, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-28T06:33:10.0992568' AS DateTime2), 2, 3900, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (39, N'20241128123420', N'chocolate', 1, 22, 5000, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-28T06:34:36.8365144' AS DateTime2), 2, 3900, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (40, N'20241128123712', N'chocolate', 1, 22, 5000, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-28T06:37:25.2367398' AS DateTime2), 2, 3900, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (41, N'20241128063805', N'chocolate', 1, 22, 5000, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-28T06:38:36.7523985' AS DateTime2), 2, 3900, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (42, N'20241128063836', N'chocolate', 1, 22, 5000, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-28T06:43:42.7591054' AS DateTime2), 2, 3900, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (43, N'20241128064342', N'chocolate', 1, 22, 5000, N'00000000-0000-0000-0000-000000000000', CAST(N'2024-11-28T06:45:06.3871892' AS DateTime2), 2, 3900, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (44, N'20241128064506', N'chocolate', 1, 22, 5000, N'00000000-0000-0000-0000-000000000000', CAST(N'2024-11-28T06:45:26.9798156' AS DateTime2), 2, 3900, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (45, N'20241128131037', N'chocolate', 1, 22, 5000, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-28T07:10:57.2027245' AS DateTime2), 2, 3900, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (46, N'20241129092527', N'chocolate', 1, 22, 5000, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-29T03:25:50.4948693' AS DateTime2), 6, 3900, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (47, N'20241129093433', N'chocolate', 1, 22, 5000, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-29T03:36:00.5504260' AS DateTime2), 2, 3900, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (48, N'20241129095442', N'chocolate', 1, 22, 5000, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-29T03:54:59.4243157' AS DateTime2), 7, 3900, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (49, N'20241129101507', N'chocolate', 1, 22, 5000, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-29T04:15:24.5319166' AS DateTime2), 8, 3900, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (50, N'20241129120423', N'chocolate', 1, 22, 5000, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-29T06:06:07.3598311' AS DateTime2), 2, 3900, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (51, N'20241129120423', N'dfmkfef', 1, 11, 56000, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-29T06:06:07.3972542' AS DateTime2), 2, 49840, N'%')
INSERT [dbo].[InvoiceItems] ([Id], [Invoice_ID], [Description], [Quantity], [ItemDiscount], [Price], [CreateBy], [CreateAt], [Customer_Id], [TotalPrice], [discountType]) VALUES (52, N'20241129120423', N'dferferfefe', 1, 8000, 698741, N'1151c1ee-6fb3-4dab-90dc-6c3cb382faaf', CAST(N'2024-11-29T06:06:07.4025056' AS DateTime2), 2, 690741, N'৳')
SET IDENTITY_INSERT [dbo].[InvoiceItems] OFF
GO
ALTER TABLE [dbo].[Invoice] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [PrintedBy]
GO
ALTER TABLE [dbo].[Invoice] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [ManualDiscount]
GO
ALTER TABLE [dbo].[Invoice] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [grandTotal]
GO
ALTER TABLE [dbo].[Invoice] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [Due]
GO
ALTER TABLE [dbo].[Invoice] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [Paid]
GO
ALTER TABLE [dbo].[Invoice] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [Total_Discount]
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
