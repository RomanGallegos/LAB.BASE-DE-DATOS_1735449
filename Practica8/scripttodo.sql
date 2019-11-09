USE [Farmacia]
GO
ALTER TABLE [dbo].[venta] DROP CONSTRAINT [FK__venta__id_sucurs__6B24EA82]
GO
ALTER TABLE [dbo].[venta] DROP CONSTRAINT [FK__venta__id_produc__6A30C649]
GO
ALTER TABLE [dbo].[usuarios] DROP CONSTRAINT [FK__usuarios__id_emp__693CA210]
GO
ALTER TABLE [dbo].[sucursales] DROP CONSTRAINT [FK__sucursale__id_em__68487DD7]
GO
ALTER TABLE [dbo].[productos] DROP CONSTRAINT [FK__productos__id_de__6754599E]
GO
ALTER TABLE [dbo].[productos] DROP CONSTRAINT [FK__productos__id_cl__66603565]
GO
ALTER TABLE [dbo].[orden_compra] DROP CONSTRAINT [FK__orden_com__id_su__656C112C]
GO
ALTER TABLE [dbo].[orden_compra] DROP CONSTRAINT [FK__orden_com__id_pr__6477ECF3]
GO
ALTER TABLE [dbo].[orden_compra] DROP CONSTRAINT [FK__orden_com__id_pr__6383C8BA]
GO
ALTER TABLE [dbo].[inventario_productos] DROP CONSTRAINT [FK__inventari__id_pr__628FA481]
GO
ALTER TABLE [dbo].[inventario_productos] DROP CONSTRAINT [FK__inventari__id_al__619B8048]
GO
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [puesto_empleado]
GO
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [FK__empleados__id_su__60A75C0F]
GO
ALTER TABLE [dbo].[detalles_compra] DROP CONSTRAINT [FK__detalles___id_su__5FB337D6]
GO
ALTER TABLE [dbo].[detalles_compra] DROP CONSTRAINT [FK__detalles___id_pr__5EBF139D]
GO
ALTER TABLE [dbo].[detalles_compra] DROP CONSTRAINT [FK__detalles___id_pr__5DCAEF64]
GO
ALTER TABLE [dbo].[detalles_compra] DROP CONSTRAINT [FK__detalles___id_co__5CD6CB2B]
GO
ALTER TABLE [dbo].[detalles_compra] DROP CONSTRAINT [FK__detalles___id_al__5BE2A6F2]
GO
ALTER TABLE [dbo].[detalle_venta] DROP CONSTRAINT [FK__detalle_v__id_ve__5AEE82B9]
GO
ALTER TABLE [dbo].[detalle_venta] DROP CONSTRAINT [FK__detalle_v__id_us__59FA5E80]
GO
ALTER TABLE [dbo].[detalle_venta] DROP CONSTRAINT [FK__detalle_v__id_su__59063A47]
GO
ALTER TABLE [dbo].[detalle_venta] DROP CONSTRAINT [FK__detalle_v__id_pr__5812160E]
GO
ALTER TABLE [dbo].[detalle_venta] DROP CONSTRAINT [FK__detalle_v__id_em__571DF1D5]
GO
ALTER TABLE [dbo].[almacen] DROP CONSTRAINT [FK__almacen__id_sucu__5629CD9C]
GO
/****** Object:  Index [UQ_emp]    Script Date: 11/1/2019 8:04:45 PM ******/
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [UQ_emp]
GO
/****** Object:  Table [dbo].[sucursales]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP TABLE [dbo].[sucursales]
GO
/****** Object:  Table [dbo].[puesto]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP TABLE [dbo].[puesto]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP TABLE [dbo].[proveedores]
GO
/****** Object:  Table [dbo].[inventario_productos]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP TABLE [dbo].[inventario_productos]
GO
/****** Object:  Table [dbo].[empresa]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP TABLE [dbo].[empresa]
GO
/****** Object:  Table [dbo].[departamento]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP TABLE [dbo].[departamento]
GO
/****** Object:  Table [dbo].[clasificacion]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP TABLE [dbo].[clasificacion]
GO
/****** Object:  Table [dbo].[almacen]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP TABLE [dbo].[almacen]
GO
/****** Object:  View [dbo].[ReporteTotalSurtido]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP VIEW [dbo].[ReporteTotalSurtido]
GO
/****** Object:  Table [dbo].[detalles_compra]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP TABLE [dbo].[detalles_compra]
GO
/****** Object:  View [dbo].[ReporteProductosVendidos]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP VIEW [dbo].[ReporteProductosVendidos]
GO
/****** Object:  View [dbo].[ReporteEmpleadosCajeros]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP VIEW [dbo].[ReporteEmpleadosCajeros]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP TABLE [dbo].[usuarios]
GO
/****** Object:  View [dbo].[ReporteNumVentasEmp]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP VIEW [dbo].[ReporteNumVentasEmp]
GO
/****** Object:  View [dbo].[ReporteVentasProductos]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP VIEW [dbo].[ReporteVentasProductos]
GO
/****** Object:  View [dbo].[vw_Ventas_Sucursal]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP VIEW [dbo].[vw_Ventas_Sucursal]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP TABLE [dbo].[venta]
GO
/****** Object:  View [dbo].[vw_Productos_Departamento]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP VIEW [dbo].[vw_Productos_Departamento]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP TABLE [dbo].[productos]
GO
/****** Object:  View [dbo].[vw_Ventas_Usuarios]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP VIEW [dbo].[vw_Ventas_Usuarios]
GO
/****** Object:  Table [dbo].[detalle_venta]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP TABLE [dbo].[detalle_venta]
GO
/****** Object:  View [dbo].[vw_Compras_Proveedor]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP VIEW [dbo].[vw_Compras_Proveedor]
GO
/****** Object:  Table [dbo].[orden_compra]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP TABLE [dbo].[orden_compra]
GO
/****** Object:  View [dbo].[vw_Empleados_Puesto]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP VIEW [dbo].[vw_Empleados_Puesto]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP TABLE [dbo].[empleados]
GO
USE [master]
GO
/****** Object:  Database [Farmacia]    Script Date: 11/1/2019 8:04:45 PM ******/
DROP DATABASE [Farmacia]
GO
/****** Object:  Database [Farmacia]    Script Date: 11/1/2019 8:04:45 PM ******/
CREATE DATABASE [Farmacia]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Farmacia', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Farmacia.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Farmacia_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Farmacia_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Farmacia] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Farmacia].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Farmacia] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Farmacia] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Farmacia] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Farmacia] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Farmacia] SET ARITHABORT OFF 
GO
ALTER DATABASE [Farmacia] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Farmacia] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Farmacia] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Farmacia] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Farmacia] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Farmacia] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Farmacia] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Farmacia] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Farmacia] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Farmacia] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Farmacia] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Farmacia] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Farmacia] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Farmacia] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Farmacia] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Farmacia] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Farmacia] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Farmacia] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Farmacia] SET  MULTI_USER 
GO
ALTER DATABASE [Farmacia] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Farmacia] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Farmacia] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Farmacia] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Farmacia] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Farmacia', N'ON'
GO
ALTER DATABASE [Farmacia] SET QUERY_STORE = OFF
GO
USE [Farmacia]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[id_empleado] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
	[nombre_epdo] [varchar](50) NOT NULL,
	[ap_pat_epdo] [varchar](50) NOT NULL,
	[ap_mat_epdo] [varchar](50) NOT NULL,
	[telefono_epdo] [varchar](10) NOT NULL,
	[correo_epdo] [varchar](30) NULL,
	[puesto_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_Empleados_Puesto]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create View [dbo].[vw_Empleados_Puesto]
