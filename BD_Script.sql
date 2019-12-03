USE [BDRestaurantes]
GO
/****** Object:  Table [dbo].[t_usuariocuenta]    Script Date: 11/28/2019 12:57:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_usuariocuenta](
	[usua_id] [bigint] NOT NULL,
	[ticta_id] [int] NOT NULL,
	[uscta_numero] [nvarchar](20) NULL,
	[uscta_titular] [nvarchar](70) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[t_usuariocuenta] ([usua_id], [ticta_id], [uscta_numero], [uscta_titular]) VALUES (2, 1, N'194-07825-19', N'Camila Galván')
/****** Object:  Table [dbo].[t_usuario]    Script Date: 11/28/2019 12:57:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_usuario](
	[usua_id] [bigint] IDENTITY(1,1) NOT NULL,
	[usua_email] [nvarchar](70) NOT NULL,
	[usua_pass] [nvarchar](20) NULL,
	[usua_nomb] [nvarchar](70) NULL,
	[usua_dni] [nvarchar](8) NULL,
	[usua_direc] [nvarchar](100) NULL,
	[dist_id] [int] NULL,
	[usua_refedirec] [nvarchar](100) NULL,
	[usua_fecnac] [datetime] NULL,
	[usua_rutaimagen] [nvarchar](150) NULL,
	[usua_esta] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[usua_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[t_usuario] ON
INSERT [dbo].[t_usuario] ([usua_id], [usua_email], [usua_pass], [usua_nomb], [usua_dni], [usua_direc], [dist_id], [usua_refedirec], [usua_fecnac], [usua_rutaimagen], [usua_esta]) VALUES (4, N'camilastrid.09@gmail.com', N'87654321', N'Camila Astrid Prado Galván', N'12436578', N'Av. casimiro Ulloa 534 miraflores', 16, N'Frente a ESSAULD', CAST(0x00008DF400000000 AS DateTime), NULL, NULL)
INSERT [dbo].[t_usuario] ([usua_id], [usua_email], [usua_pass], [usua_nomb], [usua_dni], [usua_direc], [dist_id], [usua_refedirec], [usua_fecnac], [usua_rutaimagen], [usua_esta]) VALUES (5, N'pedro@gmail.com', N'982234312', N'Pedro Falla', N'98765432', N'Av. los precursores Santiafo de suro', 11, NULL, NULL, NULL, NULL)
INSERT [dbo].[t_usuario] ([usua_id], [usua_email], [usua_pass], [usua_nomb], [usua_dni], [usua_direc], [dist_id], [usua_refedirec], [usua_fecnac], [usua_rutaimagen], [usua_esta]) VALUES (14, N'jorge.prado.80@gmail.com', N'12345678', N'Jorge Eduardo Prado Moreno', N'12321232', N'Av. Los Próceres nro 323 Urb. Los Viñedos de Surco', 23, N'Esq. Luis Dextre con Parque Villa Alegre', CAST(0x0000AB0E00000000 AS DateTime), NULL, NULL)
INSERT [dbo].[t_usuario] ([usua_id], [usua_email], [usua_pass], [usua_nomb], [usua_dni], [usua_direc], [dist_id], [usua_refedirec], [usua_fecnac], [usua_rutaimagen], [usua_esta]) VALUES (16, N'jprado@gmail.com', N'asas1212', N'Jesús Cáceres', N'12121239', N'abcd 1212 asas', 16, NULL, CAST(0x000088D000000000 AS DateTime), NULL, NULL)
INSERT [dbo].[t_usuario] ([usua_id], [usua_email], [usua_pass], [usua_nomb], [usua_dni], [usua_direc], [dist_id], [usua_refedirec], [usua_fecnac], [usua_rutaimagen], [usua_esta]) VALUES (17, N'jeduardo_80@yahoo.es', N'kj23hu3', N'Estuardo Martinez Galarreta', N'99223274', N'Av. guardia Civil', 11, NULL, CAST(0x00008A8300000000 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[t_usuario] OFF
/****** Object:  Table [dbo].[t_tipotelefono]    Script Date: 11/28/2019 12:57:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_tipotelefono](
	[tite_id] [int] NOT NULL,
	[tite_descrip] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[tite_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[t_tipotelefono] ([tite_id], [tite_descrip]) VALUES (1, N'Fijo')
INSERT [dbo].[t_tipotelefono] ([tite_id], [tite_descrip]) VALUES (2, N'Celular')
INSERT [dbo].[t_tipotelefono] ([tite_id], [tite_descrip]) VALUES (3, N'Whatsapp')
/****** Object:  Table [dbo].[t_tipocta]    Script Date: 11/28/2019 12:57:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_tipocta](
	[ticta_id] [int] NOT NULL,
	[ticta_descrip] [nvarchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[ticta_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[t_tipocta] ([ticta_id], [ticta_descrip]) VALUES (1, N'Ahorro')
INSERT [dbo].[t_tipocta] ([ticta_id], [ticta_descrip]) VALUES (2, N'Cta Cte')
INSERT [dbo].[t_tipocta] ([ticta_id], [ticta_descrip]) VALUES (3, N'Débito')
/****** Object:  Table [dbo].[t_tipocomida]    Script Date: 11/28/2019 12:57:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_tipocomida](
	[tico_id] [int] NOT NULL,
	[tico_descrip] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[tico_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[t_tipocomida] ([tico_id], [tico_descrip]) VALUES (1, N'Entrada')
INSERT [dbo].[t_tipocomida] ([tico_id], [tico_descrip]) VALUES (2, N'Principal')
INSERT [dbo].[t_tipocomida] ([tico_id], [tico_descrip]) VALUES (3, N'Bebida')
INSERT [dbo].[t_tipocomida] ([tico_id], [tico_descrip]) VALUES (4, N'Postre')
/****** Object:  Table [dbo].[t_telefono]    Script Date: 11/28/2019 12:57:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_telefono](
	[usua_id] [bigint] NOT NULL,
	[tite_id] [int] NOT NULL,
	[tele_nume] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[usua_id] ASC,
	[tite_id] ASC,
	[tele_nume] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[t_telefono] ([usua_id], [tite_id], [tele_nume]) VALUES (1, 1, N'013033981')
INSERT [dbo].[t_telefono] ([usua_id], [tite_id], [tele_nume]) VALUES (1, 2, N'951072072')
INSERT [dbo].[t_telefono] ([usua_id], [tite_id], [tele_nume]) VALUES (2, 1, N'012571132')
/****** Object:  Table [dbo].[t_sesion]    Script Date: 11/28/2019 12:57:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_sesion](
	[sesi_id] [bigint] IDENTITY(1,1) NOT NULL,
	[sesi_fechhora] [datetime] NULL,
	[usua_id] [bigint] NULL,
	[sesi_iniciada] [bit] NULL,
	[sesi_estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[sesi_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_restaurante]    Script Date: 11/28/2019 12:57:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_restaurante](
	[rest_ruc] [nvarchar](11) NOT NULL,
	[usua_id] [bigint] NOT NULL,
	[rest_rz] [nvarchar](100) NULL,
	[rest_nomcomer] [nvarchar](100) NULL,
	[esti_id] [int] NULL,
	[rest_descrip] [nvarchar](300) NULL,
	[rest_delivery] [bit] NULL,
	[rest_reservalocal] [bit] NULL,
	[rest_estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[rest_ruc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[t_restaurante] ([rest_ruc], [usua_id], [rest_rz], [rest_nomcomer], [esti_id], [rest_descrip], [rest_delivery], [rest_reservalocal], [rest_estado]) VALUES (N'20876543211', 2, N'Lo Mejor de Militas S.A.', N'Lo mejor de Militas', 3, N'Lo mejor de los pescados y mariscos de la Costa peruana ..!!', 0, 0, 1)
/****** Object:  Table [dbo].[t_reserva]    Script Date: 11/28/2019 12:57:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_reserva](
	[rese_id] [bigint] IDENTITY(1,1) NOT NULL,
	[rese_fechhorareg] [datetime] NULL,
	[rest_ruc] [nvarchar](11) NULL,
	[usua_id] [bigint] NULL,
	[rese_anombre] [nvarchar](70) NULL,
	[rese_nrocontacto] [nvarchar](30) NULL,
	[rese_fecha] [date] NULL,
	[rese_hora] [time](7) NULL,
	[rese_nroasistentes] [int] NULL,
	[rese_direcenvio] [nvarchar](100) NULL,
	[rese_direcrefe] [nvarchar](100) NULL,
	[moat_id] [int] NULL,
	[pedi_id] [bigint] NULL,
	[esta_id] [int] NULL,
	[rese_mensaje] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[rese_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_producto]    Script Date: 11/28/2019 12:57:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_producto](
	[prod_id] [bigint] IDENTITY(1,1) NOT NULL,
	[prod_nombre] [nvarchar](70) NULL,
	[prod_descrip] [nvarchar](200) NULL,
	[prod_precio] [numeric](18, 2) NULL,
	[tico_id] [int] NULL,
	[rest_ruc] [nvarchar](11) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[prod_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_pedidodetalle]    Script Date: 11/28/2019 12:57:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_pedidodetalle](
	[pedi_id] [bigint] NOT NULL,
	[mede_id] [bigint] NOT NULL,
	[pedi_cant] [int] NULL,
	[pedi_importe] [numeric](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_pedido]    Script Date: 11/28/2019 12:57:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_pedido](
	[pedi_id] [bigint] IDENTITY(1,1) NOT NULL,
	[pedi_fechhora] [datetime] NULL,
	[usua_id] [bigint] NULL,
	[rest_ruc] [nvarchar](11) NULL,
	[moat_id] [int] NULL,
	[pedi_mensaje] [nvarchar](150) NULL,
	[pedi_estado] [nvarchar](45) NULL,
	[esta_id] [int] NULL,
	[pedi_subtotal] [numeric](18, 2) NULL,
	[pedi_precioenvio] [numeric](18, 2) NULL,
	[pedi_descuento] [numeric](18, 2) NULL,
	[pedi_recargo] [numeric](18, 2) NULL,
	[pedi_total] [numeric](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[pedi_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_pago]    Script Date: 11/28/2019 12:57:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_pago](
	[pago_id] [bigint] IDENTITY(1,1) NOT NULL,
	[pago_fechhora] [datetime] NULL,
	[pago_nrotarjeta] [nvarchar](20) NULL,
	[pago_codseguridad] [int] NULL,
	[pago_monto] [numeric](18, 2) NULL,
	[pedi_id] [bigint] NULL,
	[usu_id] [bigint] NULL,
	[ticta_id] [int] NULL,
	[uscta_numero] [nvarchar](20) NULL,
	[uscta_titular] [nvarchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[pago_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_modoatencion]    Script Date: 11/28/2019 12:57:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_modoatencion](
	[moat_id] [int] NOT NULL,
	[moat_descrip] [nvarchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[moat_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[t_modoatencion] ([moat_id], [moat_descrip]) VALUES (1, N'In Sito (Reserva)')
INSERT [dbo].[t_modoatencion] ([moat_id], [moat_descrip]) VALUES (2, N'Recojo')
INSERT [dbo].[t_modoatencion] ([moat_id], [moat_descrip]) VALUES (3, N'Delivery')
/****** Object:  Table [dbo].[t_menudetalle]    Script Date: 11/28/2019 12:57:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_menudetalle](
	[mede_id] [bigint] IDENTITY(1,1) NOT NULL,
	[menu_id] [bigint] NOT NULL,
	[prod_id] [bigint] NOT NULL,
	[mede_precio] [numeric](18, 2) NULL,
	[mede_disponible] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[mede_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_menu]    Script Date: 11/28/2019 12:57:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_menu](
	[menu_id] [bigint] IDENTITY(1,1) NOT NULL,
	[menu_nombre] [nvarchar](60) NULL,
	[menu_estado] [bit] NULL,
	[menu_publicado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[menu_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_estado]    Script Date: 11/28/2019 12:57:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_estado](
	[esta_id] [int] NOT NULL,
	[esta_tabla] [nvarchar](20) NULL,
	[esta_nombre] [nvarchar](25) NULL,
	[esta_descrip] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[esta_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[t_estado] ([esta_id], [esta_tabla], [esta_nombre], [esta_descrip]) VALUES (1, N't_pedido', N'Confirmado', N'Cuando el pedido fue cancelado y recibido por el restaurante para programar su atención')
INSERT [dbo].[t_estado] ([esta_id], [esta_tabla], [esta_nombre], [esta_descrip]) VALUES (2, N't_pedido', N'Listo', N'Cuando el pedido se encuentra listo o a escasos X minutos para atender (según lo programado)')
INSERT [dbo].[t_estado] ([esta_id], [esta_tabla], [esta_nombre], [esta_descrip]) VALUES (3, N't_pedido', N'Atendido', N'Cuando el pedido fue atendido al cliente')
INSERT [dbo].[t_estado] ([esta_id], [esta_tabla], [esta_nombre], [esta_descrip]) VALUES (4, N't_pedido', N'En proceso de envío', N'Cuando el pedido se encuentra en proceso de envío (según lo programado)')
INSERT [dbo].[t_estado] ([esta_id], [esta_tabla], [esta_nombre], [esta_descrip]) VALUES (5, N't_reserva', N'Por Confirmar', N'Reserva que esta pendiente de respuesta por parte de la empresa y que no cuenta con pedido')
INSERT [dbo].[t_estado] ([esta_id], [esta_tabla], [esta_nombre], [esta_descrip]) VALUES (6, N't_reserva', N'Confirmado', N'Reserva confirmada para la fecha y hora solicitada por el cliente o Para el pedido con estado confirmado')
INSERT [dbo].[t_estado] ([esta_id], [esta_tabla], [esta_nombre], [esta_descrip]) VALUES (7, N't_reserva', N'Rechazado', N'Reserva rechazada para la fecha y hora solicitada por el cliente')
INSERT [dbo].[t_estado] ([esta_id], [esta_tabla], [esta_nombre], [esta_descrip]) VALUES (8, N't_reserva', N'Atendido', N'Servicio de reserva que ya se llevó a cabo en la fecha y hora solicitada por el cliente')
INSERT [dbo].[t_estado] ([esta_id], [esta_tabla], [esta_nombre], [esta_descrip]) VALUES (9, N't_reserva', N'Cancelado', N'Reserva cancelada por el cliente (en el periodo permitido por la empresa)')
/****** Object:  Table [dbo].[t_especialidadtipo]    Script Date: 11/28/2019 12:57:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_especialidadtipo](
	[esti_id] [int] NOT NULL,
	[esti_descrip] [nvarchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[esti_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (1, N'Criollos')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (2, N'Sopas')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (3, N'Pescados y maríscos')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (4, N'Pollerías')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (5, N'Chifas')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (6, N'Pizzerías / Pastas')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (7, N'Chicharronerías')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (8, N'Churrasquerías')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (9, N'Picanterías')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (10, N'Pachamancas')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (11, N'Salchipaperías')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (12, N'Hamburgueserías')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (16, N'Vegetarianas')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (20, N'Buffet')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (24, N'Chino')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (25, N'Japonés')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (26, N'Mexicano')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (27, N'Brasileño')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (28, N'Turco')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (29, N'Arabe')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (30, N'Otros Internacionales')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (31, N'Juguerías')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (32, N'Café')
INSERT [dbo].[t_especialidadtipo] ([esti_id], [esti_descrip]) VALUES (33, N'Pastelerías')
/****** Object:  Table [dbo].[t_distrito]    Script Date: 11/28/2019 12:57:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_distrito](
	[dist_id] [int] NOT NULL,
	[dist_nombre] [nvarchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[dist_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (1, N'ANCÓN')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (2, N'ATE')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (3, N'BARRANCO')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (4, N'BREÑA')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (5, N'CARABAYLLO')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (6, N'CHACLACAYO')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (7, N'CHORRILLOS')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (8, N'CIENEGUILLA')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (9, N'COMAS')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (10, N'EL AGUSTINO')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (11, N'INDEPENDENCIA')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (12, N'JESÚS MARÍA')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (13, N'LA MOLINA')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (14, N'LA VICTORIA')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (15, N'LIMA')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (16, N'LINCE')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (17, N'LOS OLIVOS')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (18, N'LURIGANCHO-CHOSICA')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (19, N'LURÍN')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (20, N'MAGDALENA DEL MAR')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (21, N'MIRAFLORES')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (22, N'PACHACÁMAC')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (23, N'PUCUSANA')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (24, N'PUEBLO LIBRE')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (25, N'PUENTE PIEDRA')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (26, N'PUNTA HERMOSA')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (27, N'PUNTA NEGRA')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (28, N'RÍMAC')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (29, N'SAN BARTOLO')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (30, N'SAN BORJA')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (31, N'SAN ISIDRO')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (32, N'SAN JUAN DE LURIGANCHO')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (33, N'SAN JUAN DE MIRAFLORES')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (34, N'SAN LUIS')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (35, N'SAN MARTIN DE PORRES')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (36, N'SAN MIGUEL')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (37, N'SANTA ANITA')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (38, N'SANTA MARÍA DEL MAR')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (39, N'SANTA ROSA')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (40, N'SANTIAGO DE SURCO')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (41, N'SURQUILLO')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (42, N'VILLA EL SALVADOR')
INSERT [dbo].[t_distrito] ([dist_id], [dist_nombre]) VALUES (43, N'VILLA MARIA DEL TRIUNFO')
