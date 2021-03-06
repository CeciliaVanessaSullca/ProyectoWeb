USE [master]
GO
/****** Object:  Database [BDAlquilerVehiculo]    Script Date: 21/06/2017 17:38:18 ******/
CREATE DATABASE [BDAlquilerVehiculo]
GO
USE [BDAlquilerVehiculo]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 21/06/2017 17:38:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[CodCliente] [varchar](10) NOT NULL,
	[ApePaterno] [varchar](100) NULL,
	[ApeMaterno] [varchar](100) NULL,
	[Nombres] [varchar](100) NULL,
	[FechaNacimiento] [date] NULL,
	[Edad] [int] NULL,
	[Calle] [varchar](200) NULL,
	[Pais] [varchar](200) NULL,
	[Departamento] [varchar](200) NULL,
	[Provincia] [varchar](200) NULL,
	[Distrito] [varchar](200) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[CodCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 21/06/2017 17:38:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marca](
	[CodMarca] [varchar](10) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Pais] [varchar](50) NULL,
 CONSTRAINT [PK_Marca] PRIMARY KEY CLUSTERED 
(
	[CodMarca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Modelo]    Script Date: 21/06/2017 17:38:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Modelo](
	[CodModelo] [varchar](10) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Puertas] [nchar](10) NULL,
	[Precio] [decimal](18, 2) NULL,
	[CodMarca] [varchar](10) NULL,
 CONSTRAINT [PK_Modelo] PRIMARY KEY CLUSTERED 
