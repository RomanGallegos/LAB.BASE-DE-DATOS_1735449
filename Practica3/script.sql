USE [Farmacia]
GO
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [MayordeDiesiciete]
GO
ALTER TABLE [dbo].[surtido] DROP CONSTRAINT [fk_proveedor_surt]
GO
ALTER TABLE [dbo].[surtido] DROP CONSTRAINT [fk_medicamento_surt]
GO
ALTER TABLE [dbo].[sucursal] DROP CONSTRAINT [fk_proveedor_suc]
GO
ALTER TABLE [dbo].[sucursal] DROP CONSTRAINT [fk_empleados_suc]
GO
ALTER TABLE [dbo].[medicamento] DROP CONSTRAINT [fk_proveedor_med]
GO
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [FK__empleados__puest__5BE2A6F2]
GO
/****** Object:  Index [surtido_id]    Script Date: 21/09/2019 02:00:57 a. m. ******/
ALTER TABLE [dbo].[surtido] DROP CONSTRAINT [surtido_id]
GO
/****** Object:  Index [sucursal_id]    Script Date: 21/09/2019 02:00:57 a. m. ******/
ALTER TABLE [dbo].[sucursal] DROP CONSTRAINT [sucursal_id]
GO
/****** Object:  Index [UQ__proveedo__0465F7C28E64A6EB]    Script Date: 21/09/2019 02:00:57 a. m. ******/
ALTER TABLE [dbo].[proveedor] DROP CONSTRAINT [UQ__proveedo__0465F7C28E64A6EB]
GO
/****** Object:  Index [proveedor_id]    Script Date: 21/09/2019 02:00:57 a. m. ******/
ALTER TABLE [dbo].[proveedor] DROP CONSTRAINT [proveedor_id]
GO
/****** Object:  Index [UQ__empleado__A98D301F4A1FA124]    Script Date: 21/09/2019 02:00:57 a. m. ******/
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [UQ__empleado__A98D301F4A1FA124]
GO
/****** Object:  Index [empleados_id]    Script Date: 21/09/2019 02:00:57 a. m. ******/
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [empleados_id]
GO
/****** Object:  Table [dbo].[surtido]    Script Date: 21/09/2019 02:00:57 a. m. ******/
DROP TABLE [dbo].[surtido]
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 21/09/2019 02:00:57 a. m. ******/
DROP TABLE [dbo].[sucursal]
GO
/****** Object:  Table [dbo].[puesto]    Script Date: 21/09/2019 02:00:57 a. m. ******/
DROP TABLE [dbo].[puesto]
GO
/****** Object:  Table [dbo].[proveedor]    Script Date: 21/09/2019 02:00:57 a. m. ******/
DROP TABLE [dbo].[proveedor]
GO
/****** Object:  Table [dbo].[medicamento]    Script Date: 21/09/2019 02:00:57 a. m. ******/
DROP TABLE [dbo].[medicamento]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 21/09/2019 02:00:57 a. m. ******/
DROP TABLE [dbo].[empleados]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 21/09/2019 02:00:57 a. m. ******/
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
	[puesto_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[empleados_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medicamento]    Script Date: 21/09/2019 02:00:57 a. m. ******/
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
	[proveedor_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[medicamento_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedor]    Script Date: 21/09/2019 02:00:57 a. m. ******/
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
/****** Object:  Table [dbo].[puesto]    Script Date: 21/09/2019 02:00:57 a. m. ******/
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
/****** Object:  Table [dbo].[sucursal]    Script Date: 21/09/2019 02:00:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursal](
	[sucursal_id] [int] NOT NULL,
	[Nombre_suc] [varchar](80) NOT NULL,
	[Direccion_suc] [varchar](120) NOT NULL,
	[Telefono_suc] [int] NOT NULL,
	[empleado] [int] NOT NULL,
	[proveedor_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sucursal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[surtido]    Script Date: 21/09/2019 02:00:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[surtido](
	[surtido_id] [int] NOT NULL,
	[proveedor_id] [int] NOT NULL,
	[Precio_compra_med_surt] [int] NOT NULL,
	[medicamento_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[surtido_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [empleados_id]    Script Date: 21/09/2019 02:00:57 a. m. ******/
ALTER TABLE [dbo].[empleados] ADD  CONSTRAINT [empleados_id] UNIQUE NONCLUSTERED 
(
	[empleados_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__empleado__A98D301F4A1FA124]    Script Date: 21/09/2019 02:00:57 a. m. ******/
ALTER TABLE [dbo].[empleados] ADD UNIQUE NONCLUSTERED 
(
	[empleados_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [proveedor_id]    Script Date: 21/09/2019 02:00:57 a. m. ******/
ALTER TABLE [dbo].[proveedor] ADD  CONSTRAINT [proveedor_id] UNIQUE NONCLUSTERED 
(
	[provedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__proveedo__0465F7C28E64A6EB]    Script Date: 21/09/2019 02:00:57 a. m. ******/
ALTER TABLE [dbo].[proveedor] ADD UNIQUE NONCLUSTERED 
(
	[provedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [sucursal_id]    Script Date: 21/09/2019 02:00:57 a. m. ******/
ALTER TABLE [dbo].[sucursal] ADD  CONSTRAINT [sucursal_id] UNIQUE NONCLUSTERED 
(
	[sucursal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [surtido_id]    Script Date: 21/09/2019 02:00:57 a. m. ******/
ALTER TABLE [dbo].[surtido] ADD  CONSTRAINT [surtido_id] UNIQUE NONCLUSTERED 
(
	[surtido_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD FOREIGN KEY([puesto_id])
REFERENCES [dbo].[puesto] ([puesto_id])
GO
ALTER TABLE [dbo].[medicamento]  WITH CHECK ADD  CONSTRAINT [fk_proveedor_med] FOREIGN KEY([proveedor_id])
REFERENCES [dbo].[proveedor] ([provedor])
GO
ALTER TABLE [dbo].[medicamento] CHECK CONSTRAINT [fk_proveedor_med]
GO
ALTER TABLE [dbo].[sucursal]  WITH CHECK ADD  CONSTRAINT [fk_empleados_suc] FOREIGN KEY([empleado])
REFERENCES [dbo].[empleados] ([empleados_id])
GO
ALTER TABLE [dbo].[sucursal] CHECK CONSTRAINT [fk_empleados_suc]
GO
ALTER TABLE [dbo].[sucursal]  WITH CHECK ADD  CONSTRAINT [fk_proveedor_suc] FOREIGN KEY([proveedor_id])
REFERENCES [dbo].[proveedor] ([provedor])
GO
ALTER TABLE [dbo].[sucursal] CHECK CONSTRAINT [fk_proveedor_suc]
GO
ALTER TABLE [dbo].[surtido]  WITH CHECK ADD  CONSTRAINT [fk_medicamento_surt] FOREIGN KEY([medicamento_id])
REFERENCES [dbo].[medicamento] ([medicamento_id])
GO
ALTER TABLE [dbo].[surtido] CHECK CONSTRAINT [fk_medicamento_surt]
GO
ALTER TABLE [dbo].[surtido]  WITH CHECK ADD  CONSTRAINT [fk_proveedor_surt] FOREIGN KEY([proveedor_id])
REFERENCES [dbo].[proveedor] ([provedor])
GO
ALTER TABLE [dbo].[surtido] CHECK CONSTRAINT [fk_proveedor_surt]
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD  CONSTRAINT [MayordeDiesiciete] CHECK  ((datediff(year,[Fecha_nac_emp],getdate())>(17)))
GO
ALTER TABLE [dbo].[empleados] CHECK CONSTRAINT [MayordeDiesiciete]
GO
