USE [Farmacia]
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 13/09/2019 04:18:51 p. m. ******/
DROP TABLE [dbo].[sucursal]
GO
/****** Object:  Table [dbo].[puesto]    Script Date: 13/09/2019 04:18:51 p. m. ******/
DROP TABLE [dbo].[puesto]
GO
/****** Object:  Table [dbo].[proveedor]    Script Date: 13/09/2019 04:18:51 p. m. ******/
DROP TABLE [dbo].[proveedor]
GO
/****** Object:  Table [dbo].[medicamento]    Script Date: 13/09/2019 04:18:51 p. m. ******/
DROP TABLE [dbo].[medicamento]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 13/09/2019 04:18:51 p. m. ******/
DROP TABLE [dbo].[empleados]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 13/09/2019 04:18:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[empleados_id] [int] NOT NULL,
	[Nombre_emp] [varchar](50) NOT NULL,
	[Ap_pat_emp] [varchar](50) NOT NULL,
	[Ap_mat_emp] [varchar](50) NULL,
	[Fecha_nac_emp] [date] NOT NULL,
	[Nombre_completo_emp]  AS (((([Nombre_emp]+' ')+[Ap_pat_emp])+' ')+[Ap_mat_emp]),
	[Domicilio_emp] [varchar](150) NOT NULL,
	[Telefono_emp] [int] NOT NULL,
	[Correo_emp] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[empleados_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medicamento]    Script Date: 13/09/2019 04:18:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicamento](
	[medicamento_id] [int] NOT NULL,
	[Nombre_med] [varchar](60) NOT NULL,
	[Marca_med] [varchar](60) NOT NULL,
	[Nombre_y_Marca_med]  AS (([Nombre_med]+' de la marca: ')+[Marca_med]),
	[Cantidad_med] [varchar](30) NOT NULL,
	[Precio_venta_med] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[medicamento_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedor]    Script Date: 13/09/2019 04:18:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedor](
	[provedor] [int] NOT NULL,
	[Nombre_prov] [varchar](50) NOT NULL,
	[Nombre_sucursa_prov] [varchar](60) NOT NULL,
	[Fecha_surtido_prov] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[provedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[puesto]    Script Date: 13/09/2019 04:18:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[puesto](
	[puesto_id] [int] NOT NULL,
	[Nombre_puesto] [varchar](50) NOT NULL,
	[Sueldo_pue] [int] NOT NULL,
	[Turno_pue] [varchar](40) NOT NULL,
	[Antiguedad_pue] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[puesto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 13/09/2019 04:18:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursal](
	[sucursal_id] [int] NOT NULL,
	[Nombre_suc] [varchar](80) NOT NULL,
	[Direccion_suc] [varchar](120) NOT NULL,
	[Telefono_suc] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sucursal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
