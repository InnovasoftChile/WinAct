/****** Object:  StoredProcedure [dbo].[sp_ins_cliente]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ins_cliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_ins_cliente]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddComponentesModulos]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_AddComponentesModulos]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_AddComponentesModulos]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddComponentesByXml]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_AddComponentesByXml]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_AddComponentesByXml]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddClientesToVersion]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_AddClientesToVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_AddClientesToVersion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Versiones_has_Cl__5BE2A6F2]') AND parent_object_id = OBJECT_ID(N'[dbo].[Versiones_has_Clientes_has_Ambientes]'))
ALTER TABLE [dbo].[Versiones_has_Clientes_has_Ambientes] DROP CONSTRAINT [FK__Versiones_has_Cl__5BE2A6F2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Versiones_has_Cl__5AEE82B9]') AND parent_object_id = OBJECT_ID(N'[dbo].[Versiones_has_Clientes_has_Ambientes]'))
ALTER TABLE [dbo].[Versiones_has_Clientes_has_Ambientes] DROP CONSTRAINT [FK__Versiones_has_Cl__5AEE82B9]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Versiones__idAmb__59FA5E80]') AND parent_object_id = OBJECT_ID(N'[dbo].[Versiones_has_Clientes_has_Ambientes]'))
ALTER TABLE [dbo].[Versiones_has_Clientes_has_Ambientes] DROP CONSTRAINT [FK__Versiones__idAmb__59FA5E80]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Versiones__idVer__59063A47]') AND parent_object_id = OBJECT_ID(N'[dbo].[Versiones_has_Clientes]'))
ALTER TABLE [dbo].[Versiones_has_Clientes] DROP CONSTRAINT [FK__Versiones__idVer__59063A47]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Versiones__idCli__1BFD2C07]') AND parent_object_id = OBJECT_ID(N'[dbo].[Versiones_has_Clientes]'))
ALTER TABLE [dbo].[Versiones_has_Clientes] DROP CONSTRAINT [FK__Versiones__idCli__1BFD2C07]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuarios_Perfiles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuarios]'))
ALTER TABLE [dbo].[Usuarios] DROP CONSTRAINT [FK_Usuarios_Perfiles]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Usuarios__idPers__5629CD9C]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuarios]'))
ALTER TABLE [dbo].[Usuarios] DROP CONSTRAINT [FK__Usuarios__idPers__5629CD9C]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tareas_Componentes1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tareas]'))
ALTER TABLE [dbo].[Tareas] DROP CONSTRAINT [FK_Tareas_Componentes1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tareas_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tareas]'))
ALTER TABLE [dbo].[Tareas] DROP CONSTRAINT [FK_Tareas_Clientes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tareas_Ambientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tareas]'))
ALTER TABLE [dbo].[Tareas] DROP CONSTRAINT [FK_Tareas_Ambientes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Perfiles_has_Menus_Perfiles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Perfiles_has_Menus]'))
ALTER TABLE [dbo].[Perfiles_has_Menus] DROP CONSTRAINT [FK_Perfiles_has_Menus_Perfiles]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Perfiles_has_Menus_Menus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Perfiles_has_Menus]'))
ALTER TABLE [dbo].[Perfiles_has_Menus] DROP CONSTRAINT [FK_Perfiles_has_Menus_Menus]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ModuloVer__idVer__5070F446]') AND parent_object_id = OBJECT_ID(N'[dbo].[ModuloVersiones]'))
ALTER TABLE [dbo].[ModuloVersiones] DROP CONSTRAINT [FK__ModuloVer__idVer__5070F446]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Modulos_Suites]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modulos]'))
ALTER TABLE [dbo].[Modulos] DROP CONSTRAINT [FK_Modulos_Suites]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComponentesModulos_TipoComponentes1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComponentesModulos]'))
ALTER TABLE [dbo].[ComponentesModulos] DROP CONSTRAINT [FK_ComponentesModulos_TipoComponentes1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComponentesModulos_Modulos]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComponentesModulos]'))
ALTER TABLE [dbo].[ComponentesModulos] DROP CONSTRAINT [FK_ComponentesModulos_Modulos]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Componentes__4CA06362]') AND parent_object_id = OBJECT_ID(N'[dbo].[Componentes]'))
ALTER TABLE [dbo].[Componentes] DROP CONSTRAINT [FK__Componentes__4CA06362]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Cmn__idRgn__4BAC3F29]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cmn]'))
ALTER TABLE [dbo].[Cmn] DROP CONSTRAINT [FK__Cmn__idRgn__4BAC3F29]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Clientes___idUsu__4AB81AF0]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clientes_has_Usuarios]'))
ALTER TABLE [dbo].[Clientes_has_Usuarios] DROP CONSTRAINT [FK__Clientes___idUsu__4AB81AF0]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Clientes___idCli__4E88ABD4]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clientes_has_Usuarios]'))
ALTER TABLE [dbo].[Clientes_has_Usuarios] DROP CONSTRAINT [FK__Clientes___idCli__4E88ABD4]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clientes_has_Modulos_Modulos]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clientes_has_Modulos]'))
ALTER TABLE [dbo].[Clientes_has_Modulos] DROP CONSTRAINT [FK_Clientes_has_Modulos_Modulos]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clientes_has_Modulos_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clientes_has_Modulos]'))
ALTER TABLE [dbo].[Clientes_has_Modulos] DROP CONSTRAINT [FK_Clientes_has_Modulos_Clientes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Clientes__idCmn__117F9D94]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clientes]'))
ALTER TABLE [dbo].[Clientes] DROP CONSTRAINT [FK__Clientes__idCmn__117F9D94]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ambientes_has_Componentes_Componentes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ambientes_has_Componentes]'))
ALTER TABLE [dbo].[Ambientes_has_Componentes] DROP CONSTRAINT [FK_Ambientes_has_Componentes_Componentes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ambientes_has_Componentes_Ambientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ambientes_has_Componentes]'))
ALTER TABLE [dbo].[Ambientes_has_Componentes] DROP CONSTRAINT [FK_Ambientes_has_Componentes_Ambientes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ambientes_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ambientes]'))
ALTER TABLE [dbo].[Ambientes] DROP CONSTRAINT [FK_Ambientes_Clientes]
GO
/****** Object:  Table [dbo].[Versiones_has_Clientes_has_Ambientes]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Versiones_has_Clientes_has_Ambientes]') AND type in (N'U'))
DROP TABLE [dbo].[Versiones_has_Clientes_has_Ambientes]
GO
/****** Object:  Table [dbo].[Versiones_has_Clientes]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Versiones_has_Clientes]') AND type in (N'U'))
DROP TABLE [dbo].[Versiones_has_Clientes]
GO
/****** Object:  Table [dbo].[TrabPlantas]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrabPlantas]') AND type in (N'U'))
DROP TABLE [dbo].[TrabPlantas]
GO
/****** Object:  Table [dbo].[TrabHonorarios]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrabHonorarios]') AND type in (N'U'))
DROP TABLE [dbo].[TrabHonorarios]
GO
/****** Object:  Table [dbo].[TipoComponentes]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoComponentes]') AND type in (N'U'))
DROP TABLE [dbo].[TipoComponentes]
GO
/****** Object:  Table [dbo].[Tareas]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tareas]') AND type in (N'U'))
DROP TABLE [dbo].[Tareas]
GO
/****** Object:  Table [dbo].[Suites]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Suites]') AND type in (N'U'))
DROP TABLE [dbo].[Suites]
GO
/****** Object:  Table [dbo].[Perfiles_has_Menus]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Perfiles_has_Menus]') AND type in (N'U'))
DROP TABLE [dbo].[Perfiles_has_Menus]
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Perfiles]') AND type in (N'U'))
DROP TABLE [dbo].[Perfiles]
GO
/****** Object:  Table [dbo].[ModulosXLSX]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ModulosXLSX]') AND type in (N'U'))
DROP TABLE [dbo].[ModulosXLSX]
GO
/****** Object:  Table [dbo].[Modulos]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Modulos]') AND type in (N'U'))
DROP TABLE [dbo].[Modulos]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Menus]') AND type in (N'U'))
DROP TABLE [dbo].[Menus]
GO
/****** Object:  Table [dbo].[Folios]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Folios]') AND type in (N'U'))
DROP TABLE [dbo].[Folios]
GO
/****** Object:  Table [dbo].[ComponentesModulos]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ComponentesModulos]') AND type in (N'U'))
DROP TABLE [dbo].[ComponentesModulos]
GO
/****** Object:  Table [dbo].[Componentes]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Componentes]') AND type in (N'U'))
DROP TABLE [dbo].[Componentes]
GO
/****** Object:  Table [dbo].[Cmn]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cmn]') AND type in (N'U'))
DROP TABLE [dbo].[Cmn]
GO
/****** Object:  Table [dbo].[Clientes_has_Usuarios]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clientes_has_Usuarios]') AND type in (N'U'))
DROP TABLE [dbo].[Clientes_has_Usuarios]
GO
/****** Object:  Table [dbo].[Clientes_has_Modulos]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clientes_has_Modulos]') AND type in (N'U'))
DROP TABLE [dbo].[Clientes_has_Modulos]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clientes]') AND type in (N'U'))
DROP TABLE [dbo].[Clientes]
GO
/****** Object:  Table [dbo].[AmbientesXLSX]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AmbientesXLSX]') AND type in (N'U'))
DROP TABLE [dbo].[AmbientesXLSX]
GO
/****** Object:  Table [dbo].[Ambientes_has_Componentes]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ambientes_has_Componentes]') AND type in (N'U'))
DROP TABLE [dbo].[Ambientes_has_Componentes]
GO
/****** Object:  Table [dbo].[Ambientes]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ambientes]') AND type in (N'U'))
DROP TABLE [dbo].[Ambientes]
GO
/****** Object:  Table [dbo].[ModuloVersiones]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ModuloVersiones]') AND type in (N'U'))
DROP TABLE [dbo].[ModuloVersiones]
GO
/****** Object:  Table [dbo].[Versiones]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Versiones]') AND type in (N'U'))
DROP TABLE [dbo].[Versiones]
GO

/****** Object:  Table [dbo].[Usuarios]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuarios]') AND type in (N'U'))
DROP TABLE [dbo].[Usuarios]
GO

/****** Object:  Table [dbo].[Personas]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Personas]') AND type in (N'U'))
DROP TABLE [dbo].[Personas]
GO
/****** Object:  Table [dbo].[Rgn]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rgn]') AND type in (N'U'))
DROP TABLE [dbo].[Rgn]
GO

/****** Object:  UserDefinedFunction [dbo].[fcn_isAmbienteEx]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fcn_isAmbienteEx]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fcn_isAmbienteEx]
GO
/****** Object:  UserDefinedFunction [dbo].[fcn_ambienteok]    Script Date: 16-02-2017 18:50:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fcn_ambienteok]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fcn_ambienteok]
GO


/****** Object:  Table [dbo].[Ambientes]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ambientes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ambientes](
	[idAmbientes] [int] IDENTITY(1,1) NOT NULL,
	[idClientes] [int] NULL,
	[Nombre] [varchar](100) NULL,
	[Tipo] [int] NULL,
	[ServerBd] [varchar](100) NULL,
	[Instancia] [varchar](100) NULL,
	[NomBd] [varchar](100) NULL,
	[UserDbo] [varchar](50) NULL,
	[PwdDbo] [varchar](50) NULL,
 CONSTRAINT [PK_Ambientes] PRIMARY KEY CLUSTERED 
(
	[idAmbientes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Ambientes_has_Componentes]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ambientes_has_Componentes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ambientes_has_Componentes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[idAmbientes] [int] NULL,
	[Modulo] [char](30) NULL,
	[idVersion] [int] NULL,
	[NameFile] [varchar](50) NULL,
 CONSTRAINT [PK_Ambientes_has_Componentes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AmbientesXLSX]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AmbientesXLSX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AmbientesXLSX](
	[idAmbientes] [int] NULL,
	[idClientes] [int] NULL,
	[Nombre] [varchar](100) NULL,
	[Tipo] [int] NULL,
	[ServerBd] [varchar](100) NULL,
	[Instancia] [varchar](100) NULL,
	[NomBd] [varchar](100) NULL,
	[UserDbo] [varchar](50) NULL,
	[PwdDbo] [varchar](50) NULL,
	[FechaRegistro] [datetime] NULL,
	[EstadoRegistro] [int] NULL,
	[ErrorRegistro] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clientes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Clientes](
	[idClientes] [int] IDENTITY(1,1) NOT NULL,
	[idCmn] [int] NOT NULL,
	[Rut] [int] NULL,
	[Dv] [char](1) NULL,
	[RazonSocial] [varchar](100) NULL,
	[Direccion] [varchar](100) NULL,
	[NroLicencia] [varchar](100) NULL,
	[Folio] [int] NULL,
	[EstMtc] [int] NULL,
	[MesIni] [varchar](50) NULL,
	[NroTrbc] [varchar](50) NULL,
	[NroTrbh] [varchar](50) NULL,
	[NroUsr] [varchar](50) NULL,
	[MesCon] [varchar](50) NULL,
	[Correlativo] [int] NULL,
 CONSTRAINT [PK__Clientes__470BDBA00F975522] PRIMARY KEY CLUSTERED 
(
	[idClientes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Clientes_has_Modulos]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clientes_has_Modulos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Clientes_has_Modulos](
	[idClientes] [int] NOT NULL,
	[idModulo] [int] NOT NULL,
 CONSTRAINT [PK_Clientes_has_ModulosWinper] PRIMARY KEY CLUSTERED 
(
	[idClientes] ASC,
	[idModulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Clientes_has_Usuarios]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clientes_has_Usuarios]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Clientes_has_Usuarios](
	[idClientes] [int] NOT NULL,
	[idUsuarios] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idClientes] ASC,
	[idUsuarios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Cmn]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cmn]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cmn](
	[idCmn] [int] IDENTITY(1,1) NOT NULL,
	[idRgn] [int] NOT NULL,
	[NomCmn] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCmn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Componentes]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Componentes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Componentes](
	[Modulo] [char](30) NOT NULL,
	[idVersion] [int] NOT NULL,
	[NameFile] [varchar](50) NOT NULL,
	[VersionFile] [varchar](50) NULL,
	[FechaFile] [datetime] NULL,
	[Comentario] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Modulo] ASC,
	[idVersion] ASC,
	[NameFile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ComponentesModulos]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ComponentesModulos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ComponentesModulos](
	[idComponentesModulos] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Descripcion] [text] NULL,
	[Modulos] [int] NULL,
	[TipoComponentes] [int] NULL,
 CONSTRAINT [PK_ComponentesModulos] PRIMARY KEY CLUSTERED 
(
	[idComponentesModulos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Folios]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Folios]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Folios](
	[Identificador] [varchar](30) NOT NULL,
	[Numero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Menus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Menus](
	[idMenus] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Link] [varchar](50) NULL,
	[CodPrf] [int] NULL,
	[Icon] [varchar](50) NULL,
	[Submenus] [text] NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[idMenus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Modulos]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Modulos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Modulos](
	[idModulo] [int] IDENTITY(1,1) NOT NULL,
	[NomModulo] [varchar](100) NULL,
	[Descripcion] [text] NULL,
	[isCore] [bit] NULL,
	[Directorio] [varchar](100) NULL,
	[Estado] [char](1) NULL,
	[Suite] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idModulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ModulosXLSX]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ModulosXLSX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ModulosXLSX](
	[idModulo] [int] IDENTITY(1,1) NOT NULL,
	[NomModulo] [varchar](100) NULL,
	[Descripcion] [text] NULL,
	[isCore] [bit] NULL,
	[Directorio] [varchar](100) NULL,
	[FechaRegistro] [date] NULL,
	[EstadoRegistro] [int] NULL,
	[ErrorRegistro] [text] NULL,
	[Usuario] [int] NULL,
 CONSTRAINT [PK_ModulosXLSX_1] PRIMARY KEY CLUSTERED 
(
	[idModulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ModuloVersiones]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ModuloVersiones]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ModuloVersiones](
	[idVersion] [int] NOT NULL,
	[Modulo] [char](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idVersion] ASC,
	[Modulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Perfiles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Perfiles](
	[CodPrf] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Tipo] [char](1) NULL,
 CONSTRAINT [PK_Perfiles] PRIMARY KEY CLUSTERED 
(
	[CodPrf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Perfiles_has_Menus]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Perfiles_has_Menus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Perfiles_has_Menus](
	[CodPrf] [int] NULL,
	[idMenus] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Personas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Personas](
	[idPersonas] [int] IDENTITY(1,1) NOT NULL,
	[Apellidos] [varchar](100) NULL,
	[Nombres] [varchar](100) NULL,
	[Mail] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idPersonas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Rgn]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rgn]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Rgn](
	[idRgn] [int] IDENTITY(1,1) NOT NULL,
	[NomRgn] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idRgn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Suites]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Suites]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Suites](
	[idSuite] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Suites] PRIMARY KEY CLUSTERED 
(
	[idSuite] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Tareas]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tareas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tareas](
	[idTareas] [int] IDENTITY(1,1) NOT NULL,
	[idClientes] [int] NULL,
	[idAmbientes] [int] NULL,
	[CodPrf] [int] NULL,
	[Estado] [int] NULL,
	[Modulo] [char](30) NULL,
	[idVersion] [int] NULL,
	[NameFile] [varchar](50) NULL,
	[Error] [text] NULL,
	[FechaRegistro] [datetime] NULL,
	[Reportado] [bit] NULL,
 CONSTRAINT [PK_Tareas] PRIMARY KEY CLUSTERED 
(
	[idTareas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TipoComponentes]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoComponentes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TipoComponentes](
	[idTipoComponentes] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[isCompBD] [bit] NULL,
	[isCompDLL] [bit] NULL,
	[Extensiones] [varchar](500) NULL,
 CONSTRAINT [PK_TipoComponentes] PRIMARY KEY CLUSTERED 
(
	[idTipoComponentes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tmpModulos]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmpModulos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tmpModulos](
	[idModulo] [int] NULL,
	[NomModulo] [varchar](100) NULL,
	[Descripcion] [text] NULL,
	[isCore] [bit] NULL,
	[Directorio] [varchar](100) NULL,
	[Estado] [char](1) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TrabHonorarios]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrabHonorarios]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TrabHonorarios](
	[idTrabHonorarios] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TrabPlantas]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrabPlantas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TrabPlantas](
	[idTrabPlantas] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuarios]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Usuarios](
	[idUsuarios] [int] IDENTITY(1,1) NOT NULL,
	[idPersonas] [int] NOT NULL,
	[CodPrf] [int] NULL,
	[Clave] [varchar](100) NULL,
	[EstUsr] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuarios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Versiones]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Versiones]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Versiones](
	[idVersion] [int] IDENTITY(1,1) NOT NULL,
	[NumVersion] [varchar](50) NULL,
	[FecVersion] [datetime] NULL,
	[Estado] [char](1) NULL,
	[Comentario] [varchar](1024) NULL,
	[Usuario] [varchar](100) NULL,
	[Instalador] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Versiones_has_Clientes]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Versiones_has_Clientes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Versiones_has_Clientes](
	[idVersion] [int] NOT NULL,
	[idClientes] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idVersion] ASC,
	[idClientes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Versiones_has_Clientes_has_Ambientes]    Script Date: 09-02-2017 12:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Versiones_has_Clientes_has_Ambientes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Versiones_has_Clientes_has_Ambientes](
	[idClientes] [int] NOT NULL,
	[idVersion] [int] NOT NULL,
	[idAmbientes] [int] NOT NULL,
	[Estado] [char](1) NULL,
	[FechaInstalacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idClientes] ASC,
	[idVersion] ASC,
	[idAmbientes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Cmn] ON 

INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (1, 1, N'Iquique')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (2, 1, N'Alto Hospicio')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (3, 1, N'Pica')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (4, 1, N'Pozo Almonte')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (5, 1, N'Huara')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (6, 1, N'Camiña')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (7, 1, N'Colchane')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (8, 2, N'Tocopilla')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (9, 2, N'Maria Elena')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (10, 2, N'Calama')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (11, 2, N'Ollague')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (12, 2, N'San Pedro de Atacama')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (13, 2, N'Antofagasta')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (14, 2, N'Mejillones')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (15, 2, N'Sierra Gorda')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (16, 2, N'Taltal')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (17, 3, N'Chañaral')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (18, 3, N'Diego de Almagro')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (19, 3, N'Copiapo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (20, 3, N'Caldera')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (21, 3, N'Tierra Amarilla')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (22, 3, N'Vallenar')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (23, 3, N'Freirina')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (24, 3, N'Huasco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (25, 3, N'Alto del Carmen')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (26, 4, N'La Serena')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (27, 4, N'La Higuera')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (28, 4, N'Coquimbo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (29, 4, N'Andacollo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (30, 4, N'Vicuña')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (31, 4, N'Paihuano')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (32, 4, N'Ovalle')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (33, 4, N'Rio Hurtado')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (34, 4, N'Monte Patria')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (35, 4, N'Combarbala')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (36, 4, N'Punitaqui')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (37, 4, N'Illapel')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (38, 4, N'Salamanca')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (39, 4, N'Los Vilos')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (40, 4, N'Canela')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (41, 5, N'Valparaiso')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (42, 5, N'Casablanca')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (43, 5, N'Concon')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (44, 5, N'Juan Fernandez')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (45, 5, N'Puchuncavi')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (46, 5, N'Quilpue')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (47, 5, N'Quintero')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (48, 5, N'Villa Alemana')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (49, 5, N'Viña del Mar')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (50, 5, N'Petorca')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (51, 5, N'La Ligua')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (52, 5, N'Cabildo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (53, 5, N'Papudo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (54, 5, N'Zapallar')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (55, 5, N'Los Andes')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (56, 5, N'San Esteban')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (57, 5, N'Calle Larga')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (58, 5, N'Rinconada')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (59, 5, N'San Felipe')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (60, 5, N'Catemu')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (61, 5, N'Llay Llay')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (62, 5, N'Panquehue')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (63, 5, N'Putaendo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (64, 5, N'Santa Maria')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (65, 5, N'Quillota')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (66, 5, N'La Calera')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (67, 5, N'Hijuelas')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (68, 5, N'Limache')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (69, 5, N'La Cruz')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (70, 5, N'Nogales')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (71, 5, N'Olmue')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (72, 5, N'San Antonio')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (73, 5, N'Algarrobo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (74, 5, N'Cartagena')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (75, 5, N'El Quisco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (76, 5, N'El Tabo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (77, 5, N'Santo Domingo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (78, 5, N'Isla de Pascua')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (79, 6, N'Rancagua')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (80, 6, N'Codegua')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (81, 6, N'Coinco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (82, 6, N'Coltauco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (83, 6, N'Doñihue')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (84, 6, N'Graneros')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (85, 6, N'Las Cabras')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (86, 6, N'Mostazal')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (87, 6, N'Malloa')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (88, 6, N'Olivar')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (89, 6, N'Peumo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (90, 6, N'Rengo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (91, 6, N'San Vicente')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (92, 6, N'Machali')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (93, 6, N'Pichidegua')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (94, 6, N'Quinta de Tilcoco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (95, 6, N'Requinoa')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (96, 6, N'San Fernando')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (97, 6, N'Chepica')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (98, 6, N'Chimbarongo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (99, 6, N'Palmilla')
GO
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (100, 6, N'Peralillo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (101, 6, N'Placilla')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (102, 6, N'Pumanque')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (103, 6, N'Santa Cruz')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (104, 6, N'Lolol')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (105, 6, N'Nancagua')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (106, 6, N'Pichilemu')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (107, 6, N'La Estrella')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (108, 6, N'Litueche')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (109, 6, N'Marchigue')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (110, 6, N'Navidad')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (111, 6, N'Paredones')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (112, 7, N'Curico')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (113, 7, N'Teno')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (114, 7, N'Romeral')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (115, 7, N'Molina')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (116, 7, N'Sagrada Familia')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (117, 7, N'Hualañe')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (118, 7, N'Licanten')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (119, 7, N'Vichuquen')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (120, 7, N'Rauco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (121, 7, N'Talca')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (122, 7, N'Pelarco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (123, 7, N'Rio Claro')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (124, 7, N'San Clemente')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (125, 7, N'Maule')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (126, 7, N'San Rafael')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (127, 7, N'Empedrado')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (128, 7, N'Pencahue')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (129, 7, N'Constitucion')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (130, 7, N'Curepto')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (131, 7, N'Linares')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (132, 7, N'Yerbas Buenas')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (133, 7, N'Colbun')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (134, 7, N'Longavi')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (135, 7, N'Parral')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (136, 7, N'Retiro')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (137, 7, N'Villa Alegre')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (138, 7, N'San Javier')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (139, 7, N'Cauquenes')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (140, 7, N'Pelluhue')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (141, 7, N'Chanco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (142, 8, N'Chillan')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (143, 8, N'Bulnes')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (144, 8, N'Chillan Viejo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (145, 8, N'Cobquecura')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (146, 8, N'Coelemu')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (147, 8, N'Coihueco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (148, 8, N'El Carmen')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (149, 8, N'Ninhue')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (150, 8, N'Ñiquen')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (151, 8, N'Pemuco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (152, 8, N'Pinto')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (153, 8, N'Portezuelo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (154, 8, N'Quillon')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (155, 8, N'Quirihue')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (156, 8, N'Ranquil')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (157, 8, N'San Carlos')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (158, 8, N'San Fabian')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (159, 8, N'San Ignacio')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (160, 8, N'San Nicolas')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (161, 8, N'Trehuaco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (162, 8, N'Yungay')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (163, 8, N'Los Angeles')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (164, 8, N'Alto Bio Bio')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (165, 8, N'Antuco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (166, 8, N'Cabrero')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (167, 8, N'Laja')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (168, 8, N'Mulchen')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (169, 8, N'Nacimiento')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (170, 8, N'Negrete')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (171, 8, N'Quilaco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (172, 8, N'Quilleco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (173, 8, N'Santa Barbara')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (174, 8, N'San Rosendo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (175, 8, N'Tucapel')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (176, 8, N'Yumbel')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (177, 8, N'Concepcion')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (178, 8, N'Chiguayante')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (179, 8, N'Coronel')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (180, 8, N'Florida')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (181, 8, N'Hualpen')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (182, 8, N'Hualqui')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (183, 8, N'Lota')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (184, 8, N'Penco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (185, 8, N'San Pedro de la Paz')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (186, 8, N'Santa Juana')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (187, 8, N'Talcahuano')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (188, 8, N'Tome')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (189, 8, N'Arauco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (190, 8, N'Cañete')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (191, 8, N'Contulmo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (192, 8, N'Curanilahue')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (193, 8, N'Lebu')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (194, 8, N'Los Alamos')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (195, 8, N'Tirua')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (196, 9, N'Angol')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (197, 9, N'Collipulli')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (198, 9, N'Curacautin')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (199, 9, N'Ercilla')
GO
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (200, 9, N'Lonquimay')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (201, 9, N'Los Sauces')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (202, 9, N'Lumaco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (203, 9, N'Puren')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (204, 9, N'Renaico')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (205, 9, N'Traiguen')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (206, 9, N'Victoria')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (207, 9, N'Temuco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (208, 9, N'Carahue')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (209, 9, N'Cholchol')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (210, 9, N'Cunco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (211, 9, N'Curarrehue')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (212, 9, N'Freire')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (213, 9, N'Galvarino')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (214, 9, N'Gorbea')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (215, 9, N'Lautaro')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (216, 9, N'Loncoche')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (217, 9, N'Melipeuco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (218, 9, N'Nueva Imperial')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (219, 9, N'Padre las Casas')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (220, 9, N'Perquenco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (221, 9, N'Pitrufquen')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (222, 9, N'Pucon')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (223, 9, N'Saavedra')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (224, 9, N'Teodoro Schmidt')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (225, 9, N'Tolten')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (226, 9, N'Vilcun')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (227, 9, N'Villarrica')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (228, 10, N'Osorno')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (229, 10, N'Puerto Octay')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (230, 10, N'Purranque')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (231, 10, N'Puyehue')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (232, 10, N'Rio Negro')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (233, 10, N'San Juan de la Costa')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (234, 10, N'San Pablo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (235, 10, N'Cochamo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (236, 10, N'Fresia')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (237, 10, N'Frutillar')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (238, 10, N'Los Muermos')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (239, 10, N'Llanquihue')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (240, 10, N'Maullin')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (241, 10, N'Puerto Montt')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (242, 10, N'Puerto Varas')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (243, 10, N'Calbuco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (244, 10, N'Ancud')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (245, 10, N'Castro')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (246, 10, N'Curaco de Velez')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (247, 10, N'Chonchi')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (248, 10, N'Dalcahue')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (249, 10, N'Puqueldon')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (250, 10, N'Queilen')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (251, 10, N'Quellon')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (252, 10, N'Quemchi')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (253, 10, N'Quinchao')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (254, 10, N'Chaiten')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (255, 10, N'Futaleufu')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (256, 10, N'Hualaihue')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (257, 10, N'Palena')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (258, 11, N'Cochrane')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (259, 11, N'OHiggins')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (260, 11, N'Tortel')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (261, 11, N'Aysen')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (262, 11, N'Cisnes')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (263, 11, N'Guaitecas')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (264, 11, N'Coyhaique')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (265, 11, N'Lago Verde')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (266, 11, N'Chile Chico')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (267, 11, N'Rio Ibañez')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (268, 12, N'Natales')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (269, 12, N'Torres del Paine')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (270, 12, N'Punta Arenas')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (271, 12, N'Rio Verde')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (272, 12, N'Laguna Blanca')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (273, 12, N'San Gregorio')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (274, 12, N'Porvenir')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (275, 12, N'Primavera')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (276, 12, N'Timaukel')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (277, 12, N'Navarino')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (278, 12, N'Antartica')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (279, 13, N'Cerrillos')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (280, 13, N'Cerro Navia')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (281, 13, N'Conchali')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (282, 13, N'El Bosque')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (283, 13, N'Estacion Central')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (284, 13, N'Huechuraba')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (285, 13, N'Independencia')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (286, 13, N'La Cisterna')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (287, 13, N'La Florida')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (288, 13, N'La Granja')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (289, 13, N'La Pintana')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (290, 13, N'La Reina')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (291, 13, N'Las Condes')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (292, 13, N'Lo Barnechea')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (293, 13, N'Lo Espejo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (294, 13, N'Lo Prado')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (295, 13, N'Macul')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (296, 13, N'Maipu')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (297, 13, N'Ñuñoa')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (298, 13, N'Pedro Aguirre Cerda')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (299, 13, N'Peñalolen')
GO
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (300, 13, N'Providencia')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (301, 13, N'Pudahuel')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (302, 13, N'Quilicura')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (303, 13, N'Quinta Normal')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (304, 13, N'Recoleta')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (305, 13, N'Renca')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (306, 13, N'San Joaquin')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (307, 13, N'San Miguel')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (308, 13, N'San Ramon')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (309, 13, N'Santiago')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (310, 13, N'Vitacura')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (311, 13, N'Puente Alto')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (312, 13, N'Pirque')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (313, 13, N'San Jose de Maipo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (314, 13, N'Melipilla')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (315, 13, N'Maria Pinto')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (316, 13, N'Curacavi')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (317, 13, N'Alhue')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (318, 13, N'San Pedro')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (319, 13, N'Talagante')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (320, 13, N'El Monte')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (321, 13, N'Isla de Maipo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (322, 13, N'Padre Hurtado')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (323, 13, N'Peñaflor')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (324, 13, N'Buin')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (325, 13, N'Calera de Tango')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (326, 13, N'Paine')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (327, 13, N'San Bernardo')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (328, 13, N'Colina')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (329, 13, N'Lampa')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (330, 13, N'Til Til')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (331, 14, N'Valdivia')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (332, 14, N'Corral')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (333, 14, N'Lanco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (334, 14, N'Los Lagos')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (335, 14, N'Mafil')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (336, 14, N'Mariquina')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (337, 14, N'Paillaco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (338, 14, N'Panguipulli')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (339, 14, N'La Union')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (340, 14, N'Futrono')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (341, 14, N'Lago Ranco')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (342, 14, N'Rio Bueno')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (343, 15, N'Arica')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (344, 15, N'Camarones')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (345, 15, N'Putre')
INSERT [dbo].[Cmn] ([idCmn], [idRgn], [NomCmn]) VALUES (346, 15, N'General Lagos')
SET IDENTITY_INSERT [dbo].[Cmn] OFF
SET IDENTITY_INSERT [dbo].[Menus] ON 

INSERT [dbo].[Menus] ([idMenus], [Descripcion], [Link], [CodPrf], [Icon], [Submenus]) VALUES (1, N'Versiones', N'/Admin/', 1, N'fa-home', N'')
INSERT [dbo].[Menus] ([idMenus], [Descripcion], [Link], [CodPrf], [Icon], [Submenus]) VALUES (2, N'Clientes', N'/Clientes/', 1, N'fa-users', N'')
INSERT [dbo].[Menus] ([idMenus], [Descripcion], [Link], [CodPrf], [Icon], [Submenus]) VALUES (3, N'Seguridad', N'/Seguridad/', 1, N'fa-unlock', N'')
INSERT [dbo].[Menus] ([idMenus], [Descripcion], [Link], [CodPrf], [Icon], [Submenus]) VALUES (4, N'Versiones', N'/AdminClt/', 11, N'fa-home', N'')
INSERT [dbo].[Menus] ([idMenus], [Descripcion], [Link], [CodPrf], [Icon], [Submenus]) VALUES (5, N'Seguridad', N'/SeguridadClt/', 11, N'fa-unlock', N'')
INSERT [dbo].[Menus] ([idMenus], [Descripcion], [Link], [CodPrf], [Icon], [Submenus]) VALUES (6, N'Ambientes', N'/AmbientesClt/', 11, N'fa-cubes', N'')
INSERT [dbo].[Menus] ([idMenus], [Descripcion], [Link], [CodPrf], [Icon], [Submenus]) VALUES (7, N'Modulos', N'/Modulos/', 1, N'fa-cubes', N'')
INSERT [dbo].[Menus] ([idMenus], [Descripcion], [Link], [CodPrf], [Icon], [Submenus]) VALUES (8, N'Configuracion', N'/SuperUser/', 1, N'fa-cogs', N'')
SET IDENTITY_INSERT [dbo].[Menus] OFF
SET IDENTITY_INSERT [dbo].[Modulos] ON 

INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (93, N'CONTRATO', NULL, 1, N'CONTRATOS', N'V', 1)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (94, N'CTACTE', NULL, 1, N'CUENTAS CORRIENTES', N'V', 1)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (95, N'FERIADOS', NULL, 1, N'FERIADOS', N'V', 1)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (96, N'FINIQUITO', NULL, 1, N'FINIQUITOS', N'V', 1)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (97, N'HONORARIO', NULL, 1, N'HONORARIOS', N'V', 1)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (98, N'LICENCIAS', NULL, 1, N'LICENCIAS MEDICAS', N'V', 1)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (99, N'POSTULA', NULL, 1, N'POSTULANTES', N'V', 1)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (100, N'QUERY', NULL, 1, N'QUERY', N'V', 1)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (102, N'ANTICIPOS', NULL, 1, N'ANTICIPOS', N'V', 2)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (103, N'ASISTENCIA', NULL, 1, N'ASISTENCIA', N'V', 2)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (104, N'CERTIFICA', NULL, 1, N'CERTIFICADOS', N'V', 2)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (105, N'CIERRE', NULL, 1, N'CIERRE MENSUAL', N'V', 2)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (106, N'CONTABLE', NULL, 1, N'CONTABILIZACION_NUEVA', N'V', 2)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (107, N'GRATIFICA', NULL, 1, N'RELIQUIDACION', N'V', 2)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (108, N'HABDSCTO', NULL, 1, N'HABERES Y DESCUENTOS', N'V', 2)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (109, N'INFOPREVIS', NULL, 1, N'INFORMES PREVISIONALES', N'V', 2)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (110, N'INFORMES', NULL, 1, N'INFORMES LIQUIDACION', N'V', 2)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (111, N'LIQUIDA', NULL, 1, N'LIQUIDACION', N'V', 2)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (112, N'RETENCION', NULL, 1, N'RETENCIONES JUDICIALES', N'V', 2)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (113, N'CAPACITACI', NULL, 1, N'CAPACITACION', N'V', 3)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (114, N'POSTULA', NULL, 1, N'POSTULANTES', N'V', 3)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (115, N'BIENESTAR', NULL, 1, N'BIENESTAR', N'V', 4)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (116, N'COMPETEN', NULL, 1, N'COMPETENCIAS', N'V', 4)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (117, N'EVACARGOS', NULL, 1, N'EVALUACION DE CARGOS', N'V', 4)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (118, N'PLANCARR', NULL, 1, N'PLAN DE CARRERA', N'V', 4)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (119, N'PPTO_GASTO', NULL, 1, N'PRESUPUESTO DE GASTOS', N'V', 4)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (120, N'PREVRIESGO', NULL, 1, N'PREVENCION DE RIESGOS', N'V', 4)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (121, N'PARAMETROS', NULL, 1, N'PARAMETROS', N'V', 5)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (122, N'PERSONAL', NULL, 1, N'PERSONAL', N'V', 5)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (123, N'SEGURIDAD', NULL, 1, N'SEGURIDAD', N'V', 5)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (124, N'INTER', NULL, 1, N'INTERCONEXION', N'V', 5)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (125, N'FUENTES', NULL, 1, N'FUENTES', N'V', 5)
INSERT [dbo].[Modulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado], [Suite]) VALUES (126, N'ADMWINPE', NULL, 1, N'ADMWINPE', N'V', 5)
SET IDENTITY_INSERT [dbo].[Modulos] OFF
INSERT [dbo].[Perfiles] ([CodPrf], [Nombre], [Tipo]) VALUES (1, N'Administrador', N'I')
INSERT [dbo].[Perfiles] ([CodPrf], [Nombre], [Tipo]) VALUES (2, N'Desarrollador', N'I')
INSERT [dbo].[Perfiles] ([CodPrf], [Nombre], [Tipo]) VALUES (3, N'Soporte', N'I')
INSERT [dbo].[Perfiles] ([CodPrf], [Nombre], [Tipo]) VALUES (4, N'Gestión', N'I')
INSERT [dbo].[Perfiles] ([CodPrf], [Nombre], [Tipo]) VALUES (5, N'SuperUser', N'I')
INSERT [dbo].[Perfiles] ([CodPrf], [Nombre], [Tipo]) VALUES (11, N'Administrador', N'E')
INSERT [dbo].[Perfiles] ([CodPrf], [Nombre], [Tipo]) VALUES (12, N'DBA', N'E')
INSERT [dbo].[Perfiles_has_Menus] ([CodPrf], [idMenus]) VALUES (1, 1)
INSERT [dbo].[Perfiles_has_Menus] ([CodPrf], [idMenus]) VALUES (1, 2)
INSERT [dbo].[Perfiles_has_Menus] ([CodPrf], [idMenus]) VALUES (1, 3)
INSERT [dbo].[Perfiles_has_Menus] ([CodPrf], [idMenus]) VALUES (1, 7)
INSERT [dbo].[Perfiles_has_Menus] ([CodPrf], [idMenus]) VALUES (2, 1)
INSERT [dbo].[Perfiles_has_Menus] ([CodPrf], [idMenus]) VALUES (4, 2)
INSERT [dbo].[Perfiles_has_Menus] ([CodPrf], [idMenus]) VALUES (11, 4)
INSERT [dbo].[Perfiles_has_Menus] ([CodPrf], [idMenus]) VALUES (11, 5)
INSERT [dbo].[Perfiles_has_Menus] ([CodPrf], [idMenus]) VALUES (11, 6)
INSERT [dbo].[Perfiles_has_Menus] ([CodPrf], [idMenus]) VALUES (12, 4)
INSERT [dbo].[Perfiles_has_Menus] ([CodPrf], [idMenus]) VALUES (12, 5)
INSERT [dbo].[Perfiles_has_Menus] ([CodPrf], [idMenus]) VALUES (12, 6)
INSERT [dbo].[Perfiles_has_Menus] ([CodPrf], [idMenus]) VALUES (5, 8)
INSERT [dbo].[Perfiles_has_Menus] ([CodPrf], [idMenus]) VALUES (5, 7)
INSERT [dbo].[Perfiles_has_Menus] ([CodPrf], [idMenus]) VALUES (5, 3)
INSERT [dbo].[Perfiles_has_Menus] ([CodPrf], [idMenus]) VALUES (5, 2)
INSERT [dbo].[Perfiles_has_Menus] ([CodPrf], [idMenus]) VALUES (5, 1)
SET IDENTITY_INSERT [dbo].[Rgn] ON 

INSERT [dbo].[Rgn] ([idRgn], [NomRgn]) VALUES (1, N'Tarapacá')
INSERT [dbo].[Rgn] ([idRgn], [NomRgn]) VALUES (2, N'Antofagasta')
INSERT [dbo].[Rgn] ([idRgn], [NomRgn]) VALUES (3, N'Atacama')
INSERT [dbo].[Rgn] ([idRgn], [NomRgn]) VALUES (4, N'Coquimbo')
INSERT [dbo].[Rgn] ([idRgn], [NomRgn]) VALUES (5, N'Valparaiso')
INSERT [dbo].[Rgn] ([idRgn], [NomRgn]) VALUES (6, N'Libertador Gral. B.O.')
INSERT [dbo].[Rgn] ([idRgn], [NomRgn]) VALUES (7, N'Del Maule')
INSERT [dbo].[Rgn] ([idRgn], [NomRgn]) VALUES (8, N'Bío Bío')
INSERT [dbo].[Rgn] ([idRgn], [NomRgn]) VALUES (9, N'Araucanía')
INSERT [dbo].[Rgn] ([idRgn], [NomRgn]) VALUES (10, N'De los Lagos')
INSERT [dbo].[Rgn] ([idRgn], [NomRgn]) VALUES (11, N'Aysén')
INSERT [dbo].[Rgn] ([idRgn], [NomRgn]) VALUES (12, N'Magallanes')
INSERT [dbo].[Rgn] ([idRgn], [NomRgn]) VALUES (13, N'Metropolitana')
INSERT [dbo].[Rgn] ([idRgn], [NomRgn]) VALUES (14, N'De los Ríos')
INSERT [dbo].[Rgn] ([idRgn], [NomRgn]) VALUES (15, N'Arica y Parinacota')
SET IDENTITY_INSERT [dbo].[Rgn] OFF
SET IDENTITY_INSERT [dbo].[Suites] ON 

INSERT [dbo].[Suites] ([idSuite], [Nombre]) VALUES (1, N'PERSONAL')
INSERT [dbo].[Suites] ([idSuite], [Nombre]) VALUES (2, N'REMUNERACIONES')
INSERT [dbo].[Suites] ([idSuite], [Nombre]) VALUES (3, N'RR.HH')
INSERT [dbo].[Suites] ([idSuite], [Nombre]) VALUES (4, N'GESTION DE PERSONAL')
INSERT [dbo].[Suites] ([idSuite], [Nombre]) VALUES (5, N'PRINCIPAL')
INSERT [dbo].[Suites] ([idSuite], [Nombre]) VALUES (6, N'EMPRESAS')
SET IDENTITY_INSERT [dbo].[Suites] OFF
SET IDENTITY_INSERT [dbo].[TipoComponentes] ON 

INSERT [dbo].[TipoComponentes] ([idTipoComponentes], [Nombre], [isCompBD], [isCompDLL], [Extensiones]) VALUES (1, N'Reportes', 0, 0, N'.qrp ')
INSERT [dbo].[TipoComponentes] ([idTipoComponentes], [Nombre], [isCompBD], [isCompDLL], [Extensiones]) VALUES (2, N'Ejecutables', 0, 0, N'.exe ')
INSERT [dbo].[TipoComponentes] ([idTipoComponentes], [Nombre], [isCompBD], [isCompDLL], [Extensiones]) VALUES (3, N'Imagenes', 0, 0, N'.jpg .png .gif .bmp .ico')
INSERT [dbo].[TipoComponentes] ([idTipoComponentes], [Nombre], [isCompBD], [isCompDLL], [Extensiones]) VALUES (4, N'Librerias dinamicas de Centura', 0, 0, N'.apd ')
INSERT [dbo].[TipoComponentes] ([idTipoComponentes], [Nombre], [isCompBD], [isCompDLL], [Extensiones]) VALUES (5, N'Plantillas de Ejemplo', 0, 0, N'.xls ')
INSERT [dbo].[TipoComponentes] ([idTipoComponentes], [Nombre], [isCompBD], [isCompDLL], [Extensiones]) VALUES (6, N'Detalle control de cambios', 0, 0, N'.txt ')
INSERT [dbo].[TipoComponentes] ([idTipoComponentes], [Nombre], [isCompBD], [isCompDLL], [Extensiones]) VALUES (7, N'Archivos de ejecucion por lote', 0, 0, N'.bat ')
INSERT [dbo].[TipoComponentes] ([idTipoComponentes], [Nombre], [isCompBD], [isCompDLL], [Extensiones]) VALUES (8, N'Archivos de ayuda', 0, 0, N'.htm .css ')
INSERT [dbo].[TipoComponentes] ([idTipoComponentes], [Nombre], [isCompBD], [isCompDLL], [Extensiones]) VALUES (9, N'Documentacion', 0, 0, N'.doc .docx ')
INSERT [dbo].[TipoComponentes] ([idTipoComponentes], [Nombre], [isCompBD], [isCompDLL], [Extensiones]) VALUES (10, N'Archivos xml', 0, 0, N'.xml ')
INSERT [dbo].[TipoComponentes] ([idTipoComponentes], [Nombre], [isCompBD], [isCompDLL], [Extensiones]) VALUES (11, N'Archivo de configuracion', 0, 0, N'.config .ini ')
INSERT [dbo].[TipoComponentes] ([idTipoComponentes], [Nombre], [isCompBD], [isCompDLL], [Extensiones]) VALUES (12, N'DLL', 0, 1, N'.dll .tlb ')
INSERT [dbo].[TipoComponentes] ([idTipoComponentes], [Nombre], [isCompBD], [isCompDLL], [Extensiones]) VALUES (13, N'Scripts SQL', 1, 0, N'.sql ')
SET IDENTITY_INSERT [dbo].[TipoComponentes] OFF
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (1, N'ADMWINPE', NULL, 1, N'ADMWINPE', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (2, N'AIMPRESOR', NULL, 1, N'A_EMPRESAS\Quebecor', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (1, N'ADMWINPE', NULL, 1, N'ADMWINPE', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (2, N'AIMPRESOR', NULL, 1, N'A_EMPRESAS\Quebecor', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (15, N'FIBRA', NULL, 1, N'A_EMPRESAS\Fibra', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (22, N'JEFESUC', NULL, 1, N'JEFE SUCURSAL NUEVO', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (23, N'KPMG', NULL, 1, N'A_EMPRESAS\Kpmg-rrhh', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (26, N'MANPOWER', NULL, 1, N'A_EMPRESAS\Manpower', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (27, N'MASSAI', NULL, 1, N'A_EMPRESAS\Massai', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (28, N'MINEDUC', NULL, 1, N'MINEDUC', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (36, N'RECLOCK', NULL, 1, N'RELOJ', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (37, N'REDISCO', NULL, 1, N'REDISCO', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (38, N'REGENARC', N'Generación de archivos bancarios', 1, N'GENERACION ARCHIVOS', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (39, N'RENUM', NULL, 1, N'RENUM', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (15, N'FIBRA', NULL, 1, N'A_EMPRESAS\Fibra', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (41, N'SAPBO', NULL, 1, NULL, N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (43, N'TRATOS', NULL, 1, N'TRATOS', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (44, N'TRIBUTAC', NULL, 1, N'TRIBUTACION', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (45, N'WINPSOLO', NULL, 1, NULL, N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (46, N'ZAÑARTU', NULL, 1, N'A_EMPRESAS\Zañartu', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (22, N'JEFESUC', NULL, 1, N'JEFE SUCURSAL NUEVO', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (23, N'KPMG', NULL, 1, N'A_EMPRESAS\Kpmg-rrhh', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (26, N'MANPOWER', NULL, 1, N'A_EMPRESAS\Manpower', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (27, N'MASSAI', NULL, 1, N'A_EMPRESAS\Massai', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (28, N'MINEDUC', NULL, 1, N'MINEDUC', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (36, N'RECLOCK', NULL, 1, N'RELOJ', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (37, N'REDISCO', NULL, 1, N'REDISCO', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (38, N'REGENARC', N'Generación de archivos bancarios', 1, N'GENERACION ARCHIVOS', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (39, N'RENUM', NULL, 1, N'RENUM', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (41, N'SAPBO', NULL, 1, NULL, N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (43, N'TRATOS', NULL, 1, N'TRATOS', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (44, N'TRIBUTAC', NULL, 1, N'TRIBUTACION', N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (45, N'WINPSOLO', NULL, 1, NULL, N'V')
INSERT [dbo].[tmpModulos] ([idModulo], [NomModulo], [Descripcion], [isCore], [Directorio], [Estado]) VALUES (46, N'ZAÑARTU', NULL, 1, N'A_EMPRESAS\Zañartu', N'V')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'00', N'00 - Hasta 0')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'P1', N'P1 - Hasta 30')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'P0', N'P0 - Hasta 50')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'P2', N'P2 - Hasta 100')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'P6', N'P6 - Hasta 150')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'P8', N'P8 - Hasta 200')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'Q0', N'Q0 - Hasta 250')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'Q2', N'Q2 - Hasta 300')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'Q4', N'Q4 - Hasta 350')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'Q6', N'Q6 - Hasta 400')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'Q8', N'Q8 - Hasta 450')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'R0', N'R0 - Hasta 500')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'R2', N'R2 - Hasta 550')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'R4', N'R4 - Hasta 600')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'R6', N'R6 - Hasta 650')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'R8', N'R8 - Hasta 700')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'S0', N'S0 - Hasta 750')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'S2', N'S2 - Hasta 800')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'S4', N'S4 - Hasta 850')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'S6', N'S6 - Hasta 900')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'S8', N'S8 - Hasta 950')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'T0', N'T0 - Hasta 1000')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'Z0', N'Z0 - Sin Límite')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'00', N'00 - Hasta 0')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'P1', N'P1 - Hasta 30')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'P0', N'P0 - Hasta 50')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'P2', N'P2 - Hasta 100')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'P6', N'P6 - Hasta 150')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'P8', N'P8 - Hasta 200')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'Q0', N'Q0 - Hasta 250')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'Q2', N'Q2 - Hasta 300')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'Q4', N'Q4 - Hasta 350')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'Q6', N'Q6 - Hasta 400')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'Q8', N'Q8 - Hasta 450')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'R0', N'R0 - Hasta 500')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'R2', N'R2 - Hasta 550')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'R4', N'R4 - Hasta 600')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'R6', N'R6 - Hasta 650')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'R8', N'R8 - Hasta 700')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'S0', N'S0 - Hasta 750')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'S2', N'S2 - Hasta 800')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'S4', N'S4 - Hasta 850')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'S6', N'S6 - Hasta 900')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'S8', N'S8 - Hasta 950')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'T0', N'T0 - Hasta 1000')
INSERT [dbo].[TrabHonorarios] ([idTrabHonorarios], [Descripcion]) VALUES (N'Z0', N'Z0 - Sin Límite')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'N9', N'N9 - Hasta 15')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'B2', N'B2 - Hasta 50')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'N1', N'N1 - Hasta 70')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'N4', N'N4 - Hasta 100')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'Z1', N'Z1 - Hasta 130')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'B4', N'B4 - Hasta 150')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'Z4', N'Z4 - Hasta 160')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'Z2', N'Z2 - Hasta 175')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'A2', N'A2 - Hasta 200')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'N6', N'N6 - Hasta 250')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'N8', N'N8 - Hasta 300')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'M1', N'M1 - Hasta 315')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'M3', N'M3 - Hasta 350')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'A0', N'A0 - Hasta 400')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'A3', N'A3 - Hasta 440')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'B6', N'B6 - Hasta 450')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'A1', N'A1 - Hasta 500')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'A5', N'A5 - Hasta 550')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'B0', N'B0 - Hasta 600')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'B8', N'B8 - Hasta 650')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'C2', N'C2 - Hasta 700')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'C4', N'C4 - Hasta 750')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'A8', N'A8 - Hasta 800')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'A4', N'A4 - Hasta 850')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'A9', N'A9 - Hasta 900')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'C6', N'C6 - Hasta 950')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'C0', N'C0 - Hasta 1000')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'C1', N'C1 - Hasta 1100')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'C8', N'C8 - Hasta 1200')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'D2', N'D2 - Hasta 1300')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'C3', N'C3 - Hasta 1400')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'D0', N'D0 - Hasta 1500')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'D4', N'D4 - Hasta 1600')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'D6', N'D6 - Hasta 1700')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'D3', N'D3 - Hasta 1750')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'D8', N'D8 - Hasta 1800')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'E4', N'E4 - Hasta 1900')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'E0', N'E0 - Hasta 2000')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'E2', N'E2 - Hasta 2100')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'E6', N'E6 - Hasta 2200')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'E8', N'E8 - Hasta 2300')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'F0', N'F0 - Hasta 2400')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'F2', N'F2 - Hasta 2500')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'F4', N'F4 - Hasta 2600')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'F6', N'F6 - Hasta 2700')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'F8', N'F8 - Hasta 2800')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'G0', N'G0 - Hasta 2900')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'G2', N'G2 - Hasta 3000')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'G4', N'G4 - Hasta 3100')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'G6', N'G6 - Hasta 3200')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'G8', N'G8 - Hasta 3300')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'H0', N'H0 - Hasta 3400')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'H2', N'H2 - Hasta 3500')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'H4', N'H4 - Hasta 3600')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'H6', N'H6 - Hasta 3700')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'H8', N'H8 - Hasta 3800')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'J0', N'J0 - Hasta 3900')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'J2', N'J2 - Hasta 4000')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'J4', N'J4 - Hasta 4100')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'J6', N'J6 - Hasta 4200')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'J8', N'J8 - Hasta 4300')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'K0', N'K0 - Hasta 4400')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'K4', N'K4 - Hasta 4500')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'K6', N'K6 - Hasta 4600')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'K8', N'K8 - Hasta 4700')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'L0', N'L0 - Hasta 4800')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'L2', N'L2 - Hasta 4900')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'L4', N'L4 - Hasta 5000')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'L6', N'L6 - Hasta 5100')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'L8', N'L8 - Hasta 5200')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'P0', N'P0 - Hasta 5300')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'P2', N'P2 - Hasta 5400')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'P4', N'P4 - Hasta 5500')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'P6', N'P6 - Hasta 5600')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'P8', N'P8 - Hasta 5700')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'R0', N'R0 - Hasta 5800')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'R2', N'R2 - Hasta 5900')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'R4', N'R4 - Hasta 6000')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'R6', N'R6 - Hasta 6500')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'S0', N'S0 - Hasta 7000')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'T0', N'T0 - Hasta 7500')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'U0', N'U0 - Hasta 8000')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'W0', N'W0 - Hasta 8500')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'Z0', N'Z0 - Sin Límite')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'N9', N'N9 - Hasta 15')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'B2', N'B2 - Hasta 50')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'N1', N'N1 - Hasta 70')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'N4', N'N4 - Hasta 100')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'Z1', N'Z1 - Hasta 130')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'B4', N'B4 - Hasta 150')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'Z4', N'Z4 - Hasta 160')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'Z2', N'Z2 - Hasta 175')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'A2', N'A2 - Hasta 200')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'N6', N'N6 - Hasta 250')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'N8', N'N8 - Hasta 300')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'M1', N'M1 - Hasta 315')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'M3', N'M3 - Hasta 350')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'A0', N'A0 - Hasta 400')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'A3', N'A3 - Hasta 440')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'B6', N'B6 - Hasta 450')
GO
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'A1', N'A1 - Hasta 500')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'A5', N'A5 - Hasta 550')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'B0', N'B0 - Hasta 600')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'B8', N'B8 - Hasta 650')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'C2', N'C2 - Hasta 700')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'C4', N'C4 - Hasta 750')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'A8', N'A8 - Hasta 800')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'A4', N'A4 - Hasta 850')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'A9', N'A9 - Hasta 900')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'C6', N'C6 - Hasta 950')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'C0', N'C0 - Hasta 1000')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'C1', N'C1 - Hasta 1100')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'C8', N'C8 - Hasta 1200')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'D2', N'D2 - Hasta 1300')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'C3', N'C3 - Hasta 1400')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'D0', N'D0 - Hasta 1500')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'D4', N'D4 - Hasta 1600')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'D6', N'D6 - Hasta 1700')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'D3', N'D3 - Hasta 1750')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'D8', N'D8 - Hasta 1800')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'E4', N'E4 - Hasta 1900')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'E0', N'E0 - Hasta 2000')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'E2', N'E2 - Hasta 2100')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'E6', N'E6 - Hasta 2200')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'E8', N'E8 - Hasta 2300')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'F0', N'F0 - Hasta 2400')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'F2', N'F2 - Hasta 2500')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'F4', N'F4 - Hasta 2600')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'F6', N'F6 - Hasta 2700')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'F8', N'F8 - Hasta 2800')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'G0', N'G0 - Hasta 2900')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'G2', N'G2 - Hasta 3000')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'G4', N'G4 - Hasta 3100')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'G6', N'G6 - Hasta 3200')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'G8', N'G8 - Hasta 3300')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'H0', N'H0 - Hasta 3400')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'H2', N'H2 - Hasta 3500')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'H4', N'H4 - Hasta 3600')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'H6', N'H6 - Hasta 3700')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'H8', N'H8 - Hasta 3800')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'J0', N'J0 - Hasta 3900')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'J2', N'J2 - Hasta 4000')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'J4', N'J4 - Hasta 4100')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'J6', N'J6 - Hasta 4200')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'J8', N'J8 - Hasta 4300')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'K0', N'K0 - Hasta 4400')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'K4', N'K4 - Hasta 4500')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'K6', N'K6 - Hasta 4600')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'K8', N'K8 - Hasta 4700')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'L0', N'L0 - Hasta 4800')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'L2', N'L2 - Hasta 4900')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'L4', N'L4 - Hasta 5000')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'L6', N'L6 - Hasta 5100')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'L8', N'L8 - Hasta 5200')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'P0', N'P0 - Hasta 5300')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'P2', N'P2 - Hasta 5400')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'P4', N'P4 - Hasta 5500')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'P6', N'P6 - Hasta 5600')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'P8', N'P8 - Hasta 5700')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'R0', N'R0 - Hasta 5800')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'R2', N'R2 - Hasta 5900')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'R4', N'R4 - Hasta 6000')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'R6', N'R6 - Hasta 6500')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'S0', N'S0 - Hasta 7000')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'T0', N'T0 - Hasta 7500')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'U0', N'U0 - Hasta 8000')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'W0', N'W0 - Hasta 8500')
INSERT [dbo].[TrabPlantas] ([idTrabPlantas], [Descripcion]) VALUES (N'Z0', N'Z0 - Sin Límite')
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Clientes_Correlativo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Clientes] ADD  CONSTRAINT [DF_Clientes_Correlativo]  DEFAULT ((0)) FOR [Correlativo]
END

GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Componentes_VersionFile]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Componentes] ADD  CONSTRAINT [DF_Componentes_VersionFile]  DEFAULT ('S/I') FOR [VersionFile]
END

GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Componentes_Comentario]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Componentes] ADD  CONSTRAINT [DF_Componentes_Comentario]  DEFAULT ('-') FOR [Comentario]
END

GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Modulos_Estado]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Modulos] ADD  CONSTRAINT [DF_Modulos_Estado]  DEFAULT ('V') FOR [Estado]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ambientes_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ambientes]'))
ALTER TABLE [dbo].[Ambientes]  WITH CHECK ADD  CONSTRAINT [FK_Ambientes_Clientes] FOREIGN KEY([idClientes])
REFERENCES [dbo].[Clientes] ([idClientes])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ambientes_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ambientes]'))
ALTER TABLE [dbo].[Ambientes] CHECK CONSTRAINT [FK_Ambientes_Clientes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ambientes_has_Componentes_Ambientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ambientes_has_Componentes]'))
ALTER TABLE [dbo].[Ambientes_has_Componentes]  WITH CHECK ADD  CONSTRAINT [FK_Ambientes_has_Componentes_Ambientes] FOREIGN KEY([idAmbientes])
REFERENCES [dbo].[Ambientes] ([idAmbientes])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ambientes_has_Componentes_Ambientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ambientes_has_Componentes]'))
ALTER TABLE [dbo].[Ambientes_has_Componentes] CHECK CONSTRAINT [FK_Ambientes_has_Componentes_Ambientes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ambientes_has_Componentes_Componentes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ambientes_has_Componentes]'))
ALTER TABLE [dbo].[Ambientes_has_Componentes]  WITH CHECK ADD  CONSTRAINT [FK_Ambientes_has_Componentes_Componentes] FOREIGN KEY([Modulo], [idVersion], [NameFile])
REFERENCES [dbo].[Componentes] ([Modulo], [idVersion], [NameFile])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ambientes_has_Componentes_Componentes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ambientes_has_Componentes]'))
ALTER TABLE [dbo].[Ambientes_has_Componentes] CHECK CONSTRAINT [FK_Ambientes_has_Componentes_Componentes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Clientes__idCmn__117F9D94]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clientes]'))
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK__Clientes__idCmn__117F9D94] FOREIGN KEY([idCmn])
REFERENCES [dbo].[Cmn] ([idCmn])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Clientes__idCmn__117F9D94]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clientes]'))
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK__Clientes__idCmn__117F9D94]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clientes_has_Modulos_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clientes_has_Modulos]'))
ALTER TABLE [dbo].[Clientes_has_Modulos]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_has_Modulos_Clientes] FOREIGN KEY([idClientes])
REFERENCES [dbo].[Clientes] ([idClientes])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clientes_has_Modulos_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clientes_has_Modulos]'))
ALTER TABLE [dbo].[Clientes_has_Modulos] CHECK CONSTRAINT [FK_Clientes_has_Modulos_Clientes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clientes_has_Modulos_Modulos]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clientes_has_Modulos]'))
ALTER TABLE [dbo].[Clientes_has_Modulos]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_has_Modulos_Modulos] FOREIGN KEY([idModulo])
REFERENCES [dbo].[Modulos] ([idModulo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clientes_has_Modulos_Modulos]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clientes_has_Modulos]'))
ALTER TABLE [dbo].[Clientes_has_Modulos] CHECK CONSTRAINT [FK_Clientes_has_Modulos_Modulos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Clientes___idCli__4E88ABD4]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clientes_has_Usuarios]'))
ALTER TABLE [dbo].[Clientes_has_Usuarios]  WITH CHECK ADD  CONSTRAINT [FK__Clientes___idCli__4E88ABD4] FOREIGN KEY([idClientes])
REFERENCES [dbo].[Clientes] ([idClientes])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Clientes___idCli__4E88ABD4]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clientes_has_Usuarios]'))
ALTER TABLE [dbo].[Clientes_has_Usuarios] CHECK CONSTRAINT [FK__Clientes___idCli__4E88ABD4]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Clientes___idUsu__4AB81AF0]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clientes_has_Usuarios]'))
ALTER TABLE [dbo].[Clientes_has_Usuarios]  WITH CHECK ADD FOREIGN KEY([idUsuarios])
REFERENCES [dbo].[Usuarios] ([idUsuarios])
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Cmn__idRgn__4BAC3F29]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cmn]'))
ALTER TABLE [dbo].[Cmn]  WITH CHECK ADD FOREIGN KEY([idRgn])
REFERENCES [dbo].[Rgn] ([idRgn])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Componentes__4CA06362]') AND parent_object_id = OBJECT_ID(N'[dbo].[Componentes]'))
ALTER TABLE [dbo].[Componentes]  WITH CHECK ADD FOREIGN KEY([idVersion], [Modulo])
REFERENCES [dbo].[ModuloVersiones] ([idVersion], [Modulo])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComponentesModulos_Modulos]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComponentesModulos]'))
ALTER TABLE [dbo].[ComponentesModulos]  WITH CHECK ADD  CONSTRAINT [FK_ComponentesModulos_Modulos] FOREIGN KEY([Modulos])
REFERENCES [dbo].[Modulos] ([idModulo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComponentesModulos_Modulos]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComponentesModulos]'))
ALTER TABLE [dbo].[ComponentesModulos] CHECK CONSTRAINT [FK_ComponentesModulos_Modulos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComponentesModulos_TipoComponentes1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComponentesModulos]'))
ALTER TABLE [dbo].[ComponentesModulos]  WITH CHECK ADD  CONSTRAINT [FK_ComponentesModulos_TipoComponentes1] FOREIGN KEY([TipoComponentes])
REFERENCES [dbo].[TipoComponentes] ([idTipoComponentes])
ON DELETE SET NULL
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComponentesModulos_TipoComponentes1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComponentesModulos]'))
ALTER TABLE [dbo].[ComponentesModulos] CHECK CONSTRAINT [FK_ComponentesModulos_TipoComponentes1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Modulos_Suites]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modulos]'))
ALTER TABLE [dbo].[Modulos]  WITH CHECK ADD  CONSTRAINT [FK_Modulos_Suites] FOREIGN KEY([Suite])
REFERENCES [dbo].[Suites] ([idSuite])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Modulos_Suites]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modulos]'))
ALTER TABLE [dbo].[Modulos] CHECK CONSTRAINT [FK_Modulos_Suites]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ModuloVer__idVer__5070F446]') AND parent_object_id = OBJECT_ID(N'[dbo].[ModuloVersiones]'))
ALTER TABLE [dbo].[ModuloVersiones]  WITH CHECK ADD FOREIGN KEY([idVersion])
REFERENCES [dbo].[Versiones] ([idVersion])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Perfiles_has_Menus_Menus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Perfiles_has_Menus]'))
ALTER TABLE [dbo].[Perfiles_has_Menus]  WITH CHECK ADD  CONSTRAINT [FK_Perfiles_has_Menus_Menus] FOREIGN KEY([idMenus])
REFERENCES [dbo].[Menus] ([idMenus])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Perfiles_has_Menus_Menus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Perfiles_has_Menus]'))
ALTER TABLE [dbo].[Perfiles_has_Menus] CHECK CONSTRAINT [FK_Perfiles_has_Menus_Menus]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Perfiles_has_Menus_Perfiles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Perfiles_has_Menus]'))
ALTER TABLE [dbo].[Perfiles_has_Menus]  WITH CHECK ADD  CONSTRAINT [FK_Perfiles_has_Menus_Perfiles] FOREIGN KEY([CodPrf])
REFERENCES [dbo].[Perfiles] ([CodPrf])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Perfiles_has_Menus_Perfiles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Perfiles_has_Menus]'))
ALTER TABLE [dbo].[Perfiles_has_Menus] CHECK CONSTRAINT [FK_Perfiles_has_Menus_Perfiles]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tareas_Ambientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tareas]'))
ALTER TABLE [dbo].[Tareas]  WITH CHECK ADD  CONSTRAINT [FK_Tareas_Ambientes] FOREIGN KEY([idAmbientes])
REFERENCES [dbo].[Ambientes] ([idAmbientes])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tareas_Ambientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tareas]'))
ALTER TABLE [dbo].[Tareas] CHECK CONSTRAINT [FK_Tareas_Ambientes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tareas_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tareas]'))
ALTER TABLE [dbo].[Tareas]  WITH CHECK ADD  CONSTRAINT [FK_Tareas_Clientes] FOREIGN KEY([idClientes])
REFERENCES [dbo].[Clientes] ([idClientes])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tareas_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tareas]'))
ALTER TABLE [dbo].[Tareas] CHECK CONSTRAINT [FK_Tareas_Clientes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tareas_Componentes1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tareas]'))
ALTER TABLE [dbo].[Tareas]  WITH CHECK ADD  CONSTRAINT [FK_Tareas_Componentes1] FOREIGN KEY([Modulo], [idVersion], [NameFile])
REFERENCES [dbo].[Componentes] ([Modulo], [idVersion], [NameFile])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tareas_Componentes1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tareas]'))
ALTER TABLE [dbo].[Tareas] CHECK CONSTRAINT [FK_Tareas_Componentes1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Usuarios__idPers__5629CD9C]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuarios]'))
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD FOREIGN KEY([idPersonas])
REFERENCES [dbo].[Personas] ([idPersonas])
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuarios_Perfiles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuarios]'))
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Perfiles] FOREIGN KEY([CodPrf])
REFERENCES [dbo].[Perfiles] ([CodPrf])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuarios_Perfiles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuarios]'))
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Perfiles]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Versiones__idCli__1BFD2C07]') AND parent_object_id = OBJECT_ID(N'[dbo].[Versiones_has_Clientes]'))
ALTER TABLE [dbo].[Versiones_has_Clientes]  WITH CHECK ADD  CONSTRAINT [FK__Versiones__idCli__1BFD2C07] FOREIGN KEY([idClientes])
REFERENCES [dbo].[Clientes] ([idClientes])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Versiones__idCli__1BFD2C07]') AND parent_object_id = OBJECT_ID(N'[dbo].[Versiones_has_Clientes]'))
ALTER TABLE [dbo].[Versiones_has_Clientes] CHECK CONSTRAINT [FK__Versiones__idCli__1BFD2C07]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Versiones__idVer__59063A47]') AND parent_object_id = OBJECT_ID(N'[dbo].[Versiones_has_Clientes]'))
ALTER TABLE [dbo].[Versiones_has_Clientes]  WITH CHECK ADD FOREIGN KEY([idVersion])
REFERENCES [dbo].[Versiones] ([idVersion])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Versiones__idAmb__59FA5E80]') AND parent_object_id = OBJECT_ID(N'[dbo].[Versiones_has_Clientes_has_Ambientes]'))
ALTER TABLE [dbo].[Versiones_has_Clientes_has_Ambientes]  WITH CHECK ADD FOREIGN KEY([idAmbientes])
REFERENCES [dbo].[Ambientes] ([idAmbientes])
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Versiones_has_Cl__5AEE82B9]') AND parent_object_id = OBJECT_ID(N'[dbo].[Versiones_has_Clientes_has_Ambientes]'))
ALTER TABLE [dbo].[Versiones_has_Clientes_has_Ambientes]  WITH CHECK ADD FOREIGN KEY([idVersion], [idClientes])
REFERENCES [dbo].[Versiones_has_Clientes] ([idVersion], [idClientes])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Versiones_has_Cl__5BE2A6F2]') AND parent_object_id = OBJECT_ID(N'[dbo].[Versiones_has_Clientes_has_Ambientes]'))
ALTER TABLE [dbo].[Versiones_has_Clientes_has_Ambientes]  WITH CHECK ADD FOREIGN KEY([idVersion], [idClientes])
REFERENCES [dbo].[Versiones_has_Clientes] ([idVersion], [idClientes])
GO

/****** Object:  StoredProcedure [dbo].[sp_AddClientesToVersion]    Script Date: 09-02-2017 12:53:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_AddClientesToVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_AddClientesToVersion] AS' 
END
GO
ALTER proc [dbo].[sp_AddClientesToVersion]                
 @xmlOrder text               
as                
begin              
 DECLARE @iTree  INTEGER                
 
 EXEC sp_xml_preparedocument @iTree OUTPUT, @xmlOrder                
  
begin tran

insert into Versiones_has_Clientes(                
	 idVersion                 
    ,idClientes
 )              
 SELECT idVersion                               
       ,idClientes
 FROM                
 OPENXML(@iTree, '/root/parametro', 1)               
 WITH (                
    idVersion int,
    idClientes int
 )  
 if @@error <> 0               
 begin               
    rollback tran               
    select @@error as coderr, 'No se pudo insertar Version al Cliente' as msgerr               
 return               
 end

commit tran               

select 0 as coderr, '' as msgerr 

end


GO
/****** Object:  StoredProcedure [dbo].[sp_AddComponentesByXml]    Script Date: 09-02-2017 12:53:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_AddComponentesByXml]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_AddComponentesByXml] AS' 
END
GO
ALTER proc [dbo].[sp_AddComponentesByXml]                
 @xmlOrder text               
as                
begin              
 DECLARE @iTree  INTEGER                
 
 EXEC sp_xml_preparedocument @iTree OUTPUT, @xmlOrder                
  
begin tran

insert into ModuloVersiones(
	Modulo
	,idVersion
)
SELECT DISTINCT Modulo               
    ,idVersion  
 FROM                
 OPENXML(@iTree, '/root/parametro', 1)               
 WITH (                
    Modulo char(30),
    idVersion int,
    NameFile varchar(50),
	FechaFile datetime
 )  

insert into Componentes(                
	 Modulo                 
    ,idVersion                 
    ,NameFile
    ,FechaFile
 )              
 SELECT Modulo                 
    ,idVersion                 
    ,NameFile
    ,FechaFile
 FROM                
 OPENXML(@iTree, '/root/parametro', 1)               
 WITH (                
    Modulo char(30),
    idVersion int,
    NameFile varchar(50),
	FechaFile datetime
 )  
 if @@error <> 0               
 begin               
    rollback tran               
    select @@error as coderr, 'No se pudo insertar Componentes' as msgerr               
 return               
 end

commit tran               

select 0 as coderr, '' as msgerr 

end                




GO
/****** Object:  StoredProcedure [dbo].[sp_AddComponentesModulos]    Script Date: 09-02-2017 12:53:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_AddComponentesModulos]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_AddComponentesModulos] AS' 
END
GO
ALTER proc [dbo].[sp_AddComponentesModulos]                
 @xmlOrder text               
as                
begin              
 DECLARE @iTree  INTEGER                
 
 EXEC sp_xml_preparedocument @iTree OUTPUT, @xmlOrder                
  
begin tran

insert into ComponentesModulos(                
	 Nombre                 
    ,Descripcion                 
    ,Modulos
    ,TipoComponentes
 )              
 SELECT Nombre                               
       ,Descripcion
       ,Modulos
	   ,TipoComponentes
 FROM                
 OPENXML(@iTree, '/root/parametro', 1)               
 WITH (                
    Nombre varchar(100),
    Descripcion text,
    Modulos int,
	TipoComponentes int
 )  
 if @@error <> 0               
 begin               
    rollback tran               
    select @@error as coderr, 'No se pudo insertar ComponentesModulo' as msgerr               
 return               
 end

commit tran               

select 0 as coderr, '' as msgerr 

end                





GO
/****** Object:  StoredProcedure [dbo].[sp_ins_cliente]    Script Date: 09-02-2017 12:53:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ins_cliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ins_cliente] AS' 
END
GO
ALTER procedure [dbo].[sp_ins_cliente] 
(@idCmn int, 
@Rut int, 
@Dv char, 
@RazonSocial varchar(100), 
@Direccion varchar(100), 
@NroLicencia varchar(100),
@NumFolio int,
@EstMtc int,
@MesIni varchar(50),
@NroTrbc varchar(50),
@NroTrbh varchar(50),
@NroUsr varchar(50))
AS
BEGIN
Declare @codError int;
Declare @msgError varchar(1000);
Declare @existeLic int;

SET NOCOUNT ON;
Begin Tran Tadd

Begin Try

	INSERT INTO clientes(idCmn
						,Rut
						,Dv
						,RazonSocial
						,Direccion
						,NroLicencia
						,Folio
						,EstMtc
						,MesIni
						,NroTrbc
						,NroTrbh
						,NroUsr)
				VALUES(@idCmn
					  ,@Rut
					  ,@Dv
					  ,@RazonSocial
					  ,@Direccion
					  ,@NroLicencia
					  ,@NumFolio
					  ,@EstMtc
					  ,@MesIni
					  ,@NroTrbc
					  ,@NroTrbh
					  ,@NroUsr);
	SET @existeLic = (SELECT max(numero) FROM Folios WHERE Identificador = 'Licencia');

	IF @existeLic IS NULL 
	BEGIN
	INSERT INTO Folios
				VALUES('Licencia'
					  ,1000);
	END
	ELSE
	BEGIN
	UPDATE Folios SET numero=numero+1
			      WHERE Identificador = 'Licencia';
	END
	
	
	COMMIT TRAN Tadd

	set @codError = 0; 
	set @msgError = '';

End try
Begin Catch

	Rollback TRAN Tadd

	set @codError = ERROR_NUMBER(); 
	set @msgError = ERROR_MESSAGE();

End Catch

select @codError as codErr, @msgError as msgErr

END;




GO

/****** Object:  UserDefinedFunction [dbo].[fcn_ambienteok]    Script Date: 09-02-2017 12:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fcn_ambienteok]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[fcn_ambienteok] (@pIdVersion int, @pIdAmbientes int) 
RETURNS bit

AS
BEGIN 
DECLARE @cantidadCompSQL int;
DECLARE @cantidadTareasOK int;

SET @cantidadCompSQL = (SELECT count(*) 
								  FROM componentes 
								  WHERE idversion = @pIdVersion  
								  AND namefile LIKE ''%.sql'');
SET @cantidadTareasOK = (SELECT count(*) 
							       FROM tareas 
								   WHERE idambientes = @pIdAmbientes
								   AND estado IN(1,3)
								   AND idversion = @pIdVersion 
								   AND namefile LIKE ''%.sql'');

IF (@cantidadCompSQL = @cantidadTareasOK)
BEGIN
RETURN 1;
END
RETURN 0;

END;
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[fcn_isAmbienteEx]    Script Date: 09-02-2017 12:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fcn_isAmbienteEx]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[fcn_isAmbienteEx] (@pIdAmbientes int, @pIdVersion int, @pNameFile varchar(50)) 
RETURNS bit

AS
BEGIN 
DECLARE @estadoAmbiente int;

SET @estadoAmbiente = (SELECT count(*) FROM tareas 
									    WHERE idAmbientes = @pIdAmbientes
										AND idVersion = @pIdVersion
										AND NameFile = @pNameFile
										AND Estado IN (1,3));


IF (@estadoAmbiente = 0)
BEGIN
RETURN 0;
END
RETURN 1;

END;

' 
END

GO
/****** TRIGGERS ******/
create TRIGGER tg_InstalarVersionAmbiente 
   ON  Versiones_has_Clientes_has_Ambientes
   AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare
	@idClientes int,
	@idAmbientes int,
	@idVersion int

	select @idClientes = idClientes, @idAmbientes = idAmbientes, @idVersion = idVersion
	from inserted


	update Versiones_has_Clientes_has_Ambientes
	set Estado = 'I'
	where idClientes = @idClientes
	and idAmbientes = @idAmbientes
	and idVersion != @idVersion
    -- Insert statements for trigger here

END
GO