(
	[CodModelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Reserva]    Script Date: 21/06/2017 17:38:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Reserva](
	[CodReserva] [int] NOT NULL,
	[CodVehiculo] [varchar](10) NULL,
	[CodCliente] [varchar](10) NULL,
	[FechaReserva] [datetime] NULL,
	[Precio] [decimal](18, 2) NULL,
	[NroDias] [int] NULL,
	[NroRetraso] [int] NULL,
 CONSTRAINT [PK_Reserva] PRIMARY KEY CLUSTERED 
(
	[CodReserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vehiculo]    Script Date: 21/06/2017 17:38:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vehiculo](
	[CodVehiculo] [varchar](10) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Placa] [varchar](100) NULL,
	[Color] [varchar](20) NULL,
	[CodModelo] [varchar](10) NULL,
	[Disponible] [bit] NULL,
 CONSTRAINT [PK_Vehiculo] PRIMARY KEY CLUSTERED 
(
	[CodVehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Cliente] ([CodCliente], [ApePaterno], [ApeMaterno], [Nombres], [FechaNacimiento], [Edad], [Calle], [Pais], [Departamento], [Provincia], [Distrito]) VALUES (N'CL001', N'FARFAN', N'GUADALUPE', N'JEFFERSON', CAST(0x3C0D0B00 AS Date), 32, N'LOS CIPRESES', N'PERU', N'LIMA', N'LIMA', N'LA MOLINA')
GO
INSERT [dbo].[Cliente] ([CodCliente], [ApePaterno], [ApeMaterno], [Nombres], [FechaNacimiento], [Edad], [Calle], [Pais], [Departamento], [Provincia], [Distrito]) VALUES (N'CL002', N'GUERRERO', N'GONZALES', N'JOSE PAOLO', CAST(0x3C0D0B00 AS Date), 33, N'ALCANFORES', N'PERU', N'LIMA', N'LIMA', N'MIRAFLORES')
GO
INSERT [dbo].[Cliente] ([CodCliente], [ApePaterno], [ApeMaterno], [Nombres], [FechaNacimiento], [Edad], [Calle], [Pais], [Departamento], [Provincia], [Distrito]) VALUES (N'CL003', N'PIZARRO', N'BOSSIO', N'CLAUDIO', CAST(0xE8040B00 AS Date), 35, N'LOS CLAVELES', N'PERU', N'LIMA', N'LIMA', N'CALLAO')
GO
INSERT [dbo].[Cliente] ([CodCliente], [ApePaterno], [ApeMaterno], [Nombres], [FechaNacimiento], [Edad], [Calle], [Pais], [Departamento], [Provincia], [Distrito]) VALUES (N'CL004', N'VARGAS', N'RISCO', N'JUAN MANUEL', CAST(0x470C0B00 AS Date), 31, N'SANTOS CHOCANO', N'PERU', N'LIMA', N'LIMA', N'BREÑA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA001', N'TOYOTA', N'JAPON')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA002', N'KIA', N'KOREA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA003', N'PEUGEOT', N'FRANCIA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA004', N'VOLKSWAGEN', N'ALEMANIA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA005', N'HYUNDAI', N'KOREA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA006', N'DAEWOO', N'KOREA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA007', N'SEAT', N'ESPAÑA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA008', N'VOLVO', N'SUECIA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA009', N'ALFA ROMEO', N'ITALIA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA010', N'FERRARI', N'ITALIA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA011', N'LAMBORGHINI', N'ITALIA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA012', N'FIAT', N'ITALIA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA013', N'RENAULT', N'FRANCIA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA014', N'CITROËN', N'FRANCIA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA015', N'NISSAN', N'JAPON')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA016', N'MAZDA', N'JAPON')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA017', N'SUBARU', N'JAPON')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA018', N'MITSUBISHI', N'JAPON')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA019', N'HONDA', N'JAPON')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA020', N'AUDI', N'ALEMANIA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA021', N'MERCEDES BENZ', N'ALEMANIA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA022', N'BMW', N'ALEMANIA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA023', N'MINI', N'ALEMANIA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA024', N'PONTIAC', N'USA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA025', N'DODGE', N'USA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA026', N'JEEP', N'USA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA027', N'CHEVROLET', N'USA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA028', N'ASTON MARTIN', N'UK')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA029', N'BENTLEY', N'UK')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA030', N'JAGUAR', N'UK')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA031', N'LOTUS', N'UK')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA032', N'ROVER', N'UK')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA033', N'CHERY', N'CHINA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA034', N'CHANGAN', N'CHINA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA035', N'GREAT WALL', N'CHINA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA036', N'BYD', N'CHINA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA037', N'MG', N'CHINA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA038', N'GEELY', N'CHINA')
GO
INSERT [dbo].[Marca] ([CodMarca], [Descripcion], [Pais]) VALUES (N'MA039', N'HUMMER', N'EEUU')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO001', N'YARIS', N'4         ', CAST(13500.00 AS Decimal(18, 2)), N'MA001')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO002', N'COROLLA', N'4         ', CAST(17500.00 AS Decimal(18, 2)), N'MA001')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO003', N'RIO', N'4         ', CAST(13700.00 AS Decimal(18, 2)), N'MA002')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO004', N'CERATO', N'4         ', CAST(16500.00 AS Decimal(18, 2)), N'MA002')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO005', N'SPORTAGE', N'4         ', CAST(21300.00 AS Decimal(18, 2)), N'MA002')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO006', N'208', N'4         ', CAST(11900.00 AS Decimal(18, 2)), N'MA003')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO007', N'301', N'4         ', CAST(15900.00 AS Decimal(18, 2)), N'MA003')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO008', N'308cc', N'4         ', CAST(29200.00 AS Decimal(18, 2)), N'MA003')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO009', N'GOL', N'4         ', CAST(10900.00 AS Decimal(18, 2)), N'MA004')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO010', N'GOLF', N'4         ', CAST(18700.00 AS Decimal(18, 2)), N'MA004')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO011', N'JETTA', N'4         ', CAST(22300.00 AS Decimal(18, 2)), N'MA004')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO012', N'PASSAT', N'4         ', CAST(26500.00 AS Decimal(18, 2)), N'MA004')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO013', N'ACCENT', N'4         ', CAST(13900.00 AS Decimal(18, 2)), N'MA005')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO014', N'ELANTRA', N'4         ', CAST(16700.00 AS Decimal(18, 2)), N'MA005')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO015', N'TUCSON', N'4         ', CAST(20900.00 AS Decimal(18, 2)), N'MA005')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO016', N'SANTA FE', N'4         ', CAST(30900.00 AS Decimal(18, 2)), N'MA005')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO017', N'VERACRUZ', N'4         ', CAST(33900.00 AS Decimal(18, 2)), N'MA005')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO018', N'LEON', N'2         ', CAST(19900.00 AS Decimal(18, 2)), N'MA007')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO019', N'DUSTER', N'4         ', CAST(16900.00 AS Decimal(18, 2)), N'MA013')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO020', N'DS3', N'2         ', CAST(16800.00 AS Decimal(18, 2)), N'MA014')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO021', N'V16', N'4         ', CAST(9900.00 AS Decimal(18, 2)), N'MA015')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO022', N'TIIDA', N'4         ', CAST(12900.00 AS Decimal(18, 2)), N'MA015')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO023', N'VERSA', N'4         ', CAST(14500.00 AS Decimal(18, 2)), N'MA015')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO024', N'JUKE', N'4         ', CAST(18900.00 AS Decimal(18, 2)), N'MA015')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO025', N'QASHQAI', N'4         ', CAST(26900.00 AS Decimal(18, 2)), N'MA015')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO026', N'XTRAIL', N'4         ', CAST(31900.00 AS Decimal(18, 2)), N'MA015')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO027', N'MAZDA 3', N'4         ', CAST(19800.00 AS Decimal(18, 2)), N'MA016')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO028', N'MAZDA 6', N'4         ', CAST(24600.00 AS Decimal(18, 2)), N'MA016')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO029', N'IMPREZA', N'4         ', CAST(12900.00 AS Decimal(18, 2)), N'MA017')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO030', N'FORESTER', N'4         ', CAST(31900.00 AS Decimal(18, 2)), N'MA017')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO031', N'LANCER', N'4         ', CAST(17700.00 AS Decimal(18, 2)), N'MA018')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO032', N'ECLIPSE', N'4         ', CAST(29900.00 AS Decimal(18, 2)), N'MA018')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO033', N'CIVIC', N'4         ', CAST(15900.00 AS Decimal(18, 2)), N'MA019')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO034', N'ACCORD', N'4         ', CAST(24900.00 AS Decimal(18, 2)), N'MA019')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO035', N'CRV', N'4         ', CAST(30900.00 AS Decimal(18, 2)), N'MA019')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO036', N'PILOT', N'4         ', CAST(43600.00 AS Decimal(18, 2)), N'MA019')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO037', N'A1', N'4         ', CAST(32000.00 AS Decimal(18, 2)), N'MA020')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO038', N'A3', N'4         ', CAST(37000.00 AS Decimal(18, 2)), N'MA020')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO039', N'R8', N'4         ', CAST(117000.00 AS Decimal(18, 2)), N'MA020')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO040', N'LAND ROVER', N'4         ', CAST(45600.00 AS Decimal(18, 2)), N'MA032')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO041', N'QQ', N'4         ', CAST(7900.00 AS Decimal(18, 2)), N'MA033')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO042', N'FULWIN XR', N'4         ', CAST(10900.00 AS Decimal(18, 2)), N'MA033')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO043', N'NEW BEAT', N'4         ', CAST(10990.00 AS Decimal(18, 2)), N'MA033')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO044', N'TIGGO 3', N'4         ', CAST(15990.00 AS Decimal(18, 2)), N'MA033')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO045', N'TIGGO 5', N'4         ', CAST(17990.00 AS Decimal(18, 2)), N'MA033')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO046', N'BENNI', N'4         ', CAST(7650.00 AS Decimal(18, 2)), N'MA034')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO047', N'CS35', N'4         ', CAST(13500.00 AS Decimal(18, 2)), N'MA034')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO048', N'CS75', N'4         ', CAST(16800.00 AS Decimal(18, 2)), N'MA034')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO049', N'EADO XT', N'4         ', CAST(10900.00 AS Decimal(18, 2)), N'MA034')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO050', N'C30', N'4         ', CAST(8900.00 AS Decimal(18, 2)), N'MA035')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO051', N'M4', N'4         ', CAST(10800.00 AS Decimal(18, 2)), N'MA035')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO052', N'3', N'4         ', CAST(13900.00 AS Decimal(18, 2)), N'MA035')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO053', N'5', N'4         ', CAST(15900.00 AS Decimal(18, 2)), N'MA035')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO054', N'6', N'4         ', CAST(17900.00 AS Decimal(18, 2)), N'MA035')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO055', N'WINGLE 5', N'4         ', CAST(18900.00 AS Decimal(18, 2)), N'MA035')
GO
INSERT [dbo].[Modelo] ([CodModelo], [Descripcion], [Puertas], [Precio], [CodMarca]) VALUES (N'MO056', N'H2', N'6         ', CAST(120000.00 AS Decimal(18, 2)), N'MA039')
GO
INSERT [dbo].[Reserva] ([CodReserva], [CodVehiculo], [CodCliente], [FechaReserva], [Precio], [NroDias], [NroRetraso]) VALUES (1, N'VE001', N'CL001', CAST(0x0000A5A000000000 AS DateTime), CAST(250.00 AS Decimal(18, 2)), 1, 0)
GO
INSERT [dbo].[Reserva] ([CodReserva], [CodVehiculo], [CodCliente], [FechaReserva], [Precio], [NroDias], [NroRetraso]) VALUES (2, N'VE004', N'CL003', CAST(0x0000A5BD00000000 AS DateTime), CAST(700.00 AS Decimal(18, 2)), 3, 0)
GO
INSERT [dbo].[Reserva] ([CodReserva], [CodVehiculo], [CodCliente], [FechaReserva], [Precio], [NroDias], [NroRetraso]) VALUES (3, N'VE007', N'CL001', CAST(0x0000A5DC00000000 AS DateTime), CAST(500.00 AS Decimal(18, 2)), 2, 0)
GO
INSERT [dbo].[Reserva] ([CodReserva], [CodVehiculo], [CodCliente], [FechaReserva], [Precio], [NroDias], [NroRetraso]) VALUES (4, N'VE011', N'CL002', CAST(0x0000A69300000000 AS DateTime), CAST(300.00 AS Decimal(18, 2)), 1, 1)
GO
INSERT [dbo].[Reserva] ([CodReserva], [CodVehiculo], [CodCliente], [FechaReserva], [Precio], [NroDias], [NroRetraso]) VALUES (5, N'VE014', N'CL004', CAST(0x0000A61B00000000 AS DateTime), CAST(300.00 AS Decimal(18, 2)), 1, 1)
GO
INSERT [dbo].[Reserva] ([CodReserva], [CodVehiculo], [CodCliente], [FechaReserva], [Precio], [NroDias], [NroRetraso]) VALUES (6, N'VE010', N'CL001', CAST(0x0000A58800000000 AS DateTime), CAST(700.00 AS Decimal(18, 2)), 1, 0)
GO
INSERT [dbo].[Reserva] ([CodReserva], [CodVehiculo], [CodCliente], [FechaReserva], [Precio], [NroDias], [NroRetraso]) VALUES (7, N'VE014', N'CL004', CAST(0x0000A69500000000 AS DateTime), CAST(450.00 AS Decimal(18, 2)), 1, 1)
GO
INSERT [dbo].[Reserva] ([CodReserva], [CodVehiculo], [CodCliente], [FechaReserva], [Precio], [NroDias], [NroRetraso]) VALUES (8, N'VE014', N'CL004', CAST(0x0000A6BB00000000 AS DateTime), CAST(445.00 AS Decimal(18, 2)), 1, 2)
GO
INSERT [dbo].[Reserva] ([CodReserva], [CodVehiculo], [CodCliente], [FechaReserva], [Precio], [NroDias], [NroRetraso]) VALUES (9, N'VE014', N'CL004', CAST(0x0000A61400000000 AS DateTime), CAST(430.00 AS Decimal(18, 2)), 1, 2)
GO
INSERT [dbo].[Vehiculo] ([CodVehiculo], [Descripcion], [Placa], [Color], [CodModelo], [Disponible]) VALUES (N'VE001', N'SEDAN', N'X4E-855', N'AZUL', N'MO001', 0)
GO
INSERT [dbo].[Vehiculo] ([CodVehiculo], [Descripcion], [Placa], [Color], [CodModelo], [Disponible]) VALUES (N'VE002', N'SEDAN', N'142-RTO', N'BLANCO', N'MO001', 1)
GO
INSERT [dbo].[Vehiculo] ([CodVehiculo], [Descripcion], [Placa], [Color], [CodModelo], [Disponible]) VALUES (N'VE003', N'SEDAN', N'J9Y-334', N'ROJO', N'MO001', 1)
GO
INSERT [dbo].[Vehiculo] ([CodVehiculo], [Descripcion], [Placa], [Color], [CodModelo], [Disponible]) VALUES (N'VE004', N'SEDAN', N'N3D-556', N'VERDE', N'MO002', 0)
GO
INSERT [dbo].[Vehiculo] ([CodVehiculo], [Descripcion], [Placa], [Color], [CodModelo], [Disponible]) VALUES (N'VE005', N'SEDAN', N'X2E-855', N'AZUL', N'MO002', 0)
GO
INSERT [dbo].[Vehiculo] ([CodVehiculo], [Descripcion], [Placa], [Color], [CodModelo], [Disponible]) VALUES (N'VE006', N'SEDAN', N'D1W-039', N'NEGRO', N'MO003', 1)
GO
INSERT [dbo].[Vehiculo] ([CodVehiculo], [Descripcion], [Placa], [Color], [CodModelo], [Disponible]) VALUES (N'VE007', N'SEDAN', N'L9K-645', N'DORADO', N'MO004', 0)
GO
INSERT [dbo].[Vehiculo] ([CodVehiculo], [Descripcion], [Placa], [Color], [CodModelo], [Disponible]) VALUES (N'VE008', N'SUV', N'Q2C-855', N'PLOMO', N'MO005', 1)
GO
INSERT [dbo].[Vehiculo] ([CodVehiculo], [Descripcion], [Placa], [Color], [CodModelo], [Disponible]) VALUES (N'VE009', N'SEDAN', N'M3J-984', N'ROJO', N'MO006', 0)
GO
INSERT [dbo].[Vehiculo] ([CodVehiculo], [Descripcion], [Placa], [Color], [CodModelo], [Disponible]) VALUES (N'VE010', N'DEPORTIVO', N'H1L-338', N'NEGRO', N'MO008', 1)
GO
INSERT [dbo].[Vehiculo] ([CodVehiculo], [Descripcion], [Placa], [Color], [CodModelo], [Disponible]) VALUES (N'VE011', N'SEDAN', N'W9T-402', N'NEGRO', N'MO011', 0)
GO
INSERT [dbo].[Vehiculo] ([CodVehiculo], [Descripcion], [Placa], [Color], [CodModelo], [Disponible]) VALUES (N'VE012', N'SEDAN', N'V6V-001', N'DORADO', N'MO011', 1)
GO
INSERT [dbo].[Vehiculo] ([CodVehiculo], [Descripcion], [Placa], [Color], [CodModelo], [Disponible]) VALUES (N'VE013', N'SEDAN', N'M7Q-111', N'NEGRO', N'MO012', 1)
GO
INSERT [dbo].[Vehiculo] ([CodVehiculo], [Descripcion], [Placa], [Color], [CodModelo], [Disponible]) VALUES (N'VE014', N'SEDAN', N'P6W-663', N'AZUL', N'MO013', 0)
GO
INSERT [dbo].[Vehiculo] ([CodVehiculo], [Descripcion], [Placa], [Color], [CodModelo], [Disponible]) VALUES (N'VE015', N'SEDAN', N'363-NMO', N'AZUL', N'MO013', 1)
GO
INSERT [dbo].[Vehiculo] ([CodVehiculo], [Descripcion], [Placa], [Color], [CodModelo], [Disponible]) VALUES (N'VE016', N'SEDAN', N'664-PKO', N'BLANCO', N'MO012', 1)
GO
ALTER TABLE [dbo].[Modelo]  WITH CHECK ADD  CONSTRAINT [FK_Modelo_Marca] FOREIGN KEY([CodMarca])
REFERENCES [dbo].[Marca] ([CodMarca])
GO
ALTER TABLE [dbo].[Modelo] CHECK CONSTRAINT [FK_Modelo_Marca]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Cliente] FOREIGN KEY([CodCliente])
REFERENCES [dbo].[Cliente] ([CodCliente])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_Cliente]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Vehiculo] FOREIGN KEY([CodVehiculo])
REFERENCES [dbo].[Vehiculo] ([CodVehiculo])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_Vehiculo]
GO
ALTER TABLE [dbo].[Vehiculo]  WITH CHECK ADD  CONSTRAINT [FK_Vehiculo_Modelo] FOREIGN KEY([CodModelo])
REFERENCES [dbo].[Modelo] ([CodModelo])
GO
ALTER TABLE [dbo].[Vehiculo] CHECK CONSTRAINT [FK_Vehiculo_Modelo]
GO
USE [master]
GO
ALTER DATABASE [BDAlquilerVehiculo] SET  READ_WRITE 
GO
