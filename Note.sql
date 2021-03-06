USE [Nota]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 4/03/2022 13:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdNote] [int] NULL,
	[Comments] [nvarchar](500) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Note]    Script Date: 4/03/2022 13:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Note](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Img] [nvarchar](4000) NULL,
	[Titulo] [nvarchar](500) NULL,
	[Contenido] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReplyComment]    Script Date: 4/03/2022 13:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReplyComment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdComment] [int] NULL,
	[RespComment] [nvarchar](500) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_ReplyComment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([Id], [IdNote], [Comments], [Date]) VALUES (45, 2, N'buena', CAST(N'2022-03-04T12:44:32.520' AS DateTime))
INSERT [dbo].[Comment] ([Id], [IdNote], [Comments], [Date]) VALUES (46, 1, N'<p>Buen tema</p>', CAST(N'2022-03-04T13:00:01.317' AS DateTime))
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Note] ON 

INSERT [dbo].[Note] ([Id], [Img], [Titulo], [Contenido]) VALUES (1, N'https://magodeozoficial.com/wp-content/uploads/2020/11/Portadacervezo-web.jpg', N'Mago de Oz', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
     consequat.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
     consequat.')
INSERT [dbo].[Note] ([Id], [Img], [Titulo], [Contenido]) VALUES (2, N'https://recursos.leotodo.com.pe/wp-content/uploads/2018/10/1-gato-negro-y-otros-cuentos.jpg', N'El Gato Negro', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
     consequat.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
     consequat.')
INSERT [dbo].[Note] ([Id], [Img], [Titulo], [Contenido]) VALUES (3, N'http://1.bp.blogspot.com/-mD0u7Ieyjqg/Tv4kjSN10YI/AAAAAAAAAzQ/-n13Q41uxbU/s1600/LA+SERPIENTE+DE+ORO.jpg', N'La Serpiente de Oro', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
     consequat.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
     consequat.')
INSERT [dbo].[Note] ([Id], [Img], [Titulo], [Contenido]) VALUES (4, N'https://global-uploads.webflow.com/6034d7d1f3e0f52c50b2adee/60e710db1c3ed16b7bfff0df_9788418008962_Cub.jpg', N'Iliada', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
     consequat.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
     consequat.')
INSERT [dbo].[Note] ([Id], [Img], [Titulo], [Contenido]) VALUES (5, N'https://media.revistaad.es/photos/60c745c1f8ba795ce91acd92/master/w_1600%2Cc_limit/196890.jpg', N'Luciernagas', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
     consequat.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
     consequat.')
INSERT [dbo].[Note] ([Id], [Img], [Titulo], [Contenido]) VALUES (6, N'https://i.pinimg.com/originals/e4/53/38/e45338179bbd061195f76c43998739d1.jpg', N'El lago', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
     consequat.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
     consequat.')
SET IDENTITY_INSERT [dbo].[Note] OFF
GO