as
select puesto_id,count(id_empleado) Numero_de_Empleados
from empleados
group by puesto_id
GO
/****** Object:  Table [dbo].[orden_compra]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orden_compra](
	[id_compra] [int] NOT NULL,
	[id_proveedor] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[cantidad] [int] NULL,
	[fecha_compra] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_Compras_Proveedor]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create View [dbo].[vw_Compras_Proveedor]
as
select count(id_proveedor) Proveedor,id_compra,fecha_compra
from orden_compra
group by id_compra,fecha_compra

GO
/****** Object:  Table [dbo].[detalle_venta]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_venta](
	[id_detalle] [int] NOT NULL,
	[id_empresa] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
	[id_venta] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[id_usuario] [int] NOT NULL,
	[fecha_venta] [datetime] NOT NULL,
	[cantidad_det_vta] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_Ventas_Usuarios]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create View [dbo].[vw_Ventas_Usuarios]
as
select count(id_usuario) Usuario,id_detalle,sum(cantidad_det_vta) cantidad_de_venta
from detalle_venta
group by id_detalle
GO
/****** Object:  Table [dbo].[productos]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[id_producto] [int] NOT NULL,
	[id_clasificacion] [int] NOT NULL,
	[id_departamento] [int] NOT NULL,
	[nombre_prod] [varchar](50) NOT NULL,
	[cantidad_prod] [int] NULL,
	[unidad_prod] [varchar](50) NOT NULL,
	[marca_prod] [varchar](50) NOT NULL,
	[precio_prod] [money] NOT NULL,
	[descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_Productos_Departamento]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create View [dbo].[vw_Productos_Departamento]
as
select count(id_producto)Productos_por_Departamento,id_departamento
from productos  
group by id_departamento
GO
/****** Object:  Table [dbo].[venta]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[id_venta] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[fecha_venta] [datetime] NOT NULL,
	[cantidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_Ventas_Sucursal]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create View [dbo].[vw_Ventas_Sucursal]
as
select count(id_sucursal) Ventas_sucursal,id_venta
from venta
group by id_venta
GO
/****** Object:  View [dbo].[ReporteVentasProductos]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ReporteVentasProductos]
as
select d.id_venta, d.id_producto, p. nombre_prod, p.precio_prod, d.cantidad_det_vta, (select p.precio_prod * d.cantidad_det_vta from detalle_venta d inner join productos p on d.id_producto=p.id_producto) as Total 
from detalle_venta d inner join productos p on d.id_producto=p.id_producto
GO
/****** Object:  View [dbo].[ReporteNumVentasEmp]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ReporteNumVentasEmp]
as
select id_usuario, count(id_venta) as 'Numero de ventas'
from detalle_venta group by id_usuario
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[id_usuario] [int] NOT NULL,
	[id_empleado] [int] NOT NULL,
	[usuario] [varchar](50) NOT NULL,
	[clave] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ReporteEmpleadosCajeros]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ReporteEmpleadosCajeros]
as 
select e.id_empleado, u.id_usuario,(e.nombre_epdo + ' ' + e.ap_pat_epdo + ' '+ e.ap_mat_epdo) as 'Nombre Completo', e.correo_epdo as 'Correo'
from empleados e inner join usuarios u on e.id_empleado=u.id_empleado
GO
/****** Object:  View [dbo].[ReporteProductosVendidos]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ReporteProductosVendidos]
as
select id_producto, count(id_producto) as 'Vendidos'
from detalle_venta group by id_producto
GO
/****** Object:  Table [dbo].[detalles_compra]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalles_compra](
	[id_compra] [int] NOT NULL,
	[id_proveedor] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
	[id_almacen] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[fecha_compra] [datetime] NOT NULL,
	[precio_prod_prov] [money] NOT NULL,
	[cantidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ReporteTotalSurtido]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ReporteTotalSurtido]
as
select id_compra, sum((precio_prod_prov*cantidad)) as Total
from detalles_compra group by id_compra
GO
/****** Object:  Table [dbo].[almacen]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[almacen](
	[id_almacen] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
	[descripcion_alm] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_almacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clasificacion]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clasificacion](
	[id_clasificacion] [int] NOT NULL,
	[nombre_clas] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_clasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[departamento]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departamento](
	[id_departamento] [int] NOT NULL,
	[nombre_dep] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empresa]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empresa](
	[id_empresa] [int] NOT NULL,
	[nombre_com_epsa] [varchar](50) NOT NULL,
	[tipo_sociedad_epsa] [varchar](50) NOT NULL,
	[correo_gral_epsa] [varchar](30) NOT NULL,
	[telefono_epsa] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inventario_productos]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inventario_productos](
	[id_inventario] [int] NOT NULL,
	[id_almacen] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[cantidad] [int] NULL,
	[estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_inventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedores](
	[id_proveedor] [int] NOT NULL,
	[nombre_prov] [varchar](50) NOT NULL,
	[telefono_prov] [varchar](10) NOT NULL,
	[correo_prov] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[puesto]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[puesto](
	[puesto_id] [int] NOT NULL,
	[Nombre_puesto] [varchar](50) NOT NULL,
	[Sueldo_pue] [int] NOT NULL,
	[turno_pue] [varchar](40) NOT NULL,
	[antiguedad_pue] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[puesto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursales]    Script Date: 11/1/2019 8:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursales](
	[id_sucursal] [int] NOT NULL,
	[id_empresa] [int] NOT NULL,
	[nombre_suc] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[almacen] ([id_almacen], [id_sucursal], [descripcion_alm]) VALUES (1, 1, N'Primer almacen- Centro')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (1, N'Analgesicos')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (2, N'Musculares')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (3, N'Antiflamatorios')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (4, N'Estomacales')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (5, N'Antigripales')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (6, N'Tos e infecciones respiratorias')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (7, N'Descongestionantes')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (8, N'Oftalmicos')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (9, N'Dermatologicos')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (10, N'Especialidades medicas')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (11, N'Naturistas y herbolarios')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (12, N'Diabetes')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (13, N'Multivitaminicos')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (14, N'Suplementos alimenticios')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (15, N'Materiales de curacion y botiquin')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (16, N'Formulas y leches de crecimiento')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (17, N'Alimento para bebe')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (18, N'Pañales')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (19, N'Cuidado del bebe')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (20, N'Accesorios de bebe')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (21, N'CP: Bucal')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (22, N'CP:Bloqueadores')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (23, N'CP:Incontinencia')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (24, N'CP:Higiene y cuidado femenino')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (25, N'CP:Repelentes')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (26, N'CP:Cara y cuerpo')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (27, N'CP:Pies')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (28, N'CP:Cuidado del cabello')
INSERT [dbo].[departamento] ([id_departamento], [nombre_dep]) VALUES (1, N'Medicamentos')
INSERT [dbo].[departamento] ([id_departamento], [nombre_dep]) VALUES (2, N'Cuidado de la salud')
INSERT [dbo].[departamento] ([id_departamento], [nombre_dep]) VALUES (3, N'Bebes')
INSERT [dbo].[departamento] ([id_departamento], [nombre_dep]) VALUES (4, N'Cuidado personal')
INSERT [dbo].[departamento] ([id_departamento], [nombre_dep]) VALUES (5, N'Salud sexual')
INSERT [dbo].[empleados] ([id_empleado], [id_sucursal], [nombre_epdo], [ap_pat_epdo], [ap_mat_epdo], [telefono_epdo], [correo_epdo], [puesto_id]) VALUES (1, 1, N'Eduardo', N'Martinez', N'Jimenez', N'8112569481', N'eduardom@farmacity.com', 1)
INSERT [dbo].[empleados] ([id_empleado], [id_sucursal], [nombre_epdo], [ap_pat_epdo], [ap_mat_epdo], [telefono_epdo], [correo_epdo], [puesto_id]) VALUES (2, 1, N'Martin', N'Gomez', N'Diaz', N'8157896438', N'marting@farmacity.com', NULL)
INSERT [dbo].[empleados] ([id_empleado], [id_sucursal], [nombre_epdo], [ap_pat_epdo], [ap_mat_epdo], [telefono_epdo], [correo_epdo], [puesto_id]) VALUES (3, 1, N'Juan', N'Lopez', N'Ruiz', N'8147569855', N'juanl@farmacity.com', NULL)
INSERT [dbo].[empleados] ([id_empleado], [id_sucursal], [nombre_epdo], [ap_pat_epdo], [ap_mat_epdo], [telefono_epdo], [correo_epdo], [puesto_id]) VALUES (4, 1, N'Jimena', N'Rodriguez', N'Hernandez', N'8132566987', N'jimenar@farmacity.com', NULL)
INSERT [dbo].[empleados] ([id_empleado], [id_sucursal], [nombre_epdo], [ap_pat_epdo], [ap_mat_epdo], [telefono_epdo], [correo_epdo], [puesto_id]) VALUES (5, 1, N'Maria', N'Olazaran', N'Alonso', N'8112578964', N'mariao@farmacity.com', NULL)
INSERT [dbo].[empleados] ([id_empleado], [id_sucursal], [nombre_epdo], [ap_pat_epdo], [ap_mat_epdo], [telefono_epdo], [correo_epdo], [puesto_id]) VALUES (6, 1, N'Ana', N'Benavidez', N'Vazquez', N'8125498762', N'anab@farmacity.com', NULL)
INSERT [dbo].[empleados] ([id_empleado], [id_sucursal], [nombre_epdo], [ap_pat_epdo], [ap_mat_epdo], [telefono_epdo], [correo_epdo], [puesto_id]) VALUES (7, 1, N'Jose', N'Gonzalez', N'Castro', N'8125469875', N'joseg@farmacity.com', NULL)
INSERT [dbo].[empleados] ([id_empleado], [id_sucursal], [nombre_epdo], [ap_pat_epdo], [ap_mat_epdo], [telefono_epdo], [correo_epdo], [puesto_id]) VALUES (8, 1, N'Romeo', N'Juarez', N'Ortiz', N'8156987525', N'romeoj@farmacity.com', NULL)
INSERT [dbo].[empleados] ([id_empleado], [id_sucursal], [nombre_epdo], [ap_pat_epdo], [ap_mat_epdo], [telefono_epdo], [correo_epdo], [puesto_id]) VALUES (9, 1, N'Sergio', N'Cruz', N'Torres', N'8113975684', N'sergioc@farmacity.com', NULL)
INSERT [dbo].[empleados] ([id_empleado], [id_sucursal], [nombre_epdo], [ap_pat_epdo], [ap_mat_epdo], [telefono_epdo], [correo_epdo], [puesto_id]) VALUES (10, 1, N'Admin', N'Admin', N'Admin', N'8113256551', N'admin@farmacity.com', NULL)
INSERT [dbo].[empresa] ([id_empresa], [nombre_com_epsa], [tipo_sociedad_epsa], [correo_gral_epsa], [telefono_epsa]) VALUES (1, N'Farmacity', N'S.A.', N'farmacity.info@farmacity.com', N'018004412')
INSERT [dbo].[productos] ([id_producto], [id_clasificacion], [id_departamento], [nombre_prod], [cantidad_prod], [unidad_prod], [marca_prod], [precio_prod], [descripcion]) VALUES (1, 1, 1, N'Ketorolaco', 30, N'Mg.', N'Generico', 32.0000, N'Oral, Seis tabletas, sublingual')
INSERT [dbo].[productos] ([id_producto], [id_clasificacion], [id_departamento], [nombre_prod], [cantidad_prod], [unidad_prod], [marca_prod], [precio_prod], [descripcion]) VALUES (2, 1, 1, N'Paracetamol', 250, N'Mg.', N'Generico', 45.0000, N'Oral, tabletas')
INSERT [dbo].[productos] ([id_producto], [id_clasificacion], [id_departamento], [nombre_prod], [cantidad_prod], [unidad_prod], [marca_prod], [precio_prod], [descripcion]) VALUES (3, 2, 1, N'Voltaren Dolo Softgel', 25, N'Mg.', N'Voltaren', 81.0000, N'Oral, 10 capsulas')
INSERT [dbo].[productos] ([id_producto], [id_clasificacion], [id_departamento], [nombre_prod], [cantidad_prod], [unidad_prod], [marca_prod], [precio_prod], [descripcion]) VALUES (4, 2, 1, N'Flanax Noctu Difenhidramina', 220, N'Mg.', N'Flanax', 140.0000, N'Oral, 10 tabletas')
INSERT [dbo].[productos] ([id_producto], [id_clasificacion], [id_departamento], [nombre_prod], [cantidad_prod], [unidad_prod], [marca_prod], [precio_prod], [descripcion]) VALUES (5, 3, 1, N'Acemetacina', 60, N'Mg.', N'Rantudil', 303.0000, N'Oral, 12 capsulas')
INSERT [dbo].[productos] ([id_producto], [id_clasificacion], [id_departamento], [nombre_prod], [cantidad_prod], [unidad_prod], [marca_prod], [precio_prod], [descripcion]) VALUES (6, 3, 1, N'Ibuprofeno', 400, N'Mg', N'Generico', 24.0000, N'Oral, 10 tabletas')
INSERT [dbo].[productos] ([id_producto], [id_clasificacion], [id_departamento], [nombre_prod], [cantidad_prod], [unidad_prod], [marca_prod], [precio_prod], [descripcion]) VALUES (7, 4, 1, N'Macrogol', 17, N'g', N'Generico', 154.0000, N'Oral, sobres')
INSERT [dbo].[productos] ([id_producto], [id_clasificacion], [id_departamento], [nombre_prod], [cantidad_prod], [unidad_prod], [marca_prod], [precio_prod], [descripcion]) VALUES (8, 4, 1, N'Senodosis A-B', 187, N'Mg.', N'Generico', 40.0000, N'Oral, 20 tabletas')
INSERT [dbo].[productos] ([id_producto], [id_clasificacion], [id_departamento], [nombre_prod], [cantidad_prod], [unidad_prod], [marca_prod], [precio_prod], [descripcion]) VALUES (9, 5, 1, N'Clorfenamina', 500, N'Mg.', N'Tabcin', 29.0000, N'Oral, 12 tabletas efervescentes')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (1, N'Dsta Maria', N'4422421246', N'ventasweb@dstmaria.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (2, N'Brightbean', N'3142165051', N'mcrysell1@hibu.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (3, N'Fivespan', N'9005014308', N'bjosephi2@tripod.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (4, N'Nlounge', N'4903405006', N'dpittendreigh3@hud.gov')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (5, N'Dablist', N'8917215884', N'hbolderoe4@google.cn')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (6, N'Fliptune', N'7615365388', N'fbuffham5@comsenz.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (7, N'Brainsphere', N'6221659128', N'dpedracci6@yolasite.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (8, N'Feedfire', N'3112885337', N'rbuller7@paginegialle.it')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (9, N'Gevee', N'7836654358', N'eolech8@dell.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (10, N'Brainlounge', N'5796138660', N'dprisley9@addthis.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (11, N'Thoughtbridge', N'9908761338', N'cruppertza@vk.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (12, N'Shuffletag', N'3836230239', N'jwindasb@house.gov')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (13, N'Jaxbean', N'7053025676', N'vzemlerc@sohu.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (14, N'Dabjam', N'6572976467', N'eashleed@miibeian.gov.cn')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (15, N'Podcat', N'5777904811', N'lmitchinere@hao123.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (16, N'Podcat', N'8526357787', N'uwhorltonf@bravesites.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (17, N'Twitterlist', N'5997204998', N'kquadlingg@usda.gov')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (18, N'Voomm', N'6293524488', N'dyepiskopovh@usgs.gov')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (19, N'Skipstorm', N'2229485323', N'ahowbrooki@list-manage.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (20, N'Meevee', N'6119120081', N'pfaersj@rediff.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (21, N'Meejo', N'6174558220', N'lsimmgenk@webmd.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (22, N'Tagcat', N'4348546786', N'chambridgel@discuz.net')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (23, N'Linklinks', N'3158287363', N'dboorm@istockphoto.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (24, N'Jabberstorm', N'4051595025', N'akurtonn@sphinn.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (25, N'Rhynyx', N'9076307608', N'kmayzeo@example.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (26, N'Linkbridge', N'3477117888', N'mredfearnp@dagondesign.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (27, N'Thoughtstorm', N'5174535036', N'eradboneq@salon.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (28, N'Yakijo', N'4481821043', N'asothamr@quantcast.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (29, N'Yamia', N'8635674743', N'dbalasinis@prweb.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (30, N'Zoomcast', N'7251392598', N'lkubackit@nature.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (31, N'DabZ', N'2796465468', N'rglassu@histats.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (32, N'Ntag', N'7828464425', N'aedenv@accuweather.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (33, N'Jetpulse', N'4863673209', N'fcostockw@usda.gov')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (34, N'Innojam', N'8517228305', N'mmailex@dagondesign.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (35, N'Oyoba', N'6983857317', N'ihallasy@wunderground.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (36, N'Photospace', N'6889946042', N'cduncanz@indiegogo.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (37, N'Zazio', N'4834324484', N'bplott10@ameblo.jp')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (38, N'Livepath', N'6213745823', N'mlepper11@people.com.cn')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (39, N'Lazzy', N'2857657333', N'kmcgrale12@fotki.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (40, N'Photobean', N'9756886943', N'rbendle13@arstechnica.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (41, N'Avamba', N'8834714281', N'clinney14@discovery.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (42, N'Ozu', N'5513211175', N'kjennaroy15@nymag.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (43, N'Bluezoom', N'4535015572', N'tmaso16@squarespace.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (44, N'Fatz', N'6885815617', N'rbrimblecomb17@theatlantic.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (45, N'Fatz', N'2822527551', N'vsier18@live.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (46, N'Dabfeed', N'5128343905', N'ashutler19@ezinearticles.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (47, N'Twimbo', N'6376287070', N'hvoase1a@lulu.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (48, N'Skyndu', N'5716082923', N'vmalyan1b@weebly.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (49, N'Topicshots', N'8647808905', N'adelaney1c@shareasale.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (50, N'Realblab', N'3754214294', N'sflade1d@vk.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (51, N'Linktype', N'3042700331', N'fshorrock1e@bluehost.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (52, N'Realcube', N'2727440022', N'gslesser1f@nature.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (53, N'Flashset', N'5742881548', N'slukesch1g@shinystat.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (54, N'Yodoo', N'4561322867', N'uquenby1h@salon.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (55, N'Bluejam', N'2021034178', N'wjedrzejczyk1i@bloglines.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (56, N'Tambee', N'2022858676', N'rpedlow1j@nymag.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (57, N'Gabspot', N'5348272069', N'jkinner1k@telegraph.co.uk')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (58, N'Linklinks', N'6206966291', N'lyarnton1l@marketwatch.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (59, N'Zoombox', N'2097746912', N'gcarillo1m@nhs.uk')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (60, N'Gabtype', N'5921162909', N'bhaddeston1n@ca.gov')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (61, N'Twinder', N'6044118032', N'fhealy1o@xing.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (62, N'Realbridge', N'4916807859', N'ldrewitt1p@feedburner.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (63, N'Thoughtworks', N'3223095488', N'mcrackel1q@hud.gov')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (64, N'Plajo', N'2037216330', N'aashall1r@qq.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (65, N'Skyndu', N'5718362268', N'dbrockington1s@typepad.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (66, N'Voonix', N'9419876069', N'agiddens1t@wp.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (67, N'Jaxbean', N'3107378515', N'mnyssens1u@psu.edu')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (68, N'Blogspan', N'3589830341', N'emerryman1v@microsoft.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (69, N'Yata', N'9182521305', N'rfagan1w@imdb.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (70, N'InnoZ', N'1277687821', N'ldehooge1x@baidu.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (71, N'Katz', N'7287167251', N'sjeune1y@buzzfeed.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (72, N'Vinder', N'4801726972', N'cculvey1z@reddit.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (73, N'Skinder', N'2298539230', N'pnunson20@amazon.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (74, N'Brainsphere', N'9453294535', N'dlyven21@networksolutions.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (75, N'Yodo', N'2898859540', N'btaberner22@goodreads.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (76, N'Photobug', N'7039974188', N'lprestie23@irs.gov')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (77, N'Zoomdog', N'6811465403', N'bemmanueli24@hc360.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (78, N'Voonte', N'8741585657', N'bstolle25@tripadvisor.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (79, N'Flipbug', N'4026726899', N'acomusso26@earthlink.net')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (80, N'Brainlounge', N'6559915764', N'kbevir27@cbsnews.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (81, N'Roomm', N'2662097249', N'asnaddin28@cbsnews.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (82, N'Dabvine', N'2896496383', N'trivalant29@fotki.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (83, N'Mymm', N'4996612134', N'rrebichon2a@psu.edu')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (84, N'Edgetag', N'4832497884', N'pduffy2b@yolasite.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (85, N'Centidel', N'1674869616', N'bdaddow2c@scribd.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (86, N'Skimia', N'7018992876', N'ghuxley2d@washingtonpost.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (87, N'Janyx', N'6667985100', N'lbarlthrop2e@bbb.org')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (88, N'Vimbo', N'5784564965', N'kmaryott2f@salon.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (89, N'Rhybox', N'3651518517', N'tkurt2g@utexas.edu')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (90, N'Dabfeed', N'4577072284', N'erippin2h@mapquest.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (91, N'Feednation', N'3658280828', N'nwyett2i@mapy.cz')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (92, N'Riffpedia', N'5005880128', N'kflohard2j@state.gov')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (93, N'Demimbu', N'9816241392', N'clulham2k@about.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (94, N'Livetube', N'9364162845', N'rsudron2l@shareasale.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (95, N'Vipe', N'3385571343', N'phosburn2m@blog.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (96, N'Meetz', N'3093517296', N'drodda2n@delicious.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (97, N'Photospace', N'7044341673', N'cbickers2o@opera.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (99, N'Fivespan', N'3675491192', N'tmachon2q@meetup.com')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (100, N'Zoomzone', N'7573981931', N'oaddy2r@cloudflare.com')
INSERT [dbo].[puesto] ([puesto_id], [Nombre_puesto], [Sueldo_pue], [turno_pue], [antiguedad_pue]) VALUES (1, N'Cajero', 3500, N'Matutino', 5)
INSERT [dbo].[sucursales] ([id_sucursal], [id_empresa], [nombre_suc]) VALUES (1, 1, N'Centro')
INSERT [dbo].[usuarios] ([id_usuario], [id_empleado], [usuario], [clave]) VALUES (1, 1, N'eduardom', N'm1m2m3m4m5')
INSERT [dbo].[usuarios] ([id_usuario], [id_empleado], [usuario], [clave]) VALUES (2, 2, N'marting', N'u672hh')
INSERT [dbo].[usuarios] ([id_usuario], [id_empleado], [usuario], [clave]) VALUES (3, 3, N'juanl', N'l29n3bb')
INSERT [dbo].[usuarios] ([id_usuario], [id_empleado], [usuario], [clave]) VALUES (4, 4, N'jimenar', N'abc1234')
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_emp]    Script Date: 11/1/2019 8:04:45 PM ******/
ALTER TABLE [dbo].[empleados] ADD  CONSTRAINT [UQ_emp] UNIQUE NONCLUSTERED 
(
	[telefono_epdo] ASC,
	[correo_epdo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[almacen]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursales] ([id_sucursal])
GO
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD FOREIGN KEY([id_empresa])
REFERENCES [dbo].[empresa] ([id_empresa])
GO
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[productos] ([id_producto])
GO
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursales] ([id_sucursal])
GO
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD FOREIGN KEY([id_venta])
REFERENCES [dbo].[venta] ([id_venta])
GO
ALTER TABLE [dbo].[detalles_compra]  WITH CHECK ADD FOREIGN KEY([id_almacen])
REFERENCES [dbo].[almacen] ([id_almacen])
GO
ALTER TABLE [dbo].[detalles_compra]  WITH CHECK ADD FOREIGN KEY([id_compra])
REFERENCES [dbo].[orden_compra] ([id_compra])
GO
ALTER TABLE [dbo].[detalles_compra]  WITH CHECK ADD FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[proveedores] ([id_proveedor])
GO
ALTER TABLE [dbo].[detalles_compra]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[productos] ([id_producto])
GO
ALTER TABLE [dbo].[detalles_compra]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursales] ([id_sucursal])
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursales] ([id_sucursal])
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD  CONSTRAINT [puesto_empleado] FOREIGN KEY([puesto_id])
REFERENCES [dbo].[puesto] ([puesto_id])
GO
ALTER TABLE [dbo].[empleados] CHECK CONSTRAINT [puesto_empleado]
GO
ALTER TABLE [dbo].[inventario_productos]  WITH CHECK ADD FOREIGN KEY([id_almacen])
REFERENCES [dbo].[almacen] ([id_almacen])
GO
ALTER TABLE [dbo].[inventario_productos]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[productos] ([id_producto])
GO
ALTER TABLE [dbo].[orden_compra]  WITH CHECK ADD FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[proveedores] ([id_proveedor])
GO
ALTER TABLE [dbo].[orden_compra]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[productos] ([id_producto])
GO
ALTER TABLE [dbo].[orden_compra]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursales] ([id_sucursal])
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD FOREIGN KEY([id_clasificacion])
REFERENCES [dbo].[clasificacion] ([id_clasificacion])
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD FOREIGN KEY([id_departamento])
REFERENCES [dbo].[departamento] ([id_departamento])
GO
ALTER TABLE [dbo].[sucursales]  WITH CHECK ADD FOREIGN KEY([id_empresa])
REFERENCES [dbo].[empresa] ([id_empresa])
GO
ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleados] ([id_empleado])
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[productos] ([id_producto])
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursales] ([id_sucursal])
GO
USE [master]
GO
ALTER DATABASE [Farmacia] SET  READ_WRITE 
GO