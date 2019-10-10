delete from sipweb_conf_procesos where cod_proceso = 'sw_emp_13'
go
INSERT INTO sipweb_conf_procesos(cod_modulo,cod_menu,cod_proceso,descripcion_defecto,descripcion,detalle,pagina,nom_imagen,orden) 
values ('SipWeb','Documentos','sw_emp_13','Solicitud de Dias Administrativos','Solicitud de Dias Administrativos','Solicitud de Dias Administrativos','doc_sol_administrativos.aspx','solvacaciones.png',	4	)

go

delete from sipweb_conf_procesos where cod_proceso = 'sw_emp_14'
go
INSERT INTO sipweb_conf_procesos(cod_modulo,cod_menu,cod_proceso,descripcion_defecto,descripcion,detalle,pagina,nom_imagen,orden) 
values ('Configuracion','Importar_Trasp','sw_emp_14','Verificar y Traspasar Dias Administrativos','Verificar y Traspasar Dias Administrativos','Permite aprobar o rechazar solicitudes de Dias Administrativos de los trabajadores','imp_sol_administrativos.aspx','solvacaciones.png',	4	)

go

delete from sipweb_conf_subprocesos where pagina = 'conf_evalotrosdatos.aspx'
go
INSERT INTO sipweb_conf_subprocesos(cod_proceso,pagina,descripcion,detalle,nom_imagen,orden) 
VALUES ( 'sw_conf_21','conf_evalotrosdatos.aspx','Otros Datos Evaluación','Permite Configurar Datos Adicionales a Evaluacion','reportes.png', 4	)

go


IF not EXISTS( SELECT 1 FROM syscolumns a, sysobjects b WHERE a.id = b.id and b.name = 'sipweb_conf_eval' AND a.name = 'evaluacion' )
alter table sipweb_conf_eval add evaluacion varchar(30)
GO

update sipweb_conf_eval set evaluacion = '90Grados' where evaluacion is null

go

IF not EXISTS( SELECT 1 FROM syscolumns a, sysobjects b WHERE a.id = b.id and b.name = 'sipweb_certificadosdinamicos' AND a.name = 'promediar_renta' )
begin
	alter table sipweb_certificadosdinamicos add promediar_renta [varchar](2)
end


update sipweb_certificadosdinamicos set promediar_renta ='No' where promediar_renta  is null

go


IF not EXISTS( SELECT 1 FROM syscolumns a, sysobjects b WHERE a.id = b.id and b.name = 'sipweb_eval_publ' AND a.name = 'filtrar_cargo' )
begin
	alter table sipweb_eval_publ add filtrar_cargo varchar(10)
end

go


update sipweb_eval_publ set filtrar_cargo = 'No' where filtrar_cargo  is null

go


IF not EXISTS( SELECT 1 FROM syscolumns a, sysobjects b WHERE a.id = b.id and b.name = 'sipweb_eval_trab' AND a.name = 'estado_evaluador' )
begin
	alter table sipweb_eval_trab add estado_evaluador varchar(20)
end

go

IF not EXISTS( SELECT 1 FROM syscolumns a, sysobjects b WHERE a.id = b.id and b.name = 'sipweb_eval_trab' AND a.name = 'estado_evaluado' )
begin
	alter table sipweb_eval_trab add estado_evaluado varchar(20)
end

go

update sipweb_eval_trab set estado_evaluador ='Enviada' where estado_evaluador  is null
update sipweb_eval_trab set estado_evaluado = null where estado_evaluado  is null

go

IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sipweb_pro_liq_det]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
 
CREATE TABLE [dbo].[sipweb_pro_liq_det](
	[cod_tipo_proceso] [varchar](80) NULL
) ON [PRIMARY]

GO
 


IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sipweb_conf_archperm]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
	CREATE TABLE [dbo].[sipweb_conf_archperm](
		[cod_empresa]		[int] NULL,
		[archperm_obliga]	[varchar](2) NULL
	) 
	
go

IF  NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sipweb_conf_eval_od]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
	CREATE TABLE [dbo].[sipweb_conf_eval_od](
		[id_eval]	[int] NOT NULL,
		[id_od]		[int] NOT NULL,
		[desc_od]	[varchar](200) NULL,
		[tipo]		[varchar](20) NOT NULL, 
		[req_just]	[varchar](1) NOT NULL
	) ON [PRIMARY]
	
go

IF  NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sipweb_conf_eval_odsel]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
	CREATE TABLE [dbo].[sipweb_conf_eval_odsel](
		[id_eval]	[int] NOT NULL,
		[id_od]		[int] NOT NULL,
		[id_sel]	[int] NOT NULL,
		[desc_sel]	[varchar](200) NULL
	) ON [PRIMARY]
	
go


IF  NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sipweb_hst_eval_od]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
	CREATE TABLE [dbo].[sipweb_hst_eval_od](
		[cod_encuesta] [varchar](50) NOT NULL,
		[ano_proceso] [int] NOT NULL,
		[id_eval] [int] NOT NULL,
		[cod_eval] [varchar](10) NOT NULL,
		[version_eval] [varchar](10) NOT NULL,
		[id_od]		[int] NOT NULL,
		[desc_od]	[varchar](200) NULL,
		[tipo]		[varchar](20) NOT NULL, 
		[req_just]	[varchar](1) NOT NULL
	) ON [PRIMARY]
	
go

IF  NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sipweb_hst_eval_odsel]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
	CREATE TABLE [dbo].[sipweb_hst_eval_odsel](
		[cod_encuesta] [varchar](50) NOT NULL,
		[ano_proceso] [int] NOT NULL,
		[id_eval] [int] NOT NULL,
		[cod_eval] [varchar](10) NOT NULL,
		[version_eval] [varchar](10) NOT NULL,
		[id_od]		[int] NOT NULL,
		[id_sel]	[int] NOT NULL,
		[desc_sel]	[varchar](200) NULL
	) ON [PRIMARY]
	
go

IF  NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sipweb_eval_trab_od]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
	CREATE TABLE [dbo].[sipweb_eval_trab_od](
		[cod_encuesta]	[varchar](50) NOT NULL,
		[cod_empresa]	[int] NULL,
		[cod_planta]	[int] NULL,
		[nro_evaluador] [int] NOT NULL,
		[rut_evaluador] [int] NOT NULL,
		[nro_evaluado]	[int] NOT NULL,
		[rut_evaluado]	[int] NOT NULL,
		[id_eval]		[int] NOT NULL,
		[id_od]			[int] NOT NULL,
		[id_sel]		[int] NULL,
		[texto]			[text] NULL		
	) ON [PRIMARY]
	
go


IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sipweb_sol_adminis_arch]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
	CREATE TABLE [dbo].[sipweb_sol_adminis_arch](
		[cod_empresa] [int] NULL,
		[cod_planta] [int] NULL,
		[correlativo] [numeric](10, 0) NULL,
		[usuario] [varchar](15) NULL,
		[nombre_arch] [varchar](150) NULL,
		[descripcion] [varchar](150) NULL,
		[fecha] [datetime] NULL,
		[tipo] [varchar](50) NULL,
		[archivo] [image] NULL,
		[nro_trabajador] [int] NULL
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sipweb_sol_adminis_log]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE [dbo].[sipweb_sol_adminis_log](
	[cod_empresa] [int] NOT NULL,
	[cod_planta] [int] NOT NULL,
	[nro_trabajador] [int] NOT NULL,
	[dv_trabajador] [char](1) NULL,
	[periodo] [int] NOT NULL,
	[correlativo] [numeric](10, 0) NULL,
	[fecha_desde] [datetime] NULL,
	[fecha_fin] [datetime] NULL,
	[dias_derecho] [decimal](7, 2) NULL,
	[dias_devengados] [decimal](7, 2) NULL,
	[cantidad] [decimal](18, 2) NULL,
	[motivo] [varchar](80) NULL,
	[observaciones] [varchar](254) NULL,
	[estado] [varchar](20) NULL,
	[fecha_ingreso] [datetime] NULL,
	[usuario_elimina] [varchar](15) NULL,
	[fecha_elimina] [datetime] NULL,
	[mediodia] [int] NULL
) ON [PRIMARY]

GO

IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sipweb_sol_adminis]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE [dbo].[sipweb_sol_adminis](
	[cod_empresa] [int] NOT NULL,
	[cod_planta] [int] NOT NULL,
	[nro_trabajador] [int] NOT NULL,
	[dv_trabajador] [char](1) NULL,
	[periodo] [int] NOT NULL,
	[correlativo] [numeric](10, 0) NULL,
	[fecha_desde] [datetime] NULL,
	[fecha_fin] [datetime] NULL,
	[dias_derecho] [decimal](7, 2) NULL,
	[dias_devengados] [decimal](7, 2) NULL,
	[cantidad] [decimal](18, 2) NULL,
	[motivo] [varchar](80) NULL,
	[observaciones] [varchar](254) NULL,
	[estado] [varchar](20) NULL,
	[fecha_ingreso] [datetime] NULL,
	[usuario_autoriza] [varchar](15) NULL,
	[fecha_autorizacion] [datetime] NULL,
	[usuario_traspaso] [varchar](15) NULL,
	[fecha_traspaso] [datetime] NULL,
	[usuario_rechazo] [varchar](15) NULL,
	[fecha_rechazo] [datetime] NULL,
	[mediodia] [int] NULL
) ON [PRIMARY]

go


IF  NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sipweb_eval_publ_cargo]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
	CREATE TABLE [dbo].[sipweb_eval_publ_cargo](
		[cod_encuesta] [varchar](50) NOT NULL,
		[ano_proceso] [int] NOT NULL,
		[id_eval] [int] NOT NULL,
		[desc_eval] [varchar](110) NOT NULL,
		[cod_eval] [varchar](10) NOT NULL,
		[version_eval] [varchar](10) NOT NULL,
		[cod_cargo] [int] NOT NULL 
	) ON [PRIMARY]

go


/****** Object:  StoredProcedure [dbo].[sp_doc_solvacaciones_pdf]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_doc_solvacaciones_pdf]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_doc_solvacaciones_pdf]
GO

/****** Object:  StoredProcedure [dbo].[sp_doc_soladminis_upd]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_doc_soladminis_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_doc_soladminis_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_doc_soladminis_tras]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_doc_soladminis_tras]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_doc_soladminis_tras]
GO

/****** Object:  StoredProcedure [dbo].[sp_imp_soladminis]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_imp_soladminis]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_imp_soladminis]
GO

/****** Object:  StoredProcedure [dbo].[sp_soladminis_arch]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_soladminis_arch]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_soladminis_arch]
GO

/****** Object:  StoredProcedure [dbo].[sp_soladminis_arch_del]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_soladminis_arch_del]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_soladminis_arch_del]
GO

/****** Object:  StoredProcedure [dbo].[sp_solvacaciones_arch_del]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_solvacaciones_arch_del]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_solvacaciones_arch_del]
GO

/****** Object:  StoredProcedure [dbo].[sp_solvacaciones_arch]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_solvacaciones_arch]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_solvacaciones_arch]
GO

/****** Object:  StoredProcedure [dbo].[sp_feriados_def]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_feriados_def]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_feriados_def]
GO

/****** Object:  StoredProcedure [dbo].[sp_validafechas]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_validafechas]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_validafechas]
GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solvacaciones]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_doc_solvacaciones]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_doc_solvacaciones]
GO

/****** Object:  StoredProcedure [dbo].[sp_solvacaciones_lista_arch]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_solvacaciones_lista_arch]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_solvacaciones_lista_arch]
GO

/****** Object:  StoredProcedure [dbo].[sp_eval_encuesta_od_upd]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_eval_encuesta_od_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_eval_encuesta_od_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_eval_encuesta_items_upd]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_eval_encuesta_items_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_eval_encuesta_items_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_eval_cons_encuesta]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_eval_cons_encuesta]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_eval_cons_encuesta]
GO

/****** Object:  StoredProcedure [dbo].[sp_eval_encuesta_upd]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_eval_encuesta_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_eval_encuesta_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evalodsel_upd]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_evalodsel_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_evalodsel_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evalodsel]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_evalodsel]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_evalodsel]
GO

/****** Object:  StoredProcedure [dbo].[sp_eval_encuesta]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_eval_encuesta]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_eval_encuesta]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_certdinamicos]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_certdinamicos]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_certdinamicos]
GO

/****** Object:  StoredProcedure [dbo].[sp_certdinamicos_upd]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_certdinamicos_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_certdinamicos_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_datoscert]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_datoscert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_datoscert]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evalod_upd]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_evalod_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_evalod_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evalod]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_evalod]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_evalod]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evaluaciones_upd]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_evaluaciones_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_evaluaciones_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evaluaciones]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_evaluaciones]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_evaluaciones]
GO

/****** Object:  StoredProcedure [dbo].[sp_login]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_login]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_login]
GO

/****** Object:  StoredProcedure [dbo].[sp_liquidacion_pro_update]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_liquidacion_pro_update]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_liquidacion_pro_update]
GO

/****** Object:  StoredProcedure [dbo].[sp_mail_liquida]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_mail_liquida]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_mail_liquida]
GO

/****** Object:  StoredProcedure [dbo].[sp_liquidacion]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_liquidacion]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_liquidacion]
GO

/****** Object:  StoredProcedure [dbo].[sp_tras_ant_personal]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_tras_ant_personal]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_tras_ant_personal]
GO

/****** Object:  StoredProcedure [dbo].[sp_ausentismo]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_ausentismo]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_ausentismo]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_recup_clave]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_recup_clave]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_recup_clave]
GO

/****** Object:  StoredProcedure [dbo].[sp_feriados]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_feriados]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_feriados]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_archperm]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_archperm]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_archperm]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_archperm_upd]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_archperm_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_archperm_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_usuario_upd]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_usuario_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_usuario_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_procesos]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_procesos]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_procesos]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_procesos_emp]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_procesos_emp]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_procesos_emp]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_eval_publ]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_eval_publ]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_eval_publ]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_eval_publ_upd]    Script Date: 09/11/2017 21:02:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_eval_publ_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_eval_publ_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_eval_publ_car_upd]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_eval_publ_car_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_eval_publ_car_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_cons_evaluaciones]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_cons_evaluaciones]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_cons_evaluaciones]
GO

/****** Object:  StoredProcedure [dbo].[sp_eval_reportes_pend]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_eval_reportes_pend]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_eval_reportes_pend]
GO

/****** Object:  StoredProcedure [dbo].[sp_lista_evaluaciones]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_lista_evaluaciones]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_lista_evaluaciones]
GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solvacaciones_upd]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_doc_solvacaciones_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_doc_solvacaciones_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_solpermiso_lista_arch]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_solpermiso_lista_arch]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_solpermiso_lista_arch]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evalitem_upd]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_evalitem_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_evalitem_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_accesocert]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_accesocert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_accesocert]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_accesocert_upd]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_accesocert_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_accesocert_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_vicerrector]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_vicerrector]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_vicerrector]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_vacantes]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_vacantes]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_vacantes]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_vacante_haberes]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_vacante_haberes]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_vacante_haberes]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_usuarios]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_usuarios]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_usuarios]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_update_perfil_usu]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_update_perfil_usu]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_update_perfil_usu]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_update_perfil]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_update_perfil]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_update_perfil]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_mod_log]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_solicitud_mod_log]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_solicitud_mod_log]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_unidad_adm]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_unidad_adm]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_unidad_adm]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_mod_ing]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_solicitud_mod_ing]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_solicitud_mod_ing]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_mod_del]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_solicitud_mod_del]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_solicitud_mod_del]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_mod_con]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_solicitud_mod_con]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_solicitud_mod_con]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_mod_app]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_solicitud_mod_app]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_solicitud_mod_app]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_log]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_solicitud_log]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_solicitud_log]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_ing]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_solicitud_ing]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_solicitud_ing]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_fav_upd]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_solicitud_fav_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_solicitud_fav_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_fav_con]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_solicitud_fav_con]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_solicitud_fav_con]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_fap_upd]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_solicitud_fap_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_solicitud_fap_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_fap_nucl]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_solicitud_fap_nucl]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_solicitud_fap_nucl]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_fap_con]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_solicitud_fap_con]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_solicitud_fap_con]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_del]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_solicitud_del]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_solicitud_del]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_con]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_solicitud_con]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_solicitud_con]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_app]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_solicitud_app]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_solicitud_app]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_postulante]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_postulante]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_postulante]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_perfiles]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_perfiles]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_perfiles]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_personal]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_personal]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_personal]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_perfil_usuarios]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_perfil_usuarios]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_perfil_usuarios]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_param_general]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_param_general]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_param_general]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_mail_perfiles]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_mail_perfiles]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_mail_perfiles]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_listas]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_listas]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_listas]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_finiquito_log]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_finiquito_log]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_finiquito_log]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_finiquito_ing]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_finiquito_ing]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_finiquito_ing]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_finiquito_habdesc]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_finiquito_habdesc]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_finiquito_habdesc]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_finiquito_del]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_finiquito_del]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_finiquito_del]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_finiquito_con]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_finiquito_con]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_finiquito_con]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_finiquito_calculo]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_finiquito_calculo]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_finiquito_calculo]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_finiquito_app]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_finiquito_app]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_finiquito_app]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_ficha]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_ficha]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_ficha]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_consol]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_consol]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_consol]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_confmovcol_upd]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_confmovcol_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_confmovcol_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_confmovcol]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_confmovcol]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_confmovcol]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_confhab_fin_upd]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_confhab_fin_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_confhab_fin_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_confhab_fin]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_confhab_fin]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_confhab_fin]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_confhab_cont_upd]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_confhab_cont_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_confhab_cont_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_confhab_cont]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_confhab_cont]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_confhab_cont]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_conf_nosotros_upd]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_conf_nosotros_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_conf_nosotros_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_conf_nosotros]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_conf_nosotros]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_conf_nosotros]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_conf_correo]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_conf_correo]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_conf_correo]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_conf_columnas_upd]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_conf_columnas_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_conf_columnas_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_conf_columnas]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_conf_columnas]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_conf_columnas]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_colaborador]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_colaborador]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_colaborador]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_causaldespido_upd]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_causaldespido_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_causaldespido_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_causaldespido]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_causaldespido]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_causaldespido]
GO

/****** Object:  StoredProcedure [dbo].[sp_wf_afectados]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_wf_afectados]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_wf_afectados]
GO

/****** Object:  StoredProcedure [dbo].[sp_ver_archivos]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_ver_archivos]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_ver_archivos]
GO

/****** Object:  StoredProcedure [dbo].[sp_update_clave_adm]    Script Date: 09/11/2017 21:02:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_update_clave_adm]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_update_clave_adm]
GO

/****** Object:  StoredProcedure [dbo].[sp_update_conf_datos]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_update_conf_datos]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_update_conf_datos]
GO

/****** Object:  StoredProcedure [dbo].[sp_update_clave]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_update_clave]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_update_clave]
GO

/****** Object:  StoredProcedure [dbo].[sp_tras_ant_personal_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_tras_ant_personal_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_tras_ant_personal_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_tipoprestamo]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_tipoprestamo]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_tipoprestamo]
GO

/****** Object:  StoredProcedure [dbo].[sp_tipopermiso]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_tipopermiso]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_tipopermiso]
GO

/****** Object:  StoredProcedure [dbo].[sp_tipojefe_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_tipojefe_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_tipojefe_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_ticket_update]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_ticket_update]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_ticket_update]
GO

/****** Object:  StoredProcedure [dbo].[sp_ticket_insert]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_ticket_insert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_ticket_insert]
GO

/****** Object:  StoredProcedure [dbo].[sp_ticket_impr]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_ticket_impr]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_ticket_impr]
GO

/****** Object:  StoredProcedure [dbo].[sp_ticket]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_ticket]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_ticket]
GO

/****** Object:  StoredProcedure [dbo].[sp_solpermiso_arch_del]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_solpermiso_arch_del]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_solpermiso_arch_del]
GO

/****** Object:  StoredProcedure [dbo].[sp_solpermiso_arch]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_solpermiso_arch]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_solpermiso_arch]
GO

/****** Object:  StoredProcedure [dbo].[sp_sipweb_crea_usuario]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_sipweb_crea_usuario]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_sipweb_crea_usuario]
GO

/****** Object:  StoredProcedure [dbo].[sp_santoral]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_santoral]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_santoral]
GO

/****** Object:  StoredProcedure [dbo].[sp_retorna_subprocesos]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_retorna_subprocesos]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_retorna_subprocesos]
GO

/****** Object:  StoredProcedure [dbo].[sp_retorna_publicaciones]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_retorna_publicaciones]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_retorna_publicaciones]
GO

/****** Object:  StoredProcedure [dbo].[sp_retorna_nombre_procesos]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_retorna_nombre_procesos]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_retorna_nombre_procesos]
GO

/****** Object:  StoredProcedure [dbo].[sp_retorna_conf_nosotros]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_retorna_conf_nosotros]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_retorna_conf_nosotros]
GO

/****** Object:  StoredProcedure [dbo].[sp_retorna_conf_datos]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_retorna_conf_datos]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_retorna_conf_datos]
GO

/****** Object:  StoredProcedure [dbo].[sp_publicaciones_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_publicaciones_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_publicaciones_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_publicaciones]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_publicaciones]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_publicaciones]
GO

/****** Object:  StoredProcedure [dbo].[sp_prevision]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_prevision]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_prevision]
GO

/****** Object:  StoredProcedure [dbo].[sp_paramgen_upd_email]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_paramgen_upd_email]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_paramgen_upd_email]
GO

/****** Object:  StoredProcedure [dbo].[sp_paramgen_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_paramgen_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_paramgen_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_mail_liquida_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_mail_liquida_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_mail_liquida_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_mail_liquida_log]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_mail_liquida_log]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_mail_liquida_log]
GO

/****** Object:  StoredProcedure [dbo].[sp_logsistema_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_logsistema_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_logsistema_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_logoempresa]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_logoempresa]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_logoempresa]
GO

/****** Object:  StoredProcedure [dbo].[sp_logliquida_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_logliquida_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_logliquida_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_loginNT]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_loginNT]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_loginNT]
GO

/****** Object:  StoredProcedure [dbo].[sp_login_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_login_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_login_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_logcorreos]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_logcorreos]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_logcorreos]
GO

/****** Object:  StoredProcedure [dbo].[sp_log_avisoter_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_log_avisoter_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_log_avisoter_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_listas]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_listas]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_listas]
GO

/****** Object:  StoredProcedure [dbo].[sp_listadotrab_ter]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_listadotrab_ter]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_listadotrab_ter]
GO

/****** Object:  StoredProcedure [dbo].[sp_listadotrab_con]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_listadotrab_con]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_listadotrab_con]
GO

/****** Object:  StoredProcedure [dbo].[sp_lista_usuarios]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_lista_usuarios]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_lista_usuarios]
GO

/****** Object:  StoredProcedure [dbo].[sp_lista_archivos]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_lista_archivos]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_lista_archivos]
GO

/****** Object:  StoredProcedure [dbo].[sp_liquidacionapp_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_liquidacionapp_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_liquidacionapp_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_liquidacionapp]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_liquidacionapp]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_liquidacionapp]
GO

/****** Object:  StoredProcedure [dbo].[sp_liquidacion_update]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_liquidacion_update]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_liquidacion_update]
GO

/****** Object:  StoredProcedure [dbo].[sp_licencias]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_licencias]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_licencias]
GO

/****** Object:  StoredProcedure [dbo].[sp_jefedirecto]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_jefedirecto]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_jefedirecto]
GO

/****** Object:  StoredProcedure [dbo].[sp_Informelog_liq]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_Informelog_liq]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_Informelog_liq]
GO

/****** Object:  StoredProcedure [dbo].[sp_imp_solvacaciones]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_imp_solvacaciones]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_imp_solvacaciones]
GO

/****** Object:  StoredProcedure [dbo].[sp_imp_solprestamo]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_imp_solprestamo]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_imp_solprestamo]
GO

/****** Object:  StoredProcedure [dbo].[sp_imp_solpermiso]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_imp_solpermiso]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_imp_solpermiso]
GO

/****** Object:  StoredProcedure [dbo].[sp_imp_solbeneficio]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_imp_solbeneficio]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_imp_solbeneficio]
GO

/****** Object:  StoredProcedure [dbo].[sp_imp_sol_prog_adic]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_imp_sol_prog_adic]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_imp_sol_prog_adic]
GO

/****** Object:  StoredProcedure [dbo].[sp_imp_ant_personal_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_imp_ant_personal_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_imp_ant_personal_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_imp_ant_personal]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_imp_ant_personal]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_imp_ant_personal]
GO

/****** Object:  StoredProcedure [dbo].[sp_hsthaberes]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_hsthaberes]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_hsthaberes]
GO

/****** Object:  StoredProcedure [dbo].[sp_hstdescuentos]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_hstdescuentos]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_hstdescuentos]
GO

/****** Object:  StoredProcedure [dbo].[sp_funferiados]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_funferiados]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_funferiados]
GO

/****** Object:  StoredProcedure [dbo].[sp_fichaexterno]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_fichaexterno]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_fichaexterno]
GO

/****** Object:  StoredProcedure [dbo].[sp_ficha_sinemp]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_ficha_sinemp]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_ficha_sinemp]
GO

/****** Object:  StoredProcedure [dbo].[sp_ficha]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_ficha]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_ficha]
GO

/****** Object:  StoredProcedure [dbo].[sp_familia]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_familia]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_familia]
GO

/****** Object:  StoredProcedure [dbo].[sp_eval_reportes_hst_ju]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_eval_reportes_hst_ju]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_eval_reportes_hst_ju]
GO

/****** Object:  StoredProcedure [dbo].[sp_eval_reportes_hst_emp]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_eval_reportes_hst_emp]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_eval_reportes_hst_emp]
GO

/****** Object:  StoredProcedure [dbo].[sp_eval_reportes_hst_cons]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_eval_reportes_hst_cons]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_eval_reportes_hst_cons]
GO

/****** Object:  StoredProcedure [dbo].[sp_eval_reportes_hst]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_eval_reportes_hst]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_eval_reportes_hst]
GO

/****** Object:  StoredProcedure [dbo].[sp_eval_param_reportes]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_eval_param_reportes]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_eval_param_reportes]
GO

/****** Object:  StoredProcedure [dbo].[sp_estudios]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_estudios]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_estudios]
GO

/****** Object:  StoredProcedure [dbo].[sp_encasillamiento]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_encasillamiento]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_encasillamiento]
GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solvacaciones_tras]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_doc_solvacaciones_tras]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_doc_solvacaciones_tras]
GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solprestamo_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_doc_solprestamo_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_doc_solprestamo_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solprestamo_tras]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_doc_solprestamo_tras]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_doc_solprestamo_tras]
GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solprestamo]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_doc_solprestamo]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_doc_solprestamo]
GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solpermiso_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_doc_solpermiso_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_doc_solpermiso_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solpermiso_tras]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_doc_solpermiso_tras]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_doc_solpermiso_tras]
GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solpermiso_pdf]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_doc_solpermiso_pdf]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_doc_solpermiso_pdf]
GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solpermiso]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_doc_solpermiso]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_doc_solpermiso]
GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solbeneficio_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_doc_solbeneficio_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_doc_solbeneficio_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solbeneficio_tras]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_doc_solbeneficio_tras]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_doc_solbeneficio_tras]
GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solbeneficio]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_doc_solbeneficio]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_doc_solbeneficio]
GO

/****** Object:  StoredProcedure [dbo].[sp_doc_sol_prog_adic_tras]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_doc_sol_prog_adic_tras]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_doc_sol_prog_adic_tras]
GO

/****** Object:  StoredProcedure [dbo].[sp_cumpleanos]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_cumpleanos]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_cumpleanos]
GO

/****** Object:  StoredProcedure [dbo].[sp_contratos]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_contratos]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_contratos]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_usuario_aut]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_usuario_aut]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_usuario_aut]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_update_procesos]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_update_procesos]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_update_procesos]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_update_perfil_emp]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_update_perfil_emp]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_update_perfil_emp]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_update_perfil]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_update_perfil]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_update_perfil]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_sistema]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_sistema]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_sistema]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_santoral_ing]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_santoral_ing]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_santoral_ing]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_recup_clave_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_recup_clave_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_recup_clave_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_recup_clave_ins]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_recup_clave_ins]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_recup_clave_ins]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_recup_clave_bit]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_recup_clave_bit]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_recup_clave_bit]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_perfiles]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_perfiles]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_perfiles]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_path_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_path_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_path_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_path]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_path]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_path]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_pantallas]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_pantallas]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_pantallas]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_pantalla_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_pantalla_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_pantalla_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evalsubitem_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_evalsubitem_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_evalsubitem_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evalsubitem]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_evalsubitem]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_evalsubitem]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evalitem]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_evalitem]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_evalitem]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evalcrit_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_evalcrit_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_evalcrit_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evalcrit]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_evalcrit]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_evalcrit]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_eval_logalerta_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_eval_logalerta_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_eval_logalerta_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_eval_logalerta]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_eval_logalerta]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_eval_logalerta]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_datos_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_datos_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_datos_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_datos]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_datos]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_datos]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_correocumple_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_correocumple_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_correocumple_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_correocumple]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_correocumple]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_correocumple]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_correo_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_correo_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_correo_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_correo]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_correo]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_correo]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_avisoter_upd]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_avisoter_upd]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_avisoter_upd]
GO

/****** Object:  StoredProcedure [dbo].[sp_conf_avisoter]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_conf_avisoter]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_conf_avisoter]
GO

/****** Object:  StoredProcedure [dbo].[sp_clave]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_clave]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_clave]
GO

/****** Object:  StoredProcedure [dbo].[sp_certificado_update]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_certificado_update]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_certificado_update]
GO

/****** Object:  StoredProcedure [dbo].[sp_certificado]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_certificado]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_certificado]
GO

/****** Object:  StoredProcedure [dbo].[sp_carrera]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_carrera]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_carrera]
GO

/****** Object:  StoredProcedure [dbo].[sp_cargaarchivo_del]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_cargaarchivo_del]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_cargaarchivo_del]
GO

/****** Object:  StoredProcedure [dbo].[sp_cargaarchivo]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_cargaarchivo]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_cargaarchivo]
GO

/****** Object:  StoredProcedure [dbo].[sp_capacitacion]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_capacitacion]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_capacitacion]
GO

/****** Object:  StoredProcedure [dbo].[sp_Bitacora_contras]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_Bitacora_contras]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_Bitacora_contras]
GO

/****** Object:  StoredProcedure [dbo].[sp_anticipo]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_anticipo]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_anticipo]
GO

/****** Object:  StoredProcedure [dbo].[sp_antecedentes_personales]    Script Date: 09/11/2017 21:02:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_antecedentes_personales]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_antecedentes_personales]
GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solvacaciones_pdf]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_doc_solvacaciones_pdf]
	@tipo				int,
	@rut_trabajador		int,
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin 
		select	a.nro_trabajador,
				a.dv_trabajador,
				a.rut_trabajador, 
				a.dv_rut_trabajador, 
				a.nombre, 
				a.ape_paterno_trabaj, 
				a.ape_materno_trabaj, 
				c.cargo_trabajador, 
				b.unidad_administrat, 
				j.descripcion,
				(DATEDIFF(YY, fec_nacimiento, getdate())) as edad,
				d.afp,
				e.isapre,
				f.empresa,
				g.centro_costo,
				h.sucursal,
				cast(rut_empresa as varchar(10))++'-'++dv_rut_empresa as rut_empresa,
				f.sigla_empresa,
				convert(varchar(10),a.fec_antiguedad,103) as fec_antiguedad,
				convert(varchar(10),a.fec_ini_contrato,103) as fec_ini_contrato,
				z.anos_reconocidos,
				z.anos_otros_contr,
				z.dias_progresivos,
				z.dias_pendientes,
				convert(varchar(10),z.fec_ini_ult_period,103) as fec_ini_ult_period,
				convert(varchar(10),z.fec_fin_ult_period,103) as fec_fin_ult_period,
				z.dias_del_periodo,
				z.dias_prox_periodo,
				z.sdo_actual_periodo,				
				z.base_dias_adic,
				z.dias_reconocidos,
				z.dias_reconoc_adici
		from	personal a  left outer join unidad_administrat b on a.cod_empresa = b.cod_empresa and a.cod_unidad_adminis = b.cod_unidad_adminis
							left outer join cargo_trabajador c on a.cod_empresa = c.cod_empresa and a.cod_cargo = c.cod_cargo 
							left outer join afp d on a.cod_afp = d.cod_afp 
							left outer join isapre e on a.cod_isapre = e.cod_isapre
							left outer join empresa f on a.cod_empresa = f.cod_empresa
							left outer join centro_costo g on a.cod_empresa = g.cod_empresa and a.cod_centro_costo = g.cod_centro_costo
							left outer join sucursal h on a.cod_empresa = h.cod_empresa and a.cod_planta = h.cod_planta and a.cod_sucursal = h.cod_sucursal
							left outer join codigos_genericos j on a.cod_estado_civil = j.codigo and tipo_codigo = 'E'
							left outer join	feriad_trabajador z on a.cod_empresa = z.cod_empresa AND a.cod_planta = z.cod_planta AND
											a.nro_trabajador = z.nro_trabajador
		where	a.rut_trabajador	= @rut_trabajador
		and		a.nro_trabajador	= @nro_trabajador
		and		a.cod_empresa		= @cod_empresa
		and		a.cod_planta		= @cod_planta
	end
	else  if @tipo = 1
	begin 
		select	convert(varchar(10),fecha_desde,103) as fecha_desde,
				convert(varchar(10),fecha_fin,103) as fecha_fin,
				cantidad,
				observaciones,
				estado,
				convert(varchar(10),fecha_ingreso ,103),
				mediodia,
				isnull(dias_legales,cantidad),
				dias_adicionales,
				dias_progres
		from	sipweb_solvacaciones		a
		where	correlativo				= @rut_trabajador	
	end
	else  if @tipo = 2
	begin 
		select	convert(varchar(10),fecha_desde,103) as fecha_desde,
				convert(varchar(10),fecha_fin,103) as fecha_fin,
				cantidad,
				observaciones,
				estado,
				convert(varchar(10),fecha_ingreso ,103),
				mediodia,
				isnull(cantidad,0),
				dias_derecho,
				dias_devengados,
				motivo,
				periodo
		from	sipweb_sol_adminis		a
		where	correlativo				= @rut_trabajador	
	end
end












GO

/****** Object:  StoredProcedure [dbo].[sp_doc_soladminis_upd]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[sp_doc_soladminis_upd]
	@id					numeric(14),
	@cod_empresa		int,
	@cod_planta			int,
	@nro_trabajador		int,
	@dv_trabajador		varchar(1),
	@fecha_desde		datetime,
	@fecha_hasta		datetime,
	@cantidad			decimal(18,2),
	@estado				varchar(20),
	@usuario_autoriza	varchar(15),
	@fecha_autorizacion datetime,
	@usuario_traspaso	varchar(15),
	@fecha_traspaso		datetime,
	@usuario_rechazo	varchar(15),
	@fecha_rechazo		datetime,
	@mediodia			int,
	@motivo				varchar(20),
	@dias_derecho		decimal(14,2),
	@dias_devengados	decimal(14,2),
	@tipo				int,
	@observacion		varchar(254),
	@periodo			int
AS
declare @correlativo  numeric
BEGIN TRANSACTION
	select @correlativo = @id
	if ( @tipo = 0 )
	begin

		if (SELECT COUNT(*) FROM sipweb_sol_adminis ) = 0
		begin
				SELECT @correlativo  = 1
		end	
		else
		begin
				SELECT @correlativo = MAX(correlativo) + 1 FROM sipweb_sol_adminis
		end
	
		INSERT INTO sipweb_sol_adminis
           (cod_empresa,cod_planta,nro_trabajador,
			dv_trabajador,correlativo,fecha_desde,fecha_fin, cantidad,
			estado,fecha_ingreso,mediodia, motivo, dias_derecho,
			dias_devengados, observaciones, periodo)
        VALUES
           (@cod_empresa,@cod_planta,@nro_trabajador,
			@dv_trabajador,@correlativo,
			@fecha_desde,@fecha_hasta,@cantidad,@estado,getdate(),@mediodia,
			@motivo, @dias_derecho, @dias_devengados, @observacion, @periodo)

	end
	else if ( @tipo = 1 )
	begin
		update	sipweb_sol_adminis
		set		fecha_desde		= @fecha_desde,
				fecha_fin		= @fecha_hasta,
				cantidad		= @cantidad,
				estado			= @estado,
				mediodia		= @mediodia, 
				motivo			= @motivo, 
				dias_derecho	= @dias_derecho,
				dias_devengados	= @dias_devengados,
				observaciones	= @observacion,
				periodo		= @periodo
		where	correlativo		= @id
	
	end
	else if ( @tipo = 2 )
	begin
		update	sipweb_sol_adminis
		set		estado				= @estado,
				usuario_autoriza	= @usuario_autoriza,
				fecha_autorizacion	= getdate()
		where	correlativo			= @id
	end
	else if ( @tipo = 3 )
	begin
		update	sipweb_sol_adminis
		set		estado				= @estado,
				usuario_rechazo		= @usuario_rechazo,
				fecha_rechazo		= getdate()
		where	correlativo			= @id
	end
	else if ( @tipo = 99 )
	begin
	
		INSERT INTO sipweb_sol_adminis_log
           (cod_empresa,cod_planta,nro_trabajador,
			dv_trabajador,correlativo,fecha_desde,fecha_fin, cantidad,
			estado,fecha_ingreso,mediodia, usuario_elimina, fecha_elimina, motivo, dias_derecho,
			dias_devengados, observaciones,periodo )
        SELECT cod_empresa,cod_planta,nro_trabajador,
			dv_trabajador,correlativo,fecha_desde,fecha_fin, cantidad,
			estado,fecha_ingreso,mediodia, @usuario_rechazo, getdate(), @motivo, @dias_derecho,
			@dias_devengados, @observacion, @periodo
		FROM sipweb_sol_adminis
		where	correlativo		= @id
			
		delete from sipweb_sol_adminis 
		where	correlativo		= @id
	end	
	

COMMIT TRANSACTION


RETURN @correlativo		











GO

/****** Object:  StoredProcedure [dbo].[sp_doc_soladminis_tras]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[sp_doc_soladminis_tras]
	@cod_empresa		int,
	@usuario_traspaso	varchar(15)
AS
declare
	@cod_empresa2			int,
	@cod_planta				int,
	@nro_trabajador			int,
	@dv_trabajador			varchar(5),
	@fecha_desde			datetime,
	@fecha_fin				datetime,
	@cantidad				decimal(7, 2),
	@fecha_ingreso			datetime,
	@fecha_ingresoH			varchar(8),
	@usuario_autoriza		varchar(15),
	@fecha_autorizacion		datetime,
	@fecha_autorizacionH	varchar(8),
	@correl_feriados		int,
	@dias_derecho		decimal(14,2),
	@dias_devengados	decimal(14,2),
	@periodo				decimal(14,2),
	@motivo				varchar(80), 
	@observaciones		varchar(254)
	
BEGIN TRANSACTION

		DECLARE Cursor01 CURSOR FOR 
				select	a.cod_empresa, a.cod_planta, a.nro_trabajador, b.dv_trabajador,
						fecha_desde, fecha_fin, cantidad, convert(varchar(10),fecha_ingreso,111), convert(varchar(8),fecha_ingreso,114),
						usuario_autoriza, fecha_autorizacion, convert(varchar(8),fecha_autorizacion,114), dias_derecho, dias_devengados,
						periodo, motivo, observaciones
				from	sipweb_sol_adminis	a,
						personal				b
				where	a.cod_empresa		= b.cod_empresa
				and		a.cod_planta		= b.cod_planta
				and		a.nro_trabajador	= b.nro_trabajador
				and		a.estado			= 'Aprobada'


			OPEN Cursor01

			FETCH NEXT FROM Cursor01 
			INTO @cod_empresa2, @cod_planta, @nro_trabajador, @dv_trabajador, 
				@fecha_desde, @fecha_fin, @cantidad, @fecha_ingreso, @fecha_ingresoH,
						@usuario_autoriza, @fecha_autorizacion, @fecha_autorizacionH,
						@dias_derecho, @dias_devengados, @periodo, @motivo,
						@observaciones
					
				 
			WHILE (@@FETCH_STATUS = 0)
			BEGIN

				--dbo.Fn_Retorna_Correl(a.cod_empresa, a.cod_planta, a.nro_trabajador,0)
					DECLARE cur_folio SCROLL CURSOR FOR
						select	max(correl_feriados)+1 
						from	movimient_fer_adm
						where	cod_empresa		= @cod_empresa2
						and		cod_planta		= @cod_planta
						and		nro_trabajador	= @nro_trabajador
					OPEN cur_folio
					FETCH NEXT FROM cur_folio INTO @correl_feriados
					CLOSE cur_folio
					DEALLOCATE cur_folio
			
				if (@correl_feriados is null) 
				BEGIN
					select @correl_feriados = 0
				end 

				insert into movimient_fer_adm(
						cod_empresa,cod_planta,nro_trabajador,dv_trabajador,
						 correl_feriados, fec_inicio_feriado, fecha_fin_feriado,
						num_dias_feriados, cod_feriado_solici,
						fec_feriad_solicit, pendientes,   traspasada_ausenci,
						usuario_ingreso, fecha_ingreso, hora_ingreso, usuario_autoriza,
						fecha_autoriza, hora_autoriza, dias_derecho, dias_devengados,
						periodo,motivo, comentario )
				values ( @cod_empresa2, @cod_planta, @nro_trabajador, @dv_trabajador,
						@correl_feriados, @fecha_desde, @fecha_fin, 
						@cantidad, 'A', 
						@fecha_ingreso, @dias_devengados-@cantidad, 'N', 
						@nro_trabajador, @fecha_ingreso, @fecha_ingresoH,
						@usuario_autoriza, @fecha_autorizacion, @fecha_autorizacionH,
						@dias_derecho, @dias_devengados,
						@periodo, @motivo, @observaciones )

			FETCH NEXT FROM Cursor01 INTO @cod_empresa2, @cod_planta, @nro_trabajador, @dv_trabajador, 
				@fecha_desde, @fecha_fin, @cantidad, @fecha_ingreso, @fecha_ingresoH,
						@usuario_autoriza, @fecha_autorizacion, @fecha_autorizacionH,
						@dias_derecho, @dias_devengados, @periodo, @motivo,
						@observaciones
			END

			CLOSE Cursor01
			DEALLOCATE Cursor01


			update	sipweb_sol_adminis 
			set		estado				= 'Traspasada',
					usuario_traspaso	= @usuario_traspaso,
					fecha_traspaso		= getdate()
			where	estado				= 'Aprobada'		
			
COMMIT TRANSACTION






















GO

/****** Object:  StoredProcedure [dbo].[sp_imp_soladminis]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[sp_imp_soladminis]
	@tipo				int,
	@id					varchar(14)
AS
declare	@unidad			nvarchar(4000)
DECLARE @sql			nvarchar(4000)
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.correlativo as ID,
				b.nombre++' '++b.ape_paterno_trabaj++' '++b.ape_materno_trabaj	as nombre,
				convert(varchar(10),fecha_desde,103) as 'Fecha Inicio',
				convert(varchar(10),fecha_fin,103) as 'Fecha Término',
				a.cantidad as 'Nro. Dias',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso'
		from	sipweb_sol_adminis	a,
				personal				b
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.estado			= 'Enviada'
		and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
					in ( select convert(varchar(10),cod_empresa)++convert(varchar(10),cod_planta) 
						from usuario_sipweb where usuario = @id AND perfil_admin = 'S' )

		order by a.correlativo desc
	end
	else if @tipo = 1
	begin
		select	a.correlativo as ID,
				b.nombre++' '++b.ape_paterno_trabaj++' '++b.ape_materno_trabaj	as nombre,
				convert(varchar(10),fecha_desde,103) as 'Fecha Inicio',
				convert(varchar(10),fecha_fin,103) as 'Fecha Término',
				a.cantidad as 'Nro. Dias',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso'
		from	sipweb_sol_adminis	a,
				personal				b,
				personal_dinamico		c
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.estado			= 'Enviada'
		and		a.cod_empresa		= c.cod_empresa
		and		a.nro_trabajador	= c.nro_trabajador
		and		c.nombre_interno	= 'RutJefDir'
		and		c.valor_columna		= convert(varchar(10),@id)
		order by a.correlativo desc
	end
	else if @tipo = 2
	begin
		select	a.cod_empresa,
				a.cod_planta,
				convert(varchar(10),fecha_desde,103) as 'Fecha Inicio',
				convert(varchar(10),fecha_fin,103) as 'Fecha Término',
				cantidad,
				observaciones,
				estado,
				convert(varchar(10),fecha_ingreso,103) as 'F. Ingreso',
				b.casilla_e_mail,
				b.rut_trabajador,
				a.nro_trabajador,
				convert(varchar(10),fecha_autorizacion ,103) as 'Fecha Autoriza',
				convert(varchar(10),fecha_rechazo ,103) as 'Fecha Rechazo' ,
				motivo,
				dias_derecho,
				dias_devengados,
				periodo
		from	sipweb_sol_adminis	a,
				personal				b
		where	a.correlativo		= @id
		and		a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
	end
	else if @tipo = 3
	begin
		select	a.correlativo as ID,
				b.nombre++' '++b.ape_paterno_trabaj++' '++b.ape_materno_trabaj	as nombre,
				convert(varchar(10),fecha_desde,103) as 'Fecha Inicio',
				convert(varchar(10),fecha_fin,103) as 'Fecha Término',
				a.cantidad as 'Nro. Dias',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso',
				convert(varchar(10),fecha_autorizacion,103) as 'Fecha Autorizacion'	
		from	sipweb_sol_adminis	a,
				personal				b
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.estado			= 'Aprobada'
				and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
					in ( select convert(varchar(10),cod_empresa)++convert(varchar(10),cod_planta) 
						from usuario_sipweb where usuario = @id  )
		order by a.correlativo desc
	end
	else if @tipo = 4
	begin

		select @unidad = cod_unidad_adminis from usuario_sipweb where usuario = @id AND perfil_jefe_uadm = 'S'
		if @unidad is null or @unidad = ''
		begin
			select @unidad = '-1'
		end
		SET @sql = ' select	a.correlativo as ID,
				b.nombre++'' ''++b.ape_paterno_trabaj++'' ''++b.ape_materno_trabaj	as nombre,
				convert(varchar(10),fecha_desde,103) as ''Fecha Inicio'',
				convert(varchar(10),fecha_fin,103) as ''Fecha Término'',
				a.cantidad as ''Nro. Dias'',
				a.estado as ''Estado'',
				convert(varchar(10),fecha_ingreso,103) as ''Fecha Ingreso''
		from	sipweb_sol_adminis	a,
				personal				b
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.estado			= ''Enviada''
		and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
					in ( select convert(varchar(10),cod_empresa)++convert(varchar(10),cod_planta) 
						from usuario_sipweb where usuario = '''+convert(varchar(10),@id)+'''  )
		and		b.cod_unidad_adminis in ( '++@unidad+' )
		order by a.correlativo desc '

		EXEC (@sql)
	end

END
















GO

/****** Object:  StoredProcedure [dbo].[sp_soladminis_arch]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[sp_soladminis_arch]
	@cod_empresa		int,
	@cod_planta			int,
	@correlativo		numeric(14),
	@usuario			varchar(15),
	@nombre_arch		varchar(150),
	@descripcion		varchar(150),
	@tipo				varchar(50),
	@archivo			image,
	@nro_trabajador		int
as
BEGIN TRANSACTION

			if (SELECT COUNT(*) 
				FROM sipweb_sol_adminis_arch 
				where cod_empresa = @cod_empresa
				and cod_planta = @cod_planta
				and correlativo = @correlativo
				and usuario = @usuario 
				and nombre_arch = @nombre_arch ) = 0
				begin
						insert into sipweb_sol_adminis_arch
						(	cod_empresa,
							cod_planta,
							correlativo,
							usuario,
							nombre_arch,
							descripcion,
							fecha,
							tipo,
							archivo,
							nro_trabajador  ) 
					values ( @cod_empresa,
							@cod_planta,
							@correlativo,
							@usuario,
							@nombre_arch,
							@descripcion,
							getdate(),
							@tipo,
							@archivo,
							@nro_trabajador )

				end	
				else
				begin
						update sipweb_sol_adminis_arch
						set	descripcion	= @descripcion
						where cod_empresa = @cod_empresa
						and cod_planta = @cod_planta
						and correlativo = @correlativo
						and	usuario = @usuario 
						and	nro_trabajador = @nro_trabajador
						and nombre_arch = @nombre_arch

			end
			
			
COMMIT TRANSACTION







GO

/****** Object:  StoredProcedure [dbo].[sp_soladminis_arch_del]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO









create PROCEDURE [dbo].[sp_soladminis_arch_del]
	@cod_empresa		int,
	@cod_planta			int,
	@correlativo		numeric(14),
	@usuario		varchar(15),
	@nombre_arch	varchar(150),
	@nro_trabajador int
as
BEGIN TRANSACTION

					delete from  sipweb_sol_adminis_arch
					where cod_empresa = @cod_empresa
					and cod_planta = @cod_planta
					and correlativo = @correlativo
					and usuario = @usuario 
					and	nro_trabajador = @nro_trabajador
					and nombre_arch = @nombre_arch

						
COMMIT TRANSACTION






















GO

/****** Object:  StoredProcedure [dbo].[sp_solvacaciones_arch_del]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO









create PROCEDURE [dbo].[sp_solvacaciones_arch_del]
	@cod_empresa		int,
	@cod_planta			int,
	@correlativo		numeric(14),
	@usuario		varchar(15),
	@nombre_arch	varchar(150),
	@nro_trabajador int
as
BEGIN TRANSACTION

					delete from  sipweb_solvacacion_arch
					where cod_empresa = @cod_empresa
					and cod_planta = @cod_planta
					and correlativo = @correlativo
					and usuario = @usuario 
					and	nro_trabajador = @nro_trabajador
					and nombre_arch = @nombre_arch

						
COMMIT TRANSACTION






















GO

/****** Object:  StoredProcedure [dbo].[sp_solvacaciones_arch]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[sp_solvacaciones_arch]
	@cod_empresa		int,
	@cod_planta			int,
	@correlativo		numeric(14),
	@usuario			varchar(15),
	@nombre_arch		varchar(150),
	@descripcion		varchar(150),
	@tipo				varchar(50),
	@archivo			image,
	@nro_trabajador		int
as
BEGIN TRANSACTION

			if (SELECT COUNT(*) 
				FROM sipweb_solvacacion_arch 
				where cod_empresa = @cod_empresa
				and cod_planta = @cod_planta
				and correlativo = @correlativo
				and usuario = @usuario 
				and nombre_arch = @nombre_arch ) = 0
				begin
						insert into sipweb_solvacacion_arch
						(	cod_empresa,
							cod_planta,
							correlativo,
							usuario,
							nombre_arch,
							descripcion,
							fecha,
							tipo,
							archivo,
							nro_trabajador  ) 
					values ( @cod_empresa,
							@cod_planta,
							@correlativo,
							@usuario,
							@nombre_arch,
							@descripcion,
							getdate(),
							@tipo,
							@archivo,
							@nro_trabajador )

				end	
				else
				begin
						update sipweb_solvacacion_arch
						set	descripcion	= @descripcion
						where cod_empresa = @cod_empresa
						and cod_planta = @cod_planta
						and correlativo = @correlativo
						and	usuario = @usuario 
						and	nro_trabajador = @nro_trabajador
						and nombre_arch = @nombre_arch

			end
			
			
COMMIT TRANSACTION







GO

/****** Object:  StoredProcedure [dbo].[sp_feriados_def]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_feriados_def]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int,
	@ano			    int,
	@nro_mes		    int,
	@tipo			    int
AS
		declare @ndias int
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
			SELECT	convert(varchar(10),a.fec_ini_contrato,103) as fec_ini_contrato,
					convert(varchar(10),a.fec_antiguedad,103) as fec_antiguedad,
					a.cod_cierre_vacacio, 
					a.convenio, 
					convert(varchar(10),a.fec_fin_contr_vige,103) as fec_fin_contr_vige,
					convert(varchar(10),getdate(),103),
					a.cod_zona,
					(select	sum(num_dias_feriados)
					from	movimient_feriados 
					where	nro_trabajador	= @nro_trabajador
					and		cod_empresa		= @cod_empresa	
					and		cod_planta		= @cod_planta		
					and		tipo_movimiento = 'CARGO'
					and		cod_feriado_solici	= 'U'
					and		fec_inicio_feriado >= b.fec_fin_ult_period ),
					convert(varchar(10),b.fec_fin_ult_period,103) as fec_fin_ult_period,
					sdo_actual_periodo
			from	personal			a,
					feriad_trabajador	b
			WHERE	a.cod_empresa		= b.cod_empresa 
			and		a.cod_planta		= b.cod_planta	
			and		a.nro_trabajador	= b.nro_trabajador
			and		a.cod_empresa		= @cod_empresa
			and		a.cod_planta		= @cod_planta
			and		a.nro_trabajador	= @nro_trabajador

	end
	else if @tipo = 1
	begin
			select	flg_dev_por_antig, 
					flg_dev_prox_perio,
					flg_uso_feri
			from	parametro 
			where 	cod_empresa		= @cod_empresa
			and		cod_planta		= @cod_planta
			and		ano				= @ano
			and		nro_mes			= @nro_mes
	
	end
	else if @tipo = 2
	begin
		SELECT	isnull(anos_otros_contr,0) as anos_otros_contr, 
				isnull(anos_reconocidos,0) as anos_reconocidos , 			
				isnull(dias_reconocidos,0) as dias_reconocidos,
				case when isnull(base_dias_adic,0) > 0 then isnull(base_dias_adic,0) else dias_reconoc_adici end as dias_reconoc_adici
		from	feriad_trabajador 
		WHERE	cod_empresa		= @cod_empresa
		and		cod_planta		= @cod_planta
		and		nro_trabajador	= @nro_trabajador
		
	end
	else if @tipo = 3
	begin
		--@nro_mes cod_zona
		select  dias_base_feriados 
		from    fer_zon_ex_derecho
		where   cod_empresa = @cod_empresa
		AND     cod_planta	= @cod_planta
		AND     cod_zona	= @nro_mes
	end
	else if @tipo = 4
	begin
		--@nro_mes cod_zona
		select  dias_de_derecho 
		from    fer_zon_ex_progre
		where   cod_empresa = @cod_empresa
		AND     cod_planta	= @cod_planta
		AND     cod_zona	= @nro_mes
		AND     nro_anos	= @ano
	end
	else if @tipo = 5
	begin
		--@nro_trabajador convenio

		select	@ndias = count(dias_de_derecho) 
		from    feriad_progresivos
		where   tipo_progresivo	='S'
		AND     convenio		= @nro_trabajador
		AND     nro_anos		= 0

		select @ndias = isnull(@ndias, 0)

		if ( @ndias = 0)
		begin
			select top 1 num_base_dias_feri 
			from parametro
			where cod_empresa=@cod_empresa 
			and cod_planta=@cod_planta 
			order by ano desc, nro_mes desc
		end
		else
		begin
			select  dias_de_derecho 
			from    feriad_progresivos
			where   tipo_progresivo	='S'
			AND     convenio		= @nro_trabajador
			AND     nro_anos		= 0
		end		
	end
	else if @tipo = 6
	begin
		--@nro_trabajador convenio
		select @ndias = dias_de_derecho 
			from    feriad_progresivos
			where   tipo_progresivo	='S'
			AND     convenio		= @nro_trabajador
			AND     nro_anos		= @ano

		if (@ndias IS NULL  )
		begin
			select top 1 num_base_dias_feri 
			from parametro
			where cod_empresa=@cod_empresa 
			and cod_planta=@cod_planta 
			order by ano desc, nro_mes desc
		end
		else
		begin
			select  dias_de_derecho 
			from    feriad_progresivos
			where   tipo_progresivo	='S'
			AND     convenio		= @nro_trabajador
			AND     nro_anos		= @ano
		end		

		
	end
	else if @tipo = 7
	begin
		--@nro_trabajador convenio

		select  dias_de_derecho 
			from    feriad_progresivos
			where   tipo_progresivo	='U'
			AND     convenio		= @nro_trabajador
			AND     nro_anos		= @ano

	end
	else if @tipo = 8
	begin
			select	control_feriado_ap, 
					flg_feri_desag
			from	parametro 
			where 	cod_empresa		= @cod_empresa
			and		cod_planta		= @cod_planta
			and		ano				= @ano
			and		nro_mes			<= @nro_mes
			order by nro_mes desc
	
	end
	else if @tipo = 9
	begin
		select	isnull(sum(prog_saldo),0)
		from	feriad_prog_estruct
		where	cod_empresa 	= @cod_empresa 
		and		cod_planta 		= @cod_planta
		and		nro_trabajador	= @nro_trabajador
		and		ano_progresivo	< @ano 
	end
	else if @tipo = 10
	begin
		select	isnull(sum(prog_saldo),0)
		from	feriad_prog_estruct
		where	cod_empresa 	= @cod_empresa 
		and		cod_planta 		= @cod_planta
		and		nro_trabajador	= @nro_trabajador
		and		ano_progresivo	= @ano 
	end
	else if @tipo = 11
	begin
		select	isnull(sum(adicional_saldo),0)
		from	feriad_adicional
		where	cod_empresa 	= @cod_empresa 
		and		cod_planta 		= @cod_planta
		and		nro_trabajador	= @nro_trabajador
		and		fec_fin_periodo 	< ( select fec_ini_ult_period from feriad_trabajador
							where	cod_empresa 	= @cod_empresa 
							and		cod_planta 		= @cod_planta
							and		nro_trabajador	= @nro_trabajador )
	end
	else if @tipo = 12
	begin
		select	isnull(sum(adicional_saldo),0)
		from	feriad_adicional
		where	cod_empresa 	= @cod_empresa 
		and		cod_planta 		= @cod_planta
		and		nro_trabajador	= @nro_trabajador
		and		fec_inicio_periodo 	= ( select fec_ini_ult_period from feriad_trabajador
							where	cod_empresa 	= @cod_empresa 
							and		cod_planta 		= @cod_planta
							and		nro_trabajador	= @nro_trabajador )
	end
	else if @tipo = 13
	begin
		select	isnull(sum(prog_ganados),0)
		from	feriad_prog_estruct
		where	cod_empresa 	= @cod_empresa 
		and		cod_planta 		= @cod_planta
		and		nro_trabajador	= @nro_trabajador
		and		ano_progresivo 	> @ano
	end
	else if @tipo = 14
	begin
		select	isnull(sum(adicional_ganados),0)
		from	feriad_adicional
		where	cod_empresa 	= @cod_empresa 
		and		cod_planta 		= @cod_planta
		and		nro_trabajador	= @nro_trabajador
		and		fec_inicio_periodo 	> ( select fec_ini_ult_period from feriad_trabajador
							where	cod_empresa 	= @cod_empresa 
							and		cod_planta 		= @cod_planta
							and		nro_trabajador	= @nro_trabajador )
	end
	else if @tipo = 15
	begin
		select	isnull(sum(prog_saldo),0)
		from	feriad_prog_estruct
		where	cod_empresa 	= @cod_empresa 
		and		cod_planta 		= @cod_planta
		and		nro_trabajador	= @nro_trabajador
	end
	else if @tipo = 16
	begin
		select	isnull(sum(adicional_saldo),0)
		from	feriad_adicional
		where	cod_empresa 	= @cod_empresa 
		and		cod_planta 		= @cod_planta
		and		nro_trabajador	= @nro_trabajador
	end
	else if @tipo = 17
	begin
		select	isnull(sum(num_dias_no_provi_adi),0),
				isnull(sum(num_dias_no_provi_pro),0),
				isnull(sum(num_dias_no_provi),0),
				isnull(sum(num_dias_no_provi_leg),0)
		from	movimient_feriados
		where	cod_empresa 	= @cod_empresa 
		and		cod_planta 		= @cod_planta
		and		nro_trabajador	= @nro_trabajador
	end
	else if @tipo = 18
	begin
		select	isnull(sum(adicional_consumo+adicional_venta),0)
		from	feriad_adicional
		where	cod_empresa 	= @cod_empresa 
		and		cod_planta 		= @cod_planta
		and		nro_trabajador	= @nro_trabajador
		and		fec_inicio_periodo 	> ( select fec_ini_ult_period from feriad_trabajador
							where	cod_empresa 	= @cod_empresa 
							and		cod_planta 		= @cod_planta
							and		nro_trabajador	= @nro_trabajador )
	end
	else if @tipo = 19
	begin
		select	isnull(sum(prog_consumo+prog_venta),0)
		from	feriad_prog_estruct
		where	cod_empresa 	= @cod_empresa 
		and		cod_planta 		= @cod_planta
		and		nro_trabajador	= @nro_trabajador
		and		ano_progresivo 	> @ano
	end
	else if @tipo = 20
	begin
			select	flg_sobregiro_dias_adm, 
					flg_frac_dias_adm 
			from	parametro 
			where 	cod_empresa		= @cod_empresa
			and		cod_planta		= @cod_planta
			and		ano				= @ano
			and		nro_mes			<= @nro_mes
			order by nro_mes desc
	
	end
	
	else if @tipo = 21
	begin
			select	isnull(sum(dias_adm_consumo),0)
			from	feriad_adminis 
			where	cod_empresa 	= @cod_empresa 
			and		cod_planta 		= @cod_planta
			and		nro_trabajador	= @nro_trabajador
			and		periodo			= @ano
		union all
			SELECT 	isnull(SUM(num_dias_feriados),0)
			FROM 	movimient_fer_adm 
			where	cod_empresa 	= @cod_empresa 
			and		cod_planta 		= @cod_planta
			and		nro_trabajador	= @nro_trabajador
			and		periodo = @ano
			and		cod_feriado_solici != 'U' 	
	end
	else if @tipo = 22
	begin
			select	isnull(sum(dias_adm_saldo),0),
					isnull(sum(dias_adm_derecho),0),
					isnull(sum(dias_adm_ganado),0)
			from	feriad_adminis 
			where	cod_empresa 	= @cod_empresa 
			and		cod_planta 		= @cod_planta
			and		nro_trabajador	= @nro_trabajador
			and		periodo			= @ano
	END

END


















GO

/****** Object:  StoredProcedure [dbo].[sp_validafechas]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_validafechas]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int,
	@fecha_ini			varchar(10),
	@fecha_ter			varchar(10),
	@tipo				int
AS
declare  @datevar datetime
declare  @datevar2 datetime
BEGIN
	SET NOCOUNT ON;

	SET DATEFORMAT ymd;

	set @datevar = @fecha_ini
	set @datevar2 = @fecha_ter

	if @tipo = 0
	begin
	
		SELECT	0
			FROM 	sipweb_solvacaciones
			WHERE	COD_EMPRESA 			= @cod_empresa 
			AND		COD_PLANTA	 			= @cod_planta 
			AND		NRO_TRABAJADOR 			= @nro_trabajador 
			and    (( fecha_desde >= @datevar AND fecha_fin <= @datevar2 )  OR
				( fecha_desde >= @datevar  AND fecha_fin <= @datevar2 ) OR
				( fecha_desde <=@datevar AND fecha_fin >=@datevar2 ) ) 			
		union	all
			SELECT	1
			FROM	movimient_feriados	a,
					ausencia			b
			where	a.cod_empresa		= b.cod_empresa
			and		a.cod_planta		= b.cod_planta
			and		b.cod_ausencia		= 'FERI'
			and		b.flg_val_tras_feri = 'S'
			and		a.cod_empresa		= @cod_empresa 
			AND		a.cod_planta		= @cod_planta
			and		a.nro_trabajador	= @nro_trabajador
			and		a.tipo_movimiento = 'CARGO'			
			and    (( fec_inicio_feriado >= @datevar AND fec_inicio_feriado <= @datevar2 )  OR
				( fecha_fin_feriado >= @datevar  AND fecha_fin_feriado <= @datevar2 ) OR
				( fec_inicio_feriado <=@datevar AND fecha_fin_feriado >=@datevar2 ) ) 		
		union	all
			SELECT	2 
			FROM	licencia	a,
					ausencia	b
			where	a.cod_empresa		= b.cod_empresa
			and		a.cod_planta		= b.cod_planta
			and		b.cod_ausencia		= 'LICE'
			and		b.flg_val_tras_feri = 'S'
			and		a.cod_empresa		= @cod_empresa 
			AND		a.cod_planta		= @cod_planta
			and		a.nro_trabajador	= @nro_trabajador
			and		a.nro_licencia		!= 0 
			and    (( fec_desde_licencia >= @datevar AND fec_desde_licencia <= @datevar2 )  OR
				( fec_hasta_licencia >= @datevar  AND fec_hasta_licencia <= @datevar2 ) OR
				( fec_desde_licencia <=@datevar AND fec_hasta_licencia >=@datevar2 ) ) 	
		union	all
			SELECT	case a.cod_ausencia when 'FERI' then 1 
										when 'LICE' then 2 
										else 3 end
			FROM	movimiento_ausenci	a,
					ausencia			b
			where	a.cod_empresa		= b.cod_empresa
			and		a.cod_planta		= b.cod_planta
			and		a.cod_ausencia		= b.cod_ausencia
			and		b.flg_val_tras_feri = 'S'
			and		a.cod_empresa		= @cod_empresa 
			AND		a.cod_planta		= @cod_planta
			and		a.nro_trabajador	= @nro_trabajador
			and    (( fec_ini_ausencia >= @datevar AND fec_ini_ausencia <= @datevar2 )  OR
				( fec_fin_ausencia >= @datevar  AND fec_fin_ausencia <= @datevar2 ) OR
				( fec_ini_ausencia <= @datevar AND fec_fin_ausencia >=@datevar2 ) ) 
		union all
			SELECT	4
			FROM 	sipweb_sol_adminis
			WHERE	COD_EMPRESA 			= @cod_empresa 
			AND		COD_PLANTA	 			= @cod_planta 
			AND		NRO_TRABAJADOR 			= @nro_trabajador 
			and    (( fecha_desde >= @datevar AND fecha_fin <= @datevar2 )  OR
				( fecha_desde >= @datevar  AND fecha_fin <= @datevar2 ) OR
				( fecha_desde <=@datevar AND fecha_fin >=@datevar2 ) ) 		
		union	all
			SELECT	5
			FROM	movimient_fer_adm	a,
					ausencia			b
			where	a.cod_empresa		= b.cod_empresa
			and		a.cod_planta		= b.cod_planta
			and		b.cod_ausencia		= 'FERI'
			and		b.flg_val_tras_feri = 'S'
			and		a.cod_empresa		= @cod_empresa 
			AND		a.cod_planta		= @cod_planta
			and		a.nro_trabajador	= @nro_trabajador 
			and    (( fec_inicio_feriado >= @datevar AND fec_inicio_feriado <= @datevar2 )  OR
				( fecha_fin_feriado >= @datevar  AND fecha_fin_feriado <= @datevar2 ) OR
				( fec_inicio_feriado <=@datevar AND fecha_fin_feriado >=@datevar2 ) ) 		
		union	all
			SELECT	6
			FROM	movimient_fer_comp	a,
					ausencia			b
			where	a.cod_empresa		= b.cod_empresa
			and		a.cod_planta		= b.cod_planta
			and		b.cod_ausencia		= 'FERI'
			and		b.flg_val_tras_feri = 'S'
			and		a.cod_empresa		= @cod_empresa 
			AND		a.cod_planta		= @cod_planta
			and		a.nro_trabajador	= @nro_trabajador 
			and    (( fec_inicio_feriado >= @datevar AND fec_inicio_feriado <= @datevar2 )  OR
				( fecha_fin_feriado >= @datevar  AND fecha_fin_feriado <= @datevar2 ) OR
				( fec_inicio_feriado <=@datevar AND fecha_fin_feriado >=@datevar2 ) ) 	
		union all
			SELECT	7
        FROM 	sipweb_solpermiso
        WHERE	COD_EMPRESA 			= @cod_empresa 
        AND		COD_PLANTA	 			= @cod_planta 
        AND		NRO_TRABAJADOR 			= @nro_trabajador 
			and    (( fecha_desde >= @datevar AND fecha_desde <= @datevar2 )  OR
				( fecha_fin >= @datevar  AND fecha_fin <= @datevar2 ) OR
				( fecha_desde <=@datevar AND fecha_fin >=@datevar2 ) ) 					
          
	end 
	else if @tipo = 1
	begin
		SELECT	0
        FROM 	sipweb_solpermiso
        WHERE	COD_EMPRESA 			= @cod_empresa 
        AND		COD_PLANTA	 			= @cod_planta 
        AND		NRO_TRABAJADOR 			= @nro_trabajador 
			and    (( fecha_desde >= @datevar AND fecha_desde <= @datevar2 )  OR
				( fecha_fin >= @datevar  AND fecha_fin <= @datevar2 ) OR
				( fecha_desde <=@datevar AND fecha_fin >=@datevar2 ) ) 	
		union	all
			SELECT	1
			FROM	movimient_feriados	a,
					ausencia			b
			where	a.cod_empresa		= b.cod_empresa
			and		a.cod_planta		= b.cod_planta
			and		b.cod_ausencia		= 'FERI'
			and		b.flg_val_tras_feri = 'S'
			and		a.cod_empresa		= @cod_empresa 
			AND		a.cod_planta		= @cod_planta
			and		a.nro_trabajador	= @nro_trabajador
			and		a.tipo_movimiento = 'CARGO'
			and    (( fec_inicio_feriado >= @datevar AND fec_inicio_feriado <= @datevar2 )  OR
				( fecha_fin_feriado >= @datevar  AND fecha_fin_feriado <= @datevar2 ) OR
				( fec_inicio_feriado <=@datevar AND fecha_fin_feriado >=@datevar2 ) ) 	
						
		union	all
			SELECT	2 
			FROM	licencia	a,
					ausencia	b
			where	a.cod_empresa		= b.cod_empresa
			and		a.cod_planta		= b.cod_planta
			and		b.cod_ausencia		= 'LICE'
			and		b.flg_val_tras_lice = 'S'
			and		a.cod_empresa		= @cod_empresa 
			AND		a.cod_planta		= @cod_planta
			and		a.nro_trabajador	= @nro_trabajador
			and		a.nro_licencia		!= 0 
			and    (( fec_desde_licencia >= @datevar AND fec_desde_licencia <= @datevar2 )  OR
				( fec_hasta_licencia >= @datevar  AND fec_hasta_licencia <= @datevar2 ) OR
				( fec_desde_licencia <=@datevar AND fec_hasta_licencia >=@datevar2 ) ) 	
						
		union	all
			SELECT	case a.cod_ausencia when 'FERI' then 1 
										when 'LICE' then 2 
										else 3 end
			FROM	movimiento_ausenci	a,
					ausencia			b
			where	a.cod_empresa		= b.cod_empresa
			and		a.cod_planta		= b.cod_planta
			and		a.cod_ausencia		= b.cod_ausencia
			and		( b.flg_val_tras_feri = 'S' or flg_val_tras_lice = 'S' )
			and		a.cod_empresa		= @cod_empresa 
			AND		a.cod_planta		= @cod_planta
			and		a.nro_trabajador	= @nro_trabajador
			and    (( fec_ini_ausencia >= @datevar AND fec_ini_ausencia <= @datevar2 )  OR
				( fec_fin_ausencia >= @datevar  AND fec_fin_ausencia <= @datevar2 ) OR
				( fec_ini_ausencia <=@datevar AND fec_fin_ausencia >=@datevar2 ) ) 
		union all
			SELECT	4
			FROM 	sipweb_sol_adminis
			WHERE	COD_EMPRESA 			= @cod_empresa 
			AND		COD_PLANTA	 			= @cod_planta 
			AND		NRO_TRABAJADOR 			= @nro_trabajador 
			and    (( fecha_desde >= @datevar AND fecha_fin <= @datevar2 )  OR
				( fecha_desde >= @datevar  AND fecha_fin <= @datevar2 ) OR
				( fecha_desde <=@datevar AND fecha_fin >=@datevar2 ) ) 		
		union	all
			SELECT	5
			FROM	movimient_fer_adm	a,
					ausencia			b
			where	a.cod_empresa		= b.cod_empresa
			and		a.cod_planta		= b.cod_planta
			and		b.cod_ausencia		= 'FERI'
			and		b.flg_val_tras_feri = 'S'
			and		a.cod_empresa		= @cod_empresa 
			AND		a.cod_planta		= @cod_planta
			and		a.nro_trabajador	= @nro_trabajador 
			and    (( fec_inicio_feriado >= @datevar AND fec_inicio_feriado <= @datevar2 )  OR
				( fecha_fin_feriado >= @datevar  AND fecha_fin_feriado <= @datevar2 ) OR
				( fec_inicio_feriado <=@datevar AND fecha_fin_feriado >=@datevar2 ) ) 		
		union	all
			SELECT	6
			FROM	movimient_fer_comp	a,
					ausencia			b
			where	a.cod_empresa		= b.cod_empresa
			and		a.cod_planta		= b.cod_planta
			and		b.cod_ausencia		= 'FERI'
			and		b.flg_val_tras_feri = 'S'
			and		a.cod_empresa		= @cod_empresa 
			AND		a.cod_planta		= @cod_planta
			and		a.nro_trabajador	= @nro_trabajador 
			and    (( fec_inicio_feriado >= @datevar AND fec_inicio_feriado <= @datevar2 )  OR
				( fecha_fin_feriado >= @datevar  AND fecha_fin_feriado <= @datevar2 ) OR
				( fec_inicio_feriado <=@datevar AND fecha_fin_feriado >=@datevar2 ) ) 	
		union	all	
			SELECT	7
			FROM 	sipweb_solvacaciones
			WHERE	COD_EMPRESA 			= @cod_empresa 
			AND		COD_PLANTA	 			= @cod_planta 
			AND		NRO_TRABAJADOR 			= @nro_trabajador 
			and    (( fecha_desde >= @datevar AND fecha_fin <= @datevar2 )  OR
				( fecha_desde >= @datevar  AND fecha_fin <= @datevar2 ) OR
				( fecha_desde <=@datevar AND fecha_fin >=@datevar2 ) ) 			
	end 
END

















GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solvacaciones]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[sp_doc_solvacaciones]
	@tipo				int,
	@id					numeric(14),
	@cod_empresa		int,
	@cod_planta			int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.correlativo as ID,
				convert(varchar(10),fecha_desde,103) as 'Fecha Inicio',
				convert(varchar(10),fecha_fin,103) as 'Fecha Término',
				a.cantidad as 'Nro. Dias',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso',
				convert(varchar(10),fecha_autorizacion ,103) as 'Fecha Autoriza',
				convert(varchar(10),fecha_rechazo ,103) as 'Fecha Rechazo'
		from	sipweb_solvacaciones a
		where	a.nro_trabajador	= @id
		and		a.cod_empresa		= @cod_empresa
		and		a.cod_planta		= @cod_planta
		order by a.fecha_desde desc
	end
	else if @tipo = 1
	begin
		select	cod_empresa,
				cod_planta,
				convert(varchar(10),fecha_desde,103) as fecha_desde,
				convert(varchar(10),fecha_fin,103) as fecha_fin,
				cantidad,
				observaciones,
				estado,
				convert(varchar(10),fecha_autorizacion ,103) as 'F. Autoriza',
				convert(varchar(10),fecha_rechazo ,103) as 'F. Rechazo',
				mediodia,
				dias_legales,
				dias_adicionales,
				dias_progres,
				noincl_adic,
				noincl_prog
		from	sipweb_solvacaciones		a
		where	correlativo				= @id
		and		a.cod_empresa		= @cod_empresa
		and		a.cod_planta		= @cod_planta
	end
	else if @tipo = 2
	begin
		select	a.correl_compra as ID,
				convert(varchar(10),fecha_compra,103) as 'Fecha Solicitud',
				a.dias_progresivos as 'Dias Progresivos',
				a.dias_adicionales as 'Dias Adicionales',
				a.dias_comprados as 'Dias Total',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso',
				convert(varchar(10),fecha_autorizacion ,103) as 'Fecha Autoriza',
				convert(varchar(10),fecha_rechazo ,103) as 'Fecha Rechazo'
		from	sipweb_com_adic_prog a
		where	a.nro_trabajador	= @id
		and		a.cod_empresa		= @cod_empresa
		and		a.cod_planta		= @cod_planta
		order by a.fecha_compra desc
	end
	else if @tipo = 3
	begin
		select	cod_empresa,
				cod_planta,
				dias_adicionales,
				dias_progresivos,
				dias_comprados as cantidad,
				observaciones,
				estado,
				convert(varchar(10),fecha_autorizacion ,103) as 'F. Autoriza',
				convert(varchar(10),fecha_rechazo ,103) as 'F. Rechazo'
		from	sipweb_com_adic_prog		a
		where	correl_compra				= @id
		and		a.cod_empresa		= @cod_empresa
		and		a.cod_planta		= @cod_planta
	end	
	else if @tipo = 4
	begin
		select	a.correlativo as ID,
				convert(varchar(10),fecha_desde,103) as 'Fecha Inicio',
				convert(varchar(10),fecha_fin,103) as 'Fecha Término',
				a.cantidad as 'Nro. Dias',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso',
				convert(varchar(10),fecha_autorizacion ,103) as 'Fecha Autoriza',
				convert(varchar(10),fecha_rechazo ,103) as 'Fecha Rechazo' 
		from	sipweb_sol_adminis a
		where	a.nro_trabajador	= @id
		and		a.cod_empresa		= @cod_empresa
		and		a.cod_planta		= @cod_planta
		order by a.fecha_desde desc
	end
	else if @tipo = 5
	begin
		select	cod_empresa,
				cod_planta,
				convert(varchar(10),fecha_desde,103) as fecha_desde,
				convert(varchar(10),fecha_fin,103) as fecha_fin,
				cantidad,
				observaciones,
				estado,
				convert(varchar(10),fecha_autorizacion ,103) as 'F. Autoriza',
				convert(varchar(10),fecha_rechazo ,103) as 'F. Rechazo',
				motivo,
				dias_derecho,
				dias_devengados,
				periodo
		from	sipweb_sol_adminis		a
		where	correlativo			= @id
		and		a.cod_empresa		= @cod_empresa
		and		a.cod_planta		= @cod_planta
	end
END






















GO

/****** Object:  StoredProcedure [dbo].[sp_solvacaciones_lista_arch]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_solvacaciones_lista_arch]
	@cod_empresa		int,
	@cod_planta			int,
	@correlativo		numeric(14),
	@tipo				int,
	@usuario			int,
	@nro_trabajador		int,
	@nombre_arch		varchar(150)
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	usuario,
				nombre_arch,
				descripcion,
				nro_trabajador,
				correlativo,
				cod_empresa,
				cod_planta
		from	sipweb_solvacacion_arch
		where	cod_empresa = @cod_empresa
		and		cod_planta = @cod_planta
		and		correlativo = @correlativo
		and		Usuario	= @usuario
		and		nro_trabajador	= @nro_trabajador
	end
	else if @tipo = 1
	begin
		select	tipo,
				archivo,
				descripcion,
				nro_trabajador
		from	sipweb_solvacacion_arch
		where	cod_empresa = @cod_empresa
		and		cod_planta = @cod_planta
		and		correlativo = @correlativo
		and		Usuario	= @usuario
		and		nro_trabajador	= @nro_trabajador
		and		nombre_arch = @nombre_arch
	end	
	else if @tipo = 2
	begin
		select	usuario,
				nombre_arch,
				descripcion,
				nro_trabajador,
				correlativo,
				cod_empresa,
				cod_planta
		from	sipweb_sol_adminis_arch
		where	cod_empresa = @cod_empresa
		and		cod_planta = @cod_planta
		and		correlativo = @correlativo
		and		Usuario	= @usuario
		and		nro_trabajador	= @nro_trabajador
	end
	else if @tipo = 3
	begin
		select	tipo,
				archivo,
				descripcion,
				nro_trabajador
		from	sipweb_sol_adminis_arch
		where	cod_empresa = @cod_empresa
		and		cod_planta = @cod_planta
		and		correlativo = @correlativo
		and		Usuario	= @usuario
		and		nro_trabajador	= @nro_trabajador
		and		nombre_arch = @nombre_arch
	end
END



















GO

/****** Object:  StoredProcedure [dbo].[sp_eval_encuesta_od_upd]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[sp_eval_encuesta_od_upd]
	@cod_encuesta		varchar(50),
	@cod_empresa		int,
	@cod_planta			int,
	@nro_evaluador		int,
	@rut_evaluador		int,
	@nro_evaluado		int,
	@rut_evaluado		int,
	@id_eval			int,
	@id_od				int,
	@id_sel				int,
	@texto				text,
	@tipo				int
AS
BEGIN TRANSACTION
	if ( @tipo = 0 )
	begin
	
			DELETE FROM sipweb_eval_trab_od 
			where	cod_encuesta	= @cod_encuesta
			and		cod_empresa		= @cod_empresa
			and		cod_planta		= @cod_planta
			and		nro_evaluador	= @nro_evaluador
			and		nro_evaluado	= @nro_evaluado
			and		id_od			= @id_od 
			
			
			INSERT INTO sipweb_eval_trab_od
					   (cod_encuesta,
						cod_empresa,
						cod_planta,
					   nro_evaluador,
					   rut_evaluador,
					   nro_evaluado,
					   rut_evaluado,
					   id_eval,
					   id_od,
					   id_sel,
					   texto)
				values 
					(	@cod_encuesta,
						@cod_empresa,
						@cod_planta,
						@nro_evaluador,
					    @rut_evaluador,
					    @nro_evaluado,
					    @rut_evaluado,
					    @id_eval,
					    @id_od,
					    @id_sel,
					    @texto )

	end
	

COMMIT TRANSACTION






GO

/****** Object:  StoredProcedure [dbo].[sp_eval_encuesta_items_upd]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO















CREATE PROCEDURE [dbo].[sp_eval_encuesta_items_upd]
	@cod_encuesta		varchar(50),
	@cod_empresa		int,
	@cod_planta			int,
	@nro_evaluador		int,
	@rut_evaluador		int,
	@nro_evaluado		int,
	@rut_evaluado		int,
	@id_eval			int,
	@id_item			int,
	@id_sub_item		int,
	@nota_recibi		decimal(14,4),
	@tipo				int
AS
BEGIN TRANSACTION
	if ( @tipo = 0 )
	begin
	

			DELETE FROM sipweb_eval_trab_item 
			where	cod_encuesta	= @cod_encuesta
			and		cod_empresa		= @cod_empresa
			and		cod_planta		= @cod_planta
			and		nro_evaluador	= @nro_evaluador
			and		nro_evaluado	= @nro_evaluado 
			and		id_item			= @id_item 
			and		id_sub_item		= @id_sub_item 
	
	
			INSERT INTO sipweb_eval_trab_item
					   (cod_encuesta,
						cod_empresa,
						cod_planta,
					   nro_evaluador,
					   rut_evaluador,
					   nro_evaluado,
					   rut_evaluado,
					   id_eval,
					   id_item,
					   id_sub_item,
					   nota_recibi)
				values 
					(	@cod_encuesta,
						@cod_empresa,
						@cod_planta,
						@nro_evaluador,
					    @rut_evaluador,
					    @nro_evaluado,
					    @rut_evaluado,
					    @id_eval,
					    @id_item,
					    @id_sub_item,
					    @nota_recibi )

	end
	

COMMIT TRANSACTION


















GO

/****** Object:  StoredProcedure [dbo].[sp_eval_cons_encuesta]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO
















CREATE PROCEDURE [dbo].[sp_eval_cons_encuesta]
	@tipo				int,
	@cod_encuesta		varchar(50),
	@id_item			int,
	@cod_empresa		int,
	@cod_planta			int,
	@rut_trabajador		int,
	@nro_trabajador		int 
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.id_sub_item,
				a.descripcion,
				b.nota_recibi
		from	sipweb_hst_eval_subitem	a,
				sipweb_eval_trab_item	b,
				sipweb_eval_trab		c
		where	a.cod_encuesta		= @cod_encuesta
		and		a.id_item			= @id_item
		and		a.cod_encuesta		= b.cod_encuesta
		and		a.id_item			= b.id_item
		and		a.id_sub_item		= b.id_sub_item
		and		b.cod_encuesta		= c.cod_encuesta
		and		b.cod_empresa		= c.cod_empresa
		and		b.cod_planta		= c.cod_planta
		and		b.nro_evaluador		= c.nro_evaluador
		and		b.nro_evaluado		= c.nro_evaluado
		and		c.cod_empresa		= @cod_empresa
		and		c.cod_planta		= @cod_planta
		and		c.nro_evaluado		= @nro_trabajador
		and		c.tipo_eval			= 'Trab'
		order by a.id_sub_item asc
	end
	else if @tipo = 1
	begin
		select	a.id_sub_item,
				a.descripcion,
				b.nota_recibi
		from	sipweb_hst_eval_subitem	a,
				sipweb_eval_trab_item	b,
				sipweb_eval_trab		c
		where	a.cod_encuesta		= @cod_encuesta
		and		a.id_item			= @id_item
		and		a.id_sub_item		= @rut_trabajador
		and		a.cod_encuesta		= b.cod_encuesta
		and		a.id_item			= b.id_item
		and		a.id_sub_item		= b.id_sub_item
		and		b.cod_encuesta		= c.cod_encuesta
		and		b.cod_empresa		= c.cod_empresa
		and		b.cod_planta		= c.cod_planta
		and		b.nro_evaluador		= c.nro_evaluador
		and		b.nro_evaluado		= c.nro_evaluado
		and		c.cod_empresa		= @cod_empresa
		and		c.cod_planta		= @cod_planta
		and		c.nro_evaluado		= @nro_trabajador
		and		c.tipo_eval			= 'Trab' 
	end
	else if @tipo = 2
	begin
		select	a.id_od,
				isnull(a.id_sel,'0'),
				a.texto
		from	sipweb_eval_trab_od		a,
				sipweb_eval_trab		c
		where	a.cod_encuesta		= @cod_encuesta
		and		a.id_od				= @id_item 
		and		a.cod_encuesta		= c.cod_encuesta
		and		a.cod_empresa		= c.cod_empresa
		and		a.cod_planta		= c.cod_planta
		and		a.nro_evaluador		= c.nro_evaluador
		and		a.nro_evaluado		= c.nro_evaluado
		and		c.cod_empresa		= @cod_empresa
		and		c.cod_planta		= @cod_planta
		and		c.nro_evaluado		= @nro_trabajador
		and		c.tipo_eval			= 'Trab'
		order by a.id_od asc
	end


end

















GO

/****** Object:  StoredProcedure [dbo].[sp_eval_encuesta_upd]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO















CREATE PROCEDURE [dbo].[sp_eval_encuesta_upd]
	@ano_proceso		int,
	@id_eval			int,
	@desc_eval			varchar(110),
	@cod_eval			varchar(10),
	@version_eval		varchar(10),
	@area_eval			varchar(20),
	@tipo_eval			varchar(20),
	@cod_empresa		int,
	@cod_planta			int,
	@rut_evaluador		int,
	@nro_evaluador		int,
	@nom_evaluador		varchar(100),
	@rut_evaluado		int,
	@nro_evaluado		int,
	@nom_evaluado		varchar(100),
	@puntaje_maximo		decimal(14,4),
	@puntaje_obtenido	decimal(14,4),
	@tipo				int,
	@fortalezas			text,
	@sugerencias		text,
	@comentario_trab	text,
	@sEstado			varchar(20)
AS
declare
	@cod_encuesta			varchar(50),
	@cargo_evaluador		int,
	@ccosto_evaluador		int,
	@sucursal_evaluador		int,
	@area_evaluador			int,
	@unidad_evaluador		int,
	@cargo_evaluado			int,
	@ccosto_evaluado		int,
	@sucursal_evaluado		int,
	@area_evaluado			int,
	@unidad_evaluado		int,
	@fecha_ctto_evaluado	datetime
BEGIN TRANSACTION
	select @cod_encuesta = convert(varchar(4),@ano_proceso)++'_'++convert(varchar(4),@id_eval)++'_'++@cod_eval++'_'++@version_eval
	if ( @tipo = 0 )
	begin
			DECLARE Cursor01 CURSOR FOR 
				select	cod_cargo, cod_centro_costo, cod_sucursal, cod_unidad_adminis, cod_area_perten
				from	personal
				where	cod_empresa		= @cod_empresa
				and		cod_planta		= @cod_planta
				and		nro_trabajador	= @nro_evaluador
				and		rut_trabajador	= @rut_evaluador
				and		cod_vigen_trabajad = 'S'


			OPEN Cursor01

			FETCH NEXT FROM Cursor01 
			INTO @cargo_evaluador, @ccosto_evaluador, @sucursal_evaluador, @unidad_evaluador, @area_evaluador

			CLOSE Cursor01
			DEALLOCATE Cursor01

			DECLARE Cursor02 CURSOR FOR 
				select	cod_cargo, cod_centro_costo, cod_sucursal, cod_unidad_adminis, cod_area_perten, fec_ini_contrato
				from	personal
				where	cod_empresa		= @cod_empresa
				and		cod_planta		= @cod_planta
				and		nro_trabajador	= @nro_evaluado
				and		rut_trabajador	= @rut_evaluado
				and		cod_vigen_trabajad = 'S'


			OPEN Cursor02

			FETCH NEXT FROM Cursor02 
			INTO @cargo_evaluado, @ccosto_evaluado, @sucursal_evaluado, @unidad_evaluado, @area_evaluado, @fecha_ctto_evaluado

			CLOSE Cursor02
			DEALLOCATE Cursor02
			
			
			DELETE FROM sipweb_eval_trab 
			where	cod_encuesta	= @cod_encuesta
			and		cod_empresa		= @cod_empresa
			and		cod_planta		= @cod_planta
			and		nro_evaluador	= @nro_evaluador
			and		nro_evaluado	= @nro_evaluado
			and		tipo_eval		= @tipo_eval
			
			INSERT INTO sipweb_eval_trab
					   (cod_encuesta,
						ano_proceso,
						id_eval,
						desc_eval,
						cod_eval,
						version_eval,
						area_eval,
						tipo_eval,
						fecha_evaluacion,
						cod_empresa,
						cod_planta,
						nro_evaluador,
						rut_evaluador,
						nom_evaluador,
						cargo_evaluador,
						ccosto_evaluador,
						sucursal_evaluador,
						area_evaluador,
						unidad_evaluador,
						nro_evaluado,
						rut_evaluado,
						nom_evaluado,
						cargo_evaluado,
						ccosto_evaluado,
						sucursal_evaluado,
						area_evaluado,
						unidad_evaluado,
						fecha_ctto_evaluado,
						puntaje_maximo,
						puntaje_obtenido,
						fortalezas,
						sugerencias,
						estado_evaluador )
				values 
					(	@cod_encuesta,
						@ano_proceso,
						@id_eval,
						@desc_eval,
						@cod_eval,
						@version_eval,
						@area_eval,
						@tipo_eval,
						getdate(),
						@cod_empresa,
						@cod_planta,
						@nro_evaluador,
						@rut_evaluador,
						@nom_evaluador,
						@cargo_evaluador,
						@ccosto_evaluador,
						@sucursal_evaluador,
						@area_evaluador,
						@unidad_evaluador,
						@nro_evaluado,
						@rut_evaluado,
						@nom_evaluado,
						@cargo_evaluado,
						@ccosto_evaluado,
						@sucursal_evaluado,
						@area_evaluado,
						@unidad_evaluado,
						@fecha_ctto_evaluado,
						@puntaje_maximo,
						@puntaje_obtenido,
						@fortalezas,
						@sugerencias,
						@sEstado )

	end
	else if ( @tipo = 1 )
	begin
			update sipweb_eval_trab
			set		comentario_trab = @comentario_trab,
					estado_evaluado = @sEstado
			where	cod_encuesta	= @cod_encuesta
			and		cod_empresa		= @cod_empresa
			and		cod_planta		= @cod_planta
			and		nro_evaluador	= @nro_evaluador
			and		nro_evaluado	= @nro_evaluado
			and		tipo_eval		= @tipo_eval

	end
	

COMMIT TRANSACTION


















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evalodsel_upd]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO






create PROCEDURE [dbo].[sp_conf_evalodsel_upd]
	@id_eval				int,
	@id_od					int, 
	@id_sel					int, 
	@desc_sel				varchar(200), 
	@tipo					int
AS
BEGIN TRANSACTION
	if ( @tipo = 0 )
	begin
		insert into sipweb_conf_eval_odsel
			( id_eval,
				id_od, 
				id_sel, 
				desc_sel	)
		values 
			( @id_eval,	@id_od, @id_sel, @desc_sel )
	end
	else if ( @tipo = 1 )
	begin
		update	sipweb_conf_eval_odsel
		set		desc_sel		= @desc_sel 
		where	id_eval			= @id_eval
		and		id_od			= @id_od
		and		id_sel			= @id_sel
	end
	else if ( @tipo = 2 )
	begin
		delete from	sipweb_conf_eval_odsel
		where	id_eval			= @id_eval
		and		id_od			= @id_od
		and		id_sel			= @id_sel
	end

COMMIT TRANSACTION





















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evalodsel]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO




create PROCEDURE [dbo].[sp_conf_evalodsel]
	@tipo				int,
	@id_eval			int,
	@id_od				int,
	@id_sel				int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	id_eval,
				id_od, 
				id_sel,
				desc_sel
		from	sipweb_conf_eval_odsel
		where	id_eval	= @id_eval
		and		id_od	= @id_od
		order by id_eval, id_od, id_sel asc
	end
	else if @tipo = 1
	begin
		select	desc_sel
		from	sipweb_conf_eval_odsel
		where	id_eval		= @id_eval
		and		id_od		= @id_od
		and		id_sel		= @id_sel
	end
	else if @tipo = 99
	begin
		select	case  when max(id_sel) is null then 1 else max(id_sel)+1 end
		from	sipweb_conf_eval_odsel
		where	id_eval	= @id_eval
		and		id_od	= @id_od
	end

END




















GO

/****** Object:  StoredProcedure [dbo].[sp_eval_encuesta]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[sp_eval_encuesta]
	@tipo				int,
	@cod_encuesta		varchar(50),
	@id_item			int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	id_eval,
				id_crit,
				cod_nivel_crit,
				nivel_crit,
				desc_crit,
				nota_crit_i,
				nota_crit_s
		from	sipweb_hst_eval_crit
		where	cod_encuesta	= @cod_encuesta
		order by id_eval, id_crit asc
	end
	else if @tipo = 1
	begin
		select	id_item,
				desc_item,
				porc_calc,
				no_aplica_trab
		from	sipweb_hst_eval_item
		where	cod_encuesta	= @cod_encuesta
		order by id_item asc
	end
	else if @tipo = 2
	begin
		select	id_sub_item,
				descripcion
		from	sipweb_hst_eval_subitem
		where	cod_encuesta	= @cod_encuesta
		and		id_item			= @id_item
		order by id_sub_item asc
	end
	else if @tipo = 3
	begin
			select	desc_eval,
					area_eval
			from	sipweb_eval_publ
			where	cod_encuesta		= @cod_encuesta
	end
	else if @tipo = 4
	begin
			select	a.porc_calc,
					count(*),					
					a.id_item
			from	sipweb_hst_eval_item	a,
					sipweb_hst_eval_subitem	b
			where	a.cod_encuesta	= b.cod_encuesta
			and		a.id_item		= b.id_item
			and		a.cod_encuesta	= @cod_encuesta
			group by a.id_item,
					a.porc_calc	
	end
	else if @tipo = 5
	begin
		select	max(nota_crit_s)
		from	sipweb_hst_eval_crit
		where	cod_encuesta	= @cod_encuesta
	end
	else if @tipo = 6
	begin
		select	a.id_item,
				b.id_sub_item
		from	sipweb_hst_eval_item	a,
				sipweb_hst_eval_subitem	b
		where	a.cod_encuesta	= @cod_encuesta
		and		a.cod_encuesta	= b.cod_encuesta
		and		a.id_item		= b.id_item
		order by a.id_item, b.id_sub_item asc
	end
	else if @tipo = 7
	begin
		select	tipoevaluacion
		from	sipweb_hst_eval
		where	cod_encuesta	= @cod_encuesta
	end 
	else if @tipo = 8
	begin
		select	id_od,
				desc_od,
				tipo,
				req_just
		from	sipweb_hst_eval_od
		where	cod_encuesta	= @cod_encuesta 
		order by id_od asc
	end
	else if @tipo = 10
	begin
		select	id_eval,
				id_od,
				id_sel,
				desc_sel
		from	sipweb_hst_eval_odsel
		where	cod_encuesta	= @cod_encuesta
		and		id_od			= @id_item
		order by id_eval, id_sel asc
	end 
	else if @tipo = 11
	begin
		select	a.id_eval,
				a.id_od, 
				a.tipo
		from	sipweb_hst_eval_od  a
		where	a.cod_encuesta	= @cod_encuesta 
		order by a.id_eval, a.id_od asc
	end 
end
















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_certdinamicos]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[sp_conf_certdinamicos]
	@tipo				int,
	@empresa			int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	cod_empresa,
				logocertificado,
				firmadigital,
				textopiecertificado,
				case MontoCertificado when 'TH' then 'Total Haberes' when 'TI' then 'Total Imponible' else 'Haberes Especificos' end MontoCertificado,
				posicionfecha,
				posicion_firma,
				haberes_br,
				promediar_renta
		from	sipweb_certificadosdinamicos
		where	cod_empresa		in ( select cod_empresa from usuario_sipweb where usuario = @empresa )
		order by cod_empresa desc
	end
	else if @tipo = 1
	begin
		select	cod_empresa,
				logocertificado,
				firmadigital,
				textopiecertificado,
				MontoCertificado,
				posicionfecha,
				posicion_firma,
				haberes_br,
				promediar_renta
		from	sipweb_certificadosdinamicos
		where	cod_empresa				= @empresa
	end

END




















GO

/****** Object:  StoredProcedure [dbo].[sp_certdinamicos_upd]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO

















CREATE PROCEDURE [dbo].[sp_certdinamicos_upd]
	@cod_empresa			int,
	@logocertificado		varchar(200),
	@firmadigital			varchar(200),
	@textopiecertificado	varchar(30),
	@MontoCertificado		varchar(5),
	@sPosFecha				varchar(20),
	@sPosFirma				varchar(20),
	@shaberes_br			varchar(200),
	@scmbPromediarRenta		varchar(2),
	@tipo					int
AS
BEGIN TRANSACTION

	if ( @tipo = 0 )
	begin
		insert into sipweb_certificadosdinamicos
			( cod_empresa, logocertificado, firmadigital, textopiecertificado, MontoCertificado, posicionfecha, posicion_firma, haberes_br, promediar_renta	)
		values 
			( @cod_empresa, @logocertificado, @firmadigital,	@textopiecertificado, @MontoCertificado, @sPosFecha, @sPosFirma, @shaberes_br, @scmbPromediarRenta)
	end
	else if ( @tipo = 1 )
	begin
		update	sipweb_certificadosdinamicos
		set		logocertificado		= @logocertificado,
				firmadigital		= @firmadigital,
				textopiecertificado	= @textopiecertificado,
				MontoCertificado	= @MontoCertificado,
				posicionfecha		= @sPosFecha,
				posicion_firma		= @sPosFirma,
				haberes_br			= @shaberes_br,
				promediar_renta		= @scmbPromediarRenta
		where	cod_empresa			= @cod_empresa
	end

COMMIT TRANSACTION



















GO

/****** Object:  StoredProcedure [dbo].[sp_datoscert]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[sp_datoscert]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int,
	@nano				int,
	@nmes				int,
	@tipo				int	
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @sql nvarchar(4000)
	DECLARE @haberes varchar(200)
	DECLARE @promediar_renta varchar(2)
	DECLARE @periodo int, @periodo_act int 
	
	select @promediar_renta = promediar_renta 
			   from sipweb_certificadosdinamicos
			   where cod_empresa = @cod_empresa
			   
	if @promediar_renta = 'Si'
	begin
		set @periodo_act = ( @nano * 100 ) + (@nmes)
		if @nmes < 3
			set @periodo = ( (@nano-1) * 100 ) + (@nmes+10)
		else
			set @periodo = ( @nano * 100 ) + (@nmes-3)
	end

	if @tipo = 0
	begin
		select	a.nombre++' '++a.ape_paterno_trabaj++' '++a.ape_materno_trabaj,
				convert(varchar(10),a.rut_trabajador)+'-'+a.dv_rut_trabajador, 
				a.codigo_tipo_contra,
				day(a.fec_ini_contrato),
				month(a.fec_ini_contrato),
				year(a.fec_ini_contrato),
				c.cargo_trabajador,
				day(getdate()),
				month(getdate()),
				year(getdate()),
				e.empresa,
				convert(varchar(10),e.rut_empresa)+'-'+e.dv_rut_empresa,
				sueldo_mensual,
				j.jornada,
				day(a.fec_antiguedad),
				month(a.fec_antiguedad),
				year(a.fec_antiguedad)
		from	personal a  left outer join cargo_trabajador c 
						on a.cod_empresa = c.cod_empresa and a.cod_cargo = c.cod_cargo
						left outer join empresa e
						on a.cod_empresa = e.cod_empresa
						left outer join jornada_trabajo j
						on a.cod_empresa = j.cod_empresa
						and a.cod_empresa = j.cod_planta
						and a.cod_jornada = j.cod_jornada
		where	a.nro_trabajador = @nro_trabajador
		and		a.cod_empresa = @cod_empresa
		and		a.cod_planta = @cod_planta
	end
	else if @tipo = 1
	begin
			   if @promediar_renta = 'Si'
			   begin					
					select	sum(val_liquido_pago + valor_anticipo) / COUNT(*)
					from	historico_liquidac 
					where	cod_empresa		= @cod_empresa
					and		cod_planta		= @cod_planta
					and		(ano_periodo*100)+mes_periodo		>= @periodo 
					and		(ano_periodo*100)+mes_periodo		<= @periodo_act
					and		nro_trabajador	= @nro_trabajador
					and		cod_tipo_proceso ='LQ'
					 
			   end
			   else
			   begin		
					select	val_liquido_pago + valor_anticipo
					from	historico_liquidac 
					where	cod_empresa		= @cod_empresa
					and		cod_planta		= @cod_planta
					and		ano_periodo		= @nano
					and		mes_periodo		= @nmes
					and		nro_trabajador	= @nro_trabajador
					and		cod_tipo_proceso ='LQ' 
				end
	end
	else if @tipo = 2
	begin
				select	a.no_tributable_impo
				from	haber	a
				where	a.cod_empresa		= @cod_empresa
				and		a.cod_planta		= @cod_planta
				and		a.cod_haber = 30
	end
	else if @tipo = 3
	begin
			if @promediar_renta = 'Si'
			   begin
				select	(sum(valor_total_habere)-sum(hab_no_imp_no_trib ))  / COUNT(*)
				From	historico_liquidac a
				where	a.cod_empresa		= @cod_empresa
				and		a.cod_planta		= @cod_planta
				and		(ano_periodo*100)+mes_periodo		>= @periodo 
				and		(ano_periodo*100)+mes_periodo		<= @periodo_act
				and		a.nro_trabajador	= @nro_trabajador
				and		a.cod_tipo_proceso	='LQ' 
			   end
			else
			   begin	
			   
				select	sum(valor_total_habere)-sum(hab_no_imp_no_trib )
				From	historico_liquidac a
				where	a.cod_empresa		= @cod_empresa
				and		a.cod_planta		= @cod_planta
				and		a.ano_periodo		= @nano
				and		a.mes_periodo		= @nmes
				and		a.nro_trabajador	= @nro_trabajador
				and		a.cod_tipo_proceso	='LQ' 
			   
			   end
	end
	else if @tipo = 4
	begin
				
				if @promediar_renta = 'Si'
			   begin
				select	(sum(valor_total_habere-asignacion_familia-asig_famil_retroac) -sum(hab_no_imp_no_trib ))  / COUNT(*)
				From	historico_liquidac a
				where	a.cod_empresa		= @cod_empresa
				and		a.cod_planta		= @cod_planta
				and		(ano_periodo*100)+mes_periodo		>= @periodo 
				and		(ano_periodo*100)+mes_periodo		<= @periodo_act
				and		a.nro_trabajador	= @nro_trabajador
				and		a.cod_tipo_proceso	='LQ' 
			   end
			else
			   begin	
			   
				select	sum(valor_total_habere-asignacion_familia-asig_famil_retroac) -sum(hab_no_imp_no_trib )
				From	historico_liquidac a
				where	a.cod_empresa		= @cod_empresa
				and		a.cod_planta		= @cod_planta
				and		a.ano_periodo		= @nano
				and		a.mes_periodo		= @nmes
				and		a.nro_trabajador	= @nro_trabajador
				and		a.cod_tipo_proceso	='LQ' 
			   
			   end
	end
	else if @tipo = 5
	begin
				
				if @promediar_renta = 'Si'
			   begin
				select	sum(valor_total_habere)  / COUNT(*)
				From	historico_liquidac a
				where	a.cod_empresa		= @cod_empresa
				and		a.cod_planta		= @cod_planta
				and		(ano_periodo*100)+mes_periodo		>= @periodo 
				and		(ano_periodo*100)+mes_periodo		<= @periodo_act
				and		a.nro_trabajador	= @nro_trabajador
				and		a.cod_tipo_proceso	='LQ' 
			   end
			else
			   begin	
			   
				select	sum(valor_total_habere)
				From	historico_liquidac a
				where	a.cod_empresa		= @cod_empresa
				and		a.cod_planta		= @cod_planta
				and		a.ano_periodo		= @nano
				and		a.mes_periodo		= @nmes
				and		a.nro_trabajador	= @nro_trabajador
				and		a.cod_tipo_proceso	='LQ' 
			   
			   end
	end
	else if @tipo = 6
	begin
			   select @haberes = haberes_br 
			   from sipweb_certificadosdinamicos
			   where cod_empresa = @cod_empresa
			   
			   if ( @haberes = '')
			   begin
					set @haberes = '0'
			   end
	
			   
			   	if @promediar_renta = 'Si'
			   begin
							 SET @sql = 'select	sum(valor_transac_peso) / COUNT(*)
					   From	liquidacio_haberes a
					   where	a.cod_empresa		= ' + convert(varchar(10),@cod_empresa ) + '
					   and		a.cod_planta		= ' + convert(varchar(10),@cod_planta ) + '
					   and		(ano_periodo*100)+mes_periodo		>= ' + convert(varchar(10),@periodo ) + '
					   and		(ano_periodo*100)+mes_periodo		<= ' + convert(varchar(10),@periodo_act ) + '
					   and		a.nro_trabajador	= ' + convert(varchar(10),@nro_trabajador ) + '
					   and		a.cod_tipo_proceso	=''LQ'' 
					   and		a.cod_haber in ( '++@haberes++')'
			   end
			else
			   begin	
			   
				 SET @sql = 'select	sum(valor_transac_peso)
				   From	liquidacio_haberes a
				   where	a.cod_empresa		= ' + convert(varchar(10),@cod_empresa ) + '
				   and		a.cod_planta		= ' + convert(varchar(10),@cod_planta ) + '
				   and		a.ano_periodo		= ' + convert(varchar(10),@nano ) + '
				   and		a.mes_periodo		= ' + convert(varchar(10),@nmes ) + '
				   and		a.nro_trabajador	= ' + convert(varchar(10),@nro_trabajador ) + '
				   and		a.cod_tipo_proceso	=''LQ'' 
				   and		a.cod_haber in ( '++@haberes++')'
			   
			   end
			   EXEC (@sql)
	end
END






















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evalod_upd]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO





create PROCEDURE [dbo].[sp_conf_evalod_upd]
	@id_eval				int,
	@id_od					int, 
	@desc_od				varchar(200),
	@tipo_od				varchar(20), 
	@req_just				varchar(1),
	@tipo					int
AS
BEGIN TRANSACTION
	if ( @tipo = 0 )
	begin
		insert into sipweb_conf_eval_od
			( id_eval,
				id_od, 
				desc_od,
				tipo,  req_just	)
		values 
			( @id_eval,	@id_od, @desc_od, @tipo_od,	  @req_just )
	end
	else if ( @tipo = 1 )
	begin
		update	sipweb_conf_eval_od
		set		desc_od		= @desc_od,
				tipo		= @tipo_od,
				req_just		= @req_just
		where	id_eval			= @id_eval
		and		id_od			= @id_od
	end
	else if ( @tipo = 2 )
	begin
		delete from	sipweb_conf_eval_od
		where	id_eval			= @id_eval
		and		id_od			= @id_od
	end

COMMIT TRANSACTION




















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evalod]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO





create PROCEDURE [dbo].[sp_conf_evalod]
	@tipo				int,
	@id_eval			int,
	@id_od				int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	id_eval,
				id_od, 
				desc_od,
				tipo, 
				case when req_just = 0 then 'N' else 'S' end as req_just
		from	sipweb_conf_eval_od
		where	id_eval	= @id_eval
		order by id_eval, id_od asc
	end
	else if @tipo = 1
	begin
		select	desc_od, 
				tipo, 
				case when req_just = 0 then 'N' else 'S' end as req_just
		from	sipweb_conf_eval_od
		where	id_eval		= @id_eval
		and		id_od		= @id_od
	end
	else if @tipo = 99
	begin
		select	case  when max(id_od) is null then 1 else max(id_od)+1 end
		from	sipweb_conf_eval_od
		where	id_eval	= @id_eval
	end

END



















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evaluaciones_upd]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO

















CREATE PROCEDURE [dbo].[sp_conf_evaluaciones_upd]
	@id_eval				int,
	@evaluacion				varchar(30),
	@desc_eval				varchar(100),
	@flg_abierto			varchar(10),
	@decimales				int,
	@tipoevaluacion			varchar(30),
	@tipo					int
AS
BEGIN TRANSACTION
	if ( @tipo = 0 )
	begin
		insert into sipweb_conf_eval
			( id_eval, evaluacion, desc_eval, flg_abierto, decimales, tipoevaluacion	)
		values 
			( @id_eval, @evaluacion, @desc_eval, @flg_abierto, @decimales, @tipoevaluacion)
	end
	else if ( @tipo = 1 )
	begin
		update	sipweb_conf_eval
		set		evaluacion		= @evaluacion,
				desc_eval		= @desc_eval,
				flg_abierto		= @flg_abierto,
				decimales		= @decimales,
				tipoevaluacion	= @tipoevaluacion
		where	id_eval			= @id_eval
	end
	else if ( @tipo = 2 )
	begin
		delete from	sipweb_conf_eval
		where	id_eval			= @id_eval
	end

COMMIT TRANSACTION



















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evaluaciones]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO

















CREATE PROCEDURE [dbo].[sp_conf_evaluaciones]
	@tipo				int,
	@id_eval			int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	id_eval,
				desc_eval,
				flg_abierto,
				decimales,
				tipoevaluacion,
				evaluacion
		from	sipweb_conf_eval
		order by id_eval asc
	end
	else if @tipo = 1
	begin
		select	desc_eval,
				flg_abierto,
				decimales,
				tipoevaluacion,
				evaluacion
		from	sipweb_conf_eval
		where	id_eval				= @id_eval
	end
	else if @tipo = 2
	begin
		select	id_eval,
				convert(varchar(10),id_eval)++':'++desc_eval as desc_eval,
				evaluacion
		from	sipweb_conf_eval
		where	flg_abierto = 'Abierta'
		order by id_eval asc
	end
	else if @tipo = 3
	begin
		select	id_eval,
				convert(varchar(10),id_eval)++':'++desc_eval as desc_eval,
				evaluacion
		from	sipweb_conf_eval
		order by id_eval asc
	end
	else if @tipo = 99
	begin
		select	case  when max(id_eval) is null then 1 else max(id_eval)+1 end
		from	sipweb_conf_eval
	end

END




















GO

/****** Object:  StoredProcedure [dbo].[sp_login]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO

















CREATE PROCEDURE [dbo].[sp_login]
	@nro_trabajador		int,
	@contrasena			varchar(15),
	@tipo				int
AS
BEGIN
	SET NOCOUNT ON;

	if ( @tipo = 0 )
	begin
		select	cod_vigente, nombre_usuario, perfil_trab, perfil_jefeportal, 
				perfil_admin, perfil_ejec, b.cod_empresa, b.cod_planta, a.nro_trabajador,
				case when intentosfallidos is null then 0 else intentosfallidos end,
				cambia_contrasena
		from	usuario_sipweb	a,
				personal		b
		where	a.cod_empresa			= b.cod_empresa
		and		a.cod_planta			= b.cod_planta
		and		a.nro_trabajador		= b.nro_trabajador
		and		a.usuario				= convert(varchar(15),@nro_trabajador)
		and		a.contrasena			= @contrasena COLLATE  SQL_Latin1_General_CP1_CS_AS
		and		a.cod_vigente			= 'S'
		and		b.cod_vigen_trabajad	= 'S'
	end
	else if ( @tipo = 1 )
	begin
		select	convert(int,getdate()-(fecha_contrasena))
		from	hist_contrasena
		where	usuario		= convert(varchar(15),@nro_trabajador)
		order by id_contrasena desc 
	end	
	else if ( @tipo = 2 )
	begin
		select	case when intentosfallidos is null then 0 else intentosfallidos end
		from	usuario_sipweb
		where	usuario		= convert(varchar(15),@nro_trabajador)
	end	
	else if ( @tipo = 3 )
	begin
		select	cod_vigente, nombre_usuario, perfil_trab, perfil_jefeportal, 
				perfil_admin, perfil_ejec, a.cod_empresa, a.cod_planta, a.nro_trabajador,
				case when intentosfallidos is null then 0 else intentosfallidos end,
				cambia_contrasena
		from	usuario_sipweb	a
		where	a.usuario				= convert(varchar(15),@nro_trabajador)
		and		a.contrasena			= @contrasena COLLATE  SQL_Latin1_General_CP1_CS_AS
		and		a.cod_vigente			= 'S'
	end
END


go




CREATE PROCEDURE [dbo].[sp_liquidacion_pro_update]
	@cod_tipo_proceso	char(4),
	@tipo			    int
AS
DECLARE @cod_tipo_proceso_local varchar(4),
		 @cod_tipo_proceso_local2 varchar(4),
		 @cod_tipo_proceso_local3 varchar(80),
		 @cod_tipo_proceso_local4 varchar(80),
		 @cod_tipo_proceso_local5 varchar(80),
		 @cod_tipo_proceso_local6 varchar(80),
		 @cod_tipo_proceso_local7 varchar(80),
		 @cod_tipo_proceso_local8 varchar(80),
		 @cod_tipo_proceso_local9 varchar(80),
		 @cod_tipo_proceso_local10 varchar(80),
		 @cod_tipo_proceso_local11 varchar(80),
		 @cod_tipo_proceso_local12 varchar(80),
		 @cod_tipo_proceso_local13 varchar(80),
		 @cod_tipo_proceso_local14 varchar(80),
		 @cod_tipo_proceso_local15 varchar(80),
		 @cod_tipo_proceso_local16 varchar(80),
		 @cod_tipo_proceso_local17 varchar(80),
		 @cod_tipo_proceso2_local3 varchar(80),
		 @cod_tipo_proceso2_local4 varchar(80),
		 @cod_tipo_proceso2_local5 varchar(80),
		 @cod_tipo_proceso2_local6 varchar(80),
		 @cod_tipo_proceso2_local7 varchar(80),
		 @cod_tipo_proceso2_local8 varchar(80),
		 @cod_tipo_proceso2_local9 varchar(80),
		 @cod_tipo_proceso2_local10 varchar(80),
		 @cod_tipo_proceso2_local11 varchar(80),
		 @cod_tipo_proceso2_local12 varchar(80),
		 @cod_tipo_proceso2_local13 varchar(80),
		 @cod_tipo_proceso2_local14 varchar(80),
		 @cod_tipo_proceso2_local15 varchar(80),
		 @cod_tipo_proceso2_local16 varchar(80),
		 @cod_tipo_proceso2_local17 varchar(80),
		 @cod_tipo_proceso3_local3 varchar(80),
		 @cod_tipo_proceso3_local4 varchar(80),
		 @cod_tipo_proceso3_local5 varchar(80),
		 @cod_tipo_proceso3_local6 varchar(80),
		 @cod_tipo_proceso3_local7 varchar(80),
		 @cod_tipo_proceso3_local8 varchar(80),
		 @cod_tipo_proceso3_local9 varchar(80),
		 @cod_tipo_proceso3_local10 varchar(80),
		 @cod_tipo_proceso3_local11 varchar(80),
		 @cod_tipo_proceso3_local12 varchar(80),
		 @cod_tipo_proceso3_local13 varchar(80),
		 @cod_tipo_proceso3_local14 varchar(80),
		 @cod_tipo_proceso3_local15 varchar(80),
		 @cod_tipo_proceso3_local16 varchar(80),
		 @cod_tipo_proceso3_local17 varchar(80),
		 @correl int		 

BEGIN TRANSACTION
	if ( @tipo = 0 )
	begin
		delete from sipweb_pro_liq 
	end
	else if ( @tipo = 1 )
	begin
		insert into sipweb_pro_liq( cod_tipo_proceso, usuario, fecha  )
		values ( @cod_tipo_proceso, system_user, getdate() )
	end
	
	
	delete from sipweb_pro_liq_det 
	
	declare cursor_pro_liq  cursor  for 
	select cod_tipo_proceso from sipweb_pro_liq order by cod_tipo_proceso
		   
	open cursor_pro_liq
	fetch cursor_pro_liq into @cod_tipo_proceso_local
	
	while @@FETCH_STATUS = 0
	  begin
	  
		insert into sipweb_pro_liq_det( cod_tipo_proceso  )
		values ( @cod_tipo_proceso_local )
		
		
		set @cod_tipo_proceso_local3 = rtrim(@cod_tipo_proceso_local)
		set @cod_tipo_proceso_local4 = rtrim(@cod_tipo_proceso_local)
		set @cod_tipo_proceso_local5 = rtrim(@cod_tipo_proceso_local)
		set @cod_tipo_proceso_local6 = rtrim(@cod_tipo_proceso_local)
		set @cod_tipo_proceso_local7 = rtrim(@cod_tipo_proceso_local)
		set @cod_tipo_proceso_local8 = rtrim(@cod_tipo_proceso_local)
		set @cod_tipo_proceso_local9 = rtrim(@cod_tipo_proceso_local)
		set @cod_tipo_proceso_local10 = rtrim(@cod_tipo_proceso_local)
		set @cod_tipo_proceso_local11 = rtrim(@cod_tipo_proceso_local)
		set @cod_tipo_proceso_local12 = rtrim(@cod_tipo_proceso_local)
		set @cod_tipo_proceso_local13 = rtrim(@cod_tipo_proceso_local)
		set @cod_tipo_proceso_local14 = rtrim(@cod_tipo_proceso_local)
		set @cod_tipo_proceso_local15 = rtrim(@cod_tipo_proceso_local)
		set @cod_tipo_proceso_local16 = rtrim(@cod_tipo_proceso_local)
		set @cod_tipo_proceso_local17 = rtrim(@cod_tipo_proceso_local)
		
		declare cursor_pro_liq_2  cursor  for 
		select cod_tipo_proceso from sipweb_pro_liq 
		where	cod_tipo_proceso > @cod_tipo_proceso_local
		order by cod_tipo_proceso
			   
		open cursor_pro_liq_2
		fetch cursor_pro_liq_2 into @cod_tipo_proceso_local2
		
		set @correl = 0
		
		while @@FETCH_STATUS = 0
		begin
		
			set @cod_tipo_proceso_local3 = @cod_tipo_proceso_local3+','+rtrim(@cod_tipo_proceso_local2)
			
			if @correl = 0
			begin		
				set @cod_tipo_proceso2_local3 = @cod_tipo_proceso_local+','+rtrim(@cod_tipo_proceso_local2)
				set @cod_tipo_proceso3_local3 = @cod_tipo_proceso_local+','+rtrim(@cod_tipo_proceso_local2)
			end
			if @correl = 1
			begin		
				set @cod_tipo_proceso2_local4 = @cod_tipo_proceso_local+','+rtrim(@cod_tipo_proceso_local2)
				set @cod_tipo_proceso3_local4 = @cod_tipo_proceso3_local3+','+rtrim(@cod_tipo_proceso_local2)
			end
			if @correl = 2
			begin		
				set @cod_tipo_proceso2_local5 = @cod_tipo_proceso_local+','+rtrim(@cod_tipo_proceso_local2)
				set @cod_tipo_proceso3_local5 = @cod_tipo_proceso3_local4+','+rtrim(@cod_tipo_proceso_local2)
			end
			if @correl = 3
			begin		
				set @cod_tipo_proceso2_local6 = @cod_tipo_proceso_local+','+rtrim(@cod_tipo_proceso_local2)
				set @cod_tipo_proceso3_local6 = @cod_tipo_proceso3_local5+','+rtrim(@cod_tipo_proceso_local2)
			end
			if @correl = 4
			begin		
				set @cod_tipo_proceso2_local7 = @cod_tipo_proceso_local+','+rtrim(@cod_tipo_proceso_local2)
				set @cod_tipo_proceso3_local7 = @cod_tipo_proceso3_local6+','+rtrim(@cod_tipo_proceso_local2)
			end
			if @correl = 5
			begin		
				set @cod_tipo_proceso2_local8 = @cod_tipo_proceso_local+','+rtrim(@cod_tipo_proceso_local2)
				set @cod_tipo_proceso3_local8 = @cod_tipo_proceso3_local7+','+rtrim(@cod_tipo_proceso_local2)
			end
			if @correl = 6
			begin		
				set @cod_tipo_proceso2_local9 = @cod_tipo_proceso_local+','+rtrim(@cod_tipo_proceso_local2)
				set @cod_tipo_proceso3_local9 = @cod_tipo_proceso3_local8+','+rtrim(@cod_tipo_proceso_local2)
			end
			if @correl = 7
			begin		
				set @cod_tipo_proceso2_local10 = @cod_tipo_proceso_local+','+rtrim(@cod_tipo_proceso_local2)
				set @cod_tipo_proceso3_local10 = @cod_tipo_proceso3_local9+','+rtrim(@cod_tipo_proceso_local2)
			end
			if @correl = 8
			begin		
				set @cod_tipo_proceso2_local11 = @cod_tipo_proceso_local+','+rtrim(@cod_tipo_proceso_local2)
				set @cod_tipo_proceso3_local11 = @cod_tipo_proceso3_local10+','+rtrim(@cod_tipo_proceso_local2)
			end
			if @correl = 9
			begin		
				set @cod_tipo_proceso2_local12 = @cod_tipo_proceso_local+','+rtrim(@cod_tipo_proceso_local2)
				set @cod_tipo_proceso3_local12 = @cod_tipo_proceso3_local11+','+rtrim(@cod_tipo_proceso_local2)
			end
			if @correl = 10
			begin		
				set @cod_tipo_proceso2_local13 = @cod_tipo_proceso_local+','+rtrim(@cod_tipo_proceso_local2)
				set @cod_tipo_proceso3_local13 = @cod_tipo_proceso3_local12+','+rtrim(@cod_tipo_proceso_local2)
			end
			if @correl = 11
			begin		
				set @cod_tipo_proceso2_local14 = @cod_tipo_proceso_local+','+rtrim(@cod_tipo_proceso_local2)
				set @cod_tipo_proceso3_local14 = @cod_tipo_proceso3_local13+','+rtrim(@cod_tipo_proceso_local2)
			end
			if @correl = 12
			begin		
				set @cod_tipo_proceso2_local15 = @cod_tipo_proceso2_local14+','+rtrim(@cod_tipo_proceso_local2)
				set @cod_tipo_proceso3_local15 = @cod_tipo_proceso3_local14+','+rtrim(@cod_tipo_proceso_local2)
			end
		
			insert into sipweb_pro_liq_det( cod_tipo_proceso  )
			values ( @cod_tipo_proceso_local3 )
			
			if @correl > 0	
			begin		
				set @cod_tipo_proceso_local4 = rtrim(@cod_tipo_proceso_local4)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso_local4 )
			end
		
			if @correl > 1	
			begin		
				set @cod_tipo_proceso_local5 = rtrim(@cod_tipo_proceso_local5)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso_local5 )
				
				set @cod_tipo_proceso2_local3 = rtrim(@cod_tipo_proceso2_local3)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso2_local3 )
				
				set @cod_tipo_proceso3_local3 = rtrim(@cod_tipo_proceso3_local3)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso3_local3 )
			end
			
			if @correl > 2	
			begin		
				set @cod_tipo_proceso_local6 = rtrim(@cod_tipo_proceso_local6)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso_local6 )
				
				set @cod_tipo_proceso2_local4 = rtrim(@cod_tipo_proceso2_local4)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso2_local4 )
				
				set @cod_tipo_proceso3_local4 = rtrim(@cod_tipo_proceso3_local4)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso3_local4 )
			end
			
			if @correl > 3	
			begin		
				set @cod_tipo_proceso_local7 = rtrim(@cod_tipo_proceso_local7)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso_local7 )
				
				set @cod_tipo_proceso2_local5 = rtrim(@cod_tipo_proceso2_local5)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso2_local5 )
				
				set @cod_tipo_proceso3_local5 = rtrim(@cod_tipo_proceso3_local5)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso3_local5 )
			end
			
			if @correl > 4	
			begin		
				set @cod_tipo_proceso_local8 = rtrim(@cod_tipo_proceso_local8)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso_local8 )
				
				set @cod_tipo_proceso2_local6 = rtrim(@cod_tipo_proceso2_local6)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso2_local6 )
				
				set @cod_tipo_proceso3_local6 = rtrim(@cod_tipo_proceso3_local6)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso3_local6 )
			end
			
			if @correl > 5	
			begin		
				set @cod_tipo_proceso_local9 = rtrim(@cod_tipo_proceso_local9)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso_local9 )
				
				set @cod_tipo_proceso2_local7 = rtrim(@cod_tipo_proceso2_local7)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso2_local7 )
				
				set @cod_tipo_proceso3_local7 = rtrim(@cod_tipo_proceso3_local7)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso3_local7 )
			end
			
			if @correl > 6	
			begin		
				set @cod_tipo_proceso_local10 = rtrim(@cod_tipo_proceso_local10)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso_local10 )
				
				set @cod_tipo_proceso2_local8 = rtrim(@cod_tipo_proceso2_local8)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso2_local8 )
				
				set @cod_tipo_proceso3_local8 = rtrim(@cod_tipo_proceso3_local8)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso3_local8 )
			end
			
			if @correl > 7	
			begin		
				set @cod_tipo_proceso_local11 = rtrim(@cod_tipo_proceso_local11)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso_local11 )
				
				set @cod_tipo_proceso2_local9 = rtrim(@cod_tipo_proceso2_local9)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso2_local9 )
				
				set @cod_tipo_proceso3_local9 = rtrim(@cod_tipo_proceso3_local9)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso3_local9 )
			end
			
			if @correl > 8	
			begin		
				set @cod_tipo_proceso_local12 = rtrim(@cod_tipo_proceso_local12)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso_local12 )
				
				set @cod_tipo_proceso2_local10 = rtrim(@cod_tipo_proceso2_local10)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso2_local10 )
				
				set @cod_tipo_proceso3_local10 = rtrim(@cod_tipo_proceso3_local10)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso3_local10 )
			end
			
			if @correl > 9
			begin		
				set @cod_tipo_proceso_local13 = rtrim(@cod_tipo_proceso_local13)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso_local13 )
				
				set @cod_tipo_proceso2_local11 = rtrim(@cod_tipo_proceso2_local11)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso2_local11 )
				
				set @cod_tipo_proceso3_local11 = rtrim(@cod_tipo_proceso3_local11)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso3_local11 )
			end
			
			if @correl > 10
			begin		
				set @cod_tipo_proceso_local14 = rtrim(@cod_tipo_proceso_local14)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso_local14 )
				
				set @cod_tipo_proceso2_local12 = rtrim(@cod_tipo_proceso2_local12)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso2_local12 )
				
				set @cod_tipo_proceso3_local12 = rtrim(@cod_tipo_proceso3_local12)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso3_local12 )
			end
			
			if @correl > 11
			begin		
				set @cod_tipo_proceso_local15 = rtrim(@cod_tipo_proceso_local15)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso_local15 )
				
				set @cod_tipo_proceso2_local13 = rtrim(@cod_tipo_proceso2_local13)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso2_local13 )
				
				set @cod_tipo_proceso3_local13 = rtrim(@cod_tipo_proceso3_local13)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso3_local13 )
				
			end
			
			if @correl > 12
			begin		
				set @cod_tipo_proceso_local16 = rtrim(@cod_tipo_proceso_local16)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso_local16 )
				
				set @cod_tipo_proceso2_local14 = rtrim(@cod_tipo_proceso2_local14)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso2_local14 )
				
				set @cod_tipo_proceso3_local14 = rtrim(@cod_tipo_proceso3_local14)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso3_local14 )
			end
			
			if @correl > 13
			begin		
				set @cod_tipo_proceso_local17 = rtrim(@cod_tipo_proceso_local17)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso_local17 )
				
				set @cod_tipo_proceso2_local15 = rtrim(@cod_tipo_proceso2_local15)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso2_local15 )
				
				set @cod_tipo_proceso3_local15 = rtrim(@cod_tipo_proceso3_local15)+','+rtrim(@cod_tipo_proceso_local2)
				insert into sipweb_pro_liq_det( cod_tipo_proceso  )
				values ( @cod_tipo_proceso3_local15 )
			end
			
			
			set @correl = @correl + 1
			   
	    fetch cursor_pro_liq_2
	    into    @cod_tipo_proceso_local2
	    end
	    
	    close cursor_pro_liq_2
		deallocate cursor_pro_liq_2
		
	  fetch cursor_pro_liq
	  into    @cod_tipo_proceso_local
	  end
	
	
	close cursor_pro_liq
	deallocate cursor_pro_liq

COMMIT TRANSACTION






















GO

/****** Object:  StoredProcedure [dbo].[sp_mail_liquida]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO

















CREATE PROCEDURE [dbo].[sp_mail_liquida]
	@cod_empresa		int,
	@cod_planta			int,
	@ano_periodo		int,
	@mes_periodo		int,
	@sin_correo			int,
	@swhere				varchar(max)
AS
DECLARE @sql nvarchar(4000)
DECLARE @campos nvarchar(3000)
BEGIN
	SET NOCOUNT ON;
	
	select @swhere = replace(@swhere, '&apos;', '''')
	
	if (@sin_correo=1)
	begin
		set @swhere = @swhere ++ ' and		c.estado is null '
	end
	
	SET @sql = ' select	distinct a.cod_empresa, 
					a.cod_planta, 
					a.nro_trabajador, 
					convert(varchar(10),b.rut_trabajador)++''-''++b.dv_rut_trabajador as Rut,
					b.ape_paterno_trabaj++'' ''++b.ape_materno_trabaj++'' ''++b.nombre as Nombre,
					case when b.casilla_e_mail is null then '' '' else b.casilla_e_mail end casilla_e_mail ,
					case when c.estado is null then ''NO'' else ''SI (''++convert(varchar(10),count(distinct c.estado)) ++'')'' end correo_enviado, 
					''NO'' as existe_pdf,
					case when c.estado is null then '' '' else max(convert(varchar(10),c.fecha,103)) end as fecha_ultimo,
					a.nombre_encripta
			from	sipweb_liq			a left outer join sipweb_mail_liquida c
										on	a.cod_empresa			= c.cod_empresa
										and		a.cod_planta		= c.cod_planta
										and		a.nro_trabajador	= c.nro_trabajador
										and		a.ano_periodo		= c.ano_periodo
										and		a.mes_periodo		= c.mes_periodo
										and		c.estado != ''Error'',
					personal			b
			where	a.cod_empresa		= b.cod_empresa
			and		a.cod_planta		= b.cod_planta
			and		a.nro_trabajador	= b.nro_trabajador
			and		a.cod_empresa		= ''' + convert(varchar(10),+@cod_empresa) +'''
			and		a.cod_planta		= ''' + convert(varchar(10),+@cod_planta) +'''
			and		a.ano_periodo		= ''' + convert(varchar(10),+@ano_periodo) +'''
			and		a.mes_periodo		= ''' + convert(varchar(10),+@mes_periodo) +'''
			and		a.cod_tipo_proceso in ( select cod_tipo_proceso from sipweb_pro_liq )
				' + @swhere + '			
			group by a.cod_empresa, 
					a.cod_planta, 
					a.nro_trabajador,
					b.rut_trabajador,
					b.dv_rut_trabajador,
					b.ape_paterno_trabaj, 
					b.ape_materno_trabaj, 
					b.nombre,
					c.estado,
					a.nombre_encripta,
					b.casilla_e_mail	'
					
		EXEC (@sql)
		
	end



















GO

/****** Object:  StoredProcedure [dbo].[sp_liquidacion]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_liquidacion]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int,
	@cod_tipo_proceso	varchar(4),
	@tipo			    int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	distinct a.ano_periodo,
				a.mes_periodo,
				case when c.nombre_encripta is null then convert(varchar,a.ano_periodo+a.mes_periodo) else c.nombre_encripta end,
				( c.proceso_gen )
		from	sipweb_liq_publicadas	a,
				historico_liquidac		b left outer join sipweb_liq	c
							on b.cod_empresa			= c.cod_empresa 
							AND		b.cod_planta		= c.cod_planta 
							AND		b.ano_periodo		= c.ano_periodo 
							AND		b.mes_periodo		= c.mes_periodo
							AND		b.cod_tipo_proceso	= c.cod_tipo_proceso
							AND		b.nro_trabajador	= c.nro_trabajador
		where	a.cod_empresa	= b.cod_empresa 
		AND		a.cod_planta	= b.cod_planta 
		AND		a.ano_periodo	= b.ano_periodo 
		AND		a.mes_periodo	= b.mes_periodo
		and		b.cod_empresa	= @cod_empresa	
		and		b.cod_planta	= @cod_planta	
		and		b.nro_trabajador = @nro_trabajador
	--	AND		b.cod_tipo_proceso in ( select cod_tipo_proceso from sipweb_pro_liq )
		AND		c.proceso_gen in ( select cod_tipo_proceso from sipweb_pro_liq_det )
		order by a.ano_periodo desc, a.mes_periodo desc
	end
	else if @tipo = 1
	begin
		SELECT DISTINCT ANO_PERIODO 
		FROM	historico_liquidac
		WHERE	COD_EMPRESA = @cod_empresa	
		AND		COD_PLANTA = @cod_planta
	--	AND		cod_tipo_proceso = 'LQ'
		order by ANO_PERIODO desc
	end
	else if @tipo = 2
	begin
		SELECT 	distinct a.mes_periodo,
				case a.mes_periodo 
					when 1 then 'Enero'
					when 2 then 'Febrero'
					when 3 then 'Marzo'
					when 4 then 'Abril'
					when 5 then 'Mayo'
					when 6 then 'Junio'
					when 7 then 'Julio'
					when 8 then 'Agosto'
					when 9 then 'Septiembre'
					when 10 then 'Octubre'
					when 11 then 'Noviembre'
					when 12 then 'Diciembre'
				end as mes,
				case when b.mes_periodo is not null then 1 else 0 end as Publicar
		FROM 	historico_liquidac		a left outer join 	sipweb_liq_publicadas	b
								on a.COD_EMPRESA 		= b.COD_EMPRESA 
								AND 	a.COD_PLANTA 		= b.COD_PLANTA 
								AND 	a.ANO_PERIODO 		= b.ANO_PERIODO 
								AND 	a.MES_PERIODO 		= b.MES_PERIODO
		WHERE 	a.ANO_PERIODO		= @nro_trabajador
		AND 	a.COD_EMPRESA		= @cod_empresa
		AND 	a.COD_PLANTA		= @cod_planta
	--	AND		a.COD_TIPO_PROCESO = 'LQ'
		order by a.mes_periodo asc
	end
	else if @tipo = 3
	begin
		select	DISTINCT a.ano_periodo
		from	sipweb_liq_publicadas	a,
				historico_liquidac		b
		where	a.cod_empresa	= b.cod_empresa 
		AND		a.cod_planta	= b.cod_planta 
		AND		a.ano_periodo	= b.ano_periodo 
		AND		a.mes_periodo	= b.mes_periodo
		and		b.cod_empresa	= @cod_empresa	
		and		b.cod_planta	= @cod_planta	
		and		b.nro_trabajador = @nro_trabajador
	--	AND		b.COD_TIPO_PROCESO = 'LQ'
		order by a.ano_periodo desc
	end
	else if @tipo = 4
	begin
		select	distinct a.ano_periodo,
				a.mes_periodo,
				case when c.nombre_encripta is null then convert(varchar,a.ano_periodo+a.mes_periodo) else c.nombre_encripta end,
				c.proceso_gen
		from	sipweb_liq_publicadas	a,
				historico_liquidac		b left outer join sipweb_liq	c
							on b.cod_empresa	= c.cod_empresa 
							AND		b.cod_planta	= c.cod_planta 
							AND		b.ano_periodo	= c.ano_periodo 
							AND		b.mes_periodo	= c.mes_periodo
							AND		b.cod_tipo_proceso	= c.cod_tipo_proceso
							AND		b.nro_trabajador	= c.nro_trabajador,
				personal			d
		where	a.cod_empresa	= b.cod_empresa 
		AND		a.cod_planta	= b.cod_planta 
		AND		a.ano_periodo	= b.ano_periodo 
		AND		a.mes_periodo	= b.mes_periodo
		and		b.cod_empresa	= d.cod_empresa
		and		b.cod_planta	= d.cod_planta
		and		b.nro_trabajador = d.nro_trabajador
		and		b.cod_empresa	= @cod_empresa	
		and		d.rut_trabajador = @nro_trabajador
		--AND		b.cod_tipo_proceso in ( select cod_tipo_proceso from sipweb_pro_liq )
		AND		c.proceso_gen in ( select cod_tipo_proceso from sipweb_pro_liq_det )
		order by a.ano_periodo desc, a.mes_periodo desc
	end
	else if @tipo = 5
	begin
		select	distinct a.ano_periodo,
				a.mes_periodo,
				case when c.nombre_encripta is null then convert(varchar,a.ano_periodo+a.mes_periodo) else c.nombre_encripta end,
				c.proceso_gen
		from	sipweb_liq_publicadas	a,
				historico_liquidac		b left outer join sipweb_liq	c
							on b.cod_empresa	= c.cod_empresa 
							AND		b.cod_planta	= c.cod_planta 
							AND		b.ano_periodo	= c.ano_periodo 
							AND		b.mes_periodo	= c.mes_periodo
							AND		b.cod_tipo_proceso	= c.cod_tipo_proceso
							AND		b.nro_trabajador	= c.nro_trabajador,
				personal			d
		where	a.cod_empresa	= b.cod_empresa 
		AND		a.cod_planta	= b.cod_planta 
		AND		a.ano_periodo	= b.ano_periodo 
		AND		a.mes_periodo	= b.mes_periodo
		and		b.cod_empresa	= d.cod_empresa
		and		b.cod_planta	= d.cod_planta
		and		b.nro_trabajador = d.nro_trabajador
		and		d.rut_trabajador = @nro_trabajador
	--	AND		b.cod_tipo_proceso in ( select cod_tipo_proceso from sipweb_pro_liq )
		AND		c.proceso_gen in ( select cod_tipo_proceso from sipweb_pro_liq_det )
		order by a.ano_periodo desc, a.mes_periodo desc
	end
	else if @tipo = 6
	begin
		select	a.cod_tipo_proceso,
				a.descripcion,
				case when b.cod_tipo_proceso is null then 0 else 1 end as 'Visualizar'
		from	tipo_proceso	a left outer join sipweb_pro_liq	b
									on a.cod_tipo_proceso	= b.cod_tipo_proceso
		order by a.cod_tipo_proceso
	end
	else if @tipo = 7
	begin
		SELECT 	distinct a.mes_periodo,
				case a.mes_periodo 
					when 1 then 'Enero'
					when 2 then 'Febrero'
					when 3 then 'Marzo'
					when 4 then 'Abril'
					when 5 then 'Mayo'
					when 6 then 'Junio'
					when 7 then 'Julio'
					when 8 then 'Agosto'
					when 9 then 'Septiembre'
					when 10 then 'Octubre'
					when 11 then 'Noviembre'
					when 12 then 'Diciembre'
				end as mes
		FROM 	historico_liquidac a
		WHERE 	a.ANO_PERIODO		= @cod_tipo_proceso
		AND 	a.COD_EMPRESA		= @cod_empresa
		AND 	a.COD_PLANTA		= @cod_planta
		and		a.nro_trabajador	 = @nro_trabajador
	--	AND		a.COD_TIPO_PROCESO = 'LQ'
		order by a.mes_periodo asc
	end
	else if @tipo = 8
	begin
		SELECT DISTINCT ANO_PERIODO 
		FROM	sipweb_liq
		WHERE	COD_EMPRESA = @cod_empresa	
		AND		COD_PLANTA = @cod_planta
		order by ANO_PERIODO desc
	end
	else if @tipo = 9
	begin
		SELECT DISTINCT MES_PERIODO,
		case mes_periodo 
					when 1 then 'Enero'
					when 2 then 'Febrero'
					when 3 then 'Marzo'
					when 4 then 'Abril'
					when 5 then 'Mayo'
					when 6 then 'Junio'
					when 7 then 'Julio'
					when 8 then 'Agosto'
					when 9 then 'Septiembre'
					when 10 then 'Octubre'
					when 11 then 'Noviembre'
					when 12 then 'Diciembre'
				end as mes
		FROM	sipweb_liq
		WHERE	COD_EMPRESA = @cod_empresa	
		AND		COD_PLANTA = @cod_planta
		AND		ANO_PERIODO = @nro_trabajador
		order by MES_PERIODO desc
	end
END

























GO

/****** Object:  StoredProcedure [dbo].[sp_tras_ant_personal]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO




















CREATE PROCEDURE [dbo].[sp_tras_ant_personal]
	@tipo				int,
	@nro_trabajador		int
AS
declare	@unidad			nvarchar(4000)
DECLARE @sql			nvarchar(4000)
BEGIN
	if @tipo = 0
	begin
		select	b.cod_empresa,
				b.cod_planta,
				b.correlativo,
				rut_trabajador, 
				dv_rut_trabajador, 
				b.nro_trabajador, 
				c.dv_trabajador,
				nombre++' '++ape_paterno_trabaj++' '++ape_materno_trabaj as nombre,
				campo,
				dato_origen,
				dato_destino,
				1 as traspasar 
		from	usuario_sipweb			a,
				sipweb_mod_datoper		b,
				personal				c
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta		
		and		b.cod_empresa		= c.cod_empresa
		and		b.cod_planta		= c.cod_planta
		and		b.nro_trabajador	= c.nro_trabajador
		and		a.perfil_admin		= 'S'
		and		a.usuario			= @nro_trabajador
		and		b.estado			= 'Ingresado'
	end	
	else if @tipo = 1
	begin
		select	b.cod_empresa,
				b.cod_planta,
				b.correlativo,
				rut_trabajador, 
				dv_rut_trabajador, 
				b.nro_trabajador, 
				c.dv_trabajador,
				nombre++' '++ape_paterno_trabaj++' '++ape_materno_trabaj as nombre,
				campo,
				dato_origen,
				dato_destino,
				1 as traspasar 
		from	usuario_sipweb			a,
				sipweb_mod_datoper		b,
				personal				c,
				personal_dinamico		d
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta		
		and		b.cod_empresa		= c.cod_empresa
		and		b.cod_planta		= c.cod_planta
		and		b.nro_trabajador	= c.nro_trabajador
		and		a.perfil_jefeportal	= 'S'
		and		a.usuario			= @nro_trabajador
		and		b.estado			= 'Ingresado'
		and		c.cod_empresa		= d.cod_empresa
		and		c.nro_trabajador	= d.nro_trabajador
		and		d.nombre_interno	= 'RutJefDir'
		and		d.valor_columna		= convert(varchar(10),@nro_trabajador)
	end
	else if @tipo = 2
	begin
		
		select @unidad = cod_unidad_adminis from usuario_sipweb where usuario = @nro_trabajador AND perfil_jefe_uadm = 'S'
		if @unidad is null or @unidad = ''
		begin
			select @unidad = '-1'
		end
		
		
		SET @sql = ' select	b.cod_empresa,
				b.cod_planta,
				b.correlativo,
				rut_trabajador, 
				dv_rut_trabajador, 
				b.nro_trabajador, 
				c.dv_trabajador,
				nombre++'' ''++ape_paterno_trabaj++'' ''++ape_materno_trabaj as nombre,
				campo,
				dato_origen,
				dato_destino,
				1 as traspasar 
		from	usuario_sipweb			a,
				sipweb_mod_datoper		b,
				personal				c
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta		
		and		b.cod_empresa		= c.cod_empresa
		and		b.cod_planta		= c.cod_planta
		and		b.nro_trabajador	= c.nro_trabajador
		and		a.perfil_jefe_uadm	= ''S''
		and		c.cod_unidad_adminis in (  '++@unidad+' )
		and		a.usuario			= '''+convert(varchar(10),@nro_trabajador)+'''
		and		b.estado			= ''Ingresado'' '

		EXEC (@sql)
	end
	else if @tipo = 3
	begin
		select	nro_trabajador
		from	sipweb_mod_datoper
		where	nro_trabajador		= @nro_trabajador
		and		estado				= 'Ingresado'
	end
END
























GO

/****** Object:  StoredProcedure [dbo].[sp_ausentismo]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_ausentismo]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int
AS
BEGIN
	SET NOCOUNT ON;

		select	descrip_ausencia, 
				cantidad_dias as cantidad, 
				cod_unidad, 
				convert(varchar(10),a.fec_ini_ausencia,103) as fec_ini_ausencia, 
				convert(varchar(10),a.fec_fin_ausencia ,103) as fec_fin_ausencia,
				fec_ini_ausencia as forden
		from	historic_ausencias a,
				ausencia b 
		where	a.cod_empresa	= b.cod_empresa 
		and		a.cod_planta = b.cod_planta
		and		a.cod_ausencia = b.cod_ausencia
		and		a.nro_trabajador = @nro_trabajador
		and		a.cod_empresa	= @cod_empresa
		and		a.cod_planta	= @cod_planta
		order by forden desc
END














GO

/****** Object:  StoredProcedure [dbo].[sp_conf_recup_clave]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO



















CREATE PROCEDURE [dbo].[sp_conf_recup_clave]
	@usuario			int,
	@tipo				int
AS
BEGIN
	if @tipo = 0
	begin
		select  tipoclave,ind_appaterno,ind_apmaterno,ind_fecnac,ind_isapre,ind_afp, despliegue,
				isnull(ind_anos,0),
				isnull(ind_banco,0),
				isnull(ind_cargas,0),
				isnull(ind_comuna,0),
				dias_semana,
				hora_desde,
				hora_hasta,
				mensaje,
				getdate()
		from	sipweb_recup_clave
	end
	else  if @tipo = 1
	begin
		select  ape_paterno_trabaj, ape_materno_trabaj, 
				convert(varchar(10),fec_nacimiento,103) as fec_nacimiento, 
				cod_isapre, 
				cod_afp,
				cod_empresa, 
				casilla_e_mail, 
				nombre,
				year(fec_ini_contrato) as anos,
				num_cargas_normale+num_cargas_duplo,
				cod_banco,
				cod_comuna
		from	personal
		where	cod_vigen_trabajad = 'S'
		and		rut_trabajador = @usuario
	end
END




















GO

/****** Object:  StoredProcedure [dbo].[sp_feriados]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO
















CREATE PROCEDURE [dbo].[sp_feriados]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int,
	@tipo			    int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.fec_ini_contrato,
				dias_del_periodo,
				dias_pendientes,
				(select	sum(num_dias_feriados)
					from	movimient_feriados 
					where	nro_trabajador	= @nro_trabajador
					and		cod_empresa		= @cod_empresa	
					and		cod_planta		= @cod_planta		
					and		tipo_movimiento = 'CARGO'
					and		cod_feriado_solici	= 'U'
					and		fec_inicio_feriado >= b.fec_fin_ult_period ),
				sdo_actual_periodo,
				(select   convert(varchar(10),max(fec_fin_info_perio),103)
				from control_procesos
				where cod_empresa		= @cod_empresa		
				and	  cod_planta		= @cod_planta	 )
		from	personal			a,
				feriad_trabajador	b
		where	a.cod_empresa		= b.cod_empresa 
		and		a.cod_planta		= b.cod_planta	
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.nro_trabajador	= @nro_trabajador
		and		a.cod_empresa		= @cod_empresa	
		and		a.cod_planta		= @cod_planta	

	end
	else if @tipo = 1
	begin
		select	convert(varchar(10),a.fec_ini_contrato,103) as fec_ini_contrato,
				isnull(anos_reconocidos,0) as anos_reconocidos,
				( select	valor_numerico 
					from	personal_dinamico 
					where	nro_trabajador        = @nro_trabajador
					and     cod_empresa  =  @cod_empresa
					and     cod_planta     = @cod_planta
					and     nombre_interno = 'dia_castigo' ),
				(select	sum(num_dias_feriados+ num_dias_no_provi)
					from	movimient_feriados 
					where	nro_trabajador	= @nro_trabajador
					and		cod_empresa		= @cod_empresa	
					and		cod_planta		= @cod_planta		
					and		tipo_movimiento = 'CARGO'
					and		cod_feriado_solici	= 'U' ),
				case when isnull(base_dias_adic,0) > 0 then isnull(base_dias_adic,0)+isnull(dias_reconocidos,0) else dias_reconoc_adici++isnull(dias_reconocidos,0) end,
				convert(varchar(10),getdate(),103)
		from	personal			a,
				feriad_trabajador	b
		where	a.cod_empresa		= b.cod_empresa 
		and		a.cod_planta		= b.cod_planta	
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.nro_trabajador	= @nro_trabajador
		and		a.cod_empresa		= @cod_empresa	
		and		a.cod_planta		= @cod_planta			
	end
	else if @tipo = 2
	begin
		select	rtrim(tipo_movimiento) as tipo_movimiento ,
				convert(varchar(10),fec_inicio_feriado,103) as fec_inicio_feriado,
				convert(varchar(10),fecha_fin_feriado,103) as fec_fin_feriado,
				num_dias_feriados+ isnull(num_dias_no_provi,0) as num_dias_feriados,
				isnull(dias_legales,0) as dias_legales,
				isnull(dias_adicionales ,0) as dias_adicionales,
				isnull(dias_progres,0) as dias_progres,
				0 as saldo
		from	movimient_feriados
		where	nro_trabajador	= @nro_trabajador
		and		cod_empresa		= @cod_empresa	
		and		cod_planta		= @cod_planta
		and		tipo_movimiento	= 'CARGO'
		and		cod_feriado_solici	= 'U'	
		order by convert(datetime,fec_inicio_feriado) desc
	end
	else if  @tipo = 3
	begin
		--@nro_trabajador es igual a AÃ±os en la empresa + AÃ±os reconocidos otros empleadores 
		 Select top 1 (dias_de_derecho - 15 )
		 From	feriad_progresivos 
		 Where	tipo_progresivo = 'S' and convenio = 0 
		 and	nro_anos <= @nro_trabajador
		 Order by nro_anos desc
	end
	else if @tipo = 4
	begin
		select	
				convert(varchar(10),fec_ini_contrato,103) as fec_ini_contrato,
				convert(varchar(10),fec_fin_contr_vige,103) as fec_fin_contr_vige,
				a.cod_cierre_vacacio,
				a.convenio,
				b.dias_del_periodo,
				b.dias_prox_periodo,
				b.dias_pendientes,
				convert(varchar(10),b.fec_ini_ult_period,103) as fec_ini_ult_period,
				convert(varchar(10),b.fec_fin_ult_period,103) as fec_fin_ult_period,
				b.dias_con_derecho,
				b.sdo_actual_periodo, 
				isnull(b.anos_otros_contr,0) as anos_otros_contr,
				isnull(b.anos_reconocidos,0) as anos_reconocidos,
				isnull(b.dias_reconocidos,0) as dias_reconocidos,
				case when isnull(b.base_dias_adic,0) > 0 then isnull(b.base_dias_adic,0) else b.dias_reconoc_adici end as dias_reconoc_adici,
				b.dias_asignados,
				(select   convert(varchar(10),max(fec_fin_info_perio),103)
				from control_procesos
				where cod_empresa		= @cod_empresa		
				and	  cod_planta		= @cod_planta	
                  		and 	fec_proces_vigente = 'AB' )  as fec_fin_info_perio,
				a.cod_zona
		from	personal			a,
				feriad_trabajador	b
		where	a.cod_empresa		= b.cod_empresa 
		and		a.cod_planta		= b.cod_planta	
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.nro_trabajador	= @nro_trabajador
		and		a.cod_empresa		= @cod_empresa	
		and		a.cod_planta		= @cod_planta	

	end
	else if @tipo = 5
	begin
			declare @fecini datetime
			select @fecini = min(fec_ini_ult_period) from hist_feriad_trabaj 
											where	nro_trabajador	= @nro_trabajador
											and		cod_empresa		= @cod_empresa	
											and		cod_planta		= @cod_planta
	
			if (@fecini is null)
			begin
					select @fecini = min(fec_ini_ult_period) from feriad_trabajador 
											where	nro_trabajador	= @nro_trabajador
											and		cod_empresa		= @cod_empresa	
											and		cod_planta		= @cod_planta
			end
	
			select	rtrim(tipo_movimiento) as tipo_movimiento ,
						min(convert(varchar(10),fec_inicio_feriado,103)) as fec_inicio_feriado,
						max(convert(varchar(10),fecha_fin_feriado,103)) as fec_fin_feriado,
						sum(num_dias_feriados+ isnull(num_dias_no_provi,0)) as num_dias_feriados,
						sum(dias_legales) as dias_legales,
						sum(dias_adicionales) as dias_adicionales,
						sum(dias_progres) as dias_progres,
						0 as saldo,
						MIN(fec_inicio_feriado) as fec_order
				from	movimient_feriados
				where	nro_trabajador	= @nro_trabajador
				and		cod_empresa		= @cod_empresa	
				and		cod_planta		= @cod_planta
				and		tipo_movimiento = 'ABONO' 
				and		fec_inicio_feriado < @fecini
			group by tipo_movimiento
		union all	
			select	rtrim(tipo_movimiento) as tipo_movimiento ,
							convert(varchar(10),fec_inicio_feriado,103) as fec_inicio_feriado,
							convert(varchar(10),fecha_fin_feriado,103) as fec_fin_feriado,
							num_dias_feriados+ isnull(num_dias_no_provi,0) as num_dias_feriados,
							dias_legales,
							dias_adicionales,
							dias_progres,
							0 as saldo,
							fec_inicio_feriado as fec_order
			from	movimient_feriados
			where	nro_trabajador	= @nro_trabajador
			and		cod_empresa		= @cod_empresa	
			and		cod_planta		= @cod_planta
			AND		( ( tipo_movimiento = 'CARGO' 
						and cod_feriado_solici = 'U' ) 
						OR tipo_movimiento = 'AJUST' 
						OR ( tipo_movimiento = 'ABONO' and fec_inicio_feriado >= @fecini ) )	
			order by fec_order desc

	end

END














GO

/****** Object:  StoredProcedure [dbo].[sp_conf_archperm]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO











CREATE PROCEDURE [dbo].[sp_conf_archperm]
	@tipo				int,
	@empresa			int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.cod_empresa,
				b.sigla_empresa,
				archperm_obliga
		from	sipweb_conf_archperm	a,
				empresa				b
		where	a.cod_empresa = b.cod_empresa
		and		a.cod_empresa		in ( select cod_empresa from usuario_sipweb where usuario = @empresa )
		order by a.cod_empresa desc
	end
	else if @tipo = 1
	begin
		select	cod_empresa,
				archperm_obliga
		from	sipweb_conf_archperm
		where	cod_empresa				= @empresa
	end

END



















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_archperm_upd]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO










CREATE PROCEDURE [dbo].[sp_conf_archperm_upd]
	@cod_empresa		int,
	@archperm_obliga	varchar(2),
	@tipo				int
AS
BEGIN TRANSACTION

	if ( @tipo = 0 )
	begin
		insert into sipweb_conf_archperm
			( cod_empresa,
				archperm_obliga	)
		values 
			( @cod_empresa,
				@archperm_obliga )
	end
	else if ( @tipo > 0 )
	begin
		update	sipweb_conf_archperm
		set		archperm_obliga	= @archperm_obliga
		where	cod_empresa			= @cod_empresa
	end

COMMIT TRANSACTION











GO

/****** Object:  StoredProcedure [dbo].[sp_conf_usuario_upd]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO


















CREATE PROCEDURE [dbo].[sp_conf_usuario_upd]
	@cod_empresa		int,
	@automatico			varchar(2),
	@perfil_def			varchar(30),
	@cambia_clave		varchar(2),
	@tipo_clave			varchar(30),
	@correo_aut			varchar(2),
	@mail_from			varchar(80),
	@mail_asunto		varchar(80),
	@mail_cuerpo		text,
	@tipo				int
AS
BEGIN TRANSACTION

	if ( @tipo = 0 )
	begin
		insert into sipweb_conf_usuario
			( cod_empresa,
				automatico,
				perfil_def,
				cambia_clave,
				tipo_clave,
				correo_aut,
				mail_from,
				mail_asunto,
				mail_cuerpo	)
		values 
			( @cod_empresa,
				@automatico,
				@perfil_def,
				@cambia_clave,
				@tipo_clave,
				@correo_aut,
				@mail_from,
				@mail_asunto,
				@mail_cuerpo )
	end
	else if ( @tipo > 0 )
	begin
		update	sipweb_conf_usuario
		set		automatico	= @automatico,
				perfil_def	= @perfil_def,
				cambia_clave	= @cambia_clave,
				tipo_clave	= @tipo_clave,
				correo_aut	= @correo_aut,
				mail_from	= @mail_from,
				mail_asunto	= @mail_asunto,
				mail_cuerpo	= @mail_cuerpo
		where	cod_empresa			= @cod_empresa
	end

COMMIT TRANSACTION




















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_procesos]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO

















CREATE PROCEDURE [dbo].[sp_conf_procesos]
	@modulo			varchar(20),
	@menu			varchar(20),
	@perfil			varchar(20),
	@perfil2		varchar(20),
	@tipo			int
AS
BEGIN
	SET NOCOUNT ON;

	if @tipo = 0
	begin
		select	distinct a.cod_modulo, a.descripcion, a.orden
		from	sipweb_conf_modulos			a,
				sipweb_conf_perfiles		b
		where	a.cod_modulo = b.cod_modulo
		and		( b.perfil = @perfil or b.perfil = @perfil2 )
		order by a.orden

	end
	else if @tipo = 1
	begin
		select	distinct a.cod_menu, a.pagina, a.descripcion, a.nom_imagen, a.orden
		from	sipweb_conf_menu			a,
				sipweb_conf_perfiles		b
		where	a.cod_modulo	= b.cod_modulo
		and		a.cod_menu		= b.cod_menu
		and		a.cod_modulo	= @modulo
		and		( b.perfil = @perfil or b.perfil = @perfil2 )
		order by orden
	end
	else if @tipo = 2
	begin
		select	descripcion, nom_imagen
		from	sipweb_conf_menu
		where	cod_menu	= @menu
		order by orden
	end
	else if @tipo = 3
	begin
		select	a.pagina, a.descripcion, a.detalle, a.nom_imagen, a.cod_proceso
		from	sipweb_conf_procesos		a,
				sipweb_conf_perfiles		b
		where	a.cod_modulo	= b.cod_modulo
		and		a.cod_menu		= b.cod_menu
		and		a.cod_proceso	= b.cod_proceso
		and		a.cod_menu		= @menu
		and		( b.perfil = @perfil or b.perfil = @perfil2 )
		order by orden
	end
	else if @tipo = 4
	begin
		select	cod_modulo, descripcion
		from	sipweb_conf_modulos
		order by orden
	end
	else if @tipo = 5
	begin
		select	cod_menu, descripcion
		from	sipweb_conf_menu
		where	cod_modulo = @modulo
		order by orden
	end
	else if @tipo = 6
	begin
		select	cod_proceso, descripcion, nom_imagen, orden, descripcion_defecto
		from	sipweb_conf_procesos
		where	cod_modulo = @modulo
		and		cod_menu = @menu
		order by orden		
	end
	else if @tipo = 7
	begin
		select	distinct a.cod_modulo, a.descripcion, a.orden
		from	sipweb_conf_modulos			a,
				sipweb_conf_perfiles		b
		where	a.cod_modulo = b.cod_modulo
		and		( b.perfil = @perfil or b.perfil = @perfil2 )
		and		a.cod_modulo = 'Configuracion'
		order by a.orden
	end
	else if @tipo = 8
	begin
		select	distinct a.cod_menu, a.pagina, a.descripcion, a.nom_imagen, a.orden
		from	sipweb_conf_menu			a,
				sipweb_conf_perfiles		b
		where	a.cod_modulo	= b.cod_modulo
		and		a.cod_menu		= b.cod_menu
		and		a.cod_modulo	= @modulo
		and		a.cod_menu in ( 'Ficha Personal', 'Documentos' )
		order by orden
	end
	else if @tipo = 9
	begin
		select	a.pagina, a.descripcion, a.detalle, a.nom_imagen, a.cod_proceso
		from	sipweb_conf_procesos		a,
				sipweb_conf_perfiles		b
		where	a.cod_modulo	= b.cod_modulo
		and		a.cod_menu		= b.cod_menu
		and		a.cod_proceso	= b.cod_proceso
		and		a.cod_menu		= @menu
		--and		a.cod_proceso not in ( 'sw_doc_04', 'sw_doc_03', 'sw_doc_02', 'sw_doc_01', 'sw_ficha_08', 'sw_emp_10')
		and		a.cod_proceso not in ( 'sw_ficha_08', 'sw_emp_10')
		and		( b.perfil = @perfil or b.perfil = @perfil2 )
		order by orden
	end
	else if @tipo = 10
	begin
		select	a.cod_proceso, a.descripcion_defecto, a.nom_imagen, b.cod_proceso as ind_acceso
		from	sipweb_conf_procesos			a left outer join sipweb_conf_perfiles b on 
								a.cod_modulo		= b.cod_modulo
						and		a.cod_menu			= b.cod_menu
						and		a.cod_proceso		= b.cod_proceso
						and		b.perfil			= @perfil
		where	a.cod_modulo		= @modulo
		and		a.cod_menu			= @menu
		order by orden		
		
	end
END








GO

/****** Object:  StoredProcedure [dbo].[sp_conf_procesos_emp]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO

















CREATE PROCEDURE [dbo].[sp_conf_procesos_emp]
	@empresa		int,
	@modulo			varchar(20),
	@menu			varchar(20),
	@perfil			varchar(20),
	@perfil2		varchar(20),
	@tipo			int
AS
BEGIN
	SET NOCOUNT ON;

	if @tipo = 0
	begin
		select	distinct a.cod_modulo, a.descripcion, a.orden
		from	sipweb_conf_modulos			a,
				sipweb_conf_perfiles_emp	b
		where	a.cod_modulo = b.cod_modulo
		and		b.cod_empresa = @empresa
		and		( b.perfil = @perfil or b.perfil = @perfil2 )
		order by a.orden

	end
	else if @tipo = 1
	begin
		select	distinct a.cod_menu, a.pagina, a.descripcion, a.nom_imagen, a.orden
		from	sipweb_conf_menu			a,
				sipweb_conf_perfiles_emp		b
		where	a.cod_modulo	= b.cod_modulo
		and		a.cod_menu		= b.cod_menu
		and		a.cod_modulo	= @modulo
		and		b.cod_empresa = @empresa
		and		( b.perfil = @perfil or b.perfil = @perfil2 )
		order by orden
	end
	else if @tipo = 2
	begin
		select	descripcion, nom_imagen
		from	sipweb_conf_menu
		where	cod_menu	= @menu
		order by orden
	end
	else if @tipo = 3
	begin
		select	a.pagina, a.descripcion, a.detalle, a.nom_imagen, a.cod_proceso
		from	sipweb_conf_procesos			a,
				sipweb_conf_perfiles_emp		b
		where	a.cod_modulo	= b.cod_modulo
		and		a.cod_menu		= b.cod_menu
		and		a.cod_proceso	= b.cod_proceso
		and		a.cod_menu		= @menu
		and		b.cod_empresa	= @empresa
		and		( b.perfil = @perfil or b.perfil = @perfil2 )
		order by orden
	end
	else if @tipo = 4
	begin
		select	cod_modulo, descripcion
		from	sipweb_conf_modulos
		order by orden
	end
	else if @tipo = 5
	begin
		select	cod_menu, descripcion
		from	sipweb_conf_menu
		where	cod_modulo = @modulo
		order by orden
	end
	else if @tipo = 6
	begin
		select	cod_proceso, descripcion, nom_imagen, orden, descripcion_defecto
		from	sipweb_conf_procesos
		where	cod_modulo	= @modulo
		and		cod_menu	= @menu
		order by orden		
	end
	else if @tipo = 7
	begin
		select	distinct a.cod_modulo, a.descripcion, a.orden
		from	sipweb_conf_modulos				a,
				sipweb_conf_perfiles_emp		b
		where	a.cod_modulo = b.cod_modulo
		and		b.cod_empresa = @empresa
		and		( b.perfil = @perfil or b.perfil = @perfil2 )
		and		a.cod_modulo = 'Configuracion'
		order by a.orden
	end
	else if @tipo = 8
	begin
		select	distinct a.cod_menu, a.pagina, a.descripcion, a.nom_imagen, a.orden
		from	sipweb_conf_menu			a,
				sipweb_conf_perfiles_emp		b
		where	a.cod_modulo	= b.cod_modulo
		and		a.cod_menu		= b.cod_menu
		and		a.cod_modulo	= @modulo
		and		b.cod_empresa = @empresa
		and		a.cod_menu in ( 'Ficha Personal', 'Documentos' )
		order by orden
	end
	else if @tipo = 9
	begin
		select	a.pagina, a.descripcion, a.detalle, a.nom_imagen, a.cod_proceso
		from	sipweb_conf_procesos		a,
				sipweb_conf_perfiles_emp		b
		where	a.cod_modulo	= b.cod_modulo
		and		a.cod_menu		= b.cod_menu
		and		a.cod_proceso	= b.cod_proceso
		and		a.cod_menu		= @menu
	--	and		a.cod_proceso not in ( 'sw_doc_04', 'sw_doc_03', 'sw_doc_02', 'sw_doc_01', 'sw_ficha_08', 'sw_emp_10')
		and		a.cod_proceso not in ( 'sw_ficha_08', 'sw_emp_10')
		and		b.cod_empresa = @empresa
		and		( b.perfil = @perfil or b.perfil = @perfil2 )
		order by orden
	end
	else if @tipo = 10
	begin
		select	a.cod_proceso, a.descripcion_defecto, a.nom_imagen, b.cod_proceso as ind_acceso
		from	sipweb_conf_procesos			a left outer join sipweb_conf_perfiles_emp b on 
								a.cod_modulo		= b.cod_modulo
						and		a.cod_menu			= b.cod_menu
						and		a.cod_proceso		= b.cod_proceso
						and		b.cod_empresa		= @empresa
						and		b.perfil			= @perfil
		where	a.cod_modulo		= @modulo
		and		a.cod_menu			= @menu
		order by orden		
		
	end
	else if @tipo = 11
	begin
		select	cod_empresa
		from	sipweb_conf_perfiles_emp
		where	cod_empresa		= @empresa
		and		perfil			= @perfil
	end	
END



















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_eval_publ]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[sp_conf_eval_publ]
	@tipo			int,
	@ano			int,
	@id_eval		int,
	@cod			varchar(10),
	@ver			varchar(10)
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.ano_proceso,
				a.id_eval,
				convert(varchar(10),a.id_eval)++':'++b.desc_eval as evaluacion,
				a.cod_eval,
				a.version_eval,
				a.area_eval,
				convert(varchar(10),fecha_desde,103) as fecha_desde,
				convert(varchar(10),fecha_hasta,103) as fecha_hasta,
				a.estado,
				a.filtrar_cargo
		from	sipweb_eval_publ	a,
				sipweb_conf_eval	b
		where	a.id_eval = b.id_eval
		order by a.ano_proceso, a.id_eval asc
	end
	else if @tipo = 1
	begin
		select	area_eval,
				convert(varchar(10),fecha_desde,103) as fecha_desde,
				convert(varchar(10),fecha_hasta,103) as fecha_hasta,
				estado,
				convert(varchar(10),fec_estado,103) as fec_estado,
				filtrar_cargo
		from	sipweb_eval_publ
		where	ano_proceso			= @ano
		and		id_eval				= @id_eval
		and		cod_eval			= @cod
		and		version_eval		= @ver
	end
	else if @tipo = 2
	begin
		select	count(*)
		from	sipweb_eval_trab
		where	ano_proceso			= @ano
		and		id_eval				= @id_eval
		and		cod_eval			= @cod
		and		version_eval		= @ver
	end
	else if @tipo = 3
	begin
		select	id_eval
		from	sipweb_conf_eval_item
		where	id_eval = @id_eval 
		and		id_item not in ( select	id_item
						from	sipweb_hst_eval_item
						where	ano_proceso			= @ano
						and		id_eval				= @id_eval
						and		cod_eval			= @cod
						and		version_eval		= @ver )
	union all 
		select	id_eval
		from	sipweb_conf_eval_subitem 
		where	id_eval = @id_eval 
		and		convert(varchar(15),id_item)++'_'++convert(varchar(15),id_sub_item) not in (
							select convert(varchar(15),id_item)++'_'++convert(varchar(15),id_sub_item)
							from sipweb_hst_eval_subitem
								where	ano_proceso			= @ano
								and		id_eval				= @id_eval
								and		cod_eval			= @cod
								and		version_eval		= @ver )
	union all 
		select	id_eval 
		from	sipweb_conf_eval_od
		where	id_eval	= @id_eval
		and		id_od  not in ( select id_od from sipweb_hst_eval_od
							where	ano_proceso			= @ano
							and		id_eval				= @id_eval
							and		cod_eval			= @cod
							and		version_eval		= @ver )
	union all 
		select	id_eval 
		from	sipweb_conf_eval_odsel
		where	id_eval	= @id_eval
		and		convert(varchar(15),id_od)++'_'++convert(varchar(15),id_sel)  not in ( 
				select convert(varchar(15),id_od)++'_'++convert(varchar(15),id_sel) from sipweb_hst_eval_odsel
							where	ano_proceso			= @ano
							and		id_eval				= @id_eval
							and		cod_eval			= @cod
							and		version_eval		= @ver )
	union all 
		select	id_eval 
		from	sipweb_conf_eval_crit
		where	id_eval	= @id_eval
		and		id_crit  not in ( 
				select id_crit from sipweb_hst_eval_crit
							where	ano_proceso			= @ano
							and		id_eval				= @id_eval
							and		cod_eval			= @cod
							and		version_eval		= @ver )
	end
	else if @tipo = 4
		begin
			select	distinct cod_cargo, cargo_trabajador, 0 as Publicar
			from	cargo_trabajador 
			where	cod_empresa = @ano
		end
	
END

















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_eval_publ_upd]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[sp_conf_eval_publ_upd]
	@ano_proceso		int,
	@id_eval			int,
	@desc_eval			varchar(110),
	@cod_eval			varchar(10),
	@version_eval		varchar(10),
	@area_eval			varchar(20),
	@fecha_desde		datetime,
	@fecha_hasta		datetime,
	@estado				varchar(15),
	@filtrar_cargo		varchar(10),
	@tipo				int
AS
declare
	@scod_encuesta varchar(50)
BEGIN TRANSACTION
	select @scod_encuesta = convert(varchar(4),@ano_proceso)++'_'++convert(varchar(4),@id_eval)++'_'++@cod_eval++'_'++@version_eval
	if ( @tipo = 0 )
	begin
		insert into sipweb_eval_publ
			( cod_encuesta, ano_proceso, id_eval, desc_eval, cod_eval, version_eval, area_eval, 
				fecha_desde, fecha_hasta, estado, fec_estado, filtrar_cargo )
		values 
			( @scod_encuesta, @ano_proceso, @id_eval, @desc_eval, @cod_eval, @version_eval, @area_eval, 
				@fecha_desde, @fecha_hasta, 'Abierta', getdate(), @filtrar_cargo )

	  -- historicos

		insert into sipweb_hst_eval
           ( cod_encuesta, ano_proceso, cod_eval, version_eval, id_eval, desc_eval, flg_abierto, decimales, tipoevaluacion)
		select	@scod_encuesta, @ano_proceso, @cod_eval, @version_eval, id_eval, desc_eval, flg_abierto, decimales, tipoevaluacion
		from	sipweb_conf_eval
		where	id_eval	= @id_eval

		insert into sipweb_hst_eval_crit
           (cod_encuesta, ano_proceso, cod_eval, version_eval, id_eval, id_crit, cod_nivel_crit, nivel_crit, desc_crit, nota_crit_i, 
			nota_crit_s, req_just)
		select @scod_encuesta, @ano_proceso, @cod_eval, @version_eval, id_eval, id_crit, cod_nivel_crit, nivel_crit, desc_crit, nota_crit_i, 
				nota_crit_s, req_just
		from	sipweb_conf_eval_crit
		where	id_eval	= @id_eval

		insert into sipweb_hst_eval_item
           (cod_encuesta, ano_proceso, cod_eval, version_eval, id_eval, id_item, desc_item, porc_calc, no_aplica_trab)
		select @scod_encuesta, @ano_proceso, @cod_eval, @version_eval, id_eval, id_item, desc_item, porc_calc, no_aplica_trab
		from	sipweb_conf_eval_item
		where	id_eval	= @id_eval

		insert into sipweb_hst_eval_subitem
           (cod_encuesta, ano_proceso, cod_eval, version_eval, id_eval, id_item, id_sub_item, descripcion, desc_corta)
		select @scod_encuesta, @ano_proceso, @cod_eval, @version_eval, id_eval, id_item, id_sub_item, descripcion, desc_corta
		from	sipweb_conf_eval_subitem
		where	id_eval	= @id_eval
		
		
		insert into sipweb_hst_eval_od
           (cod_encuesta, ano_proceso, cod_eval, version_eval, id_eval, id_od, desc_od, tipo, req_just)
		select @scod_encuesta, @ano_proceso, @cod_eval, @version_eval, id_eval, id_od, desc_od, tipo, req_just
		from	sipweb_conf_eval_od
		where	id_eval	= @id_eval
		
		insert into sipweb_hst_eval_odsel
           (cod_encuesta, ano_proceso, cod_eval, version_eval, id_eval, id_od, id_sel, desc_sel )
		select @scod_encuesta, @ano_proceso, @cod_eval, @version_eval, id_eval, id_od, id_sel, desc_sel 
		from	sipweb_conf_eval_odsel
		where	id_eval	= @id_eval

	-- fin historicos

	end
	else if ( @tipo = 1 )
	begin
		update	sipweb_eval_publ
		set		area_eval			= @area_eval,
				fecha_desde			= @fecha_desde,
				fecha_hasta			= @fecha_hasta,
				filtrar_cargo		= @filtrar_cargo
		where	ano_proceso			= @ano_proceso
		and		id_eval				= @id_eval
		and		cod_eval			= @cod_eval
		and		version_eval		= @version_eval
	end
	else if ( @tipo = 2 )
	begin
		delete from	sipweb_eval_publ
		where	ano_proceso			= @ano_proceso
		and		id_eval				= @id_eval
		and		cod_eval			= @cod_eval
		and		version_eval		= @version_eval

		delete from sipweb_hst_eval
        where	ano_proceso			= @ano_proceso
		and		id_eval				= @id_eval
		and		cod_eval			= @cod_eval
		and		version_eval		= @version_eval

		delete from sipweb_hst_eval_crit
        where	ano_proceso			= @ano_proceso
		and		id_eval				= @id_eval
		and		cod_eval			= @cod_eval
		and		version_eval		= @version_eval

		delete from sipweb_hst_eval_item
        where	ano_proceso			= @ano_proceso
		and		id_eval				= @id_eval
		and		cod_eval			= @cod_eval
		and		version_eval		= @version_eval

		delete from sipweb_hst_eval_subitem
        where	ano_proceso			= @ano_proceso
		and		id_eval				= @id_eval
		and		cod_eval			= @cod_eval
		and		version_eval		= @version_eval
		
		
		delete from sipweb_hst_eval_od
        where	ano_proceso			= @ano_proceso
		and		id_eval				= @id_eval
		and		cod_eval			= @cod_eval
		and		version_eval		= @version_eval
		
		delete from sipweb_hst_eval_odsel
        where	ano_proceso			= @ano_proceso
		and		id_eval				= @id_eval
		and		cod_eval			= @cod_eval
		and		version_eval		= @version_eval 

	end
	else if ( @tipo = 3 )
	begin
		update	sipweb_eval_publ
		set		estado				= @estado,
				fec_estado			= getdate()
		where	ano_proceso			= @ano_proceso
		and		id_eval				= @id_eval
		and		cod_eval			= @cod_eval
		and		version_eval		= @version_eval
	end
	else if ( @tipo = 4 )
	begin 

		insert into sipweb_hst_eval_crit
           (cod_encuesta, ano_proceso, cod_eval, version_eval, id_eval, id_crit, cod_nivel_crit, nivel_crit, desc_crit, nota_crit_i, 
			nota_crit_s, req_just)
		select @scod_encuesta, @ano_proceso, @cod_eval, @version_eval, id_eval, id_crit, cod_nivel_crit, nivel_crit, desc_crit, nota_crit_i, 
				nota_crit_s, req_just
		from	sipweb_conf_eval_crit
		where	id_eval	= @id_eval
		and		id_crit  not in ( select id_crit from sipweb_hst_eval_crit
							where	ano_proceso			= @ano_proceso
							and		id_eval				= @id_eval
							and		cod_eval			= @cod_eval
							and		version_eval		= @version_eval )

		insert into sipweb_hst_eval_item
           (cod_encuesta, ano_proceso, cod_eval, version_eval, id_eval, id_item, desc_item, porc_calc, no_aplica_trab)
		select @scod_encuesta, @ano_proceso, @cod_eval, @version_eval, id_eval, id_item, desc_item, porc_calc, no_aplica_trab
		from	sipweb_conf_eval_item
		where	id_eval	= @id_eval
		and		id_item  not in ( select id_item from sipweb_hst_eval_item
							where	ano_proceso			= @ano_proceso
							and		id_eval				= @id_eval
							and		cod_eval			= @cod_eval
							and		version_eval		= @version_eval )

		insert into sipweb_hst_eval_subitem
           (cod_encuesta, ano_proceso, cod_eval, version_eval, id_eval, id_item, id_sub_item, descripcion, desc_corta)
		select @scod_encuesta, @ano_proceso, @cod_eval, @version_eval, id_eval, id_item, id_sub_item, descripcion, desc_corta
		from	sipweb_conf_eval_subitem
		where	id_eval	= @id_eval
		and		convert(varchar(15),id_item)++'_'++convert(varchar(15),id_sub_item)   not in ( 
						select convert(varchar(15),id_item)++'_'++convert(varchar(15),id_sub_item)  
							from sipweb_hst_eval_subitem
							where	ano_proceso			= @ano_proceso
							and		id_eval				= @id_eval
							and		cod_eval			= @cod_eval
							and		version_eval		= @version_eval )
		
		
		insert into sipweb_hst_eval_od
           (cod_encuesta, ano_proceso, cod_eval, version_eval, id_eval, id_od, desc_od, tipo, req_just)
		select @scod_encuesta, @ano_proceso, @cod_eval, @version_eval, id_eval, id_od, desc_od, tipo, req_just
		from	sipweb_conf_eval_od
		where	id_eval	= @id_eval
		and		id_od  not in ( select id_od from sipweb_hst_eval_od
							where	ano_proceso			= @ano_proceso
							and		id_eval				= @id_eval
							and		cod_eval			= @cod_eval
							and		version_eval		= @version_eval )
		
		insert into sipweb_hst_eval_odsel
           (cod_encuesta, ano_proceso, cod_eval, version_eval, id_eval, id_od, id_sel, desc_sel )
		select @scod_encuesta, @ano_proceso, @cod_eval, @version_eval, id_eval, id_od, id_sel, desc_sel 
		from	sipweb_conf_eval_odsel
		where	id_eval	= @id_eval
		and		convert(varchar(15),id_od)++'_'++convert(varchar(15),id_sel)  not in ( 
				select convert(varchar(15),id_od)++'_'++convert(varchar(15),id_sel) 
						from sipweb_hst_eval_odsel
							where	ano_proceso			= @ano_proceso
							and		id_eval				= @id_eval
							and		cod_eval			= @cod_eval
							and		version_eval		= @version_eval )

	-- fin historicos
	
		update	sipweb_eval_trab
		set		estado_evaluador	= 'Guardada',
				estado_evaluado		= null
		where	ano_proceso			= @ano_proceso
		and		id_eval				= @id_eval
		and		cod_eval			= @cod_eval
		and		version_eval		= @version_eval 

	end

COMMIT TRANSACTION



















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_eval_publ_car_upd]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[sp_conf_eval_publ_car_upd]
	@ano_proceso		int,
	@id_eval			int,
	@desc_eval			varchar(110),
	@cod_eval			varchar(10),
	@version_eval		varchar(10),
	@cod_cargo			int,
	@tipo				int
AS
declare
	@scod_encuesta varchar(50)
BEGIN TRANSACTION
	select @scod_encuesta = convert(varchar(4),@ano_proceso)++'_'++convert(varchar(4),@id_eval)++'_'++@cod_eval++'_'++@version_eval
	
	if @tipo = 0
	begin
		
		delete from	sipweb_eval_publ_cargo
		where	ano_proceso			= @ano_proceso
		and		id_eval				= @id_eval
		and		cod_eval			= @cod_eval
		and		version_eval		= @version_eval
	end
	else if @tipo = 1
	begin
			insert into sipweb_eval_publ_cargo
				( cod_encuesta, ano_proceso, id_eval, desc_eval, cod_eval, version_eval, cod_cargo )
			values 
				( @scod_encuesta, @ano_proceso, @id_eval, @desc_eval, @cod_eval, @version_eval, @cod_cargo )
	end


	
COMMIT TRANSACTION



















GO

/****** Object:  StoredProcedure [dbo].[sp_cons_evaluaciones]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[sp_cons_evaluaciones]
	@tipo				int,
	@cod_empresa		int,
	@cod_planta			int,
	@rut_trabajador		int,
	@nro_trabajador		int,
	@cod_encuesta		varchar(50)
AS
BEGIN
	SET NOCOUNT ON

	   if @tipo = 0
	   begin
			select		a.nom_evaluado as Nombre,
						c.cargo_trabajador as Cargo,
						case when b.area_perten is null then '' else b.area_perten end  as Area,
						a.nro_evaluado as nro_trabajador,
						a.cod_empresa,
						a.cod_planta,
						a.rut_evaluado as rut_trabajador,
						a.ano_proceso,
						a.id_eval,
						a.cod_eval,
						a.version_eval,
						a.desc_eval,
						a.area_eval,
						convert(varchar(10),fecha_evaluacion,103) as fecha_evaluacion,
						case when a.comentario_trab is null then 'Pendiente' else case when a.estado_evaluado = 'Enviada' then 'Cerrada' else 'Pendiente' end end  as estado
				from	sipweb_eval_trab	a	left outer join area_perten b 
										on 	a.cod_empresa		= b.cod_empresa
										and	a.area_evaluado		= b.cod_area_perten,
						cargo_trabajador    c						 
				where	a.cod_empresa		= c.cod_empresa
				and		a.cargo_evaluado	= c.cod_cargo
				and		a.cod_empresa		= @cod_empresa
				and		a.cod_planta		= @cod_planta
				and		a.nro_evaluado		= @nro_trabajador
				and		a.tipo_eval			= 'Trab'
				order by a.nom_evaluado
		end
		else if @tipo = 1
	    begin
				select	a.nom_evaluado as Nombre,
						c.cargo_trabajador as Cargo,
						case when b.area_perten is null then '' else b.area_perten end  as Area,
						a.nro_evaluado as nro_trabajador,
						a.cod_empresa,
						a.cod_planta,
						a.rut_evaluado as rut_trabajador,
						a.ano_proceso,
						a.id_eval,
						a.cod_eval,
						a.version_eval, 
						case when a.comentario_trab is null then 'Pendiente' else case when a.estado_evaluado = 'Enviada' then 'Cerrada' else 'Pendiente' end end  as estado
				from	sipweb_eval_trab	a	left outer join area_perten b 
										on 	a.cod_empresa		= b.cod_empresa
										and	a.area_evaluado		= b.cod_area_perten,
						cargo_trabajador    c						 
				where	a.cod_empresa		= c.cod_empresa
				and		a.cargo_evaluado	= c.cod_cargo
				and		a.cod_empresa		= @cod_empresa
				and		a.cod_planta		= @cod_planta
				and		a.cod_encuesta		= @cod_encuesta
				and		a.nro_evaluador		= @nro_trabajador
				and		a.estado_evaluador	= 'Enviada'
				order by a.nom_evaluado
		end
		else if @tipo = 2
	    begin
				select	ano_proceso,
						cod_eval,
						version_eval,
						convert(varchar(10),fecha_desde,103)++' - '++convert(varchar(10),fecha_hasta,103) as periodo
				from	sipweb_eval_publ
				where	cod_encuesta		= @cod_encuesta
		end
		else if @tipo = 3
	    begin
			select		a.nom_evaluador,
						a.nom_evaluado,
						c.cargo_trabajador as Cargo,
						e.sigla_empresa,
						convert(varchar(10),fecha_ctto_evaluado,103) as fecha_ctto_evaluado,
						d.casilla_e_mail,
						a.fortalezas,
						a.sugerencias,					
						a.comentario_trab,
						a.nro_evaluador,
						a.rut_evaluador,
						a.estado_evaluado
				from	sipweb_eval_trab	a	left outer join empresa e on a.cod_empresa = e.cod_empresa
												left outer join personal d on a.cod_empresa = d.cod_empresa
																	and	a.cod_planta = d.cod_planta
																	and	a.nro_evaluador = d.nro_trabajador,
						cargo_trabajador    c						 
				where	a.cod_empresa		= c.cod_empresa
				and		a.cargo_evaluado	= c.cod_cargo
				and		a.cod_empresa		= @cod_empresa
				and		a.cod_planta		= @cod_planta
				and		a.nro_evaluado		= @nro_trabajador
				and		a.cod_encuesta		= @cod_encuesta
				and		a.tipo_eval			= 'Trab'
				order by a.nom_evaluado
		end
		else if @tipo = 4
	    begin
				select	distinct a.cod_encuesta,
						a.cod_encuesta++':'++a.desc_eval as desc_eval
				from	sipweb_hst_eval		a,
						sipweb_eval_publ	b,
						sipweb_eval_trab	c
				where	a.cod_encuesta	= b.cod_encuesta
				and		a.cod_encuesta	= c.cod_encuesta
				and		c.nro_evaluado	= @nro_trabajador
		end
		else if @tipo = 5
	    begin
				select	distinct a.cod_encuesta,
						a.cod_encuesta++':'++a.desc_eval as desc_eval
				from	sipweb_hst_eval		a,
						sipweb_eval_publ	b,
						sipweb_eval_trab	c
				where	a.cod_encuesta	= b.cod_encuesta
				and		a.cod_encuesta	= c.cod_encuesta
				and		c.nro_evaluador	= @nro_trabajador
		end
		else if @tipo = 6
	    begin
				select	distinct a.cod_encuesta,
						a.cod_encuesta++':'++a.desc_eval as desc_eval
				from	sipweb_hst_eval		a,
						sipweb_eval_publ	b,
						sipweb_eval_trab	c
				where	a.cod_encuesta	= b.cod_encuesta
				and		a.cod_encuesta	= c.cod_encuesta
				and		c.cod_empresa		= @cod_empresa
				and		c.cod_planta		= @cod_planta
		end
		else if @tipo = 7
	    begin
				select	a.nom_evaluador as Evaluador,
						a.nom_evaluado as Evaluado,
						c.cargo_trabajador as Cargo,
						case when b.area_perten is null then '' else b.area_perten end  as Area,
						a.nro_evaluado as nro_trabajador,
						a.cod_empresa,
						a.cod_planta,
						a.rut_evaluado as rut_trabajador,
						a.ano_proceso,
						a.id_eval,
						a.cod_eval,
						a.version_eval,
						case when a.comentario_trab is null then 'Pendiente' else case when a.estado_evaluado = 'Enviada' then 'Cerrada' else 'Pendiente' end end  as estado
				from	sipweb_eval_trab	a	left outer join area_perten b 
										on 	a.cod_empresa		= b.cod_empresa
										and	a.area_evaluado		= b.cod_area_perten,
						cargo_trabajador    c						 
				where	a.cod_empresa		= c.cod_empresa
				and		a.cargo_evaluado	= c.cod_cargo
				and		a.cod_empresa		= @cod_empresa
				and		a.cod_planta		= @cod_planta
				and		a.cod_encuesta		= @cod_encuesta
				order by a.nom_evaluador, a.nom_evaluado
		end
		else if @tipo = 8
		begin
			select	distinct a.cod_cargo, cargo_trabajador, isnull(b.cod_cargo, 0) as Publicar
			from	cargo_trabajador a	left outer join sipweb_eval_publ_cargo b
									on a.cod_cargo = b.cod_cargo
									and	b.cod_encuesta		= @cod_encuesta
			where	cod_empresa		= @cod_empresa
		end
		
END




















GO

/****** Object:  StoredProcedure [dbo].[sp_eval_reportes_pend]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO




 
CREATE PROCEDURE [dbo].[sp_eval_reportes_pend]
	@tipo				int,
	@empresa			int,
	@cod_encuesta		varchar(50),
	@rut				int
AS
BEGIN
	SET NOCOUNT ON
	  if @tipo = 0
	  begin
			select	desc_eval, ano_proceso, cod_eval, version_eval
	        from	sipweb_hst_eval
		    where   cod_encuesta = @cod_encuesta
	 end
	 else if @tipo = 1
	 begin
			select	distinct convert(varchar(10),a.rut_trabajador)++'-'++a.dv_rut_trabajador as Rut, 
					a.ape_paterno_trabaj++' '++a.ape_materno_trabaj++' '++a.nombre as Nombre,
					a.rut_trabajador,
					a.cod_planta
	        from	personal			a,
					personal_dinamico	b
		    where   a.cod_empresa			= @empresa
			and		a.cod_vigen_trabajad	= 'S'
			and		b.nombre_interno		= 'RutJefDir'
			and		a.rut_trabajador		= b.valor_columna 
										
	 end
	 else if @tipo = 2
	 begin
			select	convert(varchar(10),a.nro_trabajador)++'-'++a.dv_trabajador as Codigo, 
					a.ape_paterno_trabaj++' '++a.ape_materno_trabaj++' '++a.nombre as Nombre,
					convert(varchar(10),a.cod_unidad_adminis)++':'++d.unidad_administrat,
					convert(varchar(10),a.cod_sucursal)++':'++e.sucursal,
					convert(varchar(10),a.cod_planta)++':'++c.planta,
					convert(varchar(10),a.cod_area_perten)++':'++case when g.area_perten is null then '''' else g.area_perten end,
					convert(varchar(10),a.cod_centro_costo)++':'++b.centro_costo,
					a.nro_trabajador,
					a.cod_empresa,
					a.rut_trabajador
				from	personal			a left outer join area_perten g 
										on 	a.cod_empresa		= g.cod_empresa
										and	a.cod_area_perten		= g.cod_area_perten,
						centro_costo		b,
						planta			    c,
						unidad_administrat  d,
						sucursal            e,
						personal_dinamico	z
				where	a.cod_empresa		= b.cod_empresa
				and		a.cod_centro_costo	= b.cod_centro_costo
				and		a.cod_empresa		= c.cod_empresa
				and		a.cod_planta		= c.cod_planta
				and		a.cod_empresa		= d.cod_empresa
				and		a.cod_unidad_adminis = d.cod_unidad_adminis
				and		a.cod_empresa		= e.cod_empresa
				and		a.cod_planta		= e.cod_planta
				and		a.cod_sucursal		= e.cod_sucursal
				and		a.cod_empresa		= @empresa
				and		a.cod_empresa		= z.cod_empresa
				and		a.nro_trabajador	= z.nro_trabajador
				and		z.nombre_interno	= 'RutJefDir'
				and		z.valor_columna		= @rut
				and		a.nro_trabajador not in ( select nro_evaluado from sipweb_eval_trab 
													where	cod_empresa	 = @empresa 
													and		cod_encuesta = @cod_encuesta
													and		tipo_eval	= 'Trab'
													and		estado_evaluador	= 'Enviada' )
				and		a.cod_vigen_trabajad = 'S'
				order by a.ape_paterno_trabaj++' '++a.ape_materno_trabaj++' '++a.nombre
	 end
	else if @tipo = 3
	 begin
				select	convert(varchar(10),a.nro_trabajador)++'-'++a.dv_trabajador as Codigo, 
					a.ape_paterno_trabaj++' '++a.ape_materno_trabaj++' '++a.nombre as Nombre,
					convert(varchar(10),a.cod_unidad_adminis)++':'++d.unidad_administrat,
					convert(varchar(10),a.cod_sucursal)++':'++e.sucursal,
					convert(varchar(10),a.cod_planta)++':'++c.planta,
					convert(varchar(10),a.cod_area_perten)++':'++case when g.area_perten is null then '''' else g.area_perten end,
					convert(varchar(10),a.cod_centro_costo)++':'++b.centro_costo,
					a.nro_trabajador,
					a.cod_empresa,
					a.rut_trabajador
				from	personal			a left outer join area_perten g 
										on 	a.cod_empresa		= g.cod_empresa
										and	a.cod_area_perten		= g.cod_area_perten,
						centro_costo		b,
						planta			    c,
						unidad_administrat  d,
						sucursal            e,
						personal_dinamico	z
				where	a.cod_empresa		= b.cod_empresa
				and		a.cod_centro_costo	= b.cod_centro_costo
				and		a.cod_empresa		= c.cod_empresa
				and		a.cod_planta		= c.cod_planta
				and		a.cod_empresa		= d.cod_empresa
				and		a.cod_unidad_adminis = d.cod_unidad_adminis
				and		a.cod_empresa		= e.cod_empresa
				and		a.cod_planta		= e.cod_planta
				and		a.cod_sucursal		= e.cod_sucursal
				and		a.cod_empresa		= @empresa
				and		a.cod_empresa		= z.cod_empresa
				and		a.nro_trabajador	= z.nro_trabajador
				and		z.nombre_interno	= 'RutJefDir'
				and		z.valor_columna		= @rut
					and		a.nro_trabajador not in ( select nro_evaluador from sipweb_eval_trab 
													where	cod_empresa	 = @empresa 
													and		cod_encuesta = @cod_encuesta
													and		tipo_eval	= 'Jefes' )
				and		a.cod_vigen_trabajad = 'S'
				order by a.ape_paterno_trabaj++' '++a.ape_materno_trabaj++' '++a.nombre
	 end
END
















GO

/****** Object:  StoredProcedure [dbo].[sp_lista_evaluaciones]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[sp_lista_evaluaciones]
	@tipo				int,
	@cod_empresa		int,
	@cod_planta			int,
	@rut_trabajador		int,
	@nro_trabajador		int,
	@cod_encuesta		varchar(50)
AS
BEGIN
	SET NOCOUNT ON

	   if @tipo = 0
	   begin
			select	a.ape_paterno_trabaj++' '++a.ape_materno_trabaj++' '++a.nombre as Nombre,
						c.cargo_trabajador as Cargo,
						case when b.area_perten is null then '' else b.area_perten end  as Area,
						a.nro_trabajador,
						a.cod_empresa,
						a.cod_planta,
						a.rut_trabajador,
						a.ano_proceso,
						a.id_eval,
						a.cod_eval,
						a.version_eval,
						case when f.cod_encuesta is null then 'Pendiente' else 'Evaluado' end  as estado
				from	sipweb_vista_pers_eval	a left outer join area_perten b 
										on 	a.cod_empresa		= b.cod_empresa
										and	a.cod_area_perten		= b.cod_area_perten
												left outer join sipweb_eval_trab f
										on a.cod_empresa		= f.cod_empresa
										and a.cod_planta		= f.cod_planta
										and a.nro_trabajador	= f.nro_evaluado
										and a.rut_trabajador	= f.rut_evaluado
										and a.cod_encuesta		= f.cod_encuesta
										and	f.rut_evaluador		= @rut_trabajador,
						cargo_trabajador    c,
						personal_dinamico	d											
				where	a.cod_empresa		= c.cod_empresa
				and		a.cod_cargo			= c.cod_cargo
				and		a.cod_empresa		= d.cod_empresa
				and		a.rut_trabajador	= d.valor_columna
				and		a.cod_encuesta		= @cod_encuesta
				and		d.nombre_interno	= 'RutJefDir'
				and		d.cod_empresa		= @cod_empresa
				and		d.cod_planta		= @cod_planta
				and		d.nro_trabajador	= @nro_trabajador
				order by estado desc, a.ape_paterno_trabaj, a.ape_materno_trabaj, a.nombre
		end
		else if @tipo = 1
	    begin
				select	a.ape_paterno_trabaj++' '++a.ape_materno_trabaj++' '++a.nombre as Nombre,
						c.cargo_trabajador as Cargo,
						case when b.area_perten is null then '' else b.area_perten end  as Area,
						a.nro_trabajador,
						a.cod_empresa,
						a.cod_planta,
						a.rut_trabajador,
						a.ano_proceso,
						a.id_eval,
						a.cod_eval,
						a.version_eval,
						case when f.cod_encuesta is null then 'Pendiente' else case when f.estado_evaluador = 'Guardada' then 'Guardada' else 'Evaluado' end end  as estado
				from	sipweb_vista_pers_eval	a	left outer join area_perten b 
										on 	a.cod_empresa		= b.cod_empresa
										and	a.cod_area_perten		= b.cod_area_perten
											left outer join sipweb_eval_trab f
										on a.cod_empresa		= f.cod_empresa
										and a.cod_planta		= f.cod_planta
										and a.nro_trabajador	= f.nro_evaluado
										and a.rut_trabajador	= f.rut_evaluado
										and a.cod_encuesta		= f.cod_encuesta,
						cargo_trabajador    c,
						personal_dinamico	d						 
				where	a.cod_empresa		= c.cod_empresa
				and		a.cod_cargo			= c.cod_cargo
				and		a.cod_empresa		= d.cod_empresa
				and		a.nro_trabajador	= d.nro_trabajador
				and		a.cod_empresa		= @cod_empresa
				and		a.cod_planta		= @cod_planta
				and		a.cod_encuesta		= @cod_encuesta
				and		d.nombre_interno	= 'RutJefDir'
				and		d.valor_columna		= @rut_trabajador
				order by estado desc, a.ape_paterno_trabaj, a.ape_materno_trabaj, a.nombre
		end
		else if @tipo = 2
	    begin
				select	ano_proceso,
						cod_eval,
						version_eval,
						convert(varchar(10),fecha_desde,103)++' - '++convert(varchar(10),fecha_hasta,103) as periodo
				from	sipweb_eval_publ
				where	cod_encuesta		= @cod_encuesta
		end
		else if @tipo = 3
	    begin
			select	a.ape_paterno_trabaj++' '++a.ape_materno_trabaj++' '++a.nombre as Nombre,
					a.cod_cargo, 
					left(c.cargo_trabajador,30), 
					a.cod_unidad_adminis, 
					left(b.unidad_administrat,30), 
					a.casilla_e_mail,
					e.sigla_empresa,
					convert(varchar(10),fec_ini_contrato,103) as fec_ini_contrato
				from	personal a  left outer join unidad_administrat b on a.cod_empresa = b.cod_empresa and a.cod_unidad_adminis = b.cod_unidad_adminis
									left outer join cargo_trabajador c on a.cod_empresa = c.cod_empresa and a.cod_cargo = c.cod_cargo 
									left outer join empresa e on a.cod_empresa = e.cod_empresa 
				where	a.rut_trabajador = @rut_trabajador
				and		a.nro_trabajador = @nro_trabajador
				and		a.cod_empresa = @cod_empresa
				and		a.cod_planta = @cod_planta
		end
		else if @tipo = 4
		begin			
			select	cod_encuesta,
					desc_eval,
					ano_proceso
			from	sipweb_eval_publ
			where	estado		= 'Abierta'
			and		filtrar_cargo = 'No'
		union all
			select	cod_encuesta,
					desc_eval,
					ano_proceso
			from	sipweb_eval_publ
			where	estado		= 'Abierta'
			and		filtrar_cargo = 'Si'
			and		cod_encuesta in ( select	cod_encuesta 
										from	sipweb_eval_publ_cargo a,
												personal b
										where	a.cod_cargo = b.cod_cargo
										and		b.rut_trabajador = @rut_trabajador
										and		b.nro_trabajador = @nro_trabajador
										and		b.cod_empresa = @cod_empresa
										and		b.cod_planta = @cod_planta )
			order by ano_proceso, cod_encuesta asc
		end
		else if @tipo = 5
		begin			
			select	cod_encuesta,
					desc_eval,
					ano_proceso
			from	sipweb_eval_publ
			where	cod_encuesta		= @cod_encuesta
			and		filtrar_cargo = 'No'
		union all
			select	cod_encuesta,
					desc_eval,
					ano_proceso
			from	sipweb_eval_publ
			where	cod_encuesta		= @cod_encuesta
			and		filtrar_cargo = 'Si'
			and		cod_encuesta in ( select	cod_encuesta 
										from	sipweb_eval_publ_cargo a,
												personal b
										where	a.cod_cargo = b.cod_cargo
										and		b.rut_trabajador = @rut_trabajador 
										and		b.cod_empresa = @cod_empresa
										and		b.cod_planta = @cod_planta ) 
		end
END

















GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solvacaciones_upd]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[sp_doc_solvacaciones_upd]
	@id					numeric(14),
	@cod_empresa		int,
	@cod_planta			int,
	@nro_trabajador		int,
	@dv_trabajador		varchar(1),
	@fecha_desde		datetime,
	@fecha_hasta		datetime,
	@cantidad			decimal(18,2),
	@estado				varchar(20),
	@usuario_autoriza	varchar(15),
	@fecha_autorizacion datetime,
	@usuario_traspaso	varchar(15),
	@fecha_traspaso		datetime,
	@usuario_rechazo	varchar(15),
	@fecha_rechazo		datetime,
	@mediodia			int,
	@dias_legales		decimal(14,2),
	@dias_adicionales	decimal(14,2),
	@dias_progres		decimal(14,2),
	@noincl_adic		char(1),
	@noincl_prog		char(1),
	@tipo				int,
	@observacion		varchar(254)
AS
declare @correlativo  numeric
BEGIN TRANSACTION
	select @correlativo = @id
	if ( @tipo = 0 )
	begin

		if (SELECT COUNT(*) FROM sipweb_solvacaciones ) = 0
		begin
				SELECT @correlativo  = 1
		end	
		else
		begin
				SELECT @correlativo = MAX(correlativo) + 1 FROM sipweb_solvacaciones
		end
	
		INSERT INTO sipweb_solvacaciones
           (cod_empresa,cod_planta,nro_trabajador,
			dv_trabajador,correlativo,fecha_desde,fecha_fin, cantidad,
			estado,fecha_ingreso,mediodia, dias_legales, dias_adicionales,
			dias_progres, noincl_adic, noincl_prog, observaciones )
        VALUES
           (@cod_empresa,@cod_planta,@nro_trabajador,
			@dv_trabajador,@correlativo,
			@fecha_desde,@fecha_hasta,@cantidad,@estado,getdate(),@mediodia,
			@dias_legales, @dias_adicionales,
			@dias_progres, @noincl_adic, @noincl_prog, @observacion)

	end
	else if ( @tipo = 1 )
	begin
		update	sipweb_solvacaciones
		set		fecha_desde		= @fecha_desde,
				fecha_fin		= @fecha_hasta,
				cantidad		= @cantidad,
				estado			= @estado,
				mediodia		= @mediodia, 
				dias_legales	= @dias_legales, 
				dias_adicionales = @dias_adicionales,
				dias_progres	= @dias_progres, 
				noincl_adic		= @noincl_adic, 
				noincl_prog		= @noincl_prog,
				observaciones	= @observacion
		where	correlativo		= @id
	
	end
	else if ( @tipo = 2 )
	begin
		update	sipweb_solvacaciones
		set		estado				= @estado,
				usuario_autoriza	= @usuario_autoriza,
				fecha_autorizacion	= getdate()
		where	correlativo			= @id
	end
	else if ( @tipo = 3 )
	begin
		update	sipweb_solvacaciones
		set		estado				= @estado,
				usuario_rechazo		= @usuario_rechazo,
				fecha_rechazo		= getdate()
		where	correlativo			= @id
	end
	else if ( @tipo = 99 )
	begin
	
		INSERT INTO sipweb_solvacaciones_log
           (cod_empresa,cod_planta,nro_trabajador,
			dv_trabajador,correlativo,fecha_desde,fecha_fin, cantidad,
			estado,fecha_ingreso,mediodia, usuario_elimina, fecha_elimina, dias_legales, dias_adicionales,
			dias_progres, noincl_adic, noincl_prog, observaciones )
        SELECT cod_empresa,cod_planta,nro_trabajador,
			dv_trabajador,correlativo,fecha_desde,fecha_fin, cantidad,
			estado,fecha_ingreso,mediodia, @usuario_rechazo, getdate(), dias_legales, dias_adicionales,
			dias_progres, noincl_adic, noincl_prog, @observacion
		FROM sipweb_solvacaciones
		where	correlativo		= @id
			
		delete from sipweb_solvacaciones 
		where	correlativo		= @id
	end	
	else if ( @tipo = 100 )
	begin

		if (SELECT COUNT(*) FROM sipweb_com_adic_prog ) = 0
		begin
				SELECT @correlativo  = 1
		end	
		else
		begin
				SELECT @correlativo = MAX(correl_compra) + 1 FROM sipweb_com_adic_prog
		end
	
		INSERT INTO sipweb_com_adic_prog
           (cod_empresa,cod_planta,nro_trabajador,
			dv_trabajador,correl_compra,fecha_compra, dias_comprados,
			estado,fecha_ingreso,dias_adicionales,
			dias_progresivos )
        VALUES
           (@cod_empresa,@cod_planta,@nro_trabajador,
			@dv_trabajador,@correlativo,getdate(),
			@cantidad,@estado,getdate(),
			@dias_adicionales,
			@dias_progres)

	end
	else if ( @tipo = 101 )
	begin
		update	sipweb_com_adic_prog
		set		dias_comprados	= @cantidad,
				estado			= @estado,
				dias_adicionales = @dias_adicionales,
				dias_progresivos	= @dias_progres
		where	correl_compra		= @id
	
	end
	else if ( @tipo = 102 )
	begin
		update	sipweb_com_adic_prog
		set		estado				= @estado,
				usuario_autoriza	= @usuario_autoriza,
				fecha_autorizacion	= getdate()
		where	correl_compra			= @id
	end
	else if ( @tipo = 103 )
	begin
		update	sipweb_com_adic_prog
		set		estado				= @estado,
				usuario_rechazo		= @usuario_rechazo,
				fecha_rechazo		= getdate()
		where	correl_compra			= @id
	end
	else if ( @tipo = 199 )
	begin
			INSERT INTO sipweb_com_adic_prog_log
           (cod_empresa,  cod_planta,	  nro_trabajador,
			  dv_trabajador,  correl_compra,  correl_winper,
			  fecha_compra,	  dias_comprados,  dias_adicionales,
			  dias_progresivos,  observaciones,   estado,
			  usuario_ingreso,  fecha_ingreso,  usuario_elimina,
			  fecha_elimina )
        SELECT cod_empresa,  cod_planta,	  nro_trabajador,
			  dv_trabajador,  correl_compra,  correl_winper,
			  fecha_compra,	  dias_comprados,  dias_adicionales,
			  dias_progresivos,  observaciones,   estado,
			  usuario_ingreso,  fecha_ingreso,  @usuario_rechazo,
			  getdate()		
		FROM sipweb_com_adic_prog
		where	correl_compra		= @id
			
		delete from sipweb_com_adic_prog 
		where	correl_compra		= @id
	end	

COMMIT TRANSACTION


RETURN @correlativo		









GO

/****** Object:  StoredProcedure [dbo].[sp_solpermiso_lista_arch]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO










CREATE PROCEDURE [dbo].[sp_solpermiso_lista_arch]
	@cod_empresa		int,
	@cod_planta			int,
	@correlativo		numeric(14),
	@tipo				int,
	@usuario			int,
	@nro_trabajador		int,
	@nombre_arch		varchar(150)
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	usuario,
				nombre_arch,
				descripcion,
				nro_trabajador,
				correlativo,
				cod_empresa,
				cod_planta
		from	sipweb_solpermiso_arch
		where	cod_empresa = @cod_empresa
		and		cod_planta = @cod_planta
		and		correlativo = @correlativo
		and		Usuario	= @usuario
		and		nro_trabajador	= @nro_trabajador
	end
	else if @tipo = 1
	begin
		select	tipo,
				archivo,
				descripcion,
				nro_trabajador
		from	sipweb_solpermiso_arch
		where	cod_empresa = @cod_empresa
		and		cod_planta = @cod_planta
		and		correlativo = @correlativo
		and		Usuario	= @usuario
		and		nro_trabajador	= @nro_trabajador
		and		nombre_arch = @nombre_arch
	end
END

















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evalitem_upd]    Script Date: 09/11/2017 21:02:34 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_conf_evalitem_upd]
	@id_eval				int,
	@id_item				int,
	@desc_item				varchar(200),
	@porc_calc				int,
	@no_aplica_trab			int,
	@tipo					int
AS
BEGIN TRANSACTION
	if ( @tipo = 0 )
	begin
		insert into sipweb_conf_eval_item
			( id_eval,	id_item,	desc_item, porc_calc, no_aplica_trab	)
		values 
			( @id_eval,	@id_item,	@desc_item, @porc_calc, @no_aplica_trab )
	end
	else if ( @tipo = 1 )
	begin
		update	sipweb_conf_eval_item
		set		desc_item		= @desc_item,
				porc_calc		= @porc_calc,
				no_aplica_trab	= @no_aplica_trab
		where	id_eval			= @id_eval
		and		id_item			= @id_item
	end
	else if ( @tipo = 2 )
	begin
		delete from	sipweb_conf_eval_item
		where	id_eval			= @id_eval
		and		id_item			= @id_item
	end

COMMIT TRANSACTION

















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_accesocert]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[sp_conf_accesocert]
	@tipo				int,
	@empresa			int,
	@planta				int,
	@usuario			varchar(20)
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.cod_empresa,
				b.sigla_empresa,
				a.cod_planta,
				case a.cod_planta when 0 then 'Todas' else c.planta end as planta,
				sin_renta,
				renta_liquida,
				renta_bruta,
				titulo_sr,
				titulo_rl,
				titulo_rb
		from	sipweb_conf_accesocert	a left outer join planta c on a.cod_empresa = c.cod_empresa
														and	a.cod_planta = c.cod_planta,
				empresa					b
		where	a.cod_empresa = b.cod_empresa
		and		a.cod_empresa		in ( select cod_empresa from usuario_sipweb where usuario = @usuario )
		order by a.cod_empresa desc
	end
	else if @tipo = 1
	begin
		select	cod_empresa,
				cod_planta,
				sin_renta,
				renta_liquida,
				renta_bruta,
				titulo_sr,
				titulo_rl,
				titulo_rb
		from	sipweb_conf_accesocert
		where	cod_empresa				= @empresa
		and		cod_planta				= @planta
	end
	else if @tipo = 2
	begin
		select	sin_renta,
				renta_liquida,
				renta_bruta,
				titulo_sr,
				titulo_rl,
				titulo_rb
		from	sipweb_conf_accesocert
		where	cod_empresa				= @empresa
		and		cod_planta				= @planta
	end
END












GO

/****** Object:  StoredProcedure [dbo].[sp_conf_accesocert_upd]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[sp_conf_accesocert_upd]
	@cod_empresa		int,
	@cod_planta			int,
	@ssin_renta			varchar(2),
	@srenta_liquida		varchar(2),
	@srenta_bruta		varchar(2),
	@stitulo_sr			varchar(100),
	@stitulo_rl			varchar(100),
	@stitulo_rb			varchar(100),
	@susuario			varchar(30),	
	@tipo				int
AS
BEGIN TRANSACTION

	if ( @tipo = 0 )
	begin
		insert into sipweb_conf_accesocert
			( cod_empresa,
				cod_planta,
				sin_renta,
				renta_liquida,
				renta_bruta,
				titulo_sr,
				titulo_rl,
				titulo_rb,
				usuario,
				fecha	)
		values 
			(	@cod_empresa,
				@cod_planta,
				@ssin_renta,
				@srenta_liquida,
				@srenta_bruta,
				@stitulo_sr,
				@stitulo_rl,
				@stitulo_rb,
				@susuario,
				GETDATE() )
	end
	else if ( @tipo = 1 )
	begin
		update	sipweb_conf_accesocert
		set		sin_renta	= @ssin_renta,
				renta_liquida	= @srenta_liquida,
				renta_bruta	= @srenta_bruta,
				titulo_sr = @stitulo_sr,
				titulo_rl = @stitulo_rl,
				titulo_rb = @stitulo_rb,
				usuario	= @susuario,
				fecha	= GETDATE()
		where	cod_empresa			= @cod_empresa
		and		cod_planta			= @cod_planta
	end
	else if ( @tipo = 2 )
	begin
		delete from	sipweb_conf_accesocert
		where	cod_empresa			= @cod_empresa
		and		cod_planta			= @cod_planta
	end

COMMIT TRANSACTION
















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_vicerrector]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_wf_vicerrector]
	@cod_empresa		int,
	@cod_planta			int,
	@nro_trabajador		int,
	@tipo			    int
AS
DECLARE @nro_trabajador2 INT
DECLARE @nro_trabajador3 INT
DECLARE @nro_trabajadorvice INT
DECLARE @nro_trabajadorviceant INT
BEGIN
	SET NOCOUNT ON;
	
	if ( @tipo = 0 )
	begin
		
		select @nro_trabajador2 = @nro_trabajador

		DECLARE Cursor01 CURSOR FOR 
		select	valor_columna 
		from	personal_dinamico	a,
			personal			b
		where	a.nro_trabajador	= @nro_trabajador2 
		and	a.nombre_interno	= 'RutJefDir'
		and	a.cod_empresa		= @cod_empresa 
		and	a.cod_empresa		= b.cod_empresa
		and	a.cod_planta		= b.cod_planta
		and	a.nro_trabajador	= b.nro_trabajador
		and 	b.cod_vigen_trabajad = 'S' 

		DECLARE @intFlag INT

		SET @intFlag = 1
		WHILE (@intFlag =1)
		BEGIN
				select @nro_trabajadorvice = @nro_trabajador2

				select @nro_trabajador3 = 0

				OPEN Cursor01

				FETCH NEXT FROM Cursor01 
				INTO @nro_trabajador3

				CLOSE Cursor01
				DEALLOCATE Cursor01

				select @nro_trabajador2 = @nro_trabajador3

				if @nro_trabajador3 = 0 or @nro_trabajador3 is null
				begin
					select @intFlag = 0
				end
				else
				begin		
					DECLARE Cursor01 CURSOR FOR 
					select	valor_columna 
					from	personal_dinamico	a,
						personal			b				
					where	a.nro_trabajador	= @nro_trabajador2 
					and	a.nombre_interno	= 'RutJefDir'
					and	a.cod_empresa		= @cod_empresa 
					and	a.cod_empresa		= b.cod_empresa
					and	a.cod_planta		= b.cod_planta
					and	a.nro_trabajador	= b.nro_trabajador
					and 	b.cod_vigen_trabajad = 'S' 

					select @nro_trabajadorviceant = @nro_trabajadorvice
				end

				
		CONTINUE;

		END		

		if @nro_trabajador = @nro_trabajadorviceant
		begin
				select @nro_trabajadorviceant = 999999
		end
		
		select	a.nro_trabajador,
				a.nombre++' '++a.ape_paterno_trabaj++' '++a.ape_materno_trabaj as nombre
		from	personal					a
		where	a.nro_trabajador		= @nro_trabajadorviceant
		and		a.cod_vigen_trabajad	= 'S'
		and		a.cod_empresa		= @cod_empresa 

	end
END












GO

/****** Object:  StoredProcedure [dbo].[sp_wf_vacantes]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













create PROCEDURE [dbo].[sp_wf_vacantes]
	@cod_empresa		int,
	@cod_planta			int,
	@nro_trabajador		int,
	@tipo			    int
AS
BEGIN
	SET NOCOUNT ON;
	
	if ( @tipo = 0 )
	begin
		select	a.nro_trabajador,
				a.dv_trabajador,
				a.nombre++' '++a.ape_paterno_trabaj++' '++a.ape_materno_trabaj	as nombre		
		from	personal			a,
				personal_dinamico	b
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		b.nombre_interno	= 'afecto_a_rem'
		and		b.valor_columna		= 'S'
		order by 3

	end
	else if ( @tipo = 1 )
	begin
		select	a.dv_trabajador,
				b.sigla_empresa,
				c.planta,
				d.sucursal,
				a.nombre,
				a.ape_paterno_trabaj,
				a.ape_materno_trabaj,
				a.cod_cargo,
				e.cargo_trabajador,
				a.cod_empresa,
				a.cod_planta,
				a.sueldo_mensual,
				a.cod_centro_costo,
				a.cod_unidad_adminis,
				a.tipo_contabilizaci
		from	personal			a,
				empresa				b,
				planta				c,
				sucursal			d,
				cargo_trabajador	e
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_empresa		= c.cod_empresa
		and		a.cod_planta		= c.cod_planta
		and		a.cod_empresa		= d.cod_empresa
		and		a.cod_planta		= d.cod_planta
		and		a.cod_sucursal		= d.cod_sucursal
		and		a.cod_empresa		= e.cod_empresa
		and		a.cod_cargo			= e.cod_cargo 
--		and		a.cod_empresa		= @cod_empresa
--		and		a.cod_planta		= @cod_planta
		and		a.nro_trabajador	= @nro_trabajador
	end	
	else if ( @tipo = 2 )
	begin
		select	b.sigla_empresa,
				c.planta,
				d.sucursal
		from	personal			a,
				empresa				b,
				planta				c,
				sucursal			d
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_empresa		= c.cod_empresa
		and		a.cod_planta		= c.cod_planta
		and		a.cod_empresa		= d.cod_empresa
		and		a.cod_planta		= d.cod_planta
		and		a.cod_sucursal		= d.cod_sucursal
--		and		a.cod_empresa		= @cod_empresa
--		and		a.cod_planta		= @cod_planta
		and		a.nro_trabajador	= @nro_trabajador
	end	
	else if ( @tipo = 3 )
	begin
		select	nro_vacante
		from	sipweb_wf_solicitudcontrato
		where	nro_vacante	= @nro_trabajador
		and		estado		not in ( 'Anulada', 'Aprobacion Remuneraciones' )

	end
END

















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_vacante_haberes]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_wf_vacante_haberes]
	@cod_empresa		int,
	@cod_planta			int,
	@nro_trabajador		int,
	@tipo				int
AS
declare
@nano	int,
@nmes	int
BEGIN
	SET NOCOUNT ON;

 if @tipo = 0
 begin
			DECLARE Cursor01 CURSOR FOR 
			select	ano_periodo, mes_periodo			
			from	historico_liquidac 
			where	cod_empresa			= @cod_empresa
			and		cod_planta			= @cod_planta
			and		cod_tipo_proceso	= 'LQ'
			and		nro_trabajador		= @nro_trabajador
			order by ano_periodo desc, mes_periodo desc

			OPEN Cursor01

			FETCH NEXT FROM Cursor01 
			INTO @nano, @nmes

			CLOSE Cursor01
			DEALLOCATE Cursor01

			select	sum(valor_transac_peso)
			from	haberes_contractua		a,
					sipweb_wf_haberescon	b
			where	a.cod_empresa			= b.cod_empresa
			and		a.cod_planta			= b.cod_planta
			and		a.cod_haber				= b.cod_haber
			and		a.cod_empresa			= @cod_empresa
			and		a.cod_planta			= @cod_planta
			and		a.nro_trabajador		= @nro_trabajador
			and		a.ano_periodo			= @nano
			and		a.mes_periodo			= @nmes
			and		a.cod_tipo_proceso	= 'LQ'
end

END



















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_usuarios]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_wf_usuarios]
	@tipo				int,
	@nro_trabajador		int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.cod_cargo, 
				c.cargo_trabajador,
				a.cod_unidad_adminis,
				b.unidad_administrat,
				d.dependencia
		from	personal a left outer join unidad_administrat b on a.cod_unidad_adminis = b.												cod_unidad_adminis
							  left outer join cargo_trabajador c on a.cod_cargo = c.cod_cargo, 
				dependencias d
		where	a.nro_trabajador	=  @nro_trabajador
		and		b.cod_pertenece_a	= d.cod_depende_de   
        and     c.cod_empresa = a.cod_empresa 
        and     c.cod_cargo = a.cod_cargo 
        and     b.cod_empresa = a.cod_empresa 
        and     b.cod_unidad_adminis = a.cod_unidad_adminis 
	end
	else if @tipo = 1
	begin
		select  a.nro_trabajador as Usuario,
				a.dv_trabajador as Dv,
				a.nombre,
				a.ape_paterno_trabaj as 'Apellido Paterno',
				a.ape_materno_trabaj as 'Apellido Materno',
				a.perfil,
				a.cod_vigente as Estado,
				c.cargo_trabajador as 'Cargo',
				b.unidad_administrat as 'Unidad Administrativa'
		from	wf_usuarios a left outer join unidad_administrat b 
										on a.cod_unidad_adminis = b.cod_unidad_adminis
							  left outer join cargo_trabajador c on a.cod_cargo = c.cod_cargo
	end
	else if @tipo = 2
	begin
		select  *
		from	wf_usuarios a 
		where	nro_trabajador	= @nro_trabajador
	end

END






















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_update_perfil_usu]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_wf_update_perfil_usu]
	@sperfil			varchar(20),
	@nro_trabajador		int,
	@tipo				int
AS
BEGIN TRANSACTION
	if ( @tipo = 0 )
	begin
		delete from sipweb_wf_perfilusuario 
		where	nro_trabajador		= @nro_trabajador
	end
	else
	begin
		insert into sipweb_wf_perfilusuario( nro_trabajador,
				perfil, usu_mod, fec_mod )
		values ( @nro_trabajador, @sperfil, system_user, getdate() )

	end	

COMMIT TRANSACTION




















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_update_perfil]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_wf_update_perfil]
	@sperfil			varchar(20),
	@cod_modulo			varchar(20),
	@cod_menu			varchar(20),
	@cod_proceso		varchar(20),
	@tipo				int
AS
BEGIN TRANSACTION
	if ( @tipo = 0 )
	begin
		delete from sipweb_conf_perfiles 
		where	perfil		= @sperfil
		and		cod_modulo = 'WorkFlow'
	end
	else
	begin
		insert into sipweb_conf_perfiles( perfil, cod_modulo, cod_menu, cod_proceso, usu_mod, fec_mod )
		values ( @sperfil, @cod_modulo, @cod_menu, @cod_proceso, system_user, getdate() )

	end	

COMMIT TRANSACTION



















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_mod_log]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_wf_solicitud_mod_log]
	@cod_empresa	int,
	@cod_planta		int,
	@nfolio			int
AS
BEGIN
		SET NOCOUNT ON

		select	b.descripcion as estado,
				usuario,
				fecha,				
				a.observacion
		from	sipweb_wf_logsolicitud		a,
				sipweb_wf_estados			b
		where	a.estado		= b.estado
		and		a.folio			= @nfolio
		and		b.tipo			= 'WF_Contratos'
		order by fecha desc
	
END



















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_unidad_adm]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_wf_unidad_adm]
	@tipo			    int,
	@cod_empresa		int,
	@cod_unidad			int,
	@cod_pertenece		int
AS
BEGIN
	SET NOCOUNT ON;
	
	if ( @tipo = 0 )
	begin
		select	cod_depende_de,
				cod_pertenece_a	
		from	unidad_administrat
		where	cod_empresa		= @cod_empresa
		and		cod_unidad_adminis = @cod_unidad
	end
	else
	begin
		Select cod_area_perten as codigo, 
				convert(varchar(10),cod_area_perten)++':'++area_perten as descripcion
		from area_perten 
		where cod_empresa = @cod_empresa
		order by area_perten
	end	
END



















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_mod_ing]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[sp_wf_solicitud_mod_ing]
	@cod_empresa			int,
	@cod_planta				int,
	@folio					int,
	@fecha_sol				datetime,
	@tipo					varchar(60),
	@nro_solicitante		int,
	@solicitante			varchar(70),
	@solic_cargo			varchar(50),
	@solic_vicerr			varchar(50),
	@jefatura				varchar(70),
	@jefa_cargo				varchar(50),
	@nro_colaborador		int,
	@dv_colaborador			varchar(1),
	@sede					varchar(50),
	@colaborador			varchar(70),
	@colabo_cargo			varchar(50),
	@cod_cargo				int,
	@cargo_trabajador		varchar(50),
	@cod_jornada			int,
	@jornada				varchar(70),
	@cod_sucursal			int,
	@sucursal				varchar(50),
	@cod_centro_costo		int,
	@centro_costo			varchar(70),
	@cod_unidad_adminis		int,
	@unidad_administrat		varchar(40),
	@dependencia			varchar(50),
	@vicerrectoría			varchar(50),
	@fecha_termino			datetime,
	@codigo_tipo_contra		varchar(1),
	@codigo_tipo_conta		varchar(10),
	@sueldo_mensual_act		decimal(13, 4),
	@sueldo_mensual			decimal(13, 4),
	@porc_aumento			decimal(12, 2),
	@movilizacion			decimal(18, 4),
	@alimentacion			decimal(18, 4),
	@gratificacion			decimal(18, 4),
	@total_haberes			decimal(18, 4),
	@fecha_ini_mod			datetime,
	@observacion			varchar(300),
	@estado					varchar(30),
	@usuario_ing			int,
	@cod_movilizacion		varchar(5) ,
	@cod_colacion			varchar(5)
AS
declare @nind_app_rector int
BEGIN TRANSACTION

		if @folio IS NULL
		begin
				if (SELECT COUNT(*) FROM vsipweb_contratos ) = 0
				begin
					SELECT @folio  = 1
				end	
				else
				begin
					SELECT @folio = MAX(folio) + 1 FROM vsipweb_contratos
				end
		end
		else
		begin
				delete from sipweb_wf_solicitudmodifica 
				where	folio		= @folio
		end

		select @nind_app_rector = 0

		if ( @sueldo_mensual is not NULL
			or @movilizacion is not null 
			or @alimentacion != ''
			or @gratificacion is not null )
		begin
					select @nind_app_rector = 1
		end
			

		insert into sipweb_wf_solicitudmodifica( cod_empresa,
				 cod_planta,
				 folio,
				 fecha_sol,
				 tipo,
				 nro_solicitante,
				 solicitante,
				 solic_cargo,
				 solic_vicerr,
				 jefatura,
				 jefa_cargo,
				 nro_colaborador,
				 dv_colaborador,
				 sede,
				 colaborador,
				 colabo_cargo,
				 cod_cargo,
				 cargo_trabajador,
				 cod_jornada,
				 jornada,
				 cod_sucursal,
				 sucursal,
				 cod_centro_costo,
				 centro_costo,
				 cod_unidad_adminis,
				 unidad_administrat,
				 dependencia,
				 vicerrectoría,
				 fecha_termino,
				 codigo_tipo_contra,
				 codigo_tipo_conta,
				 sueldo_mensual_act,
				 sueldo_mensual,
				 porc_aumento,
				 movilizacion,
				 alimentacion,
				 gratificacion,
				 total_haberes,
				 fecha_ini_mod,
				 observacion,
				 estado,
				 usuario_ing,
				 ind_app_rector,
					cod_movilizacion,
					cod_colacion )
		values ( @cod_empresa,
				 @cod_planta,
				 @folio,
				 @fecha_sol,
				 @tipo,
				 @nro_solicitante,
				 @solicitante,
				 @solic_cargo,
				 @solic_vicerr,
				 @jefatura,
				 @jefa_cargo,
				 @nro_colaborador,
				 @dv_colaborador,
				 @sede,
				 @colaborador,
				 @colabo_cargo,
				 @cod_cargo,
				 @cargo_trabajador,
				 @cod_jornada,
				 @jornada,
				 @cod_sucursal,
				 @sucursal,
				 @cod_centro_costo,
				 @centro_costo,
				 @cod_unidad_adminis,
				 @unidad_administrat,
				 @dependencia,
				 @vicerrectoría,
				 @fecha_termino,
				 @codigo_tipo_contra,
				 @codigo_tipo_conta,
				 @sueldo_mensual_act,
				 @sueldo_mensual,
				 @porc_aumento,
				 @movilizacion,
				 @alimentacion,
				 @gratificacion,
				 @total_haberes,
				 @fecha_ini_mod,
				 @observacion,
				 @estado,
				 @usuario_ing,
				 @nind_app_rector,
				 @cod_movilizacion,
			  	@cod_colacion)


		insert into sipweb_wf_logsolicitud(
					cod_empresa,
					cod_planta,
					folio,
					estado,
					observacion,
					usuario,
					fecha )
			values(	@cod_empresa,
					@cod_planta,
					@folio,
					@estado,
					@observacion,
					@jefatura,
					getdate() )


COMMIT TRANSACTION

RETURN @folio





















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_mod_del]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_wf_solicitud_mod_del]
	@cod_empresa			int,
	@cod_planta				int,
	@folio					int,
	@estado					varchar(20),
	@usuario_ing			int,
	@jefatura				varchar(70)
AS
BEGIN TRANSACTION

		update sipweb_wf_solicitudmodifica
		set		estado	= @estado
		where	folio	= @folio

		insert into sipweb_wf_logsolicitud(
					cod_empresa,
					cod_planta,
					folio,
					estado,
					usuario,
					fecha )
			values(	@cod_empresa,
					@cod_planta,
					@folio,
					@estado,
					@jefatura,
					getdate() )


COMMIT TRANSACTION





















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_mod_con]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_wf_solicitud_mod_con]
	@cod_empresa	int,
	@cod_planta		int,
	@nusuario		int,
	@nfolio			int,
	@swhere			varchar(500),
	@tipo			int
AS
DECLARE @sql nvarchar(4000)
DECLARE @campos nvarchar(3000)
BEGIN
	SET NOCOUNT ON;
	/* consulta solicitud */
	if @tipo = 0  
	begin
		select @swhere = replace(@swhere, '&apos;', '''')
		
		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_mod_03')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end
	
		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_solicitudmodifica	a,
							sipweb_wf_estados			b
					where	a.estado		= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		a.usuario_ing	= ' + convert(varchar(10),@nusuario) +
					+ @swhere +' order by folio'

		EXEC (@sql)


	end
	else if @tipo = 1
	begin
		select	folio, 
				convert(varchar(10),fecha_sol,103) as Fecha,
				solicitante,
				colaborador as 'Nombre Colaborador',
				colabo_cargo as 'Cargo'
		from	sipweb_wf_solicitudmodifica	a,
				sipweb_wf_estados			b
		where	a.estado		= b.estado
		and		a.usuario_ing	= @nusuario
		and		b.tipo			= 'WF_Contratos'
		and		a.estado		= 'Pendiente'
		order by folio
	end
	else if @tipo = 2
	begin
		select	cod_empresa,
				cod_planta,
				folio,
				convert(varchar(10),fecha_sol,103) as fecha_sol,
				a.tipo,
				nro_solicitante,
				solicitante,
				solic_cargo,
				solic_vicerr,
				jefatura,
				jefa_cargo,
				nro_colaborador,
				dv_colaborador,
				sede,
				colaborador,
				colabo_cargo,
				cod_cargo,
				cargo_trabajador,
				cod_jornada,
				jornada,
				cod_sucursal,
				sucursal,
				cod_centro_costo,
				centro_costo,
				cod_unidad_adminis,
				unidad_administrat,
				dependencia,
				vicerrectoría,
				convert(varchar(10),fecha_termino,103) as fecha_termino,
				codigo_tipo_contra,
				codigo_tipo_conta,
				sueldo_mensual_act,
				sueldo_mensual,
				porc_aumento,
				movilizacion,
				alimentacion,
				gratificacion,
				total_haberes,
				convert(varchar(10),fecha_ini_mod,103) as fecha_ini_mod,
				observacion,
				a.estado,
				b.descripcion as des_estado,
				app_presup_nro,
				app_presup_nombre,
				convert(varchar(10),app_presup_fecha,103) as app_presup_fecha,
				app_vicerr_nro,
				app_vicerr_nombre,
				convert(varchar(10),app_vicerr_fecha,103) as app_vicerr_fecha,
				app_rector_nro,
				app_rector_nombre,
				convert(varchar(10),app_rector_fecha,103) as app_rector_fecha,
				app_remunera_nro,
				app_remunera_nombre,
				convert(varchar(10),app_remunera_fecha,103) as app_remunera_fecha,
				ind_app_rector,
				usuario_ing,
				month(fecha_ini_mod) as mesmodifica,
				year(fecha_ini_mod) as anomodifica,
				cod_movilizacion,
				cod_colacion
		from	sipweb_wf_solicitudmodifica	a,
				sipweb_wf_estados			b
		where	a.estado		= b.estado
		and		a.folio			= @nfolio
		and		b.tipo			= 'WF_Contratos'
		order by folio
	end
	/* consulta modificacion solicitud */
	else if @tipo = 3  
	begin
		select @swhere = replace(@swhere, '&apos;', '''')

		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_mod_02')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end


		SET @sql = 'select	folio '++@campos++'
					from	sipweb_wf_solicitudmodifica	a,
							sipweb_wf_estados			b
					where	a.estado		= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		b.rechazado		= 1
					and		a.usuario_ing	= ' + convert(varchar(10),@nusuario) +
					+ @swhere +' order by folio'

		EXEC (@sql)
	end
	/* aprobacion solicitud modificacion*/
	else if @tipo = 4  
	begin
		select @swhere = replace(@swhere, '&apos;', '''')

		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_mod_04')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_solicitudmodifica	a,
							sipweb_wf_estados			b
					where	a.estado		= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		a.estado		= ''Ingresado''
					' + @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 5  
	begin
		select @swhere = replace(@swhere, '&apos;', '''')
	
		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_mod_07')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_solicitudmodifica	a,
							sipweb_wf_estados			b
					where	a.estado		= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		a.estado		= ''Revisado''
					' + @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 6  
	begin
		select @swhere = replace(@swhere, '&apos;', '''')

		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_mod_07')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_solicitudmodifica	a,
							sipweb_wf_estados			b
					where	a.estado		= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		a.estado		= ''Aprobacion Vicerrector''
					and		a.ind_app_rector = 1
					' + @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 7  
	begin
		select @swhere = replace(@swhere, '&apos;', '''')

		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_mod_07')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_solicitudmodifica	a,
							sipweb_wf_estados			b
					where	a.estado		= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		(( a.estado		= ''Aprobacion Rector'' ) 
						or ( a.estado		= ''Aprobacion Vicerrector''
							and ind_app_rector = 0 ))
					' + @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 8
	begin
		
		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_mod_06')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		select @swhere = replace(@swhere, '&apos;', '''')
		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_solicitudmodifica	a,
							sipweb_wf_estados			b
					where	a.estado			= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		(a.app_presup_nro	= ' + convert(varchar(10),@nusuario) + 
							' or a.estado = ''Revision Rechazada'' )' +
					+ @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 9
	begin
		select @swhere = replace(@swhere, '&apos;', '''')

		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_mod_06')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_solicitudmodifica	a,
							sipweb_wf_estados			b
					where	a.estado			= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		(a.app_vicerr_nro	= ' + convert(varchar(10),@nusuario) + 
							' or a.estado = ''Rechazado Vicerrector'' )' +
					+ @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 10
	begin
		select @swhere = replace(@swhere, '&apos;', '''')

		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_mod_06')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_solicitudmodifica	a,
							sipweb_wf_estados			b
					where	a.estado			= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		(a.app_rector_nro	= ' + convert(varchar(10),@nusuario) + 
							' or a.estado = ''Rechazado Rector'' )' +
					+ @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 11
	begin
		select @swhere = replace(@swhere, '&apos;', '''')

		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_mod_06')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_solicitudmodifica	a,
							sipweb_wf_estados			b
					where	a.estado			= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		(a.app_remunera_nro	= ' + convert(varchar(10),@nusuario) + 
							' or a.estado = ''Rechazado Remuneraciones'' )' +
					+ @swhere +' order by folio'

		EXEC (@sql)
	end
END




















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_mod_app]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_wf_solicitud_mod_app]
	@cod_empresa			int,
	@cod_planta				int,
	@folio					int,
	@estado					varchar(30),
	@usuario_ing			int,
	@usuario_ing_des		varchar(70),
	@observacion			varchar(1000),
	@tipo					int
AS
declare 
	@nro_colaborador		int,
	@dv_colaborador			varchar(1),
	@cod_cargo				int,
	@cod_jornada			int,
	@cod_sucursal			int,
	@cod_centro_costo		int,
	@cod_unidad_adminis		int,
	@dependencia			varchar(50),
	@vicerrectoría			varchar(50),
	@fecha_termino			datetime,
	@codigo_tipo_contra		varchar(1),
	@codigo_tipo_conta		varchar(10),
	@sueldo_mensual			decimal(13, 4),
	@porc_aumento			decimal(12, 2),
	@movilizacion			decimal(18, 4),
	@alimentacion			varchar(20)	,
	@gratificacion			decimal(18, 4),
	@total_haberes			decimal(18, 4)
BEGIN TRANSACTION

	if (@tipo=0)
	begin
		update sipweb_wf_solicitudmodifica
		set		app_presup_nro		= @usuario_ing,
				app_presup_nombre	= @usuario_ing_des,
				app_presup_fecha	= getdate(),
				estado				= @estado
		where	folio				= @folio

	end
	else if (@tipo=1)
	begin
		update sipweb_wf_solicitudmodifica
		set		app_vicerr_nro		= @usuario_ing,
				app_vicerr_nombre	= @usuario_ing_des,
				app_vicerr_fecha	= getdate(),
				estado				= @estado
		where	folio				= @folio

	end
	else if (@tipo=2)
	begin
		update sipweb_wf_solicitudmodifica
		set		app_rector_nro		= @usuario_ing,
				app_rector_nombre	= @usuario_ing_des,
				app_rector_fecha	= getdate(),
				estado				= @estado
		where	folio				= @folio

	end
	else if (@tipo=3)
	begin
		update sipweb_wf_solicitudmodifica
		set		app_remunera_nro	= @usuario_ing,
				app_remunera_nombre	= @usuario_ing_des,
				app_remunera_fecha	= getdate(),
				estado				= @estado
		where	folio				= @folio

		--** actualiza tabla personal

		DECLARE Cursor01 CURSOR FOR 
			select  nro_colaborador,
						 dv_colaborador,
						 cod_cargo,
						 cod_jornada,
						 cod_sucursal,
						 cod_centro_costo,
						 cod_unidad_adminis,
						 dependencia,
						 vicerrectoría,
						 fecha_termino,
						 codigo_tipo_contra,
						 codigo_tipo_conta,
						 sueldo_mensual,
						 porc_aumento,
						 movilizacion,
						 alimentacion,
						 gratificacion,
						 total_haberes
			from	sipweb_wf_solicitudmodifica
			where folio = @folio

			OPEN Cursor01

			FETCH NEXT FROM Cursor01 
			INTO @nro_colaborador,
						 @dv_colaborador,
						 @cod_cargo,
						 @cod_jornada,
						 @cod_sucursal,
						 @cod_centro_costo,
						 @cod_unidad_adminis,
						 @dependencia,
						 @vicerrectoría,
						 @fecha_termino,
						 @codigo_tipo_contra,
						 @codigo_tipo_conta,
						 @sueldo_mensual,
						 @porc_aumento,
						 @movilizacion,
						 @alimentacion,
						 @gratificacion,
						 @total_haberes

			CLOSE Cursor01
			DEALLOCATE Cursor01

			if (@cod_cargo is not null or @cod_cargo != '')
			begin
				update	personal 
				set		cod_cargo = @cod_cargo
				where	cod_empresa		= @cod_empresa 
				and		cod_planta		= @cod_planta
				and		nro_trabajador	= @nro_colaborador
			end
			if (@cod_jornada is not null or @cod_jornada != '')
			begin
				update	personal 
				set		cod_jornada = @cod_jornada
				where	cod_empresa		= @cod_empresa 
				and		cod_planta		= @cod_planta
				and		nro_trabajador	= @nro_colaborador
			end
			if (@cod_sucursal is not null or @cod_sucursal != '')
			begin
				update	personal 
				set		cod_sucursal	= @cod_sucursal
				where	cod_empresa		= @cod_empresa 
				and		cod_planta		= @cod_planta
				and		nro_trabajador	= @nro_colaborador
			end
			if (@cod_centro_costo is not null or @cod_centro_costo != '')
			begin
				update	personal 
				set		cod_centro_costo	= @cod_centro_costo
				where	cod_empresa		= @cod_empresa 
				and		cod_planta		= @cod_planta
				and		nro_trabajador	= @nro_colaborador
			end
			if (@cod_unidad_adminis is not null or @cod_unidad_adminis != '')
			begin
				update	personal 
				set		cod_unidad_adminis	= @cod_unidad_adminis
				where	cod_empresa		= @cod_empresa 
				and		cod_planta		= @cod_planta
				and		nro_trabajador	= @nro_colaborador
			end
			if (@fecha_termino is not null or @fecha_termino != '')
			begin
				update	personal 
				set		fec_fin_contr_vige	= @fecha_termino
				where	cod_empresa		= @cod_empresa 
				and		cod_planta		= @cod_planta
				and		nro_trabajador	= @nro_colaborador
			end
			if (@codigo_tipo_contra is not null or @codigo_tipo_contra != '')
			begin
				update	personal 
				set		codigo_tipo_contra	= @codigo_tipo_contra
				where	cod_empresa		= @cod_empresa 
				and		cod_planta		= @cod_planta
				and		nro_trabajador	= @nro_colaborador
			end
			if (@sueldo_mensual is not null )
			begin
				update	personal 
				set		sueldo_mensual	= @sueldo_mensual
				where	cod_empresa		= @cod_empresa 
				and		cod_planta		= @cod_planta
				and		nro_trabajador	= @nro_colaborador
			end
			--	tipo_contabilizaci	= @codigo_tipo_conta,
			--	movilizacion		= @movilizacion,
			--	alimentacion		= @alimentacion,
			--	gratificacion		= @gratificacion,
			--	total_haberes		= @total_haberes

	end
	else if (@tipo=5)
	begin
		update sipweb_wf_solicitudmodifica
		set		estado				= @estado,
				app_presup_nro		= null,
				app_presup_nombre	= null,
				app_presup_fecha	= null,
				app_vicerr_nro		= null,
				app_vicerr_nombre	= null,
				app_vicerr_fecha	= null,
				app_rector_nro		= null,
				app_rector_nombre	= null,
				app_rector_fecha	= null,
				app_remunera_nro	= null,
				app_remunera_nombre	= null,
				app_remunera_fecha	= null
		where	folio				= @folio

	end

	insert into sipweb_wf_logsolicitud(
					cod_empresa,
					cod_planta,
					folio,
					estado,
					observacion,
					usuario,
					fecha )
			values(	@cod_empresa,
					@cod_planta,
					@folio,
					@estado,
					@observacion,
					@usuario_ing_des,
					getdate() )

COMMIT TRANSACTION





















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_log]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_wf_solicitud_log]
	@cod_empresa	int,
	@cod_planta		int,
	@nfolio			int
AS
BEGIN
		SET NOCOUNT ON

		select	a.tipo,
				b.descripcion as estado,
				usuario,
				fecha,				
				a.observacion			
		from	sipweb_wf_logcontrato		a,
				sipweb_wf_estados			b
		where	a.estado		= b.estado
		and		a.folio			= @nfolio
		and		b.tipo			= 'WF_Contratos'
		order by fecha desc
	
END



















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_ing]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_wf_solicitud_ing]
	@cod_empresa		int ,
	@cod_planta			int ,
	@folio				numeric(18, 0) ,
	@fecha_sol			datetime ,
	@tipo				varchar(60) ,
	@nro_solicitante	int ,
	@solicitante		varchar(70) ,
	@solic_cargo		varchar(50) ,
	@solic_vicerr		varchar(50) ,
	@jefatura			varchar(70) ,
	@jefa_cargo			varchar(50) ,
	@headcount			int ,
	@reemplazo			int ,
	@nro_vacante		int ,
	@dv_vacante			varchar(1) ,
	@nom_vacante		varchar(70) ,
	@app_vacante		varchar(15) ,
	@apm_vacante		varchar(10) ,
	@cod_cargo_vacante	int ,
	@cargo_vacante		varchar(50) ,
	@haberes_vacante	decimal(14, 0) ,
	@nro_postulante		int ,
	@dv_postulante		varchar(1) ,
	@nom_postulante		varchar(20) ,
	@app_postulante		varchar(15) ,
	@apm_postulante		varchar(15) ,
	@sede				varchar(50) ,
	@cod_cargo			int ,
	@cargo_trabajador	varchar(50) ,
	@sueldo_mensual		decimal(14, 0) ,
	@movilizacion		decimal(14, 0) ,
	@alimentacion		decimal(14, 0) ,
	@gratificacion		decimal(14, 0) ,
	@total_haberes		decimal(14, 0) ,
	@fecha_contrato		datetime ,
	@codigo_tipo_contra varchar(1) ,
	@fecha_termino		datetime ,
	@cod_jornada		int ,
	@jornada			varchar(70) ,
	@vicerrectoría		varchar(50) ,
	@cod_unidad_adminis int ,
	@unidad_administrat varchar(40) ,
	@dependencia		varchar(50) ,
	@cod_centro_costo	int ,
	@centro_costo		varchar(70) ,
	@codigo_tipo_conta	varchar(10) ,
	@observacion		varchar(300) ,
	@estado				varchar(30) ,
	@usuario_ing		int ,
	@justificacion		varchar(300) ,
	@cod_empresa_pos		int ,
	@cod_planta_pos		int ,
	@muestralink		varchar(1),
	@sueldo_mensual_actual	decimal(14, 0) ,
	@movilizacion_actual	decimal(14, 0) ,
	@alimentacion_actual	varchar(20) ,
	@gratificacion_actual	decimal(14, 0) ,
	@total_haberes_actual	decimal(14, 0) ,
	@cod_movilizacion		varchar(5) ,
	@cod_colacion			varchar(5),
	@cod_area_perten		int
	
AS
BEGIN TRANSACTION

		if @folio IS NULL
		begin
				if (SELECT COUNT(*) FROM vsipweb_contratos ) = 0
				begin
					SELECT @folio  = 1
				end	
				else
				begin
					SELECT @folio = MAX(folio) + 1 FROM vsipweb_contratos
				end
		end
		else
		begin
				delete from sipweb_wf_solicitudcontrato 
				where	folio		= @folio
		end

		insert into sipweb_wf_solicitudcontrato( cod_empresa,
					cod_planta,
					folio,
					fecha_sol,
					tipo,
					nro_solicitante,
					solicitante,
					solic_cargo,
					solic_vicerr,
					jefatura,
					jefa_cargo,
					headcount,
					reemplazo,
					nro_vacante,
					dv_vacante,
					nom_vacante,
					app_vacante,
					apm_vacante,
					cod_cargo_vacante,
					cargo_vacante,
					haberes_vacante,
					nro_postulante,
					dv_postulante,
					nom_postulante,
					app_postulante,
					apm_postulante,
					sede,
					cod_cargo,
					cargo_trabajador,
					sueldo_mensual,
					movilizacion,
					alimentacion,
					gratificacion,
					total_haberes,
					fecha_contrato,
					codigo_tipo_contra,
					fecha_termino,
					cod_jornada,
					jornada,
					vicerrectoría,
					cod_unidad_adminis,
					unidad_administrat,
					dependencia,
					cod_centro_costo,
					centro_costo,
					codigo_tipo_conta,
					observacion,
					estado,
					usuario_ing,
					justificacion,
					cod_empresa_pos,
					cod_planta_pos,
					muestralink,
					sueldo_mensual_actual,
					movilizacion_actual,
					alimentacion_actual,
					gratificacion_actual,
					total_haberes_actual,
					cod_movilizacion,
					cod_colacion,
					cod_area_perten )
		values (	@cod_empresa,
					@cod_planta,
					@folio,
					@fecha_sol,
					@tipo,
					@nro_solicitante,
					@solicitante,
					@solic_cargo,
					@solic_vicerr,
					@jefatura,
					@jefa_cargo,
					@headcount,
					@reemplazo,
					@nro_vacante,
					@dv_vacante,
					@nom_vacante,
					@app_vacante,
					@apm_vacante,
					@cod_cargo_vacante,
					@cargo_vacante,
					@haberes_vacante,
					@nro_postulante,
					@dv_postulante,
					@nom_postulante,
					@app_postulante,
					@apm_postulante,
					@sede,	
					@cod_cargo,
					@cargo_trabajador,
					@sueldo_mensual,
					@movilizacion,
					@alimentacion,
					@gratificacion,
					@total_haberes,
					@fecha_contrato,
					@codigo_tipo_contra,
					@fecha_termino,
					@cod_jornada,
					@jornada,
					@vicerrectoría,
					@cod_unidad_adminis,
					@unidad_administrat,
					@dependencia,
					@cod_centro_costo,
					@centro_costo,
					@codigo_tipo_conta,
					@observacion,
					@estado,
					@usuario_ing,
					@justificacion,
					@cod_empresa_pos,
					@cod_planta_pos,
					@muestralink,
					@sueldo_mensual_actual,
					@movilizacion_actual,
					@alimentacion_actual,
					@gratificacion_actual,
					@total_haberes_actual,
					@cod_movilizacion,
					@cod_colacion,
					@cod_area_perten)


		insert into sipweb_wf_logcontrato(
					cod_empresa,
					cod_planta,
					folio,
					estado,
					usuario,
					observacion,
					fecha,
					tipo )
			values(	@cod_empresa,
					@cod_planta,
					@folio,
					@estado,
					@jefatura,
					@observacion,
					getdate(),
					'SOL' )


COMMIT TRANSACTION

RETURN @folio




















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_fav_upd]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














create PROCEDURE [dbo].[sp_wf_solicitud_fav_upd]
	@cod_empresa		int,
	@cod_planta			int,
	@folio				numeric(18, 0),
	@fecha				datetime,
	@crearcta			int,
	@anexo				int,
	@pc					int,
	@movil				int,
	@red				int,
	@correo				int,
	@saes				int,
	@intranet			int,
	@banner				int,
	@ultimus			int,
	@soce				int,
	@biblioteca			int,
	@macola				int,
	@onix				int,
	@otros				varchar(300)
	
AS
BEGIN TRANSACTION

		update sipweb_wf_solicitudcontrato_fav
		set	    fecha			= @fecha,
				crearcta		= @crearcta,
				anexo			= @anexo,
				pc				= @pc,
				movil			= @movil,
				red				= @red,
				correo			= @correo,
				saes			= @saes,
				intranet		= @intranet,
				banner			= @banner,
				ultimus			= @ultimus,
				soce			= @soce,
				biblioteca		= @biblioteca,
				macola			= @macola,
				onix			= @onix,
				otros			= @otros
		where	cod_empresa			= @cod_empresa
		and		cod_planta			= @cod_planta
		and		folio				= @folio

COMMIT TRANSACTION




















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_fav_con]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













create PROCEDURE [dbo].[sp_wf_solicitud_fav_con]
	@cod_empresa	int,
	@cod_planta		int,
	@nusuario		int,
	@nfolio			int,
	@swhere			varchar(500),
	@tipo			int
AS
DECLARE @sql nvarchar(1000)
BEGIN
	SET NOCOUNT ON;
	/* consulta solicitud */
	
	select		cod_empresa, 
				cod_planta,
				folio, 
				convert(varchar(10),fecha,103) as fecha,
				correlativo,
				crearcta, 
				anexo,
				pc,
				movil,
				red,
				correo,
				saes,
				intranet,
				banner,
				ultimus,
				soce,
				biblioteca,
				macola,
				onix,
				otros
		from	sipweb_wf_solicitudcontrato_fav
		where	folio			= @nfolio
		order by folio
	
END





















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_fap_upd]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_wf_solicitud_fap_upd]
	@cod_empresa		int,
	@cod_planta			int,
	@folio				numeric(18, 0),
	@ape_paterno_trabaj	varchar(15),
	@ape_materno_trabaj	varchar(15),
	@nombre				varchar(20),
	@fec_nacimiento		datetime,
	@cod_estado_civil	varchar(1),
	@direccion			varchar(40),
	@nrodireccion		varchar(10),
	@depto				varchar(10),
	@cod_region			int,
	@cod_comuna			int,
	@cod_ciudad			int,
	@fono				varchar(15),
	@celular			varchar(15),
	@cod_nivel_educacio	int,
	@cod_titulo_profesi	int,
	@num_cargas_normale	int,
	@cod_afp			int,
	@fec_incorporac_afp	datetime,
	@cod_isapre			int,
	@mto_pactado_isapre	decimal(13, 4),
	@unid_cob_mto_pacta	varchar(4),
	@fec_ini_contrato	datetime ,
	@vacaciones			varchar(10),
	@cod_forma_pago		varchar(1),
	@cod_cta_cte_banco	varchar(2),
	@nro_cta_cte_bancar	varchar(36),
	@cod_banco			int,
	@emerg_nombrecompleto	varchar(70),
	@emerg_fono			varchar(15),
	@emerg_direccion	varchar(70),
	@estado				varchar(20),
	@jefatura			varchar(70),
	@nro_postulante		int ,
	@dv_postulante		varchar(1),
	@movilizacion_fap		decimal(18, 4),
	@alimentacion_fap		decimal(18, 4)
AS
BEGIN TRANSACTION

		update sipweb_wf_solicitudcontrato_fap
		set	    nro_trabajador		= @nro_postulante,
				dv_trabajador		= @dv_postulante,
				ape_paterno_trabaj	= @ape_paterno_trabaj,
			    ape_materno_trabaj	= @ape_materno_trabaj,
			    nombre				= @nombre,
				fec_nacimiento		= @fec_nacimiento,
				cod_estado_civil	= @cod_estado_civil,
				direccion			= @direccion,
				nrodireccion		= @nrodireccion,
				depto				= @depto,
				cod_region			= @cod_region,
				cod_comuna			= @cod_comuna,
				cod_ciudad			= @cod_ciudad,
				fono				= @fono,
				celular				= @celular,
				cod_nivel_educacio	= @cod_nivel_educacio,
				cod_titulo_profesi	= @cod_titulo_profesi,
				cod_afp				= @cod_afp,
				fec_incorporac_afp	= @fec_incorporac_afp,
				cod_isapre			= @cod_isapre,
				mto_pactado_isapre	= @mto_pactado_isapre,
				unid_cob_mto_pacta	= @unid_cob_mto_pacta,
				fec_ini_contrato	= @fec_ini_contrato,
				cod_cta_cte_banco	= @cod_cta_cte_banco,
				nro_cta_cte_bancar	= @nro_cta_cte_bancar,
				cod_banco			= @cod_banco,
				cod_forma_pago		= @cod_forma_pago,
				num_cargas_normale	= @num_cargas_normale,
				vacaciones			= @vacaciones,
				emerg_nombrecompleto = @emerg_nombrecompleto,
				emerg_fono			 = @emerg_fono,
				emerg_direccion		 = @emerg_direccion
		where	cod_empresa			= @cod_empresa
		and		cod_planta			= @cod_planta
		and		folio				= @folio

		update	sipweb_wf_solicitudcontrato
		set	    estado_fap			= @estado,
				movilizacion_fap	= @movilizacion_fap,
				alimentacion_fap	= @alimentacion_fap
		where	cod_empresa			= @cod_empresa
		and		cod_planta			= @cod_planta
		and		folio				= @folio

		insert into sipweb_wf_logcontrato(
					cod_empresa,
					cod_planta,
					folio,
					estado,
					usuario,
					fecha,
					tipo )
			values(	@cod_empresa,
					@cod_planta,
					@folio,
					@estado,
					@jefatura,
					getdate(),
					'FAP' )


COMMIT TRANSACTION





















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_fap_nucl]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_wf_solicitud_fap_nucl]
	@cod_empresa		int,
	@folio			int,
	@correl_familiar	int,
	@cod_parentesco	int,
	@ape_paterno_famili	char(15),
	@ape_materno_famili	char(15),
	@nombre_familiar	char(20),
	@nro_rut_familiar	int,
	@dv_rut_familiar	char(1),
	@fec_nacim_familiar datetime,
	@nro_trabajador		int ,
	@dv_trabajador		varchar(1) 
AS
BEGIN TRANSACTION

		update	sipweb_wf_nucleofamiliar
		set	    nro_trabajador		= @nro_trabajador,
			    dv_trabajador		= @dv_trabajador,
				cod_parentesco		= @cod_parentesco,
			    ape_paterno_famili	= @ape_paterno_famili,
			    ape_materno_famili	= @ape_materno_famili,
				nombre_familiar		= @nombre_familiar,
				nro_rut_familiar	= @nro_rut_familiar,
				dv_rut_familiar		= @dv_rut_familiar,
				fec_nacim_familiar	= @fec_nacim_familiar
		where	cod_empresa			= @cod_empresa
		and		folio				= @folio
		and		correl_familiar		= @correl_familiar

COMMIT TRANSACTION



















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_fap_con]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_wf_solicitud_fap_con]
	@cod_empresa	int,
	@cod_planta		int,
	@nusuario		int,
	@nfolio			int,
	@swhere			varchar(500),
	@tipo			int
AS
DECLARE @sql nvarchar(1000)
BEGIN
	SET NOCOUNT ON;
	/* consulta solicitud */
	
	select		cod_empresa,
				cod_planta,
				folio,
				ape_paterno_trabaj,
				ape_materno_trabaj,
				nombre,
				convert(varchar(10),fec_nacimiento,103) as fec_nacimiento,
				cod_estado_civil,
				direccion,
				nrodireccion,
				depto,
				cod_region,
				cod_comuna,
				cod_ciudad,
				fono,
				celular,
				cod_nivel_educacio,
				cod_titulo_profesi,
				num_cargas_normale,
				cod_afp,
				convert(varchar(10),fec_incorporac_afp,103) as fec_incorporac_afp,
				cod_isapre,
				mto_pactado_isapre,
				unid_cob_mto_pacta,
				convert(varchar(10),fec_ini_contrato,103) as fec_ini_contrato,
				vacaciones,
				cod_forma_pago,
				cod_cta_cte_banco,
				nro_cta_cte_bancar,
				cod_banco,
				emerg_nombrecompleto,
				emerg_fono,
				emerg_direccion,
				nro_trabajador,
				dv_trabajador
		from	sipweb_wf_solicitudcontrato_fap
		where	folio			= @nfolio
		order by folio
	
END





















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_del]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_wf_solicitud_del]
	@cod_empresa			int,
	@cod_planta				int,
	@folio					int,
	@estado					varchar(20),
	@usuario_ing			int,
	@jefatura				varchar(70)
AS
BEGIN TRANSACTION

		update sipweb_wf_solicitudcontrato
		set		estado	= @estado
		where	folio	= @folio

		insert into sipweb_wf_logcontrato(
					cod_empresa,
					cod_planta,
					folio,
					estado,
					usuario,
					fecha,
					tipo )
			values(	@cod_empresa,
					@cod_planta,
					@folio,
					@estado,
					@jefatura,
					getdate(),
					'SOL' )


COMMIT TRANSACTION





















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_con]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_wf_solicitud_con]
	@cod_empresa	int,
	@cod_planta		int,
	@nusuario		int,
	@nfolio			int,
	@swhere			varchar(500),
	@tipo			int
AS
DECLARE @sql nvarchar(4000)
DECLARE @campos nvarchar(3000)
BEGIN
	SET NOCOUNT ON;
	/* consulta solicitud */
	if @tipo = 0  
	begin
		select @swhere = replace(@swhere, '&apos;', '''')
		
		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_03')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_solicitudcontrato	a,
							sipweb_wf_estados			b
					where	a.estado		= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		a.usuario_ing	= ' + convert(varchar(10),@nusuario) +
					+ @swhere +' order by folio'

		EXEC (@sql)


	end
	else if @tipo = 1
	begin
		select	folio, 
				convert(varchar(10),fecha_sol,103) as Fecha,
				solicitante,
				nom_postulante++' '++app_postulante++ ' '++apm_postulante as 'Nombre Postulante',
				cargo_trabajador as 'Cargo'
		from	sipweb_wf_solicitudcontrato	a,
				sipweb_wf_estados			b
		where	a.estado		= b.estado
		and		a.usuario_ing	= @nusuario
		and		b.tipo			= 'WF_Contratos'
		and		a.estado		= 'Pendiente'
		order by folio
	end
	else if @tipo = 2
	begin
		select	a.cod_empresa,
				a.cod_planta,
				folio,
				convert(varchar(10),fecha_sol,103) as fecha_sol,
				a.tipo,
				nro_solicitante,
				solicitante,
				solic_cargo,
				solic_vicerr,
				jefatura,
				jefa_cargo,
				headcount,
				reemplazo,
				nro_vacante,
				dv_vacante,
				nom_vacante,
				app_vacante,
				apm_vacante,
				cod_cargo_vacante,
				cargo_vacante,
				haberes_vacante,
				nro_postulante,
				dv_postulante,
				nom_postulante,
				app_postulante,
				apm_postulante,
				sede,
				cod_cargo,
				cargo_trabajador,
				sueldo_mensual,
				movilizacion,
				alimentacion,
				gratificacion,
				total_haberes,
				convert(varchar(10),fecha_contrato,103) as fecha_contrato,
				codigo_tipo_contra,
				convert(varchar(10),fecha_termino,103) as fecha_termino,
				cod_jornada,
				jornada,
				vicerrectoría,
				cod_unidad_adminis,
				unidad_administrat,
				dependencia,
				cod_centro_costo,
				centro_costo,
				codigo_tipo_conta,
				observacion,
				app_presup_nro,
				app_presup_nombre,
				convert(varchar(10),app_presup_fecha,103) as app_presup_fecha,
				app_vicerr_nro,
				app_vicerr_nombre,
				convert(varchar(10),app_vicerr_fecha,103) as app_vicerr_fecha,
				app_rector_nro,
				app_rector_nombre,
				convert(varchar(10),app_rector_fecha,103) as app_rector_fecha,
				app_remunera_nro,
				app_remunera_nombre,
				convert(varchar(10),app_remunera_fecha,103) as app_remunera_fecha,
				a.estado,
				b.descripcion as des_estado,
				usuario_ing,
				justificacion,
				cod_empresa_pos,
				cod_planta_pos,
				muestralink,
				sueldo_mensual_actual,
				movilizacion_actual,
				alimentacion_actual,
				gratificacion_actual,
				total_haberes_actual,
				cod_movilizacion,
				cod_colacion,
				e.sigla_empresa,
				s.sucursal,
				a.alimentacion_fap,
				a.movilizacion_fap,
				a.cod_area_perten
		from	sipweb_wf_solicitudcontrato	a left outer join empresa e on 
										a.cod_empresa_pos = e.cod_empresa
									left outer join sucursal s on 
										a.cod_empresa_pos = s.cod_empresa
									and	a.cod_planta_pos = s.cod_planta
									and	a.sede	= s.cod_sucursal,
				sipweb_wf_estados			b
		where	a.estado		= b.estado
		and		a.folio			= @nfolio	
		and		b.tipo			= 'WF_Contratos'
		order by folio
	end
	/* consulta solicitud */
	else if @tipo = 3  
	begin
		select @swhere = replace(@swhere, '&apos;', '''')
		
		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_02')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_solicitudcontrato	a,
							sipweb_wf_estados			b
					where	a.estado		= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		b.rechazado		= 1
					and		a.usuario_ing	= ' + convert(varchar(10),@nusuario) +
					+ @swhere +' order by folio'

		EXEC (@sql)
	end
	/* aprobacion solicitud modificacion*/
	else if @tipo = 4  
	begin
		select @swhere = replace(@swhere, '&apos;', '''')
		
		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_04')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end


		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_solicitudcontrato	a,
							sipweb_wf_estados			b
					where	a.estado		= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		a.estado		= ''Ingresado''
					' + @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 5  
	begin
		select @swhere = replace(@swhere, '&apos;', '''')
		
		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_07')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_solicitudcontrato	a,
							sipweb_wf_estados			b
					where	a.estado		= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		a.estado		= ''Revisado''
					' + @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 6  
	begin
		select @swhere = replace(@swhere, '&apos;', '''')
		
		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_07')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_solicitudcontrato	a,
							sipweb_wf_estados			b
					where	a.estado		= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		a.estado		= ''Aprobacion Vicerrector''
					' + @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 7  
	begin
		select @swhere = replace(@swhere, '&apos;', '''')
		
		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_07')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_solicitudcontrato	a,
							sipweb_wf_estados			b
					where	a.estado		= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		 a.estado		= ''Aprobacion Rector'' 
					and		 a.estado_fap	= ''Ingresado'' 
					' + @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 8
	begin
		select @swhere = replace(@swhere, '&apos;', '''')
		
		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_03')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_solicitudcontrato	a,
							sipweb_wf_estados			b
					where	a.estado			= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		(a.app_presup_nro	= ' + convert(varchar(10),@nusuario) + 
							' or a.estado = ''Revision Rechazada'' )' +
					+ @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 9
	begin
		select @swhere = replace(@swhere, '&apos;', '''')
		
		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_03')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
						, b.descripcion as Estado
					from	sipweb_wf_solicitudcontrato	a,
							sipweb_wf_estados			b
					where	a.estado			= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		(a.app_vicerr_nro	= ' + convert(varchar(10),@nusuario) + 
							' or a.estado = ''Rechazado Vicerrector'' )' +
					+ @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 10
	begin
		select @swhere = replace(@swhere, '&apos;', '''')
		
		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_03')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_solicitudcontrato	a,
							sipweb_wf_estados			b
					where	a.estado			= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		(a.app_rector_nro	= ' + convert(varchar(10),@nusuario) + 
							' or a.estado = ''Rechazado Rector'' )' +
					+ @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 11
	begin
		select @swhere = replace(@swhere, '&apos;', '''')
		
		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_03')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_solicitudcontrato	a,
							sipweb_wf_estados			b
					where	a.estado			= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		(a.app_remunera_nro	= ' + convert(varchar(10),@nusuario) + 
							' or a.estado = ''Rechazado Remuneraciones'' )' +
					+ @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 12  
	begin
		select @swhere = replace(@swhere, '&apos;', '''')
		
		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_con_07')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_solicitudcontrato	a,
							sipweb_wf_estados			b
					where	a.estado		= b.estado
					and		b.tipo			= ''WF_Contratos''
					and		a.usuario_ing	= ' + convert(varchar(10),@nusuario) +'
					and		a.estado		= ''Aprobacion Rector'' 
					and		a.estado_fap	in ( ''Pendiente'', ''Rechazado Remuneraciones'' )
					' + @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 15
	begin
		select	correl_familiar, cod_parentesco, nro_rut_familiar, dv_rut_familiar, ape_paterno_famili, 
				ape_materno_famili, nombre_familiar, convert(varchar(10),fec_nacim_familiar,103) as fec_nacim_familiar
		from	sipweb_wf_nucleofamiliar
		where	folio			= @nfolio	
	end
END



















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_solicitud_app]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO















CREATE PROCEDURE [dbo].[sp_wf_solicitud_app]
	@cod_empresa			int,
	@cod_planta				int,
	@folio					int,
	@estado					varchar(30),
	@usuario_ing			int,
	@usuario_ing_des		varchar(70),
	@observacion			varchar(1000),
	@mail					varchar(100),
	@tipo					int,
	@movilizacion_fap		decimal(18, 4),
	@alimentacion_fap		decimal(18, 4)
AS
declare 
	@nro_colaborador		int,
	@dv_colaborador			varchar(1),
	@cod_cargo				int,
	@cod_jornada			int,
	@cod_sucursal			int,
	@cod_centro_costo		int,
	@cod_unidad_adminis		int,
	@dependencia			varchar(50),
	@vicerrectoría			varchar(50),
	@fecha_termino			datetime,
	@codigo_tipo_contra		varchar(1),
	@codigo_tipo_conta		varchar(10),
	@sueldo_mensual			decimal(13, 4),
	@porc_aumento			decimal(12, 2),
	@movilizacion			decimal(18, 4),
	@alimentacion			decimal(18, 4),
	@gratificacion			decimal(18, 4),
	@total_haberes			decimal(18, 4),
	@correlativo			numeric(14),
	@cod_alimentacion		varchar(5),
	@dato_din				varchar(16),
	@fecha_sol			datetime
BEGIN TRANSACTION

	if (@tipo=0)
	begin
		update sipweb_wf_solicitudcontrato
		set		app_presup_nro		= @usuario_ing,
				app_presup_nombre	= @usuario_ing_des,
				app_presup_fecha	= getdate(),
				estado				= @estado
		where	folio				= @folio

	end
	else if (@tipo=1)
	begin
		update sipweb_wf_solicitudcontrato
		set		app_vicerr_nro		= @usuario_ing,
				app_vicerr_nombre	= @usuario_ing_des,
				app_vicerr_fecha	= getdate(),
				estado				= @estado
		where	folio				= @folio

	end
	else if (@tipo=2)
	begin
		update sipweb_wf_solicitudcontrato
		set		app_rector_nro		= @usuario_ing,
				app_rector_nombre	= @usuario_ing_des,
				app_rector_fecha	= getdate(),
				estado				= @estado,
				estado_fap			= 'Pendiente'
		where	folio				= @folio

		/* genera formulario fap */

		delete from sipweb_wf_solicitudcontrato_fap where folio = @folio
		delete from sipweb_wf_nucleofamiliar where folio = @folio

		insert into sipweb_wf_solicitudcontrato_fap(
					cod_empresa, cod_planta, folio, 
					nro_trabajador, dv_trabajador, 
					ape_paterno_trabaj, ape_materno_trabaj, nombre,
					fec_ini_contrato )
		select	cod_empresa, cod_planta, folio, 
				nro_postulante, dv_postulante, 
				app_postulante, apm_postulante, nom_postulante,
				fecha_contrato
		from	sipweb_wf_solicitudcontrato
		where	folio				= @folio


		DECLARE @intFlag INT
		SET @intFlag = 1

		WHILE (@intFlag <=7)
		BEGIN

			insert into sipweb_wf_nucleofamiliar( cod_empresa, folio, correl_familiar )
			values ( @cod_empresa, @folio, @intFlag )

			SET @intFlag = @intFlag + 1
			CONTINUE;
		END

		DECLARE Cursor01 CURSOR FOR 
		select	max(correlativo)
		from	sipweb_wf_solicitudcontrato_fav 

		OPEN Cursor01

		FETCH NEXT FROM Cursor01 
		INTO @correlativo

		CLOSE Cursor01
		DEALLOCATE Cursor01

		if @correlativo is null
		begin
			select @correlativo = 0
		end
		else
		begin
			select @correlativo = @correlativo + 1
		end 

		delete from sipweb_wf_solicitudcontrato_fav where folio = @folio

		insert into sipweb_wf_solicitudcontrato_fav 
				(cod_empresa, cod_planta, folio, fecha, correlativo,
					crearcta, anexo, pc, movil,	red, correo, saes, intranet,
					banner,	ultimus, soce, biblioteca, macola, onix, otros )
		values (@cod_empresa, @cod_planta, @folio, getdate(), @correlativo, 
					0, 0, 0, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, '' )

	end
	else if (@tipo=3)
	begin
		update sipweb_wf_solicitudcontrato
		set		app_remunera_nro	= @usuario_ing,
				app_remunera_nombre	= @usuario_ing_des,
				app_remunera_fecha	= getdate(),
				estado				= @estado,
				estado_fap			= @estado
		where	folio				= @folio

		
	insert into personal( cod_empresa, cod_planta, nro_trabajador, dv_trabajador,
							cod_vigen_trabajad, rut_trabajador, dv_rut_trabajador,
							cod_interno, ape_paterno_trabaj, ape_materno_trabaj,nombre,
							fec_nacimiento, cod_estado_civil, direccion,
							cod_comuna, fono, nro_cta_cte_bancar, cod_banco,
							cod_nivel_educacio, cod_jornada, cod_cargo, cod_nivel_ocupacio,
							cod_centro_costo, cod_forma_pago, num_cargas_normale, cod_isapre,
							mto_pactado_isapre, unid_cob_mto_pacta, cod_afp, cod_unidad_adminis,
							fec_ini_contrato, fec_fin_contr_vige, codigo_tipo_contra, cod_ciudad,
							sueldo_mensual, casilla_e_mail, fecha_registro, cod_area_perten,
							Convenio, cod_lugar_pago, cod_tipo_trabajado, cod_linea_prod,
							cod_lugprestacion, cod_sindicato, cod_medio_pago, 
							cod_quiere_antic, cod_cierre_vacacio, nacionalidad,
							condic_previsional, tramo_carga_famili, tipo_contabilizaci,
							moneda_sueldo, aplica_seguro_des, aplica_trab_pesado,
							cod_afp_afc, pago_extranjero, cod_pais  )
						select a.cod_empresa_pos, a.cod_planta_pos, b.nro_trabajador, b.dv_trabajador,
								'S', b.nro_trabajador, b.dv_trabajador,
								0, ape_paterno_trabaj, ape_materno_trabaj, nombre,
								fec_nacimiento, cod_estado_civil, direccion,
								cod_comuna, fono, nro_cta_cte_bancar, cod_banco,
								cod_nivel_educacio, cod_jornada, cod_cargo, '',
								cod_centro_costo, 'D', b.num_cargas_normale, cod_isapre,
								mto_pactado_isapre, unid_cob_mto_pacta, cod_afp, cod_unidad_adminis,
								fec_ini_contrato, fecha_termino, codigo_tipo_contra, cod_ciudad,
								sueldo_mensual, @mail, getdate(), cod_area_perten,
								0, 0, codigo_tipo_conta, 0, sede, 0, cod_forma_pago, 
								'S', 'A', 'CHILENA', 'N', 'D', 'N',
								'$', 'S', 'N', 0, 'N', 'CL'
						from	sipweb_wf_solicitudcontrato	a,
								sipweb_wf_solicitudcontrato_fap b
						where	a.cod_empresa	= b.cod_empresa
						and		a.cod_planta	= b.cod_planta
						and		a.folio			= b.folio
						and		a.folio			= @folio

			insert into nucleo_familiar( cod_empresa, nro_trabajador, dv_trabajador, correl_familiar,
			cod_parentesco, ape_paterno_famili, ape_materno_famili,nombre_familiar, nro_rut_familiar,
			dv_rut_familiar, fec_nacim_familiar, cod_actividad   )
			select b.cod_empresa_pos, nro_trabajador, dv_trabajador, correl_familiar,
			cod_parentesco, ape_paterno_famili, ape_materno_famili,nombre_familiar, nro_rut_familiar,
			dv_rut_familiar, fec_nacim_familiar, 0
			from sipweb_wf_nucleofamiliar	a,
				sipweb_wf_solicitudcontrato b
			where a.cod_empresa	= b.cod_empresa
			and	a.folio			= b.folio
			and	a.folio			= @folio
			and a.nro_rut_familiar is not null
					
		DECLARE Cursor00 CURSOR FOR 
		select max(correlativo) + 1
		from haber_informado

		OPEN Cursor00
		FETCH NEXT FROM Cursor00
			INTO @correlativo
		
		CLOSE Cursor00
		DEALLOCATE Cursor00

		DECLARE Cursor01 CURSOR FOR 
		select	a.fecha_sol, c.nro_trabajador, c.dv_trabajador, a.alimentacion, a.cod_colacion, b.dato_din,
				a.cod_centro_costo
		from	sipweb_wf_solicitudcontrato		a,
				sipweb_wf_solicitudcontrato_fap	c,
				sipweb_param_mov_col			b
		where	a.cod_empresa	= c.cod_empresa
		and		a.cod_planta	= c.cod_planta
		and		a.folio			= c.folio
		and		a.cod_colacion	= b.moneda
		and		a.folio			= @folio
		and		b.tipo			= 'Colacion'

		OPEN Cursor01

		FETCH NEXT FROM Cursor01 
		INTO @fecha_sol, @nro_colaborador, @dv_colaborador, @alimentacion, @cod_alimentacion, @dato_din,
			@cod_centro_costo

		if  @nro_colaborador is not null
		begin
			if  @alimentacion_fap is not null
			begin
					select @alimentacion = @alimentacion_fap
			end
			insert into haber_informado( cod_empresa, cod_planta, nro_trabajador, dv_trabajador,
							cod_haber, cod_tipo_proceso, correlativo, fec_aplicacion, cod_unidad_moneda,
							nro_cuotas, cod_centro_costo, fec_ingreso_habere, nombre_usuario, valor_concepto )
			values( @cod_empresa, @cod_planta, @nro_colaborador, @dv_colaborador, 
					@dato_din, 'LQ', @correlativo, @fecha_sol, '$',
					1, @cod_centro_costo, @fecha_sol, 'web', @alimentacion )
		end

		CLOSE Cursor01
		DEALLOCATE Cursor01

		DECLARE Cursor02 CURSOR FOR 
		select	a.fecha_sol, c.nro_trabajador, c.dv_trabajador, a.movilizacion, a.cod_movilizacion, b.dato_din,
				a.cod_centro_costo
		from	sipweb_wf_solicitudcontrato		a,
				sipweb_wf_solicitudcontrato_fap	c,
				sipweb_param_mov_col			b
		where	a.cod_empresa	= c.cod_empresa
		and		a.cod_planta	= c.cod_planta
		and		a.folio			= c.folio
		and		a.cod_movilizacion	= b.moneda
		and		a.folio			= @folio
		and		b.tipo			= 'Movilizacion'

		OPEN Cursor02

		FETCH NEXT FROM Cursor02 
		INTO @fecha_sol, @nro_colaborador, @dv_colaborador, @alimentacion, @cod_alimentacion, @dato_din,
			@cod_centro_costo

		 if  @nro_colaborador is not null
		 begin
			if  @movilizacion_fap is not null
			begin
					select @alimentacion = @movilizacion_fap
			end
		
			insert into personal_dinamico( cod_empresa, cod_planta, nro_trabajador, dv_trabajador,
							nombre_interno, valor_columna, valor_numerico )
			values( @cod_empresa, @cod_planta, @nro_colaborador, @dv_colaborador, 
					@dato_din, @alimentacion, @alimentacion )
		end

		CLOSE Cursor02
		DEALLOCATE Cursor02		

		Insert into personal_dinamico ( cod_empresa, cod_planta, nro_trabajador, dv_trabajador,
							nombre_interno, valor_columna, valor_numerico )
		select	a.cod_empresa_pos, a.cod_planta_pos, b.nro_trabajador, b.dv_trabajador,
				'nom_contac', emerg_nombrecompleto, 0
		from	sipweb_wf_solicitudcontrato	a,
				sipweb_wf_solicitudcontrato_fap b
		where	a.cod_empresa	= b.cod_empresa
		and		a.cod_planta	= b.cod_planta
		and		a.folio			= b.folio
		and		a.folio			= @folio


		Insert into personal_dinamico ( cod_empresa, cod_planta, nro_trabajador, dv_trabajador,
							nombre_interno, valor_columna, valor_numerico )
		select	a.cod_empresa_pos, a.cod_planta_pos, b.nro_trabajador, b.dv_trabajador,
				'fono_contac', emerg_fono, 0
		from	sipweb_wf_solicitudcontrato	a,
				sipweb_wf_solicitudcontrato_fap b
		where	a.cod_empresa	= b.cod_empresa
		and		a.cod_planta	= b.cod_planta
		and		a.folio			= b.folio
		and		a.folio			= @folio

		Insert into personal_dinamico ( cod_empresa, cod_planta, nro_trabajador, dv_trabajador,
							nombre_interno, valor_columna, valor_numerico )
		select	a.cod_empresa_pos, a.cod_planta_pos, b.nro_trabajador, b.dv_trabajador,
				'domi_contac', emerg_direccion, 0
		from	sipweb_wf_solicitudcontrato	a,
				sipweb_wf_solicitudcontrato_fap b
		where	a.cod_empresa	= b.cod_empresa
		and		a.cod_planta	= b.cod_planta
		and		a.folio			= b.folio
		and		a.folio			= @folio

	end
	else if (@tipo=5)
	begin
		update sipweb_wf_solicitudcontrato
		set		estado				= @estado,
				app_presup_nro		= null,
				app_presup_nombre	= null,
				app_presup_fecha	= null,
				app_vicerr_nro		= null,
				app_vicerr_nombre	= null,
				app_vicerr_fecha	= null,
				app_rector_nro		= null,
				app_rector_nombre	= null,
				app_rector_fecha	= null,
				app_remunera_nro	= null,
				app_remunera_nombre	= null,
				app_remunera_fecha	= null
		where	folio				= @folio

	end

	else if (@tipo=6)
	begin
		update	sipweb_wf_solicitudcontrato
		set		estado_fap			= @estado
		where	folio				= @folio

	end

    if (@tipo<6)
	begin
		insert into sipweb_wf_logcontrato(
						cod_empresa,
						cod_planta,
						folio,
						estado,
						observacion,
						usuario,
						fecha,
						tipo )
				values(	@cod_empresa,
						@cod_planta,
						@folio,
						@estado,
						@observacion,
						@usuario_ing_des,
						getdate(),
						'SOL' )
	end
	else
	begin
			insert into sipweb_wf_logcontrato(
						cod_empresa,
						cod_planta,
						folio,
						estado,
						observacion,
						usuario,
						fecha,
						tipo )
				values(	@cod_empresa,
						@cod_planta,
						@folio,
						@estado,
						@observacion,
						@usuario_ing_des,
						getdate(),
						'FAP' )
	end

COMMIT TRANSACTION



















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_postulante]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_wf_postulante]
	@nro_trabajador		int,
	@tipo				int
AS
BEGIN
	SET NOCOUNT ON;

	if @tipo = 0
	begin
		select	cod_vigen_trabajad
		from	personal 
		where	nro_trabajador = @nro_trabajador
		and		cod_vigen_trabajad = 'S'
	end
	else if @tipo = 1
	begin
		select	cod_vigen_trabajad
		from	personal 
		where	nro_trabajador = @nro_trabajador
		and		cod_vigen_trabajad = 'N'
	end
	
	
END


















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_perfiles]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_wf_perfiles]
	@perfil				varchar(20),
	@tipo				int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.cod_proceso, a.descripcion, b.cod_proceso as ind_acceso
		from	sipweb_conf_procesos			a left outer join sipweb_conf_perfiles b on 
								a.cod_modulo		= b.cod_modulo
						and		a.cod_menu			= b.cod_menu
						and		a.cod_proceso		= b.cod_proceso
						and		b.perfil			= @perfil
		where	a.cod_modulo		= 'WorkFlow'
		and		a.cod_menu			= 'WF_Contratos'
	end
	else if @tipo = 1
	begin
		select	a.cod_proceso, a.descripcion, b.cod_proceso as ind_acceso
		from	sipweb_conf_procesos			a left outer join sipweb_conf_perfiles b on 
								a.cod_modulo		= b.cod_modulo
						and		a.cod_menu			= b.cod_menu
						and		a.cod_proceso		= b.cod_proceso
						and		b.perfil			= @perfil
		where	a.cod_modulo		= 'WorkFlow'
		and		a.cod_menu			= 'WF_Finiquitos'
	end
END



















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_personal]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_wf_personal]
	@tipo			    int
AS
BEGIN
	SET NOCOUNT ON;
	
	if ( @tipo = 0 )
	begin
		select	a.dv_trabajador,
				a.nombre,
				a.ape_paterno_trabaj,
				a.ape_materno_trabaj,
				a.cod_cargo
		from	personal			a
	end	
END



















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_perfil_usuarios]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_wf_perfil_usuarios]
	@tipo				int,
	@nro_trabajador		int,
	@where				varchar(300)
AS
DECLARE @sql nvarchar(1000)
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin

		select @where = replace(@where, '&apos;', '''')

		if @where <> ''
		begin
			select @where = 'and '+@where;
		end

		SET @sql = 'select	a.nro_trabajador as Usuario,
							a.dv_trabajador as Dv,
							a.nombre_usuario as nombre,
							b.perfil
					from	usuario_sipweb				a left outer join 	sipweb_wf_perfilusuario	b
								on	a.nro_trabajador	= b.nro_trabajador
					where	a.cod_vigente = ''S'' '
					+ @where +' order by a.nombre_usuario '

		EXEC (@sql)
		
	end
	else if @tipo = 1
	begin
		select	a.nro_trabajador as Usuario,
				a.dv_trabajador as Dv,
				a.nombre_usuario as nombre,
				b.perfil
		from	usuario_sipweb				a left outer join 	sipweb_wf_perfilusuario	b
						on	a.nro_trabajador	= b.nro_trabajador
		where	a.nro_trabajador	= @nro_trabajador
		and		a.cod_vigente = 'S'
	end


END




















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_param_general]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_wf_param_general]
	@tipo				int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	convert(int,valor)
		from	sipweb_param_gen
		where	tipo = 'Tope Sueldo Base'
	end
	else if @tipo = 1
	begin
		select	top 1 round(valor*val_moneda_unidad,14,0) as valor
		from	sipweb_param_gen	a,
				valor_moneda		b
		where	a.tipo		= 'Tope Gratificacion'
		and		a.moneda	= b.cod_unidad_cobro
		order by fec_valor_moneda desc
	end
	else if @tipo = 2
	begin
		select	top 1 convert(int,val_moneda_unidad) as valor, a.moneda
		from	sipweb_param_mov_col	a,
				valor_moneda			b
		where	a.tipo			= 'Movilizacion'
		and		a.moneda		= b.cod_unidad_cobro
		order by fec_valor_moneda desc
	end
	else if @tipo = 3
	begin
		select	top 1 convert(int,val_moneda_unidad) as valor, a.moneda
		from	sipweb_param_mov_col	a,
				valor_moneda			b
		where	a.tipo			= 'Colacion'
		and		a.moneda		= b.cod_unidad_cobro
		order by fec_valor_moneda desc
	end

END


















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_mail_perfiles]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_wf_mail_perfiles]
	@tipo				int,
	@nro_trabajador		int
AS
BEGIN
	SET NOCOUNT ON;
	
	if @tipo = 0
	begin
			select	a.nombre++' '++a.ape_paterno_trabaj++' '++a.ape_materno_trabaj as nombre,
					a.casilla_e_mail
			from	personal					a,
					sipweb_wf_perfilusuario		b
			where	a.nro_trabajador	= b.nro_trabajador
			and		b.perfil			= 'RRHH'
			and		a.cod_vigen_trabajad  = 'S'
	end
	else if @tipo = 1
	begin
			select	a.nombre++' '++a.ape_paterno_trabaj++' '++a.ape_materno_trabaj as nombre,
					a.casilla_e_mail
			from	personal					a,
					sipweb_wf_perfilusuario		b
			where	a.nro_trabajador	= b.nro_trabajador
			and		b.perfil			= 'VICERRECTOR'
			and		a.cod_vigen_trabajad  = 'S'
	end
	else if @tipo = 2
	begin
			select	a.nombre++' '++a.ape_paterno_trabaj++' '++a.ape_materno_trabaj as nombre,
					a.casilla_e_mail
			from	personal					a,
					sipweb_wf_perfilusuario		b
			where	a.nro_trabajador	= b.nro_trabajador
			and		b.perfil			= 'RECTOR'
			and		a.cod_vigen_trabajad  = 'S'
	end
	else if @tipo = 3
	begin
			select	a.nombre++' '++a.ape_paterno_trabaj++' '++a.ape_materno_trabaj as nombre,
					a.casilla_e_mail
			from	personal					a,
					sipweb_wf_perfilusuario		b
			where	a.nro_trabajador	= b.nro_trabajador
			and		b.perfil			= 'REMUNERACIONES'
			and		a.cod_vigen_trabajad  = 'S'
	end
	else if @tipo = 9
	begin
			select	a.nombre++' '++a.ape_paterno_trabaj++' '++a.ape_materno_trabaj as nombre,
					a.casilla_e_mail
			from	personal					a
			where	a.nro_trabajador		= @nro_trabajador
			and		a.cod_vigen_trabajad  = 'S'
	end
	else if @tipo = 10
	begin
			select	'Mesa servicios TI' as nombre,
					valor as casilla_e_mail
			from	sipweb_wf_generico		a
			where	dato	= 'Mail_TI'
	end
	
END



















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_listas]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_wf_listas]
	@tipo				int,
	@cod_empresa		int,
	@cod_planta			int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	distinct a.nro_trabajador, 
				nombre_usuario as nombre
		from	usuario_sipweb				a,
				sipweb_wf_perfilusuario		b
		where	a.nro_trabajador	= b.nro_trabajador
		and		a.cod_vigente	= 'S'
		and		b.perfil		= 'VICERRECTOR'
	end
	else if @tipo = 1
	begin
		select	cod_cargo as codigo, 
				convert(varchar(10),cod_cargo)++':'++cargo_trabajador as descripcion
		from	cargo_trabajador 
		where	cod_empresa		= @cod_empresa
		and		cod_vigente		= 'S'
		order by cargo_trabajador

	end
	else if @tipo = 2
	begin
		select	cod_jornada as codigo, 
				convert(varchar(10),cod_jornada)++':'++jornada as descripcion
		from	jornada_trabajo  
		where	cod_empresa		= @cod_empresa
		and		cod_planta		= @cod_planta
		and		cod_vigente		= 'S'
		order by jornada
	end
	else if @tipo = 3
	begin
		select	cod_sucursal as codigo, 
				convert(varchar(10),cod_sucursal)++':'++sucursal as descripcion
		from	sucursal  
		where	cod_empresa		= @cod_empresa
		and		cod_planta		= @cod_planta
		order by sucursal
	end
	else if @tipo = 4
	begin
		select	cod_centro_costo as codigo, 
				convert(varchar(10),cod_centro_costo)++':'++centro_costo as descripcion
		from	centro_costo  
		where	cod_empresa		= @cod_empresa
		and		cod_vigente		= 'S'
		order by cod_centro_costo
	end
	else if @tipo = 5
	begin
		select	cod_unidad_adminis as codigo, 
				convert(varchar(10),cod_unidad_adminis)++':'++unidad_administrat as descripcion
		from	unidad_administrat  
		where	cod_empresa		= @cod_empresa
		and		cod_vigente		= 'S'
		order by unidad_administrat
	end
	else if @tipo = 6
	begin
		select	distinct grupo_contable as codigo, 
				convert(varchar(10),grupo_contable)++':'++descripcion as descripcion
		from	multiples_concepto
		where	cod_empresa		= @cod_empresa
		and		cod_planta		= @cod_planta
		order by descripcion
	end 
	else if @tipo = 7
	begin
		select	estado, descripcion
		from	sipweb_wf_estados
		where	tipo		= 'WF_Contratos'
		order by estado
	end
	else if @tipo = 8
	begin
		select	estado, descripcion
		from	sipweb_wf_estados
		where	tipo		= 'WF_Contratos'
		and		rechazado	= 1
		order by estado
	end
    else if @tipo = 9
	begin
		select	estado, descripcion
		from	sipweb_wf_estados
		where	tipo		= 'WF_Contratos'
		and		aprobado	= 1
		order by estado
	end
	else if @tipo = 10
	begin
		select	estado, descripcion
		from	sipweb_wf_estados
		where	tipo		= 'WF_Contratos'
		and		(aprobado	= 1 or estado = 'Revision Rechazada')
		order by estado
	end
	else if @tipo = 11
	begin
		select	estado, descripcion
		from	sipweb_wf_estados
		where	tipo		= 'WF_Contratos'
		and		(aprobado	= 1 or estado = 'Rechazado Vicerrector')
		order by estado
	end
	else if @tipo = 12
	begin
		select	estado, descripcion
		from	sipweb_wf_estados
		where	tipo		= 'WF_Contratos'
		and		(aprobado	= 1 or estado = 'Rechazado Rector')
		order by estado
	end
	else if @tipo = 13
	begin
		select	estado, descripcion
		from	sipweb_wf_estados
		where	tipo		= 'WF_Contratos'
		and		(aprobado	= 1 or estado = 'Rechazado Remuneraciones')
		order by estado
	end
	else if @tipo = 14
	begin
		select	cod_pais, pais
		from	winp_pais
		order by cod_pais
	end
	else if @tipo = 15
	begin
		select	cod_region, region
		from	region
		order by cod_pais, cod_region
	end
	else if @tipo = 16
	begin
		select	cod_ciudad, ciudad
		from	ciudad
		where	cod_region		= @cod_empresa
		order by ciudad
	end
	else if @tipo = 17
	begin
		select	cod_comuna, comuna
		from	comuna
		where	cod_region		= @cod_empresa
		and		cod_ciudad		= @cod_planta
		order by comuna
	end
	else if @tipo = 18
	begin
		select	cod_nivel_escolar  as codigo, 
				convert(varchar(10),cod_nivel_escolar)++':'++nivel_escolar as descripcion
		from	nivel_escolar
	end


	else if @tipo = 19
	begin
		select	cod_titulo_profesi  as codigo, 
				convert(varchar(10),cod_titulo_profesi)++':'++titulo_profesional as descripcion
		from	titulo_profesional
	end
	else if @tipo = 20
	begin
		Select	cod_medio_pago as codigo, medio_pago as descripcion
		from	medio_pago 
		where	cod_empresa = @cod_empresa 
		and		cod_medio_pago in ('01','03')
	end
	else if @tipo = 21
	begin
		select	cod_banco  as codigo, 
				convert(varchar(10),cod_banco)++':'++banco as descripcion
		from	banco
	end
	else if @tipo = 22
	begin
		select	rtrim(codigo) as codigo, 
				descripcion
		from	codigos_genericos
		where	tipo_codigo = 'E'
	end
	else if @tipo = 23
	begin
		select	cod_afp  as codigo, 
				convert(varchar(10),cod_afp)++':'++afp as descripcion
		from	afp
	end
	else if @tipo = 24
	begin
		select	cod_isapre  as codigo, 
				convert(varchar(10),cod_isapre)++':'++isapre as descripcion
		from	isapre
		where	cod_vigencia = 'S'
	end
	else if @tipo = 25
	begin
		select	cod_unidad_cobro  as codigo, 
				convert(varchar(10),cod_unidad_cobro)++':'++unidad_cobro as descripcion
		from	unidad
		where	vigencia_moneda = 'S' and aplica_prev_isapre = 'S'
	end
	else if @tipo = 26
	begin
		select	estado, descripcion
		from	sipweb_wf_estados
		where	tipo		= 'WF_Finiquitos'
		and		(aprobado	= 1 or estado = 'Revision Rechazada')
		order by estado
	end
	else if @tipo = 27
	begin
		select	estado, descripcion
		from	sipweb_wf_estados
		where	tipo		= 'WF_Finiquitos'
		and		(aprobado	= 1 or estado = 'Rechazado Vicerrector')
		order by estado
	end
	else if @tipo = 28
	begin
		select	estado, descripcion
		from	sipweb_wf_estados
		where	tipo		= 'WF_Finiquitos'
		and		(aprobado	= 1 or estado = 'Rechazado Rector')
		order by estado
	end
	else if @tipo = 30
	begin
		select	estado, descripcion
		from	sipweb_wf_estados
		where	tipo		= 'WF_Finiquitos'
		and		rechazado	= 1
		order by estado
	end
	else if @tipo = 31
	begin
		select	cod_parentesco  as codigo, 
				convert(varchar(10),cod_parentesco)++':'++parentesco as descripcion
		from	parentesco
	end
	else if @tipo = 32
	begin
		select	cod_empresa  as codigo, 
				convert(varchar(10),cod_empresa)++':'++sigla_empresa as descripcion
		from	empresa
		order by sigla_empresa
	end
	else if @tipo = 33
	begin
		select	cod_planta  as codigo, 
				convert(varchar(10),cod_planta)++':'++planta as descripcion
		from	planta
		where	cod_empresa = @cod_empresa
		order by planta
	end
	else if @tipo = 34
	begin
		select	cod_haber  as codigo, 
				convert(varchar(10),cod_haber)++':'++descripcion as descripcion
		from	haber
		where	cod_empresa = @cod_empresa
		and	cod_planta = @cod_planta
		order by descripcion
	end
	else if @tipo = 35
	begin
		select distinct codigo_tipo_contra as codigo,
				codigo_tipo_contra++':'++left(tipo_contrato,70)++'...' as descripcion
		from	tipo_finiquito
	end
	else if @tipo = 36
	begin
		select	distinct cod_area_perten as codigo, 
				convert(varchar(10),cod_area_perten)++':'++area_perten as descripcion
		from	area_perten 
		where	cod_empresa		= @cod_empresa
		order by descripcion
	end
	else if @tipo = 37
	begin
		select	distinct cod_sucursal as codigo, 
				convert(varchar(10),cod_sucursal)++':'++sucursal as descripcion
		from	sucursal  
		where	cod_empresa		= @cod_empresa
		order by descripcion
	end
END

















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_finiquito_log]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_wf_finiquito_log]
	@cod_empresa	int,
	@cod_planta		int,
	@nfolio			int
AS
BEGIN
		SET NOCOUNT ON

		select	b.descripcion as estado,
				usuario,
				fecha,				
				a.observacion
		from	sipweb_wf_logfiniquito		a,
				sipweb_wf_estados			b
		where	a.estado		= b.estado
		and		a.folio			= @nfolio
		and		b.tipo			= 'WF_Finiquitos'
		order by fecha desc
	
END



















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_finiquito_ing]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_wf_finiquito_ing]
	@cod_empresa		int,
	@cod_planta			int,
	@folio				numeric(18, 0),
	@fecha_sol			datetime,
	@nro_afectado		int,
	@dv_afectado		varchar(1) ,
	@nom_afectado		varchar(70) ,
	@app_afectado		varchar(15) ,
	@apm_afectado		varchar(10) ,
	@cargo_afectado		varchar(50) ,
	@area_afectado		varchar(50) ,
	@vice_afectado		varchar(50) ,
	@empresa_afectado    varchar(50) ,
	@FechaDesvinculacion datetime ,
	@reposicion			varchar(2) ,
	@razon1				varchar(100) ,
	@descripcion1		varchar(100) ,
	@echos1				varchar(500) ,
	@razon2				varchar(100) ,
	@descripcion2		varchar(100) ,
	@echos2				varchar(500) ,
	@razon3				varchar(100) ,
	@descripcion3		varchar(100) ,
	@echos3				varchar(500) ,
	@Consecuencia1		varchar(500) ,
	@Consecuencia2		varchar(500) ,
	@Consecuencia3		varchar(500) ,
	@observacion		varchar(300) ,
	@observacion_legal	varchar(500) ,
	@observacion_otros	varchar(500) ,
	@jefe_nro			int ,
	@jefe_nombre		varchar(70) ,
	@jefe_fecha			datetime ,
	@estado				varchar(30) ,
	@codempresa_afectado	int,
	@codplanta_afectado	int
AS
BEGIN TRANSACTION

		if @folio IS NULL
		begin
				if (SELECT COUNT(*) FROM sipweb_wf_finiquito ) = 0
				begin
					SELECT @folio  = 1
				end	
				else
				begin
					SELECT @folio = MAX(folio) + 1 FROM sipweb_wf_finiquito
				end
		end
		else
		begin
				delete from sipweb_wf_finiquito 
				where	folio		= @folio
		end

		insert into sipweb_wf_finiquito( cod_empresa,
				cod_planta,
				folio,
				fecha_sol,
				nro_afectado,
				dv_afectado,
				nom_afectado,
				app_afectado,
				apm_afectado,
				cargo_afectado,
				area_afectado,
				vice_afectado,
				empresa_afectado,
				FechaDesvinculacion,
				reposicion,
				razon1,
				descripcion1,
				echos1,
				razon2,
				descripcion2,
				echos2,
				razon3,
				descripcion3,
				echos3,
				Consecuencia1,
				Consecuencia2,
				Consecuencia3,
				observacion,
				observacion_legal,
				observacion_otros,
				jefe_nro,
				jefe_nombre,
				jefe_fecha,
				estado,
				codempresa_afectado,
				codplanta_afectado )
		values ( @cod_empresa,
				 @cod_planta,
				 @folio,
				 @fecha_sol,
				@nro_afectado,
				@dv_afectado,
				@nom_afectado,
				@app_afectado,
				@apm_afectado,
				@cargo_afectado,
				@area_afectado,
				@vice_afectado,
				@empresa_afectado,
				@FechaDesvinculacion,
				@reposicion,
				@razon1,
				@descripcion1,
				@echos1,
				@razon2,
				@descripcion2,
				@echos2,
				@razon3,
				@descripcion3,
				@echos3,
				@Consecuencia1,
				@Consecuencia2,
				@Consecuencia3,
				@observacion,
				@observacion_legal,
				@observacion_otros,
				@jefe_nro,
				@jefe_nombre,
				@jefe_fecha,
				@estado,
				@codempresa_afectado,
				@codplanta_afectado)


		insert into sipweb_wf_logfiniquito(
					cod_empresa,
					cod_planta,
					folio,
					estado,
					usuario,
					fecha )
			values(	@cod_empresa,
					@cod_planta,
					@folio,
					@estado,
					@jefe_nombre,
					getdate() )


COMMIT TRANSACTION

RETURN @folio


















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_finiquito_habdesc]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_wf_finiquito_habdesc]
	@folio				numeric,
	@tipo				int
AS
DECLARE
@cod_empresa_a		int,
@cod_planta_a		int,
@nro_afectado		int,
@mes				int,
@ano				int
BEGIN
	SET NOCOUNT ON;

		DECLARE Cursor01 CURSOR FOR 
		select	year(fechadesvinculacion), month(fechadesvinculacion),
				codempresa_afectado, codplanta_afectado, nro_afectado
		from	sipweb_wf_finiquito
		where	folio				= @folio

		OPEN Cursor01
		FETCH NEXT FROM Cursor01 
		INTO @ano, @mes, @cod_empresa_a,@cod_planta_a,@nro_afectado

		CLOSE Cursor01
		DEALLOCATE Cursor01


	if @tipo = 0
	begin

		select	a.cod_haber,
				b.descripcion,
				a.valor_transac_peso
		from	liquidacio_haberes	a,
				haber				b
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.cod_haber			= b.cod_haber
		and		a.cod_empresa		= @cod_empresa_a
		and		a.cod_planta		= @cod_planta_a
		and		a.nro_trabajador	= @nro_afectado
		and		a.ano_periodo		= @ano
		and		a.mes_periodo		= @mes
		and		a.cod_tipo_proceso	= 'SIMF'
	end
	else if @tipo = 1
	begin
		select	a.cod_descuento,
				b.descripcion,
				a.valor_transac_peso 
		from	liquida_descuentos	a,
				descuento				b
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.cod_descuento		= b.cod_descuento
		and		a.cod_empresa		= @cod_empresa_a
		and		a.cod_planta		= @cod_planta_a
		and		a.nro_trabajador	= @nro_afectado
		and		a.ano_periodo		= @ano
		and		a.mes_periodo		= @mes
		and		a.cod_tipo_proceso	= 'SIMF'
	end
END




















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_finiquito_del]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












create PROCEDURE [dbo].[sp_wf_finiquito_del]
	@cod_empresa			int,
	@cod_planta				int,
	@folio					int,
	@estado					varchar(20),
	@usuario_ing			int,
	@jefatura				varchar(70)
AS
BEGIN TRANSACTION

		update sipweb_wf_finiquito
		set		estado	= @estado
		where	folio	= @folio

		insert into sipweb_wf_logfiniquito(
					cod_empresa,
					cod_planta,
					folio,
					estado,
					usuario,
					fecha )
			values(	@cod_empresa,
					@cod_planta,
					@folio,
					@estado,
					@jefatura,
					getdate() )


COMMIT TRANSACTION





















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_finiquito_con]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_wf_finiquito_con]
	@cod_empresa	int,
	@cod_planta		int,
	@nusuario		int,
	@nfolio			int,
	@swhere			varchar(500),
	@tipo			int
AS
DECLARE @sql nvarchar(4000)
DECLARE @campos nvarchar(3000)
BEGIN
	SET NOCOUNT ON;
	/* consulta solicitud */
	if @tipo = 0  
	begin
		select @swhere = replace(@swhere, '&apos;', '''')
		
		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_fin_03')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end
	
		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_finiquito			a,
							sipweb_wf_estados			b
					where	a.estado		= b.estado
					and		b.tipo			= ''WF_Finiquitos''
					and		a.jefe_nro		= ' + convert(varchar(10),@nusuario) +
					+ @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 1
	begin
		select	folio, 
				convert(varchar(10),fecha_sol,103) as Fecha,
				nom_afectado++' '++app_afectado++ ' '++apm_afectado as 'Nombre Afectado',
				cargo_afectado as 'Cargo'
		from	sipweb_wf_finiquito			a,
				sipweb_wf_estados			b
		where	a.estado		= b.estado
		and		a.jefe_nro		= @nusuario
		and		b.tipo			= 'WF_Finiquitos'
		and		a.estado		= 'Pendiente'
		order by folio
	end
	else if @tipo = 2
	begin
		select	cod_empresa,
				cod_planta,
				folio,
				convert(varchar(10),fecha_sol,103) as fecha_sol,
				nro_afectado,
				dv_afectado,
				nom_afectado,
				app_afectado,
				apm_afectado,
				cargo_afectado,
				area_afectado,
				vice_afectado,
				empresa_afectado,
				convert(varchar(10),FechaDesvinculacion,103) as FechaDesvinculacion, 
				reposicion,
				razon1,
				descripcion1,
				echos1,
				razon2,
				descripcion2,
				echos2,
				razon3,
				descripcion3,
				echos3,
				Consecuencia1,
				Consecuencia2,
				Consecuencia3,
				observacion,
				observacion_legal,
				observacion_otros,
				jefe_nro,
				jefe_nombre,
				jefe_fecha,
				app_presup_nro,
				app_presup_nombre,
				convert(varchar(10),app_presup_fecha,103) as app_presup_fecha,
				app_vicerr_nro,
				app_vicerr_nombre,
				convert(varchar(10),app_vicerr_fecha,103) as app_vicerr_fecha,
				app_rector_nro,
				app_rector_nombre,
				convert(varchar(10),app_rector_fecha,103) as app_rector_fecha,
				a.estado,
				b.descripcion as des_estado,
				month(FechaDesvinculacion) as mesmodifica,
				year(FechaDesvinculacion) as anomodifica,
				codempresa_afectado,
				codplanta_afectado
		from	sipweb_wf_finiquito			a,
				sipweb_wf_estados			b
		where	a.estado		= b.estado
		and		a.folio			= @nfolio
		and		b.tipo			= 'WF_Finiquitos'
		order by folio
	end
	/* consulta modificacion solicitud */
	else if @tipo = 3  
	begin
		select @swhere = replace(@swhere, '&apos;', '''')

		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_fin_02')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end


		SET @sql = 'select	folio '++@campos++'
					from	sipweb_wf_finiquito	   		a,
							sipweb_wf_estados			b
					where	a.estado		= b.estado
					and		b.tipo			= ''WF_Finiquitos''
					and		b.rechazado		= 1
					and		a.jefe_nro		= ' + convert(varchar(10),@nusuario) +
					+ @swhere +' order by folio'

		EXEC (@sql)
	end
	/* aprobacion solicitud modificacion*/
	else if @tipo = 4  
	begin
		select @swhere = replace(@swhere, '&apos;', '''')

		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_fin_04')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_finiquito			a,
							sipweb_wf_estados			b
					where	a.estado		= b.estado
					and		b.tipo			= ''WF_Finiquitos''
					and		a.estado		= ''Ingresado''
					' + @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 5  
	begin
		select @swhere = replace(@swhere, '&apos;', '''')
	
		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_fin_04')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_finiquito			a,
							sipweb_wf_estados			b
					where	a.estado		= b.estado
					and		b.tipo			= ''WF_Finiquitos''
					and		a.estado		= ''Revisado''
					' + @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 6  
	begin
		select @swhere = replace(@swhere, '&apos;', '''')

		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_fin_04')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_finiquito			a,
							sipweb_wf_estados			b
					where	a.estado		= b.estado
					and		b.tipo			= ''WF_Finiquitos''
					and		a.estado		= ''Aprobacion Vicerrector''
					' + @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 7  
	begin
		select @swhere = replace(@swhere, '&apos;', '''')

		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_fin_04')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_finiquito			a,
							sipweb_wf_estados			b
					where	a.estado		= b.estado
					and		b.tipo			= ''WF_Finiquitos''
					and		a.estado		= ''Aprobacion Rector'' 
					' + @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 8
	begin
		
		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_fin_05')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		select @swhere = replace(@swhere, '&apos;', '''')
		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_finiquito			a,
							sipweb_wf_estados			b
					where	a.estado			= b.estado
					and		b.tipo			= ''WF_Finiquitos''
					and		(a.app_presup_nro	= ' + convert(varchar(10),@nusuario) + 
							' or a.estado = ''Revision Rechazada'' )' +
					+ @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 9
	begin
		select @swhere = replace(@swhere, '&apos;', '''')

		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_fin_05')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_finiquito			a,
							sipweb_wf_estados			b
					where	a.estado			= b.estado
					and		b.tipo			= ''WF_Finiquitos''
					and		(a.app_vicerr_nro	= ' + convert(varchar(10),@nusuario) + 
							' or a.estado = ''Rechazado Vicerrector'' )' +
					+ @swhere +' order by folio'

		EXEC (@sql)
	end
	else if @tipo = 10
	begin
		select @swhere = replace(@swhere, '&apos;', '''')

		SELECT @campos = dbo.fn_wf_Retorna_Campos ('wf_fin_05')
		if @campos <> ''
		begin
			select @campos = ','++@campos
		end

		SET @sql = 'select	folio '++@campos++' 
					from	sipweb_wf_finiquito			a,
							sipweb_wf_estados			b
					where	a.estado			= b.estado
					and		b.tipo			= ''WF_Finiquitos''
					and		(a.app_rector_nro	= ' + convert(varchar(10),@nusuario) + 
							' or a.estado = ''Rechazado Rector'' )' +
					+ @swhere +' order by folio'

		EXEC (@sql)
	end
END




















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_finiquito_calculo]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_wf_finiquito_calculo]
	@cod_empresa		int,
	@cod_planta			int,
	@nro_trabajador		int,
	@ano				int,
	@mes				int,
	@fecha				datetime,
	@tipo				int
AS
declare
@nano	int,
@nmes	int
BEGIN
	SET NOCOUNT ON;

 if @tipo = 0
 begin
	select	val_liquido_pago			
	from	historico_liquidac 
	where	cod_empresa			= @cod_empresa
	and		cod_planta			= @cod_planta
	and		ano_periodo			= @ano
	and		mes_periodo			= @mes
	and		cod_tipo_proceso	= 'SIMF'
	and		nro_trabajador		= @nro_trabajador
end	
else if @tipo = 1
begin
			DECLARE Cursor01 CURSOR FOR 
			select	ano_periodo, mes_periodo			
			from	historico_liquidac 
			where	cod_empresa			= @cod_empresa
			and		cod_planta			= @cod_planta
			and		cod_tipo_proceso	= 'LQ'
			and		nro_trabajador		= @nro_trabajador
			and		nro_dias_asistidos	= 30

			OPEN Cursor01

			FETCH NEXT FROM Cursor01 
			INTO @nano, @nmes

			CLOSE Cursor01
			DEALLOCATE Cursor01

			select	sum(valor_transac_peso)
			from	haberes_contractua		a,
					sipweb_wf_haberesfin	b
			where	a.cod_empresa		= b.cod_empresa
			and		a.cod_planta		= b.cod_planta
			and		a.cod_haber			= b.cod_haber
			and		a.cod_empresa			= @cod_empresa
			and		a.cod_planta			= @cod_planta
			and		a.nro_trabajador		= @nro_trabajador
			and		a.ano_periodo			= @nano
			and		a.mes_periodo			= @nmes
			and		a.cod_tipo_proceso	= 'LQ'
end
else if @tipo = 2
begin	

		select	b.sindicato			
		from	personal	a,
				sindicato	b
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.cod_sindicato		= b.cod_sindicato
		and		a.cod_empresa		= @cod_empresa
		and		a.cod_planta		= @cod_planta
		and		a.nro_trabajador	= @nro_trabajador
end
else if @tipo = 3
begin	
		select	b.tipo_licencia		
		from	LICENCIA 		a,
				tipo_licencia	b
		where	a.nro_tipo_licencia	= b.nro_tipo_licencia
		and		a.cod_empresa		= @cod_empresa
		and		a.cod_planta		= @cod_planta
		and		a.nro_trabajador	= @nro_trabajador
		and		@fecha				>= fec_desde_licencia
		and		@fecha				<= fec_hasta_licencia
end
END



















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_finiquito_app]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_wf_finiquito_app]
	@cod_empresa			int,
	@cod_planta				int,
	@folio					int,
	@estado					varchar(30),
	@usuario_ing			int,
	@usuario_ing_des		varchar(70),
	@observacion			varchar(1000),
	@observacion_legal		varchar(600),
	@observacion_otros		varchar(600),
	@tipo					int
AS
declare
@cod_empresa_a		int,
@cod_planta_a		int,
@nro_afectado		int,
@reposicion			varchar(2)
BEGIN TRANSACTION

	if (@tipo=0)
	begin
		update sipweb_wf_finiquito
		set		app_presup_nro		= @usuario_ing,
				app_presup_nombre	= @usuario_ing_des,
				app_presup_fecha	= getdate(),
				estado				= @estado,
				observacion_legal	= @observacion_legal,
				observacion_otros	= @observacion_otros
		where	folio				= @folio

	end
	else if (@tipo=1)
	begin
		update sipweb_wf_finiquito
		set		app_vicerr_nro		= @usuario_ing,
				app_vicerr_nombre	= @usuario_ing_des,
				app_vicerr_fecha	= getdate(),
				estado				= @estado
		where	folio				= @folio

	end
	else if (@tipo=2)
	begin
		update sipweb_wf_finiquito
		set		app_rector_nro		= @usuario_ing,
				app_rector_nombre	= @usuario_ing_des,
				app_rector_fecha	= getdate(),
				estado				= @estado
		where	folio				= @folio

		/* marca en datos dinamicos */


			select @nro_afectado = -1;

			DECLARE Cursor01 CURSOR FOR 
			select	a.codempresa_afectado, a.codplanta_afectado, a.nro_afectado, a.reposicion
			from	sipweb_wf_finiquito	a,
					personal			b
			where	a.codempresa_afectado	= b.cod_empresa
			and		a.codplanta_afectado	= b.cod_planta
			and		a.nro_afectado			= b.nro_trabajador
			and		a.folio					= @folio
			and		b.cod_vigen_trabajad = 'S'

			OPEN Cursor01

			FETCH NEXT FROM Cursor01 
			INTO @cod_empresa_a, @cod_planta_a, @nro_afectado, @reposicion

			CLOSE Cursor01
			DEALLOCATE Cursor01
			
			if ( @nro_afectado is null or @nro_afectado <> -1 )
			begin
					insert into personal_dinamico ( cod_empresa, cod_planta, nro_trabajador,
						dv_trabajador, nombre_interno, valor_columna )
					select	b.cod_empresa, b.cod_planta, a.nro_afectado,
						dv_trabajador, 'afecto_a_rem', a.reposicion
					from	sipweb_wf_finiquito	a,
							personal			b
					where	a.codempresa_afectado	= b.cod_empresa
					and		a.codplanta_afectado	= b.cod_planta
					and		a.nro_afectado			= b.nro_trabajador
					and		a.folio					= @folio
					and		b.cod_vigen_trabajad	 = 'S'
			end
			else
			begin
					update  personal_dinamico
					set		valor_columna		= @reposicion
					where	cod_empresa			= @cod_empresa_a
					and		cod_planta			= @cod_planta_a
					and		nro_trabajador		= @nro_afectado
			end

		/****************************/

	end
	else if (@tipo=5)
	begin
		update sipweb_wf_finiquito
		set		estado				= @estado,
				app_presup_nro		= null,
				app_presup_nombre	= null,
				app_presup_fecha	= null,
				app_vicerr_nro		= null,
				app_vicerr_nombre	= null,
				app_vicerr_fecha	= null,
				app_rector_nro		= null,
				app_rector_nombre	= null,
				app_rector_fecha	= null
		where	folio				= @folio

	end

	insert into sipweb_wf_logfiniquito(
					cod_empresa,
					cod_planta,
					folio,
					estado,
					observacion,
					usuario,
					fecha )
			values(	@cod_empresa,
					@cod_planta,
					@folio,
					@estado,
					@observacion,
					@usuario_ing_des,
					getdate() )

COMMIT TRANSACTION





















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_ficha]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_wf_ficha]
	@nro_trabajador		int
AS
BEGIN
	SET NOCOUNT ON;

	
	select	a.nombre, a.ape_paterno_trabaj, a.ape_materno_trabaj, a.rut_trabajador, a.dv_rut_trabajador, 
			a.cod_cargo, c.cargo_trabajador, a.cod_unidad_adminis, b.unidad_administrat, a.nro_trabajador,
			a.cod_empresa, a.cod_planta
	from	personal a  left outer join unidad_administrat b on a.cod_empresa = b.cod_empresa and a.cod_unidad_adminis = b.cod_unidad_adminis
						left outer join cargo_trabajador c on a.cod_empresa = c.cod_empresa and a.cod_cargo = c.cod_cargo 
						left outer join foto_trabajador d on a.cod_empresa = d.cod_empresa and a.nro_trabajador = d.nro_trabajador
	where	a.nro_trabajador = @nro_trabajador
	and		a.cod_vigen_trabajad = 'S'
	
END





















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_consol]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_wf_consol]
	@tipo		int,
	@nusuario	int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	folio, 
				convert(varchar(10),fecha_sol,103) as Fecha,
				solicitante,
				solic_cargo as Cargo,
				convert(varchar(10),nro_colaborador)++'-'++dv_colaborador as Rut_Colaborador,
				colaborador as Nombre_Colaborador,
				colabo_cargo as Cargo_Colaborador,
				estado as Estado
		from	sipweb_wf_solicitudmodifica
		where	usuario_ing = @nusuario
		order by folio
	end
	else if @tipo = 1
	begin
		select	folio, 
				convert(varchar(10),fecha_sol,103) as Fecha,
				convert(varchar(10),nro_colaborador)++'-'++dv_colaborador as 'Rut',
				colaborador as 'Nombre',
				colabo_cargo as 'Cargo',
				b.descripcion as Estado
		from	sipweb_wf_solicitudmodifica	a,
				sipweb_wf_estados			b
		where	a.estado	= b.estado
		and		a.usuario_ing = @nusuario
		and		b.tipo		 = 'WF_Contratos'
		order by folio
	end
	
END




















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_confmovcol_upd]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_wf_confmovcol_upd]
	@id					numeric(14),
	@tipomc				varchar(30),
	@moneda				varchar(4),
	@dato_din			varchar(16),
	@tipo				int
AS
BEGIN TRANSACTION
	if ( @tipo = 0 )
	begin
		delete from sipweb_param_mov_col 
		where	correlativo		= @id

		insert into sipweb_param_mov_col( tipo, moneda, dato_din )
		values ( @tipomc, @moneda, @dato_din )

	end
	else
	begin
		delete from sipweb_param_mov_col 
		where	correlativo		= @id
	end	

COMMIT TRANSACTION


















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_confmovcol]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_wf_confmovcol]
	@tipo				int,
	@id					numeric(14)
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.correlativo,
				a.tipo,
				a.moneda,
				b.unidad_cobro,
				a.dato_din			
		from	sipweb_param_mov_col	a,
				unidad					b
		where	a.moneda			= b.cod_unidad_cobro
		order by correlativo
	end
	else if @tipo = 1
	begin
		select	tipo,
				moneda,
				dato_din
		from	sipweb_param_mov_col	a
		where	correlativo				= @id
	end

END


















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_confhab_fin_upd]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













create PROCEDURE [dbo].[sp_wf_confhab_fin_upd]
	@id					numeric(14),
	@cod_empresa		int,
	@cod_planta			int,
	@cod_haber			int,
	@tipo				int
AS
BEGIN TRANSACTION
	if ( @tipo = 0 )
	begin
		delete from sipweb_wf_haberesfin
		where	correlativo		= @id

		insert into sipweb_wf_haberesfin( cod_empresa, cod_planta, cod_haber )
		values ( @cod_empresa, @cod_planta, @cod_haber )

	end
	else
	begin
		delete from sipweb_wf_haberesfin 
		where	correlativo		= @id
	end	

COMMIT TRANSACTION


















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_confhab_fin]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












create PROCEDURE [dbo].[sp_wf_confhab_fin]
	@tipo				int,
	@id					numeric(14)
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.correlativo,
				b.sigla_empresa as empresa,
				c.planta,
				a.cod_haber,
				d.descripcion			
		from	sipweb_wf_haberesfin	a,
				empresa					b,
				planta					c,
				haber					d
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_empresa		= c.cod_empresa
		and		a.cod_planta		= c.cod_planta
		and		a.cod_empresa		= d.cod_empresa
		and		a.cod_planta		= d.cod_planta
		and		a.cod_haber			= d.cod_haber
		order by correlativo
	end
	else if @tipo = 1
	begin
		select	cod_empresa,
				cod_planta,
				cod_haber
		from	sipweb_wf_haberesfin	a
		where	correlativo		= @id
	end

END





















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_confhab_cont_upd]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_wf_confhab_cont_upd]
	@id					numeric(14),
	@cod_empresa		int,
	@cod_planta			int,
	@cod_haber			int,
	@tipo				int
AS
BEGIN TRANSACTION
	if ( @tipo = 0 )
	begin
		delete from sipweb_wf_haberescon 
		where	correlativo		= @id

		insert into sipweb_wf_haberescon( cod_empresa, cod_planta, cod_haber )
		values ( @cod_empresa, @cod_planta, @cod_haber )

	end
	else
	begin
		delete from sipweb_wf_haberescon 
		where	correlativo		= @id
	end	

COMMIT TRANSACTION


















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_confhab_cont]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE  PROCEDURE [dbo].[sp_wf_confhab_cont]
	@tipo				int,
	@id					numeric(14)
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.correlativo,
				b.sigla_empresa as empresa,
				c.planta,
				a.cod_haber,
				d.descripcion			
		from	sipweb_wf_haberescon	a,
				empresa					b,
				planta					c,
				haber					d
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_empresa		= c.cod_empresa
		and		a.cod_planta		= c.cod_planta
		and		a.cod_empresa		= d.cod_empresa
		and		a.cod_planta		= d.cod_planta
		and		a.cod_haber			= d.cod_haber
		order by correlativo
	end
	else if @tipo = 1
	begin
		select	cod_empresa,
				cod_planta,
				cod_haber
		from	sipweb_wf_haberescon	a
		where	correlativo		= @id
	end

END





















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_conf_nosotros_upd]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_wf_conf_nosotros_upd]
	@tipo				varchar(20),
	@texto				text,
	@imagen				varchar(50),
	@fuenteletra				varchar(50),
	@tamanoletra				varchar(2),
	@negritaletra				varchar(2)
AS
BEGIN TRANSACTION
	update	sipweb_confnosotros 
	set		texto		= @texto,
			imagen		= @imagen,
			fuenteletra = @fuenteletra,
			tamanoletra = @tamanoletra,
			negritaletra = @negritaletra
	where	tipo		= @tipo	

COMMIT TRANSACTION


















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_conf_nosotros]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_wf_conf_nosotros]
 @tipo		varchar(20)
AS
BEGIN
	SET NOCOUNT ON;

	if @tipo = ''
	begin
		SELECT   tipo,
				 texto,
				 imagen,
				 fuenteletra as 'Fuente',
				 tamanoletra as 'Tamaño',
				 negritaletra as 'Negrita'
		FROM     sipweb_confnosotros
	end
	else
	begin
		SELECT   tipo,
				 texto,
				 imagen,
				 fuenteletra,
				 tamanoletra,
				 negritaletra
		FROM     sipweb_confnosotros
		where	 tipo	= @tipo
	end

END
























GO

/****** Object:  StoredProcedure [dbo].[sp_wf_conf_correo]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_wf_conf_correo]
	@tipo		varchar(15)
AS
BEGIN
	SET NOCOUNT ON;

	select	smtp,
			port,
			mail_from,
			mail_us,
			mail_ps,
			EnableSSL
	from	sipweb_conf_correo
	where	tipo = @tipo

END




















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_conf_columnas_upd]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_wf_conf_columnas_upd]
	@tabla				varchar(40),
	@proceso			varchar(40),
	@campo				varchar(40),
	@nvisible			int
AS
BEGIN TRANSACTION
	update	sipweb_wf_conf_columnas 
	set		visible		= @nvisible
	where	tabla		= @tabla
	and		proceso		= @proceso
	and		campo		= @campo	

COMMIT TRANSACTION






















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_conf_columnas]    Script Date: 09/11/2017 21:02:35 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














create PROCEDURE [dbo].[sp_wf_conf_columnas]
	@modulo			varchar(20),
	@tipo			int
AS
BEGIN
	SET NOCOUNT ON;

	if @tipo = 0
	begin
		select	cod_proceso, descripcion
		from	sipweb_conf_procesos
		where	cod_proceso in ( select proceso from sipweb_wf_conf_columnas )
		order by descripcion
	end
	else if @tipo = 1
	begin
		select	a.tabla, a.proceso, a.campo, b.descripcion, a.visible
		from	sipweb_wf_conf_columnas		a,
				sipweb_wf_nomb_campos		b
		where	a.tabla		= b.tabla
		and		a.campo		= b.campo
		and		a.proceso = @modulo
	end
END




















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_colaborador]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














create PROCEDURE [dbo].[sp_wf_colaborador]
	@cod_empresa		int,
	@cod_planta			int,
	@nro_trabajador		int,
	@tipo			    int
AS
BEGIN
	SET NOCOUNT ON;
	
	if ( @tipo = 0 )
	begin
		select	a.nro_trabajador,
				a.dv_trabajador,
				a.nombre++' '++a.ape_paterno_trabaj++' '++a.ape_materno_trabaj	as nombre		
		from	personal			a,
				personal_dinamico	b
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		b.nombre_interno	= 'RutJefDir'
		and		b.valor_columna		= convert(varchar(10),@nro_trabajador)
		and		a.cod_vigen_trabajad = 'S'
	end
	else if ( @tipo = 3 )
	begin
		select	nro_colaborador
		from	sipweb_wf_solicitudmodifica
		where	nro_colaborador	= @nro_trabajador
		and		estado		not in ( 'Anulada', 'Aprobacion Remuneraciones' )

	end
	else
	begin
		select	a.dv_trabajador,
				b.sigla_empresa,
				c.planta,
				d.sucursal,
				a.nombre++' '++a.ape_paterno_trabaj++' '++a.ape_materno_trabaj	as nombre,
				e.cargo_trabajador,
				a.sueldo_mensual,
				a.cod_empresa,
				a.cod_planta,
				a.codigo_tipo_contra,
				convert(varchar(10),fec_fin_contr_vige,103) as fec_fin_contr_vige
		from	personal			a,
				empresa				b,
				planta				c,
				sucursal			d,
				cargo_trabajador	e
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_empresa		= c.cod_empresa
		and		a.cod_planta		= c.cod_planta
		and		a.cod_empresa		= d.cod_empresa
		and		a.cod_planta		= d.cod_planta
		and		a.cod_sucursal		= d.cod_sucursal
		and		a.cod_empresa		= e.cod_empresa
		and		a.cod_cargo			= e.cod_cargo 
	--	and		a.cod_empresa		= @cod_empresa
	--	and		a.cod_planta		= @cod_planta
		and		a.nro_trabajador	= @nro_trabajador
		and		a.cod_vigen_trabajad = 'S'
	end	
	
END



















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_causaldespido_upd]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














create PROCEDURE [dbo].[sp_wf_causaldespido_upd]
	@codigo				char(6),
	@alerta				varchar(3000)
AS
BEGIN TRANSACTION
	delete from sipweb_wf_causaldespido 
	where	codigo_tipo_finiquito		= @codigo

	insert into sipweb_wf_causaldespido( codigo_tipo_finiquito, observacion )
	values ( @codigo, @alerta  )

COMMIT TRANSACTION



















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_causaldespido]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_wf_causaldespido]
	@nro_trabajador		int,
	@tipo			    int,
	@where				varchar(300)
AS
declare @codigo_tipo_contra varchar(10)
DECLARE @sql nvarchar(1000)
BEGIN
	SET NOCOUNT ON;
	
	if ( @tipo = 0 )
	begin
		DECLARE Cursor01 CURSOR FOR 
		select	a.cod_retiro
		from	personal		a
		where	a.nro_trabajador	= @nro_trabajador
		and		a.cod_vigen_trabajad = 'N'

		OPEN Cursor01
		FETCH NEXT FROM Cursor01 
		INTO @codigo_tipo_contra

		CLOSE Cursor01
		DEALLOCATE Cursor01

		select	observacion
		from	sipweb_wf_causaldespido 
		where	codigo_tipo_finiquito = @codigo_tipo_contra

	end
	else if ( @tipo = 1 )
	begin
		select @where = replace(@where, '&apos;', '''')

		if @where <> ''
		begin
			select @where = 'where '+@where;
		end

		SET @sql = 'select	distinct codigo_tipo_contra, 
							tipo_contrato,
							observacion
					from	tipo_finiquito	a left outer join sipweb_wf_causaldespido b
							on a.codigo_tipo_contra = b.codigo_tipo_finiquito '
					+ @where +' order by codigo_tipo_contra '

		EXEC (@sql)	
	end 
	else if @tipo = 2
	begin
		select	distinct codigo_tipo_contra, 
							tipo_contrato,
							observacion
		from	tipo_finiquito	a left outer join sipweb_wf_causaldespido b
							on a.codigo_tipo_contra = b.codigo_tipo_finiquito
		where a.codigo_tipo_contra	= @nro_trabajador
	end
END



















GO

/****** Object:  StoredProcedure [dbo].[sp_wf_afectados]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_wf_afectados]
	@cod_empresa		int,
	@cod_planta			int,
	@nro_trabajador		int,
	@tipo			    int
AS
BEGIN
	SET NOCOUNT ON;
	
	if ( @tipo = 0 )
	begin
		select	a.nro_trabajador,
				a.dv_trabajador,
				a.nombre++' '++a.ape_paterno_trabaj++' '++a.ape_materno_trabaj	as nombre		
		from	personal			a,
				personal_dinamico	b
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		b.nombre_interno	= 'RutJefDir'
		and		b.valor_columna		= convert(varchar(10),@nro_trabajador)
		and		a.cod_vigen_trabajad = 'S'

	end
	else if ( @tipo = 1 )
	begin
		select	a.dv_trabajador,
				b.sigla_empresa,
				c.planta,
				d.sucursal,
				a.nombre,
				a.ape_paterno_trabaj,
				a.ape_materno_trabaj,
				a.cod_cargo,
				e.cargo_trabajador,
				a.cod_unidad_adminis,
				a.cod_empresa,
				a.cod_planta,
				convert(varchar(10),a.FEC_FIN_CONTR_VIGE,103) as Fecha 
		from	personal			a,
				empresa				b,
				planta				c,
				sucursal			d,
				cargo_trabajador	e
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_empresa		= c.cod_empresa
		and		a.cod_planta		= c.cod_planta
		and		a.cod_empresa		= d.cod_empresa
		and		a.cod_planta		= d.cod_planta
		and		a.cod_sucursal		= d.cod_sucursal
		and		a.cod_empresa		= e.cod_empresa
		and		a.cod_cargo			= e.cod_cargo 
		and		a.nro_trabajador	= @nro_trabajador
		and		a.cod_vigen_trabajad = 'S'
	end	
	else if ( @tipo = 2 )
	begin
		select	b.sigla_empresa,
				c.planta,
				d.sucursal
		from	personal			a,
				empresa				b,
				planta				c,
				sucursal			d
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_empresa		= c.cod_empresa
		and		a.cod_planta		= c.cod_planta
		and		a.cod_empresa		= d.cod_empresa
		and		a.cod_planta		= d.cod_planta
		and		a.cod_sucursal		= d.cod_sucursal
		and		a.nro_trabajador	= @nro_trabajador
		and		a.cod_vigen_trabajad = 'S'
	end	
END


















GO

/****** Object:  StoredProcedure [dbo].[sp_ver_archivos]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_ver_archivos]
	@usuario			int,
	@nro_trabajador		int,
	@perfil				varchar(150),	
	@swhere				varchar(800)
AS
DECLARE @sql nvarchar(4000)
DECLARE @campos nvarchar(3000)
BEGIN
	SET NOCOUNT ON;
	
	select @swhere = replace(@swhere, '&apos;', '''')
		
	if @perfil = 'ADMIN'
	begin
		SET @sql = 'select	usuario,
				nombre_arch,
				descripcion,
				nro_trabajador,
				convert(varchar(10),fecha,103) as fecha
		from	sipweb_archivos
		where	Usuario		= ''' + convert(varchar(10),+@usuario) +'''
		and		nro_trabajador = ''' + convert(varchar(10),+@nro_trabajador) +'''
		and		( adminis		= 1 or todos = 1 ) 
				' + @swhere +'
		order by fecha desc'
	end
	else if @perfil = 'JEFE PORTAL' or @perfil = 'JEFE UNIDAD ADM'
	begin
		SET @sql = 'select	usuario,
				nombre_arch,
				descripcion,
				nro_trabajador,
				convert(varchar(10),fecha,103) as fecha
		from	sipweb_archivos
		where	Usuario		= ''' + convert(varchar(10),+@usuario) +'''
		and		nro_trabajador = ''' + convert(varchar(10),+@nro_trabajador) +'''
		and		( jefe		= 1 or todos = 1 )
				' + @swhere +'
		order by fecha desc'
	end
	else if @perfil = 'TRABAJADOR'
	begin
		SET @sql = 'select	usuario,
				nombre_arch,
				descripcion,
				nro_trabajador,
				convert(varchar(10),fecha,103) as fecha
		from	sipweb_archivos
		where	Usuario		= ''' + convert(varchar(10),+@usuario) +'''
		and		nro_trabajador = ''' + convert(varchar(10),+@nro_trabajador) +'''
		and		( trabajador		= 1 or todos = 1 )
				' + @swhere +'
		order by fecha desc'
		
	
	end

		EXEC (@sql)
		
END

















GO

/****** Object:  StoredProcedure [dbo].[sp_update_clave_adm]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_update_clave_adm]
	@scod_empresa		int,
	@susuario			varchar(15),
	@sclave				varchar(15),
	@nIntentos			int,
	@cambiarclave		varchar(15)
AS
DECLARE @RetId	bigint
BEGIN TRANSACTION
 
	if ( @sclave != '' ) 
	begin
		update	usuario_sipweb 
		set		contrasena			= @sclave,
				cambia_contrasena	= @cambiarclave,
				intentosfallidos	= @nIntentos
		where	usuario				= @susuario
	end
	else
	begin
		update	usuario_sipweb 
		set		cambia_contrasena	= @cambiarclave,
				intentosfallidos	= @nIntentos
		where	usuario				= @susuario
	end

	if (SELECT COUNT(*) FROM hist_contrasena ) = 0
		begin
				SELECT @RetId  = 1
		end	
		else
		begin
				SELECT @RetId = MAX(id_contrasena) + 1 FROM hist_contrasena
	end

	if ( @sclave != '' ) 
	begin
		insert into hist_contrasena 
			(	id_contrasena, 
				usuario, 
				contrasena, 
				fecha_contrasena )
		values (
				@RetId,
				@susuario,
				@sclave,
				getdate()
			)
	end 

COMMIT TRANSACTION

















GO

/****** Object:  StoredProcedure [dbo].[sp_update_conf_datos]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_update_conf_datos]
	@stabla				varchar(40),
	@sgrupo				varchar(40),
	@scampo				varchar(50),
	@sdescripcion		varchar(100),
	@nvisible			int,
	@neditable			int
AS
BEGIN TRANSACTION
	update	sipweb_confdatos 
	set		descripcion = @sdescripcion,
			visible		= @nvisible,
			editable	= @neditable
	where	tabla		= @stabla
	and		grupo		= @sgrupo
	and		campo		= @scampo	
COMMIT TRANSACTION



















GO

/****** Object:  StoredProcedure [dbo].[sp_update_clave]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_update_clave]
	@scod_empresa		int,
	@susuario			varchar(15),
	@sclave				varchar(15)
AS
DECLARE @RetId	bigint
BEGIN TRANSACTION
	update	usuario_sipweb 
	set		contrasena		= @sclave,
			cambia_contrasena	= 'N'	
	where	usuario			= @susuario

	if (SELECT COUNT(*) FROM hist_contrasena ) = 0
		begin
				SELECT @RetId  = 1
		end	
		else
		begin
				SELECT @RetId = MAX(id_contrasena) + 1 FROM hist_contrasena
	end

	insert into hist_contrasena 
		(	id_contrasena, 
			usuario, 
			contrasena, 
			fecha_contrasena )
	values (
			@RetId,
			@susuario,
			@sclave,
			getdate()
		)

COMMIT TRANSACTION




















GO

/****** Object:  StoredProcedure [dbo].[sp_tras_ant_personal_upd]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_tras_ant_personal_upd]
	@cod_empresa	int,
	@cod_planta		int,
	@nro_trabajador	int,
	@id				numeric(14),
	@scampos		varchar(550),
	@svalor			varchar(550),
	@estado			varchar(30),
	@tipo			int  
AS
DECLARE @sql varchar(8000)
BEGIN TRANSACTION
SET DATEFORMAT dmy

	if ( @tipo = 0 )
	begin

		update	sipweb_mod_datoper
		set		fecha_adm		= getdate(),
				estado			= @estado
		where	correlativo		= @id

		SET @sql = 'update personal set '++@scampos++' = '''++@svalor++'''
					where cod_empresa		= '++convert(varchar,@cod_empresa)++' 
					and	  cod_planta		= '++convert(varchar,@cod_planta)++'
					and	  nro_trabajador	= '++convert(varchar,@nro_trabajador)

		EXEC (@sql)

		SET @sql = 'update sipweb_personal set '++@scampos++' = '''++@svalor++'''
					where cod_empresa		= '++convert(varchar,@cod_empresa)++' 
					and	  cod_planta		= '++convert(varchar,@cod_planta)++'
					and	  nro_trabajador	= '++convert(varchar,@nro_trabajador)

		EXEC (@sql)

	end
	if ( @tipo = 1 )
	begin
			update	sipweb_mod_datoper
			set		fecha_adm		= getdate(),
					estado			= @estado
			where	correlativo		= @id
	end

COMMIT TRANSACTION

















GO

/****** Object:  StoredProcedure [dbo].[sp_tipoprestamo]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













create PROCEDURE [dbo].[sp_tipoprestamo]
	@tipo				int,
	@cod_empresa		int,
	@cod_planta			int
AS
BEGIN
	SET NOCOUNT ON;
	
		select	distinct cod_unidad_cobro
		from	descuento_cta_cte
		where	cod_empresa = @cod_empresa
		and		cod_planta  = @cod_planta
		and		cod_tipo_cta_cte = @tipo
END

















GO

/****** Object:  StoredProcedure [dbo].[sp_tipopermiso]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO
















create PROCEDURE [dbo].[sp_tipopermiso]
	@tipo				varchar(4),
	@cod_empresa		int,
	@cod_planta			int
AS
BEGIN
	SET NOCOUNT ON;
	
		select	cod_unidad
		from	ausencia
		where	cod_empresa = @cod_empresa
		and		cod_planta  = @cod_planta
		and		cod_ausencia = @tipo

	
END




















GO

/****** Object:  StoredProcedure [dbo].[sp_tipojefe_upd]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_tipojefe_upd]
	@cod_empresa		int,
	@tipo				varchar(50)
as
BEGIN TRANSACTION

			if (SELECT COUNT(*) 
				FROM sipweb_tipojefe 
				where cod_empresa = @cod_empresa  ) = 0
				begin
						insert into sipweb_tipojefe( 
						cod_empresa,
						tipo ) 
				values ( @cod_empresa,
						@tipo )

				end	
				else
				begin
						update sipweb_tipojefe
						set	tipo			= @tipo
						where cod_empresa	= @cod_empresa 

			end
			
			
COMMIT TRANSACTION















GO

/****** Object:  StoredProcedure [dbo].[sp_ticket_update]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












create PROCEDURE [dbo].[sp_ticket_update]
		@cod_empresa	int,
		@cod_planta		int,
		@nroticket		numeric(10),
		@respuesta		text 
AS
BEGIN TRANSACTION

	update sipweb_ticket 
	set		respuesta	= @respuesta,
			fecharesp	= getdate(),
			estado		= 'Cerrado'
	where	cod_empresa	= @cod_empresa
	and		cod_planta	= @cod_planta
	and		nroticket	= @nroticket

COMMIT TRANSACTION


	





















GO

/****** Object:  StoredProcedure [dbo].[sp_ticket_insert]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_ticket_insert]
		@cod_empresa	int,
		@cod_planta		int,
		@ano_periodo	int,
		@mes_periodo	int,
		@nroticket		numeric(10),
		@usuario		varchar(20),
		@nomusuario		varchar(100),
		@email			varchar(100),
		@asunto			varchar(100),
		@motivo			varchar(100),
		@comentario		text 
AS
BEGIN TRANSACTION
	insert into sipweb_ticket ( cod_empresa,
						cod_planta,
						ano_periodo,
						mes_periodo,
						nroticket,
						email, 
						asunto,
						motivo, 
						estado, 
						fechaing, 
						comentario, 
						usuario, 
						nomusuario )
		VALUES ( @cod_empresa,
						@cod_planta,
						@ano_periodo,
						@mes_periodo,
						@nroticket,
						@email, 
						@asunto,
						@motivo, 
						'Abierto', 
						getdate(), 
						@comentario, 
						@usuario, 
						@nomusuario) 


COMMIT TRANSACTION


	





















GO

/****** Object:  StoredProcedure [dbo].[sp_ticket_impr]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












create procedure [dbo].[sp_ticket_impr]
	@cod_empresa		int,
	@cod_planta			int,
	@swhere				varchar(500)
AS
DECLARE @sql nvarchar(4000)
BEGIN
	SET NOCOUNT ON;

	select @swhere = replace(@swhere, '&apos;', '''')
		
	SET @sql = 'select	nroticket, nomusuario, email, motivo, estado, 
						convert(varchar(10),fechaing,103) as fechaing, 
						convert(varchar(10),fecharesp,103) as fecharesp
				from	sipweb_ticket
				where	cod_empresa		= ' + convert(varchar(10),@cod_empresa) + '
				and		cod_planta		= ' + convert(varchar(10),@cod_planta) + ' ' +
				 @swhere +' order by nroticket asc'

	EXEC (@sql)


END



















GO

/****** Object:  StoredProcedure [dbo].[sp_ticket]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_ticket]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int,
	@nroticket		    numeric,
	@tipo			    int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	max(nroticket)+1 as nroticket 
		from	sipweb_ticket
		where	cod_empresa = @cod_empresa
	end
	else if @tipo = 1
	begin
		select	nroticket, motivo, estado, 
				convert(varchar(10),fechaing,103) as fechaing, 
				ISNULL(convert(varchar(10),fecharesp,103),'') as fecharesp
		from	sipweb_ticket
		where	cod_empresa = @cod_empresa
		and		usuario = @nro_trabajador
		order by nroticket desc
	end
	else if @tipo = 2
	begin
		select	convert(varchar(10),fechaing,103) as fechaing, 
				asunto,
				motivo,
				comentario,
				respuesta,
				convert(varchar(10),fecharesp,103) as fecharesp,
				estado,
				nomusuario
		from	sipweb_ticket
		where	cod_empresa = @cod_empresa
		and		nroticket	= @nroticket
		order by nroticket desc
	end
	else if @tipo = 3
	begin
		select	nroticket, motivo, estado, 
				convert(varchar(10),fechaing,103) as fechaing, 
				ISNULL(convert(varchar(10),fecharesp,103),'') as fecharesp
		from	sipweb_ticket
		where	cod_empresa = @cod_empresa
		and		estado	 = 'Abierto'
		order by nroticket desc
	end

END




















GO

/****** Object:  StoredProcedure [dbo].[sp_solpermiso_arch_del]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













create PROCEDURE [dbo].[sp_solpermiso_arch_del]
	@cod_empresa		int,
	@cod_planta			int,
	@correlativo		numeric(14),
	@usuario		varchar(15),
	@nombre_arch	varchar(150),
	@nro_trabajador int
as
BEGIN TRANSACTION

					delete from  sipweb_solpermiso_arch
					where cod_empresa = @cod_empresa
					and cod_planta = @cod_planta
					and correlativo = @correlativo
					and usuario = @usuario 
					and	nro_trabajador = @nro_trabajador
					and nombre_arch = @nombre_arch

						
COMMIT TRANSACTION

















GO

/****** Object:  StoredProcedure [dbo].[sp_solpermiso_arch]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[sp_solpermiso_arch]
	@cod_empresa		int,
	@cod_planta			int,
	@correlativo		numeric(14),
	@usuario			varchar(15),
	@nombre_arch		varchar(150),
	@descripcion		varchar(150),
	@tipo				varchar(50),
	@archivo			image,
	@nro_trabajador		int
as
BEGIN TRANSACTION

			if (SELECT COUNT(*) 
				FROM sipweb_solpermiso_arch 
				where cod_empresa = @cod_empresa
				and cod_planta = @cod_planta
				and correlativo = @correlativo
				and usuario = @usuario 
				and nombre_arch = @nombre_arch ) = 0
				begin
						insert into sipweb_solpermiso_arch
						(	cod_empresa,
							cod_planta,
							correlativo,
							usuario,
							nombre_arch,
							descripcion,
							fecha,
							tipo,
							archivo,
							nro_trabajador  ) 
					values ( @cod_empresa,
							@cod_planta,
							@correlativo,
							@usuario,
							@nombre_arch,
							@descripcion,
							getdate(),
							@tipo,
							@archivo,
							@nro_trabajador )

				end	
				else
				begin
						update sipweb_solpermiso_arch
						set	descripcion	= @descripcion
						where cod_empresa = @cod_empresa
						and cod_planta = @cod_planta
						and correlativo = @correlativo
						and	usuario = @usuario 
						and	nro_trabajador = @nro_trabajador
						and nombre_arch = @nombre_arch

			end
			
			
COMMIT TRANSACTION


















GO

/****** Object:  StoredProcedure [dbo].[sp_sipweb_crea_usuario]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO











CREATE  PROCEDURE [dbo].[sp_sipweb_crea_usuario]
AS
declare 
	@cod_empresa			int,
	@cod_planta				int,
	@perfil_def				varchar(30),
	@cambia_clave			varchar(2),
	@tipo_clave				varchar(30),
	@correo_aut				varchar(2),
	@mail_from				varchar(80),
	@mail_asunto			varchar(80),
	@mail_cuerpo			varchar(4000),
	
	@rut_trabajador			int,
	@usuario				varchar(15),
	@nombre_usuario			varchar(50),
	@nro_trabajador			int,
	@dv_trabajador			varchar(1),
	@cod_unidad_adminis		varchar(100),
	@cod_sucursal			int,
	@contrasena				varchar(15),
	@perfil_trab			varchar(1),
	@perfil_jefeportal		varchar(1),
	@perfil_jefe_uadm		varchar(1),
	@perfil_ejec			varchar(1),
	@perfil_admin			varchar(1),
	@cambia_contrasena		varchar(1),
	@correo_enviado			varchar(80),
	@fec_ini_contrato		datetime,
	@new_nro				int,
	@new_dv					varchar(1)
			
			
BEGIN TRANSACTION
	BEGIN
	

	
	
	
	DECLARE Cursor00 CURSOR FOR 
	select	cod_empresa, perfil_def, cambia_clave, tipo_clave, correo_aut, mail_from, mail_asunto, mail_cuerpo
	from	sipweb_conf_usuario
	where	automatico = 'Si'
	
	OPEN Cursor00
	FETCH NEXT FROM Cursor00 
	INTO @cod_empresa, @perfil_def, @cambia_clave, @tipo_clave, @correo_aut, @mail_from, @mail_asunto, @mail_cuerpo
			
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
		set @cambia_contrasena	= 'N'
		set @perfil_trab		= 'N'
		set	@perfil_jefeportal	= 'N'
		set	@perfil_jefe_uadm	= 'N'
		set	@perfil_ejec		= 'N'
		set	@perfil_admin		= 'N'
		
		if @cambia_clave = 'Si'
		begin
			set @cambia_contrasena = 'S'
		end
		
		if @perfil_def = 'Trabajador'
		begin
			set @perfil_trab		= 'S' 
		end		
		else if @perfil_def = 'Jefe_Portal'
		begin
			set @perfil_jefeportal	= 'S' 
		end
		else if @perfil_def = 'Jefe_UA'
		begin
			set @perfil_jefe_uadm	= 'S' 
		end
		else if @perfil_def = 'Administrador'
		begin
			set @perfil_admin		= 'S' 
		end
		
		DECLARE Cursor03 CURSOR FOR 
		select	a.cod_planta, b.usuario, a.rut_trabajador,  max(a.fec_ini_contrato)
		from	personal		a,
				usuario_sipweb	b 
		where	a.cod_empresa								= b.cod_empresa
		and		a.cod_planta								= b.cod_planta
		and		convert(varchar(15),a.rut_trabajador)		= b.usuario
		and		a.cod_empresa			= @cod_empresa
		and		a.nro_trabajador		!= b.nro_trabajador
		and		a.cod_vigen_trabajad	= 'S'
		group by a.cod_empresa, a.cod_planta, b.usuario, a.rut_trabajador

		OPEN Cursor03
		FETCH NEXT FROM Cursor03 
		INTO @cod_planta, @usuario, @rut_trabajador, @fec_ini_contrato
		WHILE (@@FETCH_STATUS = 0)
		BEGIN
			set @correo_enviado = ''
		
			select @new_nro = nro_trabajador,
					@new_dv = dv_trabajador ,
					@nombre_usuario = a.nombre++' '++a.ape_paterno_trabaj++' '++a.ape_materno_trabaj
			from	personal a
			where	a.cod_empresa		= @cod_empresa
			and		a.cod_planta		= @cod_planta
			and		a.rut_trabajador	= @rut_trabajador       
			and		a.cod_vigen_trabajad	= 'S'
			and		a.fec_ini_contrato	= @fec_ini_contrato
		
		
			UPDATE	usuario_sipweb
			SET		nro_trabajador		= @new_nro,
					dv_trabajador		= @new_dv,
					cod_vigente			= 'S'
			where	cod_empresa			= @cod_empresa
			and		cod_planta			= @cod_planta
			and		usuario				= @usuario
		
		
			insert into sipweb_log_creausuario ( cod_empresa, cod_planta, rut_trabajador, nro_trabajador,
						nombre_usuario, correo_enviado, accion, fecha_ejecucion	)
			values( @cod_empresa,  @cod_planta, @rut_trabajador, @new_nro, 
			 		@nombre_usuario, @correo_enviado, 'NuevoNro', getdate() )
		
		FETCH NEXT FROM Cursor03
		INTO @cod_planta, @usuario, @rut_trabajador, @fec_ini_contrato
		END
		CLOSE Cursor03
		DEALLOCATE Cursor03		
		
	
		DECLARE Cursor01 CURSOR FOR 
		select	a.cod_planta, a.rut_trabajador, a.nombre++' '++a.ape_paterno_trabaj++' '++a.ape_materno_trabaj,
				a.nro_trabajador, a.dv_trabajador, a.cod_unidad_adminis, a.cod_sucursal,
				a.casilla_e_mail
		from	personal	a left outer join usuario_sipweb b on a.cod_empresa = b.cod_empresa
															and	a.cod_planta = b.cod_planta
															and	convert(varchar(15),a.rut_trabajador) = b.usuario
		where	a.cod_empresa			= @cod_empresa
		and		a.cod_vigen_trabajad	= 'S'
		and		a.fec_ini_contrato		< dateadd(day, 1,getdate())
		and		b.usuario is null

		OPEN Cursor01
		FETCH NEXT FROM Cursor01 
		INTO @cod_planta, @rut_trabajador, @nombre_usuario, @nro_trabajador, @dv_trabajador, @cod_unidad_adminis,
			@cod_sucursal, @correo_enviado
		WHILE (@@FETCH_STATUS = 0)
		BEGIN
			set @usuario = convert(varchar(15), @rut_trabajador )
			set @contrasena = dbo.f_auth_encripta(@usuario)
		
			INSERT INTO	usuario_sipweb (
						cod_empresa, 		usuario,			contrasena, 		nombre_usuario, 
						nro_trabajador, 	dv_trabajador,		cod_unidad_adminis, 	perfil_trab, 
						perfil_jefeportal, 	perfil_jefe_uadm,	perfil_ejec,		perfil_admin, 
						cod_vigente, 		perfil_correo, 		cod_sucursal,		jefe_sin_priv, 
						ejec_con_priv, 		perfil_novigentes, 	cambia_contrasena, 	cod_planta, 
						intentosfallidos,	correo_perfil_jefe
					) values (
						@cod_empresa, 		@usuario,			@contrasena, 			@nombre_usuario, 
						@nro_trabajador, 	@dv_trabajador,		@cod_unidad_adminis, 	@perfil_trab, 
						@perfil_jefeportal, @perfil_jefe_uadm,	@perfil_ejec,			@perfil_admin, 
						'S', 				'N', 				@cod_sucursal,			'I', 
						'N', 				'N', 				@cambia_contrasena, 	@cod_planta, 
						0,					'' )
						
						
	  /*	comentado
	     IF @correo_aut = 'Si'
		 BEGIN
			BEGIN TRY
				EXEC msdb.dbo.sp_send_dbmail
					@profile_name=@mail_from, 
					@recipients = @correo_enviado,
					@body = @mail_cuerpo,
					@subject = mail_asunto
			END TRY
			BEGIN CATCH
				SET @correo_enviado = 'Error Correo No enviado'
			END CATCH; 
			
		END
		ELSE
		BEGIN
			SET @correo_enviado = ''
		END		*/
	
			insert into sipweb_log_creausuario ( cod_empresa, cod_planta, rut_trabajador, nro_trabajador,
							nombre_usuario, correo_enviado, accion, fecha_ejecucion	)
				values( @cod_empresa,  @cod_planta, @rut_trabajador, @nro_trabajador, 
							@nombre_usuario, @correo_enviado, 'Creado', getdate() )
					
		
		FETCH NEXT FROM Cursor01
		INTO @cod_planta, @rut_trabajador, @nombre_usuario, @nro_trabajador, @dv_trabajador, @cod_unidad_adminis,
			@cod_sucursal, @correo_enviado
		END
		CLOSE Cursor01
		DEALLOCATE Cursor01
		
		
		DECLARE Cursor02 CURSOR FOR 
		select	a.cod_planta, b.usuario, a.rut_trabajador, a.nombre++' '++a.ape_paterno_trabaj++' '++a.ape_materno_trabaj,
				a.nro_trabajador
		from	personal		a,
				usuario_sipweb	b 
		where	a.cod_empresa								= b.cod_empresa
		and		a.cod_planta								= b.cod_planta
		and		convert(varchar(15),a.rut_trabajador)		= b.usuario
		and		a.cod_empresa			= @cod_empresa
		and		a.cod_vigen_trabajad	= 'N'
		and		b.cod_vigente			= 'S'
		and		b.perfil_trab			= 'S'

		OPEN Cursor02
		FETCH NEXT FROM Cursor02 
		INTO @cod_planta, @usuario, @rut_trabajador, @nombre_usuario, @nro_trabajador
		WHILE (@@FETCH_STATUS = 0)
		BEGIN
			UPDATE	usuario_sipweb
			SET		cod_vigente			= 'N'
			where	cod_empresa			= @cod_empresa
			and		cod_planta			= @cod_planta
			and		usuario				= @usuario
		
		
			insert into sipweb_log_creausuario ( cod_empresa, cod_planta, rut_trabajador, nro_trabajador,
						nombre_usuario, correo_enviado, accion, fecha_ejecucion	)
			values( @cod_empresa,  @cod_planta, @rut_trabajador, @nro_trabajador, 
			 		@nombre_usuario, @correo_enviado, 'NoVigente', getdate() )
		
		FETCH NEXT FROM Cursor02
		INTO @cod_planta, @usuario, @rut_trabajador, @nombre_usuario, @nro_trabajador
		END
		CLOSE Cursor02
		DEALLOCATE Cursor02		
		
		
		DECLARE Cursor04 CURSOR FOR 
		select	a.cod_planta, b.usuario, a.rut_trabajador, a.nombre++' '++a.ape_paterno_trabaj++' '++a.ape_materno_trabaj,
				a.nro_trabajador
		from	personal		a,
				usuario_sipweb	b 
		where	a.cod_empresa								= b.cod_empresa
		and		a.cod_planta								= b.cod_planta
		and		convert(varchar(15),a.rut_trabajador)		= b.usuario
		and		a.cod_empresa			= @cod_empresa
		and		a.cod_vigen_trabajad	= 'S'
		and		b.cod_vigente			= 'N'

		OPEN Cursor04
		FETCH NEXT FROM Cursor04 
		INTO @cod_planta, @usuario, @rut_trabajador, @nombre_usuario, @nro_trabajador
		WHILE (@@FETCH_STATUS = 0)
		BEGIN
			UPDATE	usuario_sipweb
			SET		cod_vigente			= 'S'
			where	cod_empresa			= @cod_empresa
			and		cod_planta			= @cod_planta
			and		usuario				= @usuario
		
		
			insert into sipweb_log_creausuario ( cod_empresa, cod_planta, rut_trabajador, nro_trabajador,
						nombre_usuario, correo_enviado, accion, fecha_ejecucion	)
			values( @cod_empresa,  @cod_planta, @rut_trabajador, @nro_trabajador, 
			 		@nombre_usuario, @correo_enviado, 'Vigente', getdate() )
		
		FETCH NEXT FROM Cursor04
		INTO @cod_planta, @usuario, @rut_trabajador, @nombre_usuario, @nro_trabajador
		END
		CLOSE Cursor04
		DEALLOCATE Cursor04


	FETCH NEXT FROM Cursor00 
	INTO @cod_empresa, @perfil_def, @cambia_clave, @tipo_clave, @correo_aut, @mail_from, @mail_asunto, @mail_cuerpo
	END
	
	
CLOSE Cursor00
DEALLOCATE Cursor00
	 
END

COMMIT TRANSACTION












GO

/****** Object:  StoredProcedure [dbo].[sp_santoral]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO















CREATE PROCEDURE [dbo].[sp_santoral]
	@cod_empresa		int,
	@tipo				int,
	@mes				int
AS
BEGIN
	SET NOCOUNT ON;

	if @tipo = 0
	begin
		select	a.nombre, 
				a.ape_paterno_trabaj, 
				a.ape_materno_trabaj,
				a.nro_citofono, 
				b.unidad_administrat, 
				foto_trabajador,
				fec_nacimiento
		from	personal a  left outer join unidad_administrat b on a.cod_empresa = b.cod_empresa and a.cod_unidad_adminis = b.cod_unidad_adminis
						left outer join foto_trabajador c on a.cod_empresa = c.cod_empresa and a.nro_trabajador = c.nro_trabajador,
				sipweb_santoral d
		where	mes		=  MONTH(getdate())
		and		dia		= DAY(getdate())
		and		nombre like '%'++santo++'%'
		and		cod_vigen_trabajad = 'S'
		and		a.cod_empresa = @cod_empresa
	end
	else if @tipo = 1
	begin
		select  dia,
				santo
		from	sipweb_santoral
		where	mes				=  MONTH(getdate())
	end
	else if @tipo = 2
	begin
		select  dia,
				santo
		from	sipweb_santoral
		where	mes		=  MONTH(getdate())
		and		dia		= DAY(getdate())
	end
	else if @tipo = 3
	begin
		select  dia,
				santo
		from	sipweb_santoral
		where	mes				=  @mes
	end

END









GO

/****** Object:  StoredProcedure [dbo].[sp_retorna_subprocesos]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












-- =============================================
-- Author:		inexso
-- Create date: --
-- Description:	--
-- =============================================

CREATE PROCEDURE [dbo].[sp_retorna_subprocesos]
	@subproceso			varchar(30)
AS
BEGIN
	SET NOCOUNT ON;

	select	pagina, descripcion, detalle, nom_imagen 
	from	sipweb_conf_subprocesos
	where	cod_proceso = @subproceso
	order by orden
	
END





















GO

/****** Object:  StoredProcedure [dbo].[sp_retorna_publicaciones]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_retorna_publicaciones]
	@tipo			int,
	@categoria		varchar(40),
	@cod_empresa	int,
	@cod_planta		int	
AS
BEGIN
	SET NOCOUNT ON;

	if ( @tipo = 0 )
	begin
		select	distinct categoria
		from	sipweb_publicaciones
	end
	else if ( @tipo = 1 )
	begin
		select @categoria = replace(@categoria, '&apos;', '''')
		
		select	descripcion, link
		from	sipweb_publicaciones
		where	categoria = @categoria
	end	
	else if ( @tipo = 2 )
	begin
		select	distinct categoria
		from	sipweb_publicaciones
		where	cod_empresa = @cod_empresa
	end
	else if ( @tipo = 3 )
	begin
		select @categoria = replace(@categoria, '&apos;', '''')
		
		select	descripcion, link
		from	sipweb_publicaciones
		where	cod_empresa = @cod_empresa
		and		categoria = @categoria
	end	
	else if ( @tipo = 4 )
	begin
		select	distinct categoria
		from	sipweb_publicaciones
		where	cod_empresa = @cod_empresa
		and		cod_planta = @cod_planta
	end
	else if ( @tipo = 5 )
	begin
		select @categoria = replace(@categoria, '&apos;', '''')
		
		select	descripcion, link
		from	sipweb_publicaciones
		where	cod_empresa = @cod_empresa
		and		cod_planta = @cod_planta
		and		categoria = @categoria
	end	
END

















GO

/****** Object:  StoredProcedure [dbo].[sp_retorna_nombre_procesos]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_retorna_nombre_procesos]
	@pagina			varchar(40),
	@tipo			int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	descripcion
		from	sipweb_conf_procesos
		where	pagina = @pagina
	end
	else if @tipo = 1
	begin
		select	descripcion
		from	sipweb_conf_procesos
		where	cod_proceso = @pagina
	end
	else if @tipo = 2
	begin
		select	descripcion
		from	sipweb_conf_subprocesos
		where	pagina = @pagina
	end

END






















GO

/****** Object:  StoredProcedure [dbo].[sp_retorna_conf_nosotros]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_retorna_conf_nosotros]
	@tipo				varchar(40)
AS
BEGIN
	SET NOCOUNT ON;

	select  texto, 
			imagen,
			fuenteletra,
			tamanoletra,
			negritaletra
	from	sipweb_confnosotros
	where	tipo = @tipo
END






















GO

/****** Object:  StoredProcedure [dbo].[sp_retorna_conf_datos]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_retorna_conf_datos]
	@tabla				varchar(40),
	@grupo				varchar(40),
	@campo				varchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	select  descripcion, visible, editable
	from	sipweb_confdatos
	where	tabla = @tabla
	and		grupo = @grupo
	and		campo = @campo
END
























GO

/****** Object:  StoredProcedure [dbo].[sp_publicaciones_upd]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














create PROCEDURE [dbo].[sp_publicaciones_upd]
	@id					numeric(14),
	@categoria			varchar(20),
	@descripcion		varchar(80),
	@link				varchar(200),
	@tipo				int,
	@cod_empresa		int,
	@cod_planta			int
AS
declare @correlativo  numeric
BEGIN TRANSACTION
	if ( @tipo = 0 )
	begin

		if (SELECT COUNT(*) FROM sipweb_publicaciones ) = 0
		begin
				SELECT @correlativo  = 1
		end	
		else
		begin
				SELECT @correlativo = MAX(id) + 1 FROM sipweb_publicaciones
		end

		INSERT INTO sipweb_publicaciones
           (id,categoria,descripcion,link,cod_empresa,cod_planta)
        VALUES
           (@correlativo,@categoria,@descripcion,@link,@cod_empresa,@cod_planta)

	end
	else if ( @tipo = 1 )
	begin
		update	sipweb_publicaciones
		set		categoria		= @categoria,
				descripcion		= @descripcion,
				link			= @link,
				cod_empresa		= @cod_empresa,
				cod_planta		= @cod_planta
		where	id				= @id
	
	end
	else if ( @tipo = 99 )
	begin
		delete from sipweb_publicaciones 
		where	id		= @id
	end	

COMMIT TRANSACTION




















GO

/****** Object:  StoredProcedure [dbo].[sp_publicaciones]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_publicaciones]
	@id					int,
	@tipo			    int,
	@where				varchar(300)
AS
DECLARE @sql nvarchar(1000)
BEGIN
	SET NOCOUNT ON;
	
	if ( @tipo = 1 )
	begin
		select @where = replace(@where, '&apos;', '''')

		if @where <> ''
		begin
			select @where = 'where '+@where;
		end

		SET @sql = 'select	id, 
							Categoria,
							Descripcion,
							Link as ''Nombre Archivo''
					from	sipweb_publicaciones '
					+ @where +' order by Categoria, id '

		EXEC (@sql)	
	end 
	else if @tipo = 2
	begin
		select	Categoria,
				Descripcion,
				Link,
				cod_empresa,
				cod_planta
		from	sipweb_publicaciones a
		where	a.id	= @id
	end
	else if ( @tipo = 3 )
	begin
		select @where = replace(@where, '&apos;', '''')

		if @where <> ''
		begin
			select @where = 'where '+@where;
		end

		SET @sql = 'select	id, 
							cod_empresa as ''Cod. Empresa'',
							cod_planta as ''Cod. Planta'',
							Categoria,
							Descripcion,
							Link as ''Nombre Archivo''
					from	sipweb_publicaciones '
					+ @where +' order by cod_empresa, cod_planta, Categoria, id '

		EXEC (@sql)	
	end 
	else if ( @tipo = 4 )
	begin
		select @where = replace(@where, '&apos;', '''')

		if @where <> ''
		begin
			select @where = 'where '+@where;
		end

		SET @sql = 'select	id, 
							cod_empresa as ''Cod. Empresa'',
							Categoria,
							Descripcion,
							Link as ''Nombre Archivo''
					from	sipweb_publicaciones '
					+ @where +' order by cod_empresa, Categoria, id '

		EXEC (@sql)	
	end 
END




















GO

/****** Object:  StoredProcedure [dbo].[sp_prevision]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_prevision]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int,
	@tipo			    int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	convert(varchar(10),a.fec_nacimiento,103) as fec_nacimiento,
				( select	count(nro_trabajador)
					from	nucleo_familiar 
					where	nro_trabajador = @nro_trabajador
					and		cod_empresa		= @cod_empresa ) as nrohijos,
				convert(varchar(10),a.fec_ing_sist_previ,103) as fec_ing_sist_previ,
				convert(varchar(10),a.fec_ini_contrato,103) as fec_ini_contrato,
				convert(varchar(10),DATEDIFF(YY, fec_antiguedad, getdate())) ++' Años' as fec_antiguedad,
				(num_cargas_normale + num_cargas_duplo + num_cargas_materna) as nrocargas,
				tramo_carga_famili,
				fono,
				direccion,
				c.comuna,
				b.ciudad,
				d.afp,
				convert(varchar(10),a.fec_incorporac_afp,103) as fec_incorporac_afp,
				d.pje_aporte_trab_a,
				mto_dcto_cta_ahorr,
				unid_cobro_cta_aho,
				mto_cotiz_voluntar,
				unid_cob_mto_volun,
				e.isapre,
				mto_pactado_isapre,
				unid_cob_mto_pacta,
				adicional_isapre,
				mone_val_adic_salu,
				convert(varchar(10),a.fec_ini_isapre,103) as fec_ini_isapre,
				convert(varchar(10),a.fec_ter_isapre,103) as fec_ter_isapre
		from	sipweb_personal	a  left outer join ciudad b on a.cod_ciudad = b.cod_ciudad
							left outer join comuna c on a.cod_comuna = c.cod_comuna 
							left outer join afp d on a.cod_afp = d.cod_afp 
							left outer join isapre e on a.cod_isapre = e.cod_isapre 
		where	a.nro_trabajador	= @nro_trabajador
		and		a.cod_empresa		= @cod_empresa	
		and		a.cod_planta		= @cod_planta			
	end

END
















GO

/****** Object:  StoredProcedure [dbo].[sp_paramgen_upd_email]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_paramgen_upd_email]
	@correosbenef		varchar(10),
	@correosvaca		varchar(10),
	@correos			varchar(10),
	@correosprest		varchar(10),
	@correosgestion		varchar(10),
	@mailgestion		varchar(80),
	@correosvaca_admin	int,
	@correosvaca_jefe	int,
	@correosvaca_trab	int,
	@correosbenef_admin	int,
	@correosbenef_jefe	int,
	@correosbenef_trab	int,
	@correosprest_admin	int,
	@correosprest_jefe	int,
	@correosprest_trab	int,
	@correospermi_admin	int,
	@correospermi_jefe	int,
	@correospermi_trab	int,	
	@correosantper			varchar(10),
	@correosantper_admin	int,
	@correosantper_jefe		int,
	@correosantper_trab		int
	
		
AS
BEGIN TRANSACTION

	update	sipweb_conf_sistema
	set		correosbenef		= @correosbenef,
			correosvaca			= @correosvaca,
			envia_correo		= @correos,
			correosprest		= @correosprest,
			correosgestion		= @correosgestion,
			mail_gestion		= @mailgestion,
			correosvaca_admin	= @correosvaca_admin,
			correosvaca_jefe	= @correosvaca_jefe,
			correosvaca_trab	= @correosvaca_trab,
			correosbenef_admin	= @correosbenef_admin,
			correosbenef_jefe	= @correosbenef_jefe,
			correosbenef_trab	= @correosbenef_trab,
			correosprest_admin	= @correosprest_admin,
			correosprest_jefe	= @correosprest_jefe,
			correosprest_trab	= @correosprest_trab, 
			correospermi_admin	= @correospermi_admin,
			correospermi_jefe	= @correospermi_jefe,
			correospermi_trab	= @correospermi_trab,	
			correosantper		= @correosantper,
			correosantper_admin	= @correosantper_admin,
			correosantper_jefe	= @correosantper_jefe,
			correosantper_trab	= @correosantper_trab

COMMIT TRANSACTION














GO

/****** Object:  StoredProcedure [dbo].[sp_paramgen_upd]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_paramgen_upd]
	@tipo_feriado		varchar(20),
	@tiempo_session		numeric,
	@mostrar_foto		varchar(10),
	@coment_liq			varchar(10),
	@apprech_Liq		varchar(10),
	@popup				varchar(10),
	@intentos_fallidos	numeric,
	@duracion_clave		numeric,
	@cumpleBD			varchar(10),
	@recuperaclave		varchar(10),
	@mediodiasvaca		varchar(10),
	@registra_loglq		varchar(10),
	@visualizaDoctos	varchar(30),
	@manejarcertificado		varchar(30),
	@correosapprech_admin	int,
	@correosapprech_jefe	int,
	@correosapprech_trab	int,
	@ProcesoLIQH		varchar(4),
	@listadosolfer		varchar(10),
	@desbloqueocuenta	int,
	@VerAnexoLIQ		varchar(10),
	@orientacionfoto	varchar(10),
	@ProcesoLIQD		varchar(4),
	@EliminaSolFer		varchar(4),
	@Tipo_PapeletaFer	varchar(20),
	@ConfiguraPublicacion	varchar(30),
	@marca_agua			varchar(2),
	@texto_marca_agua	varchar(80),
	@liqapprech_obliga	int,
	@liqapprech_mensaje		varchar(200),
	@feriado_neg		varchar(10),
	@fichafer_titulo	varchar(100), 
	@fichafer_tipo		varchar(10), 
	@fichafer_saldowin	varchar(10), 
	@archperm_obliga	int,
	@estado_solvac		varchar(10)
		
AS
BEGIN TRANSACTION

	update sipweb_conf_sistema
	set		tipo_feriado		= @tipo_feriado,
			tiempo_session		= @tiempo_session,
			mostrar_foto		= @mostrar_foto,
			coment_liq			= @coment_liq,
			apprech_Liq			= @apprech_Liq,
			popup				= @popup,
			intentos_fallidos	= @intentos_fallidos,
			duracion_clave		= @duracion_clave,
			cumplebd			= @cumpleBD,
			recuperaclave		= @recuperaclave,
			mediodiasvaca		= @mediodiasvaca,
			registra_loglq		= @registra_loglq,
			visualizadoctos		= @visualizaDoctos,
			manejarcertificado	= @manejarcertificado,
			correosapprech_admin = @correosapprech_admin,
			correosapprech_jefe	 = @correosapprech_jefe,
			correosapprech_trab  = @correosapprech_trab,
			ProcesoLIQH			= @ProcesoLIQH,
			listadosolfer		= @listadosolfer,
			desbloqueocuenta		= @desbloqueocuenta,
			VerAnexoLIQ	= @VerAnexoLIQ,
			orientacionfoto	= @orientacionfoto,
			ProcesoLIQD			= @ProcesoLIQD,
			EliminaSolFer = @EliminaSolFer,
			Tipo_PapeletaFer = @Tipo_PapeletaFer,
			conf_publicacion = @ConfiguraPublicacion,
			marca_agua = @marca_agua,
			texto_marca_agua = @texto_marca_agua,
			liqapprech_obliga = @liqapprech_obliga,
			liqapprech_mensaje = @liqapprech_mensaje,
			feriado_neg = @feriado_neg,
			fichafer_titulo = @fichafer_titulo, 
			fichafer_tipo = @fichafer_tipo, 
			fichafer_saldowin = @fichafer_saldowin,
			archperm_obliga = @archperm_obliga,
			estado_solvac = @estado_solvac
			
COMMIT TRANSACTION









GO

/****** Object:  StoredProcedure [dbo].[sp_mail_liquida_upd]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO











CREATE PROCEDURE [dbo].[sp_mail_liquida_upd]
	@cod_empresa		int,
	@cod_planta			int,
	@ano_periodo		int,
	@mes_periodo		int,
	@nro_trabajador		int,
	@mail_trabajador	varchar(100),
	@estado				varchar(15),
	@usuario			varchar(15),
	@cod_tipo_proceso	varchar(30),
	@detalle_error		text
AS
BEGIN TRANSACTION

		insert into sipweb_mail_liquida(cod_empresa, cod_planta, ano_periodo, mes_periodo, nro_trabajador, mail_trabajador, 
				estado, usuario, fecha, cod_tipo_proceso, detalle_error)
		values ( @cod_empresa, @cod_planta, @ano_periodo, @mes_periodo, @nro_trabajador, @mail_trabajador,
			@estado, @usuario, getdate(), @cod_tipo_proceso, @detalle_error )


COMMIT TRANSACTION












GO

/****** Object:  StoredProcedure [dbo].[sp_mail_liquida_log]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO










CREATE PROCEDURE [dbo].[sp_mail_liquida_log]
	@cod_empresa		int,
	@cod_planta			int,
	@ano_periodo		int,
	@mes_periodo		int,
	@nro_trabajador		int
AS
BEGIN
	SET NOCOUNT ON;
	
			select  convert(varchar(16),fecha, 120) as fecha_envio,
					estado,
					detalle_error
			from	sipweb_mail_liquida
			where	cod_empresa = @cod_empresa
			and		cod_planta = @cod_planta
			and		ano_periodo = @ano_periodo
			and		mes_periodo = @mes_periodo
			and		nro_trabajador = @nro_trabajador
			order by fecha desc
		
	end












GO

/****** Object:  StoredProcedure [dbo].[sp_logsistema_upd]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_logsistema_upd]
	@usuario			varchar(20),
	@nombreequipo		varchar(40),
	@mac				varchar(50),
	@descripcion		varchar(150)
AS
BEGIN TRANSACTION
	insert into sipweb_log_sistema( usuario, fecha, nombreequipo, mac, descripcion ) 
	values ( @usuario, getdate(), @nombreequipo, @mac, @descripcion  )

COMMIT TRANSACTION




















GO

/****** Object:  StoredProcedure [dbo].[sp_logoempresa]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













create PROCEDURE [dbo].[sp_logoempresa]
	@cod_empresa	int,
	@tipo			varchar(50),
	@logo_empresa		image
as
BEGIN TRANSACTION

			if (SELECT COUNT(*) 
				FROM sipweb_logoempresa 
				where cod_empresa = @cod_empresa  ) = 0
				begin
						insert into sipweb_logoempresa( 
						cod_empresa,
						tipo,
						logo_empresa ) 
				values ( @cod_empresa,
						@tipo,
						@logo_empresa )

				end	
				else
				begin
						update sipweb_logoempresa
						set	tipo			= @tipo,
							logo_empresa	= @logo_empresa
						where cod_empresa	= @cod_empresa 

			end
			
			
COMMIT TRANSACTION
















GO

/****** Object:  StoredProcedure [dbo].[sp_logliquida_upd]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_logliquida_upd]
	@cod_empresa		int,
	@cod_planta			int,
	@ano_periodo		int,
	@mes_periodo		int,
	@nro_trabajador		int,
	@cod_tipo_proceso	varchar(30)

AS
BEGIN TRANSACTION

	insert into sipweb_log_liquidac( cod_empresa, cod_planta, ano_periodo, mes_periodo, nro_trabajador, fecha, cod_tipo_proceso ) 
	values ( @cod_empresa, @cod_planta, @ano_periodo, @mes_periodo, @nro_trabajador, getdate(), @cod_tipo_proceso )

COMMIT TRANSACTION


















GO

/****** Object:  StoredProcedure [dbo].[sp_loginNT]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO










CREATE PROCEDURE [dbo].[sp_loginNT]
	@userid				varchar(60),
	@nro_trabajador		int,
	@tipo				int
AS
BEGIN
	SET NOCOUNT ON;

	if ( @tipo = 0 )
	begin
		select	rut_trabajador
		from	personal				a,
				personal_dinamico		b
		where	a.cod_empresa			= b.cod_empresa
		and		a.cod_planta			= b.cod_planta
		and		a.nro_trabajador		= b.nro_trabajador
		and		b.nombre_interno		= 'UserId'
		and	    b.valor_columna			= @userid
	end
	else if ( @tipo = 1 )
	begin
		select	contrasena
		from	usuario_sipweb	a,
				personal		b
		where	a.cod_empresa			= b.cod_empresa
		and		a.cod_planta			= b.cod_planta
		and		a.nro_trabajador		= b.nro_trabajador
		and		a.usuario				= convert(varchar(15),@nro_trabajador)
		and		a.cod_vigente			= 'S'
		and		b.cod_vigen_trabajad	= 'S'
	end
END

















GO

/****** Object:  StoredProcedure [dbo].[sp_login_upd]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_login_upd]
	@usuario			varchar(20),
	@tipo				int
	
AS
BEGIN TRANSACTION

	update	usuario_sipweb
	set		intentosfallidos = 0
	where	usuario = @usuario
	and		intentosfallidos is null

	if ( @tipo = 0 )
	begin
		update	usuario_sipweb
		set		intentosfallidos = intentosfallidos + 1
		where	usuario = @usuario
	end
	else if ( @tipo = 1 )
	begin
		update	usuario_sipweb
		set		intentosfallidos = 0
		where	usuario = @usuario
	end

COMMIT TRANSACTION

















GO

/****** Object:  StoredProcedure [dbo].[sp_logcorreos]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_logcorreos]
	@usuario		varchar(15),
	@de				varchar(100),
	@a				varchar(100),
	@asunto			varchar(50),
	@enviado		varchar(500)
as
BEGIN TRANSACTION

			insert into sipweb_logcorreos( 
						usuario,
						de,
						a,
						asunto,
						enviado  ) 
				values ( @usuario,
						@de,
						@a,
						@asunto,
						@enviado )

COMMIT TRANSACTION

















GO

/****** Object:  StoredProcedure [dbo].[sp_log_avisoter_upd]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[sp_log_avisoter_upd]
	@cod_empresa		int,
	@cod_planta			int,
    @rut_jefe			int,
    @nombre_jefe		varchar(100),
    @mail_jefe			varchar(100),
    @nro_trabajador		int,
    @rut_trabajador		int,
    @nombre				varchar(100),
    @fec_inicio			datetime,
    @fec_termino		datetime,
	@tipo				int
AS
BEGIN TRANSACTION

	if ( @tipo = 0 )
	begin
		delete from sipweb_temp_avisoter
	end
	else if ( @tipo = 1 )
	begin
		insert into sipweb_temp_avisoter
                        (   cod_empresa,
							cod_planta,
                            fecha_envio,
	                        rut_jefe,
	                        nombre_jefe,
	                        mail_jefe,
	                        nro_trabajador,
	                        rut_trabajador,
	                        nombre,
	                        fec_inicio,
	                        fec_termino )
               values(		@cod_empresa,
							@cod_planta,
                            GETDATE(),
	                        @rut_jefe,
	                        @nombre_jefe,
	                        @mail_jefe,
	                        @nro_trabajador,
	                        @rut_trabajador,
	                        @nombre,
	                        @fec_inicio,
	                        @fec_termino )
	end
	else if ( @tipo = 2 )
	begin
		 insert into sipweb_mail_avisoter
                        (   cod_empresa,
							cod_planta,
                            fecha_envio,
	                        rut_jefe,
	                        nombre_jefe,
	                        mail_jefe,
	                        nro_trabajador,
	                        rut_trabajador,
	                        nombre,
	                        fec_inicio,
	                        fec_termino )
                     select cod_empresa,
							cod_planta,
                            fecha_envio,
	                        rut_jefe,
	                        nombre_jefe,
	                        mail_jefe,
	                        nro_trabajador,
	                        rut_trabajador,
	                        nombre,
	                        fec_inicio,
	                        fec_termino
                    from    sipweb_temp_avisoter
	end

COMMIT TRANSACTION






GO

/****** Object:  StoredProcedure [dbo].[sp_listas]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE  PROCEDURE [dbo].[sp_listas]
	@tipo				int,
	@cod_empresa		int,
	@cod_planta			int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	cod_haber  as codigo, 
				convert(varchar(10),cod_haber)++':'++descripcion as descripcion
		from	haber
		where	cod_empresa = @cod_empresa
		and		cod_planta = @cod_planta
		and		str_haber_benef = 'S'
		order by descripcion
	end
	else if @tipo = 1
	begin
		select	cod_ausencia  as codigo, 
			descrip_ausencia as descripcion
		from	ausencia
		where	cod_empresa = @cod_empresa
		and	cod_planta = @cod_planta
		and	flg_tipo_ausencia = 'P'
		order by descrip_ausencia
	end
	else if @tipo = 2
	begin
		select	cod_tipo_cta_cte  as codigo, 
				tipo_cta_cte as descripcion
		from	tipo_cta_cte
		where	cod_empresa = @cod_empresa
		order by tipo_cta_cte
	end
	else if @tipo = 3
	begin
		select	ltrim(rtrim(cod_tipo_proceso)) as codigo, 
				ltrim(rtrim(cod_tipo_proceso))++':'++descripcion as descripcion
		from	tipo_proceso
		order by cod_tipo_proceso
	end
END















GO

/****** Object:  StoredProcedure [dbo].[sp_listadotrab_ter]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[sp_listadotrab_ter]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int,
	@perfil				varchar(20),
	@swhere				varchar(800),
	@rango				varchar(100)
AS
DECLARE @sql nvarchar(4000)
DECLARE @campos nvarchar(3000)
BEGIN
	SET NOCOUNT ON

		select @swhere = replace(@swhere, '&apos;', '''')
		
	   if @perfil = 'ADMIN'
	   begin
				SET @sql = 'select	'''++@rango++''' as rango,
						a.cod_empresa,
						b.sigla_empresa as empresa,
						a.cod_planta,
						c.planta,
						e.cod_sucursal as cod_sucursal,
						e.sucursal as Sucursal,
						case when cod_vigen_trabajad = ''N'' then ''NO Vigente'' else ''Vigente'' end  as Estado,
						a.nro_trabajador,
						convert(varchar(10),a.rut_trabajador)++''-''++a.dv_rut_trabajador as Rut,
						a.ape_paterno_trabaj++'' ''++a.ape_materno_trabaj++'' ''++a.nombre as Nombre,
						convert(varchar(10),fec_ini_contrato,103) as fec_ini_contrato,	
						convert(varchar(10),fec_fin_contr_vige,103) as FechaTermino,
						g.cargo_trabajador as Cargo,
						a.cod_centro_costo,
						f.centro_costo,	
						case when h.tipo_contrato is null then '''' else h.tipo_contrato end  as causal,
						case a.codigo_tipo_contra when ''P'' then ''Permanente'' when ''F'' then ''Plazo Fijo'' else ''Obra o Faena'' end as tipo_contrato,
						a.rut_trabajador,
						z.representante,
						DATEDIFF(day,fec_ini_contrato,fec_fin_contr_vige) + 1 as nro_dias_cont,
						case when isnull(cau.nro_dias_tope,0)-(DATEDIFF(day,fec_ini_contrato,fec_fin_contr_vige)+1) < 0 then 0 else isnull(cau.nro_dias_tope,0)-(DATEDIFF(day,fec_ini_contrato,fec_fin_contr_vige)+1) end  as nro_dias_falt
				from	personal			a  left outer join tipo_finiquito  h on a.cod_empresa = h.cod_empresa
																	and a.cod_retiro = h.codigo_tipo_contra
												left outer join sipweb_representant_legal z on a.cod_empresa = z.cod_empresa
												left outer join sipweb_cau_CPD cau on a.cod_empresa = cau.cod_empresa
																				and a.cod_planta = cau.cod_planta
																				and	a.nro_trabajador = cau.nro_trabajador,
						empresa				b,
						planta				c,
						sucursal            e,
						centro_costo		f,
						cargo_trabajador    g
				where	a.cod_empresa		= e.cod_empresa
				and		a.cod_planta		= e.cod_planta
				and		a.cod_sucursal		= e.cod_sucursal
				and		a.cod_empresa		= b.cod_empresa
				and		a.cod_empresa		= c.cod_empresa
				and		a.cod_planta		= c.cod_planta
				and		a.cod_empresa		= f.cod_empresa
				and		a.cod_centro_costo	= f.cod_centro_costo
				and		a.cod_empresa		= g.cod_empresa
				and		a.cod_cargo			= g.cod_cargo
				and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
							in ( select	distinct convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
									from	usuario_sipweb	a,
											empresa			c
									where	a.usuario			= ''' + convert(varchar(10),+@nro_trabajador) +'''
									and		a.cod_vigente		= ''S''
									and		a.cod_empresa		= c.cod_empresa	
									and		a.perfil_admin		= ''S'' )
				' + @swhere +'
				order by a.cod_empresa, a.cod_planta, fec_fin_contr_vige, a.ape_paterno_trabaj, a.ape_materno_trabaj, a.nombre'
		end 
		else if @perfil = 'JEFEUA'
	   begin
				SET @sql = 'select	'''++@rango++''' as rango,
						a.cod_empresa,
						b.sigla_empresa as empresa,
						a.cod_planta,
						c.planta,
						e.cod_sucursal as cod_sucursal,
						e.sucursal as Sucursal,
						case when cod_vigen_trabajad = ''N'' then ''NO Vigente'' else ''Vigente'' end  as Estado,
						a.nro_trabajador,
						convert(varchar(10),a.rut_trabajador)++''-''++a.dv_rut_trabajador as Rut,
						a.ape_paterno_trabaj++'' ''++a.ape_materno_trabaj++'' ''++a.nombre as Nombre,
						convert(varchar(10),fec_ini_contrato,103) as fec_ini_contrato,	
						convert(varchar(10),fec_fin_contr_vige,103) as FechaTermino,
						g.cargo_trabajador as Cargo,
						a.cod_centro_costo,
						f.centro_costo,	
						case when h.tipo_contrato is null then '''' else h.tipo_contrato end  as causal,
						case a.codigo_tipo_contra when ''P'' then ''Permanente'' when ''F'' then ''Plazo Fijo'' else ''Obra o Faena'' end as tipo_contrato,
						a.rut_trabajador,
						z.representante,
						DATEDIFF(day,fec_ini_contrato,fec_fin_contr_vige) + 1 as nro_dias_cont,
						case when isnull(cau.nro_dias_tope,0)-(DATEDIFF(day,fec_ini_contrato,fec_fin_contr_vige)+1) < 0 then 0 else isnull(cau.nro_dias_tope,0)-(DATEDIFF(day,fec_ini_contrato,fec_fin_contr_vige)+1) end  as nro_dias_falt
				from	personal			a  left outer join tipo_finiquito  h on a.cod_empresa = h.cod_empresa
																	and a.cod_retiro = h.codigo_tipo_contra
												left outer join sipweb_representant_legal z on a.cod_empresa = z.cod_empresa
												left outer join sipweb_cau_CPD cau on a.cod_empresa = cau.cod_empresa
																				and a.cod_planta = cau.cod_planta
																				and	a.nro_trabajador = cau.nro_trabajador,
						empresa				b,
						planta				c,
						sucursal            e,
						centro_costo		f,
						cargo_trabajador    g
				where	a.cod_empresa		= e.cod_empresa
				and		a.cod_planta		= e.cod_planta
				and		a.cod_sucursal		= e.cod_sucursal
				and		a.cod_empresa		= b.cod_empresa
				and		a.cod_empresa		= c.cod_empresa
				and		a.cod_planta		= c.cod_planta
				and		a.cod_empresa		= f.cod_empresa
				and		a.cod_centro_costo	= f.cod_centro_costo
				and		a.cod_empresa		= g.cod_empresa
				and		a.cod_cargo			= g.cod_cargo
				and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta) 
						in ( select	distinct convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
									from	usuario_sipweb	a,
											empresa			c
									where	a.usuario			= ''' + convert(varchar(10),+@nro_trabajador) +'''
									and		a.cod_vigente		= ''S''
									and		a.cod_empresa		= c.cod_empresa	
									and		a.perfil_jefe_uadm		= ''S'' )
				' + @swhere +'
				order by a.cod_empresa, a.cod_planta, fec_fin_contr_vige, a.ape_paterno_trabaj, a.ape_materno_trabaj, a.nombre'
		end 
		else
		begin
				SET @sql = 'select	'''++@rango++''' as rango,
						a.cod_empresa,
						b.sigla_empresa as empresa,
						a.cod_planta,
						c.planta,
						e.cod_sucursal as cod_sucursal,
						e.sucursal as Sucursal,
						case when cod_vigen_trabajad = ''N'' then ''NO Vigente'' else ''Vigente'' end  as Estado,
						a.nro_trabajador,
						convert(varchar(10),a.rut_trabajador)++''-''++a.dv_rut_trabajador as Rut,
						a.ape_paterno_trabaj++'' ''++a.ape_materno_trabaj++'' ''++a.nombre as Nombre,
						convert(varchar(10),fec_ini_contrato,103) as fec_ini_contrato,	
						convert(varchar(10),fec_fin_contr_vige,103) as FechaTermino,
						g.cargo_trabajador as Cargo,
						a.cod_centro_costo,
						f.centro_costo,	
						case when h.tipo_contrato is null then '''' else h.tipo_contrato end  as causal,
						case a.codigo_tipo_contra when ''P'' then ''Permanente'' when ''F'' then ''Plazo Fijo'' else ''Obra o Faena'' end as tipo_contrato,
						a.rut_trabajador,
						z.representante,
						DATEDIFF(day,fec_ini_contrato,fec_fin_contr_vige) + 1 as nro_dias_cont,
						case when isnull(cau.nro_dias_tope,0)-(DATEDIFF(day,fec_ini_contrato,fec_fin_contr_vige)+1) < 0 then 0 else isnull(cau.nro_dias_tope,0)-(DATEDIFF(day,fec_ini_contrato,fec_fin_contr_vige)+1) end  as nro_dias_falt
				from	personal			a  left outer join tipo_finiquito  h on a.cod_empresa = h.cod_empresa
																	and a.cod_retiro = h.codigo_tipo_contra
												left outer join sipweb_representant_legal z on a.cod_empresa = z.cod_empresa
												left outer join sipweb_cau_CPD cau on a.cod_empresa = cau.cod_empresa
																				and a.cod_planta = cau.cod_planta
																				and	a.nro_trabajador = cau.nro_trabajador,
						empresa				b,
						planta				c,
						sucursal            e,
						centro_costo		f,
						cargo_trabajador    g,
						personal_dinamico	p
				where	a.cod_empresa		= e.cod_empresa
				and		a.cod_planta		= e.cod_planta
				and		a.cod_sucursal		= e.cod_sucursal
				and		a.cod_empresa		= b.cod_empresa
				and		a.cod_empresa		= c.cod_empresa
				and		a.cod_planta		= c.cod_planta
				and		a.cod_empresa		= f.cod_empresa
				and		a.cod_centro_costo	= f.cod_centro_costo
				and		a.cod_empresa		= g.cod_empresa
				and		a.cod_cargo			= g.cod_cargo
				and		a.cod_empresa		= p.cod_empresa
				and		a.nro_trabajador		= p.nro_trabajador
				and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta) 
					in ( select	distinct convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
									from	usuario_sipweb	a
									where	a.usuario			= ''' + convert(varchar(10),+@nro_trabajador) +'''
									and		a.cod_vigente		= ''S''
									and		( a.perfil_jefeportal = ''S'' or perfil_jefe_uadm = ''S'' ) )
				and		p.nombre_interno	= ''RutJefDir''
				and		p.valor_columna		= ''' + convert(varchar(10),+@nro_trabajador) +'''
				' + @swhere +'
				order by a.ape_paterno_trabaj, a.ape_materno_trabaj, a.nombre'

		end

		EXEC (@sql)
END
















GO

/****** Object:  StoredProcedure [dbo].[sp_listadotrab_con]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_listadotrab_con]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int,
	@perfil				varchar(20),
	@swhere				varchar(900)
AS
DECLARE @sql nvarchar(4000)
DECLARE @campos nvarchar(3000)
BEGIN
	SET NOCOUNT ON

		select @swhere = replace(@swhere, '&apos;', '''')
		
	   if @perfil = 'ADMIN'
	   begin
				SET @sql = 'select	convert(varchar(10),a.rut_trabajador)++''-''++a.dv_rut_trabajador as Rut,
						convert(varchar(10),a.nro_trabajador)++''-''++a.dv_trabajador as Codigo, 
						a.ape_paterno_trabaj++'' ''++a.ape_materno_trabaj++'' ''++a.nombre as Nombre,
						case when c.cargo_trabajador is null then '''' else c.cargo_trabajador end as Cargo,
						case when b.centro_costo is null then '''' else b.centro_costo end as centro_costo,
						case when d.unidad_administrat is null then '''' else d.unidad_administrat end as unidad_administrat,
						case when e.sucursal is null then '''' else e.sucursal end as Sucursal,
						case when f.descripcion is null then '''' else f.descripcion end  as LineaProd,
						case when g.area_perten is null then '''' else g.area_perten end  as Area,
						case when h.lugar_pago is null then '''' else h.lugar_pago end as lugar_pago,
						(select distinct i.descripcion from multiples_concepto i
							where a.cod_empresa		= i.cod_empresa
							and		a.cod_planta		= i.cod_planta
							and		a.tipo_contabilizaci = i.grupo_contable ) as tipoconta,
						a.nro_incrip_militar,
						a.nro_trabajador,
						a.cod_empresa,
						a.cod_planta,
						a.rut_trabajador,
						case when cod_vigen_trabajad = ''N'' then ''NO Vigente'' else ''Vigente'' end  as Estado
				from	personal			a left outer join area_perten g 
										on 	a.cod_empresa		= g.cod_empresa
										and	a.cod_area_perten		= g.cod_area_perten
										left outer join	centro_costo		b
										on		a.cod_empresa		= b.cod_empresa
										and		a.cod_centro_costo	= b.cod_centro_costo
										left outer join	cargo_trabajador    c
										on		a.cod_empresa		= c.cod_empresa
										and		a.cod_cargo			= c.cod_cargo
										left outer join	unidad_administrat		d
										on		a.cod_empresa		= d.cod_empresa
										and		a.cod_unidad_adminis = d.cod_unidad_adminis
										left outer join	sucursal            e
										on		a.cod_empresa		= e.cod_empresa
										and		a.cod_planta		= e.cod_planta
										and		a.cod_sucursal		= e.cod_sucursal
										left outer join	linea_produccion	f
										on	a.cod_linea_prod	= f.cod_linea_prod
										left outer join	lugar_pago			h
										on	a.cod_empresa		= h.cod_empresa
										and		a.cod_planta		= h.cod_planta
										and		a.cod_lugar_pago	= h.cod_lugar_pago
				where	a.cod_empresa		= ' + convert(varchar(10),@cod_empresa ) + '
				and		a.cod_planta		= ' + convert(varchar(10),@cod_planta) + '
				' + @swhere +'
				order by a.ape_paterno_trabaj, a.ape_materno_trabaj, a.nombre'
		end 
		else if @perfil = 'EJECUTIVO'
	    begin
				SET @sql = 'select	convert(varchar(10),a.rut_trabajador)++''-''++a.dv_rut_trabajador as Rut,
						convert(varchar(10),a.nro_trabajador)++''-''++a.dv_trabajador as Codigo, 
						a.ape_paterno_trabaj++'' ''++a.ape_materno_trabaj++'' ''++a.nombre as Nombre,
						case when c.cargo_trabajador is null then '''' else c.cargo_trabajador end as Cargo,
						case when b.centro_costo is null then '''' else b.centro_costo end as centro_costo,
						case when d.unidad_administrat is null then '''' else d.unidad_administrat end as unidad_administrat,
						case when e.sucursal is null then '''' else e.sucursal end as Sucursal,
						case when f.descripcion is null then '''' else f.descripcion end  as LineaProd,
						case when g.area_perten is null then '''' else g.area_perten end  as Area,
						case when h.lugar_pago is null then '''' else h.lugar_pago end as lugar_pago,
						(select distinct i.descripcion from multiples_concepto i
							where a.cod_empresa		= i.cod_empresa
							and		a.cod_planta		= i.cod_planta
							and		a.tipo_contabilizaci = i.grupo_contable ) as tipoconta,
						a.nro_incrip_militar,
						a.nro_trabajador,
						a.cod_empresa,
						a.cod_planta,
						a.rut_trabajador,
						case when cod_vigen_trabajad = ''N'' then ''NO Vigente'' else ''Vigente'' end  as Estado
				from	personal			a left outer join area_perten g 
										on 	a.cod_empresa		= g.cod_empresa
										and	a.cod_area_perten		= g.cod_area_perten
										left outer join	centro_costo		b
										on		a.cod_empresa		= b.cod_empresa
										and		a.cod_centro_costo	= b.cod_centro_costo
										left outer join	cargo_trabajador    c
										on		a.cod_empresa		= c.cod_empresa
										and		a.cod_cargo			= c.cod_cargo
										left outer join	unidad_administrat		d
										on		a.cod_empresa		= d.cod_empresa
										and		a.cod_unidad_adminis = d.cod_unidad_adminis
										left outer join	sucursal            e
										on		a.cod_empresa		= e.cod_empresa
										and		a.cod_planta		= e.cod_planta
										and		a.cod_sucursal		= e.cod_sucursal
										left outer join	linea_produccion	f
										on	a.cod_linea_prod	= f.cod_linea_prod
										left outer join	lugar_pago			h
										on	a.cod_empresa		= h.cod_empresa
										and		a.cod_planta		= h.cod_planta
										and		a.cod_lugar_pago	= h.cod_lugar_pago
				where	a.cod_empresa		= ' + convert(varchar(10),@cod_empresa ) + '
				and		a.cod_planta		= ' + convert(varchar(10),@cod_planta) + '
				and		a.cod_sucursal in ( select cod_sucursal from usuario_sipweb where usuario = ''' + convert(varchar(10),+@nro_trabajador) +''' )
				' + @swhere +'
				order by a.ape_paterno_trabaj, a.ape_materno_trabaj, a.nombre'
		end 
		else if @perfil = 'JEFEUA'
		begin
				SET @sql = 'select	convert(varchar(10),a.rut_trabajador)++''-''++a.dv_rut_trabajador as Rut,
						convert(varchar(10),a.nro_trabajador)++''-''++a.dv_trabajador as Codigo, 
						a.ape_paterno_trabaj++'' ''++a.ape_materno_trabaj++'' ''++a.nombre as Nombre,
						case when c.cargo_trabajador is null then '''' else c.cargo_trabajador end as Cargo,
						case when b.centro_costo is null then '''' else b.centro_costo end as centro_costo,
						case when d.unidad_administrat is null then '''' else d.unidad_administrat end as unidad_administrat,
						case when e.sucursal is null then '''' else e.sucursal end as Sucursal,
						case when f.descripcion is null then '''' else f.descripcion end  as LineaProd,
						case when g.area_perten is null then '''' else g.area_perten end  as Area,
						case when h.lugar_pago is null then '''' else h.lugar_pago end as lugar_pago,
						(select distinct i.descripcion from multiples_concepto i
							where a.cod_empresa		= i.cod_empresa
							and		a.cod_planta		= i.cod_planta
							and		a.tipo_contabilizaci = i.grupo_contable ) as tipoconta,
						a.nro_incrip_militar,
						a.nro_trabajador,
						a.cod_empresa,
						a.cod_planta,
						a.rut_trabajador,
						case when cod_vigen_trabajad = ''N'' then ''NO Vigente'' else ''Vigente'' end  as Estado
				from	personal			a left outer join area_perten g 
										on 	a.cod_empresa		= g.cod_empresa
										and	a.cod_area_perten		= g.cod_area_perten
										left outer join	centro_costo		b
										on		a.cod_empresa		= b.cod_empresa
										and		a.cod_centro_costo	= b.cod_centro_costo
										left outer join	cargo_trabajador    c
										on		a.cod_empresa		= c.cod_empresa
										and		a.cod_cargo			= c.cod_cargo
										left outer join	unidad_administrat		d
										on		a.cod_empresa		= d.cod_empresa
										and		a.cod_unidad_adminis = d.cod_unidad_adminis
										left outer join	sucursal            e
										on		a.cod_empresa		= e.cod_empresa
										and		a.cod_planta		= e.cod_planta
										and		a.cod_sucursal		= e.cod_sucursal
										left outer join	linea_produccion	f
										on	a.cod_linea_prod	= f.cod_linea_prod
										left outer join	lugar_pago			h
										on	a.cod_empresa		= h.cod_empresa
										and		a.cod_planta		= h.cod_planta
										and		a.cod_lugar_pago	= h.cod_lugar_pago
				where	a.cod_empresa		= ' + convert(varchar(10),@cod_empresa ) + '
				and		a.cod_planta		= ' + convert(varchar(10),@cod_planta) + '
				' + @swhere +'
				order by a.ape_paterno_trabaj, a.ape_materno_trabaj, a.nombre'

		end
		else
		begin
				SET @sql = 'select	convert(varchar(10),a.rut_trabajador)++''-''++a.dv_rut_trabajador as Rut,
						convert(varchar(10),a.nro_trabajador)++''-''++a.dv_trabajador as Codigo, 
						a.ape_paterno_trabaj++'' ''++a.ape_materno_trabaj++'' ''++a.nombre as Nombre,
						case when c.cargo_trabajador is null then '''' else c.cargo_trabajador end as Cargo,
						case when b.centro_costo is null then '''' else b.centro_costo end as centro_costo,
						case when d.unidad_administrat is null then '''' else d.unidad_administrat end as unidad_administrat,
						case when e.sucursal is null then '''' else e.sucursal end as Sucursal,
						case when f.descripcion is null then '''' else f.descripcion end  as LineaProd,
						case when g.area_perten is null then '''' else g.area_perten end  as Area,
						case when h.lugar_pago is null then '''' else h.lugar_pago end as lugar_pago,
						(select distinct i.descripcion from multiples_concepto i
							where a.cod_empresa		= i.cod_empresa
							and		a.cod_planta		= i.cod_planta
							and		a.tipo_contabilizaci = i.grupo_contable ) as tipoconta,
						a.nro_incrip_militar,
						a.nro_trabajador,
						a.cod_empresa,
						a.cod_planta,
						a.rut_trabajador,
						case when cod_vigen_trabajad = ''N'' then ''NO Vigente'' else ''Vigente'' end  as Estado
				from	personal			a left outer join area_perten g 
										on 	a.cod_empresa		= g.cod_empresa
										and	a.cod_area_perten		= g.cod_area_perten
										left outer join	centro_costo		b
										on		a.cod_empresa		= b.cod_empresa
										and		a.cod_centro_costo	= b.cod_centro_costo
										left outer join	cargo_trabajador    c
										on		a.cod_empresa		= c.cod_empresa
										and		a.cod_cargo			= c.cod_cargo
										left outer join	unidad_administrat		d
										on		a.cod_empresa		= d.cod_empresa
										and		a.cod_unidad_adminis = d.cod_unidad_adminis
										left outer join	sucursal            e
										on		a.cod_empresa		= e.cod_empresa
										and		a.cod_planta		= e.cod_planta
										and		a.cod_sucursal		= e.cod_sucursal
										left outer join	linea_produccion	f
										on	a.cod_linea_prod	= f.cod_linea_prod
										left outer join	lugar_pago			h
										on	a.cod_empresa		= h.cod_empresa
										and		a.cod_planta		= h.cod_planta
										and		a.cod_lugar_pago	= h.cod_lugar_pago,
						personal_dinamico	p
				where	a.cod_empresa		= p.cod_empresa
				and		a.cod_planta		= p.cod_planta
				and		a.nro_trabajador		= p.nro_trabajador
				and		a.dv_trabajador		= p.dv_trabajador
				and		a.cod_empresa		= ' + convert(varchar(10),@cod_empresa ) + '
				and		a.cod_planta		= ' + convert(varchar(10),@cod_planta) + '
				and		p.nombre_interno	= ''RutJefDir''
				and		p.valor_columna		= ''' + convert(varchar(10),+@nro_trabajador) +'''
				' + @swhere +'
				order by a.ape_paterno_trabaj, a.ape_materno_trabaj, a.nombre'

		end

		EXEC (@sql)
END










GO

/****** Object:  StoredProcedure [dbo].[sp_lista_usuarios]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_lista_usuarios]
	@tipo				int,
	@nro_trabajador		int,
	@where				varchar(800)
AS
DECLARE @sql nvarchar(4000)
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select @where = replace(@where, '&apos;', '''')
		if @where <> ''
		begin
			select @where = 'and '+@where;
		end

		SET @sql = 'select	a.Usuario,
							a.nombre_usuario as nombre,
							count(*)
					from	usuario_sipweb		a left outer join personal	c
										on		a.cod_empresa	 = c.cod_empresa
										and		a.cod_planta	 = c.cod_planta
										and		a.nro_trabajador = c.nro_trabajador
										and		c.cod_vigen_trabajad = ''S''
					where	a.cod_vigente = ''S'' '
					+ @where +' 
					group by a.Usuario, a.nombre_usuario
					order by a.nombre_usuario '

		EXEC (@sql)
		
	end
	else if @tipo = 5
	begin
		select @where = replace(@where, '&apos;', '''')
		if @where <> ''
		begin
			select @where = 'and '+@where;
		end

		SET @sql = 'select	a.Usuario,
							a.nombre_usuario as nombre,
							count(*)
					from	usuario_sipweb		a,
							personal_dinamico	p
					where	a.cod_empresa		= p.cod_empresa
					and		a.nro_trabajador	= p.nro_trabajador
					and		a.cod_vigente		= ''S''
					and		p.nombre_interno	= ''RutJefDir''
					and		p.valor_columna		=  ''' + convert(varchar(10),+@nro_trabajador) +''''
					+ @where +' 
					group by a.Usuario, a.nombre_usuario
					order by a.nombre_usuario '

		EXEC (@sql)
		
	end
	else if @tipo = 1
	begin
		select	a.Usuario as Usuario,
				a.nombre_usuario as nombre
		from	usuario_sipweb	a
		where	a.Usuario	= @nro_trabajador
		and		a.cod_vigente = 'S'
	end
	else if @tipo = 2
	begin
		select	a.nombre_usuario as nombre,
				a.cod_empresa, 
				case when intentosfallidos is null then 0 else intentosfallidos end
		from	usuario_sipweb a
		where	a.Usuario	= @nro_trabajador
		and		a.cod_vigente = 'S'
	end
	else if @tipo = 3
	begin

		select @where = replace(@where, '&apos;', '''')

		if @where <> ''
		begin
			select @where = 'and '+@where;
		end

		SET @sql = 'select	distinct a.Usuario,
							a.nro_trabajador as ''NroTrabajador'',
							a.nombre_usuario as nombre
					from	usuario_sipweb		a left outer join personal b on 
										a.cod_empresa = b.cod_empresa
										and a.cod_planta = b.cod_planta
										and a.usuario = convert(varchar(15),b.rut_trabajador)
					where	a.cod_vigente = ''S'' '
					+ @where +' order by nombre_usuario '


		EXEC (@sql)
		
	end
	else if @tipo = 4
	begin
		select	nombre_usuario as nombre,
				a.cod_empresa, 
				case when intentosfallidos is null then 0 else intentosfallidos end
		from	usuario_sipweb a
		where	a.Usuario	= @nro_trabajador
		and		a.cod_vigente = 'S'
	end
END
















GO

/****** Object:  StoredProcedure [dbo].[sp_lista_archivos]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_lista_archivos]
	@tipo				int,
	@usuario			int,
	@nro_trabajador		int,
	@nombre_arch		varchar(150)
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	usuario,
				nombre_arch,
				case when jefe = 0 then 'No' else 'Si' end as jefe,
				case when trabajador = 0 then 'No' else 'Si' end as trabajador,
				case when adminis = 0 then 'No' else 'Si' end as adminis,
				case when todos = 0 then 'No' else 'Si' end as  todos,
				descripcion,
				nro_trabajador
		from	sipweb_archivos
		where	Usuario	= @usuario
		and		nro_trabajador	= @nro_trabajador
	end
	else if @tipo = 1
	begin
		select	jefe,
				trabajador,
				adminis,
				todos,
				tipo,
				archivo,
				descripcion,
				nro_trabajador
		from	sipweb_archivos
		where	Usuario	= @usuario
		and		nro_trabajador	= @nro_trabajador
		and		nombre_arch = @nombre_arch
	end

END















GO

/****** Object:  StoredProcedure [dbo].[sp_liquidacionapp_upd]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_liquidacionapp_upd]
	@cod_empresa		int,
	@cod_planta			int,
	@ano_periodo		int,
	@mes_periodo		int,
	@nro_trabajador		int,
	@estado				varchar(15),
	@cod_tipo_proceso	varchar(30),
	@nombre_encripta	varchar(400),
	@motivo_rechazo		varchar(400)
AS
BEGIN TRANSACTION

declare @nroticket int
declare @snombre varchar(100)

		delete from sipweb_liq_app 
		where	cod_empresa		= @cod_empresa
		and		cod_planta		= @cod_planta
		and		ano_periodo		= @ano_periodo
		and		mes_periodo		= @mes_periodo
		and		nro_trabajador	= @nro_trabajador
		and		cod_tipo_proceso = @cod_tipo_proceso

		insert into sipweb_liq_app(cod_empresa, cod_planta, ano_periodo, mes_periodo, nro_trabajador, estado, fecha, cod_tipo_proceso,
				nombre_encripta, motivo_rechazo )
		values ( @cod_empresa, @cod_planta, @ano_periodo, @mes_periodo, @nro_trabajador, @estado, getdate(), @cod_tipo_proceso,
				@nombre_encripta, @motivo_rechazo )
				
				
	 if ( @estado = 'Rechazada' ) 
	 begin
	 
		select @nroticket = max(nroticket)+1
		from	sipweb_ticket
		where	cod_empresa = @cod_empresa
		
		if (@nroticket is null) 
		begin
			select @nroticket = 0
		end 
		
		select @snombre = a.nombre++' '++a.ape_paterno_trabaj++' '++a.ape_materno_trabaj
		from	personal a
		where	nro_trabajador = @nro_trabajador
		and		cod_empresa = @cod_empresa
		and		cod_planta = @cod_planta

		
		insert into sipweb_ticket ( cod_empresa, cod_planta, ano_periodo, mes_periodo, nroticket,
							email, asunto, motivo, estado, fechaing, comentario, usuario, nomusuario )
			VALUES ( @cod_empresa, @cod_planta, @ano_periodo, @mes_periodo, @nroticket,
					 '', 'Observación a Liquidación de Sueldo Mes: '++CONVERT(varchar(10),@mes_periodo)++'-'++CONVERT(varchar(10),@ano_periodo),
					 'Rechazo Liquidacion de Sueldos', 'Abierto', getdate(), @motivo_rechazo, 
					 @nro_trabajador, @snombre ) 
		end

COMMIT TRANSACTION












GO

/****** Object:  StoredProcedure [dbo].[sp_liquidacionapp]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_liquidacionapp]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int,
	@swhere				varchar(500),
	@tipo			    int
AS
DECLARE @sql nvarchar(4000)
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select @swhere = replace(@swhere, '&apos;', '''')
		SET @sql = ' select	ano_periodo
		from	sipweb_liq_app
		where	cod_empresa		= ' + convert(varchar(10),@cod_empresa ) + '
		and		cod_planta		= ' + convert(varchar(10),@cod_planta ) + '
		and		nro_trabajador	= ' + convert(varchar(10),@nro_trabajador ) + '
		and		estado			!= ''Pre-Aprobada'' ' + @swhere

		EXEC (@sql)
	END
	else if @tipo = 1
	begin
			select	distinct ano_periodo
			from	sipweb_liq_app
	end
	else if @tipo = 2
	begin
			select @swhere = replace(@swhere, '&apos;', '''')

			SET @sql = 'select	a.cod_empresa, 
					c.sigla_empresa as empresa,
					a.cod_planta, 
					d.planta,
					a.ano_periodo, 
					a.mes_periodo, 
					a.nro_trabajador, 
					convert(varchar(10),b.rut_trabajador)++''-''++b.dv_rut_trabajador as Rut,
					b.ape_paterno_trabaj++'' ''++b.ape_materno_trabaj++'' ''++b.nombre as Nombre,
					a.estado, 
					cod_tipo_proceso,
					convert(varchar(10),a.fecha,103) as fecha,
					nombre_encripta,
					motivo_rechazo
			from	sipweb_liq_app		a,
					personal			b,
					empresa				c,
					planta				d
			where	a.cod_empresa		= b.cod_empresa
			and		a.cod_planta		= b.cod_planta
			and		a.nro_trabajador	= b.nro_trabajador
			and		a.cod_empresa		= c.cod_empresa
			and		a.cod_empresa		= d.cod_empresa
			and		a.cod_planta		= d.cod_planta
			' + @swhere
			EXEC (@sql)
	end
	else if @tipo = 3
	begin
		select @swhere = replace(@swhere, '&apos;', '''')

			SET @sql = 'select	a.cod_empresa, 
					c.sigla_empresa as empresa,
					a.cod_planta, 
					d.planta,
					a.ano_periodo, 
					a.mes_periodo, 
					a.nro_trabajador, 
					convert(varchar(10),b.rut_trabajador)++''-''++b.dv_rut_trabajador as Rut,
					b.ape_paterno_trabaj++'' ''++b.ape_materno_trabaj++'' ''++b.nombre as Nombre,
					a.estado, 
					cod_tipo_proceso,
					convert(varchar(10),a.fecha,103) as fecha,
					nombre_encripta,
					motivo_rechazo
			from	sipweb_liq_app		a,
					personal			b,
					empresa				c,
					planta				d,
					personal_dinamico	p
			where	a.cod_empresa		= b.cod_empresa
			and		a.cod_planta		= b.cod_planta
			and		a.nro_trabajador	= b.nro_trabajador
			and		a.cod_empresa		= c.cod_empresa
			and		a.cod_empresa		= d.cod_empresa
			and		a.cod_planta		= d.cod_planta
			and		a.cod_empresa		= p.cod_empresa
			and		a.nro_trabajador	= p.nro_trabajador
			and		p.nombre_interno	= ''RutJefDir''
			' + @swhere
			EXEC (@sql)
	end
END

















GO

/****** Object:  StoredProcedure [dbo].[sp_liquidacion_update]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_liquidacion_update]
	@cod_empresa		int,
	@cod_planta			int,
	@ano_periodo		int,
	@mes_periodo		int,
	@tipo			    int
AS
BEGIN TRANSACTION
	if ( @tipo = 0 )
	begin
		delete from sipweb_liq_publicadas 
		where	cod_empresa		= @cod_empresa
		and		cod_planta		= @cod_planta
		and		ano_periodo		= @ano_periodo
	end
	else
	begin
		insert into sipweb_liq_publicadas( cod_empresa, cod_planta, ano_periodo, mes_periodo, usuario, fecha  )
		values ( @cod_empresa, @cod_planta, @ano_periodo, @mes_periodo, system_user, getdate() )
	end
	

COMMIT TRANSACTION



















GO

/****** Object:  StoredProcedure [dbo].[sp_licencias]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_licencias]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int
AS
BEGIN
	SET NOCOUNT ON;
		select	a.nro_licencia, 
				convert(varchar(10),fec_desde_licencia,103) as fec_desde_licencia,
				convert(varchar(10),fec_hasta_licencia,103) as fec_hasta_licencia,
				a.nro_dias_licencia,
				c.tipo_licencia,
				a.cod_medico,
				b.nombre_medico++' '++ape_paterno_medico++' '++ape_materno_medico as nombre
		from	LICENCIA		a left outer join medicos b
				on a.cod_medico	= b.cod_medico,
				tipo_licencia c
		where	a.nro_tipo_licencia	= c.nro_tipo_licencia
		and		a.nro_trabajador	= @nro_trabajador
		and		a.cod_empresa		= @cod_empresa	
		and		a.cod_planta		= @cod_planta
		order by convert(datetime,fec_desde_licencia,103) desc
END



















GO

/****** Object:  StoredProcedure [dbo].[sp_jefedirecto]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_jefedirecto]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int,
	@tipo				int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	valor_columna,
				b.nombre++' '++b.ape_paterno_trabaj++' '++b.ape_materno_trabaj	as nombre,
				b.casilla_e_mail
		from	personal_dinamico	a,
				personal			b
		where	a.nro_trabajador	= @nro_trabajador 
		and		a.nombre_interno	= 'RutJefDir'
		and		a.cod_empresa		= @cod_empresa 
		and		a.cod_planta 		= @cod_planta 
		and		a.cod_empresa		= b.cod_empresa
		and		a.valor_columna		= b.rut_trabajador
		and 	b.cod_vigen_trabajad = 'S' 
	end 
	else if @tipo = 1
	begin
			select	b.casilla_e_mail
			from	usuario_sipweb	a,
					personal		b
			where	a.cod_empresa		= @cod_empresa
			and		a.cod_planta		= @cod_planta
			and		a.perfil_admin		= 'S'
			and		a.cod_empresa		= b.cod_empresa
			and		a.cod_planta		= b.cod_planta
			and		a.nro_trabajador	= b.nro_trabajador
	end
	else if @tipo = 2
	begin
			select	valor_columna,
					nombre_usuario	as nombre,
					b.correo_perfil_jefe
			from	personal_dinamico	a,
					usuario_sipweb		b
			where	a.nro_trabajador	= @nro_trabajador 
			and		a.nombre_interno	= 'RutJefDir'
			and		a.cod_empresa		= @cod_empresa 
			and		a.cod_planta 		= @cod_planta 
			and		a.cod_empresa		= b.cod_empresa
			and		a.valor_columna		= b.usuario
			and 	b.cod_vigente		= 'S' 
	end
END















GO

/****** Object:  StoredProcedure [dbo].[sp_Informelog_liq]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_Informelog_liq]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int,
	@perfil				varchar(20),
	@swhere				varchar(500),
	@rango				varchar(100)
AS
DECLARE @sql nvarchar(4000)
DECLARE @campos nvarchar(3000)
BEGIN
	SET NOCOUNT ON

	select @swhere = replace(@swhere, '&apos;', '''')
		
		SET @sql = 'select	'''++@rango++''' as rango,
						a.cod_empresa,
						b.sigla_empresa as empresa,
						a.cod_planta,
						c.planta,
						a.nro_trabajador,
						convert(varchar(10),aa.rut_trabajador)++''-''++aa.dv_rut_trabajador as Rut,
						aa.ape_paterno_trabaj++'' ''++aa.ape_materno_trabaj++'' ''++aa.nombre as Nombre,
						a.ano_periodo,
						a.mes_periodo,
						a.cod_tipo_proceso,
						convert(varchar(10),a.fecha,103) as fecha
				from	sipweb_log_liquidac			a  left outer join personal aa on a.cod_empresa		= aa.cod_empresa
												and		a.cod_planta		= aa.cod_planta
												and		a.nro_trabajador		= aa.nro_trabajador,
							
						empresa						b,
						planta						c
				where	a.cod_empresa		= b.cod_empresa
				and		a.cod_empresa		= c.cod_empresa
				and		a.cod_planta		= c.cod_planta
				and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
							in ( select	distinct convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
									from	usuario_sipweb	a,
											empresa			c
									where	a.usuario			= ''' + convert(varchar(10),+@nro_trabajador) +'''
									and		a.cod_vigente		= ''S''
									and		a.cod_empresa		= c.cod_empresa	
									and		a.perfil_admin		= ''S'' )
				' + @swhere +'
				order by a.cod_empresa, a.cod_planta, a.fecha, a.nro_trabajador, aa.ape_paterno_trabaj, aa.ape_materno_trabaj, aa.nombre'

		EXEC (@sql)
END












GO

/****** Object:  StoredProcedure [dbo].[sp_imp_solvacaciones]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_imp_solvacaciones]
	@tipo				int,
	@id					varchar(14)
AS
declare	@unidad			nvarchar(4000)
DECLARE @sql			nvarchar(4000)
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.correlativo as ID,
				b.nombre++' '++b.ape_paterno_trabaj++' '++b.ape_materno_trabaj	as nombre,
				convert(varchar(10),fecha_desde,103) as 'Fecha Inicio',
				convert(varchar(10),fecha_fin,103) as 'Fecha Término',
				a.cantidad as 'Nro. Dias',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso'
		from	sipweb_solvacaciones	a,
				personal				b
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.estado			= 'Enviada'
		and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
					in ( select convert(varchar(10),cod_empresa)++convert(varchar(10),cod_planta) 
						from usuario_sipweb where usuario = @id AND perfil_admin = 'S' )

		order by a.correlativo desc
	end
	else if @tipo = 1
	begin
		select	a.correlativo as ID,
				b.nombre++' '++b.ape_paterno_trabaj++' '++b.ape_materno_trabaj	as nombre,
				convert(varchar(10),fecha_desde,103) as 'Fecha Inicio',
				convert(varchar(10),fecha_fin,103) as 'Fecha Término',
				a.cantidad as 'Nro. Dias',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso'
		from	sipweb_solvacaciones	a,
				personal				b,
				personal_dinamico		c
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.estado			= 'Enviada'
		and		a.cod_empresa		= c.cod_empresa
		and		a.nro_trabajador	= c.nro_trabajador
		and		c.nombre_interno	= 'RutJefDir'
		and		c.valor_columna		= convert(varchar(10),@id)
		order by a.correlativo desc
	end
	else if @tipo = 2
	begin
		select	a.cod_empresa,
				a.cod_planta,
				convert(varchar(10),fecha_desde,103) as 'Fecha Inicio',
				convert(varchar(10),fecha_fin,103) as 'Fecha Término',
				cantidad,
				observaciones,
				estado,
				convert(varchar(10),fecha_ingreso,103) as 'F. Ingreso',
				b.casilla_e_mail,
				b.rut_trabajador,
				a.nro_trabajador,
				convert(varchar(10),fecha_autorizacion ,103) as 'Fecha Autoriza',
				convert(varchar(10),fecha_rechazo ,103) as 'Fecha Rechazo',
				dias_legales,
				dias_adicionales,
				dias_progres,
				noincl_adic,
				noincl_prog
		from	sipweb_solvacaciones	a,
				personal				b
		where	a.correlativo		= @id
		and		a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
	end
	else if @tipo = 3
	begin
		select	a.correlativo as ID,
				b.nombre++' '++b.ape_paterno_trabaj++' '++b.ape_materno_trabaj	as nombre,
				convert(varchar(10),fecha_desde,103) as 'Fecha Inicio',
				convert(varchar(10),fecha_fin,103) as 'Fecha Término',
				a.cantidad as 'Nro. Dias',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso',
				convert(varchar(10),fecha_autorizacion,103) as 'Fecha Autorizacion'	
		from	sipweb_solvacaciones	a,
				personal				b
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.estado			= 'Aprobada'
				and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
					in ( select convert(varchar(10),cod_empresa)++convert(varchar(10),cod_planta) 
						from usuario_sipweb where usuario = @id  )
		order by a.correlativo desc
	end
	else if @tipo = 4
	begin

		select @unidad = cod_unidad_adminis from usuario_sipweb where usuario = @id AND perfil_jefe_uadm = 'S'
		if @unidad is null or @unidad = ''
		begin
			select @unidad = '-1'
		end
		SET @sql = ' select	a.correlativo as ID,
				b.nombre++'' ''++b.ape_paterno_trabaj++'' ''++b.ape_materno_trabaj	as nombre,
				convert(varchar(10),fecha_desde,103) as ''Fecha Inicio'',
				convert(varchar(10),fecha_fin,103) as ''Fecha Término'',
				a.cantidad as ''Nro. Dias'',
				a.estado as ''Estado'',
				convert(varchar(10),fecha_ingreso,103) as ''Fecha Ingreso''
		from	sipweb_solvacaciones	a,
				personal				b
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.estado			= ''Enviada''
		and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
					in ( select convert(varchar(10),cod_empresa)++convert(varchar(10),cod_planta) 
						from usuario_sipweb where usuario = '''+convert(varchar(10),@id)+'''  )
		and		b.cod_unidad_adminis in ( '++@unidad+' )
		order by a.correlativo desc '

		EXEC (@sql)
	end

END














GO

/****** Object:  StoredProcedure [dbo].[sp_imp_solprestamo]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












create PROCEDURE [dbo].[sp_imp_solprestamo]
	@tipo				int,
	@id					numeric(14)
AS
declare	@unidad			nvarchar(4000)
DECLARE @sql			nvarchar(4000)
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.correlativo as ID,
				b.nombre++' '++b.ape_paterno_trabaj++' '++b.ape_materno_trabaj	as nombre,
				d.tipo_cta_cte as 'Tipo Prestamo',
				a.monto_prestamo as 'Monto',
				a.nro_cuotas as 'Nro. Cuotas',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso'			
		from	sipweb_solprestamo		a,
				personal				b,
				tipo_cta_cte			d
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.cod_empresa		= d.cod_empresa
		and		a.cod_tipo_cta_cte	= d.cod_tipo_cta_cte
		and		a.estado			= 'Enviada'
		and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
					in ( select convert(varchar(10),cod_empresa)++convert(varchar(10),cod_planta) 
						from usuario_sipweb where usuario = @id AND perfil_admin = 'S' )
		order by a.correlativo desc
	end
	else if @tipo = 1
	begin
		select	a.correlativo as ID,
				b.nombre++' '++b.ape_paterno_trabaj++' '++b.ape_materno_trabaj	as nombre,
				d.tipo_cta_cte as 'Tipo Prestamo',
				a.monto_prestamo as 'Monto',
				a.nro_cuotas as 'Nro. Cuotas',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso'		
		from	sipweb_solprestamo		a,
				personal				b,
				personal_dinamico		c,
				tipo_cta_cte			d
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.cod_empresa		= d.cod_empresa
		and		a.cod_tipo_cta_cte	= d.cod_tipo_cta_cte
		and		a.estado			= 'Enviada'
		and		a.cod_empresa		= c.cod_empresa
		and		a.nro_trabajador	= c.nro_trabajador
		and		c.nombre_interno	= 'RutJefDir'
		and		c.valor_columna		= convert(varchar(10),@id)
		order by a.correlativo desc
	end
	else if @tipo = 2
	begin
		select	a.cod_empresa,
				a.cod_planta,
				cod_tipo_cta_cte,
				unidad_prestamo,
				monto_prestamo,
				nro_cuotas,
				mes_descto,
				ano_descto,
				observaciones,
				estado,
				convert(varchar(10),fecha_ingreso,103) as 'F. Ingreso',
				b.casilla_e_mail,
				b.rut_trabajador,
				a.nro_trabajador
		from	sipweb_solprestamo		a,
				personal				b
		where	a.correlativo		= @id
		and		a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
	end
	else if @tipo = 3
	begin
		select	a.correlativo as ID,
				b.nombre++' '++b.ape_paterno_trabaj++' '++b.ape_materno_trabaj	as nombre,
				d.tipo_cta_cte as 'Tipo Prestamo',
				a.monto_prestamo as 'Monto',
				a.nro_cuotas as 'Nro. Cuotas',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso',
				convert(varchar(10),fecha_autorizacion,103) as 'Fecha Autorizacion'	
		from	sipweb_solprestamo		a,
				personal				b,
				tipo_cta_cte				d
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.cod_empresa		= d.cod_empresa
		and		a.cod_tipo_cta_cte	= d.cod_tipo_cta_cte
		and		a.estado			= 'Aprobada'
				and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
					in ( select convert(varchar(10),cod_empresa)++convert(varchar(10),cod_planta) 
						from usuario_sipweb where usuario = @id  )
		order by a.correlativo desc
	end
	else if @tipo = 4
	begin

		select @unidad = cod_unidad_adminis from usuario_sipweb where usuario = @id AND perfil_jefe_uadm = 'S'
		if @unidad is null or @unidad = ''
		begin
			select @unidad = '-1'
		end
		SET @sql = ' select	a.correlativo as ID,
				b.nombre++'' ''++b.ape_paterno_trabaj++'' ''++b.ape_materno_trabaj	as nombre,
				d.tipo_cta_cte as ''Tipo Prestamo'',
				a.monto_prestamo as ''Monto'',
				a.nro_cuotas as ''Nro. Cuotas'',
				a.estado as ''Estado'',
				convert(varchar(10),fecha_ingreso,103) as ''Fecha Ingreso''
		from	sipweb_solprestamo		a,
				personal				b,
				tipo_cta_cte			d
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.cod_empresa		= d.cod_empresa
		and		a.cod_tipo_cta_cte	= d.cod_tipo_cta_cte
		and		a.estado			= ''Enviada''
		and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
					in ( select convert(varchar(10),cod_empresa)++convert(varchar(10),cod_planta) 
						from usuario_sipweb where usuario = '''+convert(varchar(10),@id)+'''  )
		and		b.cod_unidad_adminis in ( '++@unidad+' )
		order by a.correlativo desc '

		EXEC (@sql)
	end

END


















GO

/****** Object:  StoredProcedure [dbo].[sp_imp_solpermiso]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_imp_solpermiso]
	@tipo				int,
	@id					numeric(14)
AS
declare	@unidad			nvarchar(4000)
DECLARE @sql			nvarchar(4000)
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.correlativo as ID,
				b.nombre++' '++b.ape_paterno_trabaj++' '++b.ape_materno_trabaj	as nombre,
				d.descrip_ausencia as 'Tipo Permiso',
				convert(varchar(10),fecha_desde ,103) as 'Fecha Desde',
				a.cantidad as 'Cantidad',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso'			
		from	sipweb_solpermiso		a,
				personal				b,
				ausencia				d
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.cod_empresa		= d.cod_empresa
		and		a.cod_planta		= d.cod_planta
		and		a.cod_permiso		= d.cod_ausencia
		and		a.estado			= 'Enviada'
		and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
					in ( select convert(varchar(10),cod_empresa)++convert(varchar(10),cod_planta) 
						from usuario_sipweb where usuario = @id AND perfil_admin = 'S' )
		order by a.correlativo desc
	end
	else if @tipo = 1
	begin
		select	a.correlativo as ID,
				b.nombre++' '++b.ape_paterno_trabaj++' '++b.ape_materno_trabaj	as nombre,
				d.descrip_ausencia as 'Tipo Permiso',
				convert(varchar(10),fecha_desde ,103) as 'Fecha Desde',
				a.cantidad as 'Cantidad',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso'			
		from	sipweb_solpermiso		a,
				personal				b,
				personal_dinamico		c,
				ausencia				d
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.cod_empresa		= d.cod_empresa
		and		a.cod_planta		= d.cod_planta
		and		a.cod_permiso		= d.cod_ausencia
		and		a.estado			= 'Enviada'
		and		a.cod_empresa		= c.cod_empresa
		and		a.nro_trabajador	= c.nro_trabajador
		and		c.nombre_interno	= 'RutJefDir'
		and		c.valor_columna		= convert(varchar(10),@id)
		order by a.correlativo desc
	end
	else if @tipo = 2
	begin
		select	a.cod_empresa,
				a.cod_planta,
				cod_permiso,
				unidad_permiso,
				convert(varchar(10),fecha_desde ,103) as 'Fecha Desde',
				cantidad,
				observaciones,
				estado,
				convert(varchar(10),fecha_ingreso,103) as 'F. Ingreso',
				b.casilla_e_mail,
				b.rut_trabajador,
				a.nro_trabajador
		from	sipweb_solpermiso		a,
				personal				b
		where	a.correlativo		= @id
		and		a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
	end
	else if @tipo = 3
	begin
		select	a.correlativo as ID,
				b.nombre++' '++b.ape_paterno_trabaj++' '++b.ape_materno_trabaj	as nombre,
				d.descrip_ausencia as 'Tipo Permiso',
				convert(varchar(10),fecha_desde ,103) as 'Fecha Desde',
				a.cantidad as 'Cantidad',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso',
				convert(varchar(10),fecha_autorizacion,103) as 'Fecha Autorizacion'	
		from	sipweb_solpermiso		a,
				personal				b,
				ausencia				d
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.cod_empresa		= d.cod_empresa
		and		a.cod_planta		= d.cod_planta
		and		a.cod_permiso		= d.cod_ausencia
		and		a.estado			= 'Aprobada'
		and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
					in ( select convert(varchar(10),cod_empresa)++convert(varchar(10),cod_planta) 
						from usuario_sipweb where usuario = @id  )
		order by a.correlativo desc
	end
	else if @tipo = 4
	begin
		select @unidad = cod_unidad_adminis from usuario_sipweb where usuario = @id AND perfil_jefe_uadm = 'S'
		if @unidad is null or @unidad = ''
		begin
			select @unidad = '-1'
		end
		SET @sql = ' select	a.correlativo as ID,
				b.nombre++'' ''++b.ape_paterno_trabaj++'' ''++b.ape_materno_trabaj	as nombre,
				d.descrip_ausencia as ''Tipo Permiso'',
				convert(varchar(10),fecha_desde ,103) as ''Fecha Desde'',
				a.cantidad as ''Cantidad'',
				a.estado as ''Estado'',
				convert(varchar(10),fecha_ingreso,103) as ''Fecha Ingreso''
		from	sipweb_solpermiso		a,
				personal				b,
				ausencia				d
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.cod_empresa		= d.cod_empresa
		and		a.cod_planta		= d.cod_planta
		and		a.cod_permiso		= d.cod_ausencia
		and		a.estado			= ''Enviada''
		and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
					in ( select convert(varchar(10),cod_empresa)++convert(varchar(10),cod_planta) 
						from usuario_sipweb where usuario = '''+convert(varchar(10),@id)+'''  )
		and		b.cod_unidad_adminis in ( '++@unidad+' )
		order by a.correlativo desc '

		EXEC (@sql)
	end
END


















GO

/****** Object:  StoredProcedure [dbo].[sp_imp_solbeneficio]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












create PROCEDURE [dbo].[sp_imp_solbeneficio]
	@tipo				int,
	@id					numeric(14)
AS
declare	@unidad			nvarchar(4000)
DECLARE @sql			nvarchar(4000)
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.correlativo as ID,
				b.nombre++' '++b.ape_paterno_trabaj++' '++b.ape_materno_trabaj	as nombre,
				d.descripcion as 'Beneficio',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso'				
		from	sipweb_solbeneficio		a,
				personal				b,
				haber					d
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.cod_empresa		= d.cod_empresa
		and		a.cod_planta		= d.cod_planta
		and		a.cod_haber			= d.cod_haber
		and		a.estado			= 'Enviada'
		and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
					in ( select convert(varchar(10),cod_empresa)++convert(varchar(10),cod_planta) 
						from usuario_sipweb where usuario = @id AND perfil_admin = 'S' )
		order by a.correlativo desc
	end
	else if @tipo = 1
	begin
		select	a.correlativo as ID,
				b.nombre++' '++b.ape_paterno_trabaj++' '++b.ape_materno_trabaj	as nombre,
				d.descripcion as 'Beneficio',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso'				
		from	sipweb_solbeneficio		a,
				personal				b,
				personal_dinamico		c,
				haber					d
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.cod_empresa		= d.cod_empresa
		and		a.cod_planta		= d.cod_planta
		and		a.cod_haber			= d.cod_haber
		and		a.estado			= 'Enviada'
		and		a.cod_empresa		= c.cod_empresa
		and		a.nro_trabajador	= c.nro_trabajador
		and		c.nombre_interno	= 'RutJefDir'
		and		c.valor_columna		= convert(varchar(10),@id)
		order by a.correlativo desc
	end
	else if @tipo = 2
	begin
		select	a.cod_empresa,
				a.cod_planta,
				a.cod_haber,
				a.observaciones,
				a.estado,
				convert(varchar(10),fecha_ingreso,103) as 'F. Ingreso',
				b.casilla_e_mail,
				b.rut_trabajador,
				a.nro_trabajador
		from	sipweb_solbeneficio		a,
				personal				b
		where	a.correlativo		= @id
		and		a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
	end
	else if @tipo = 3
	begin
		select	a.correlativo as ID,
				b.nombre++' '++b.ape_paterno_trabaj++' '++b.ape_materno_trabaj	as nombre,
				d.descripcion as 'Beneficio',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso',
				convert(varchar(10),fecha_autorizacion,103) as 'Fecha Autorizacion'					
		from	sipweb_solbeneficio		a,
				personal				b,
				haber					d
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.cod_empresa		= d.cod_empresa
		and		a.cod_planta		= d.cod_planta
		and		a.cod_haber			= d.cod_haber
		and		a.estado			= 'Aprobada'
		and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
					in ( select convert(varchar(10),cod_empresa)++convert(varchar(10),cod_planta) 
						from usuario_sipweb where usuario = @id  )
		order by a.correlativo desc
	end
	else if @tipo = 4
	begin
		select @unidad = cod_unidad_adminis from usuario_sipweb where usuario = @id AND perfil_jefe_uadm = 'S'
		if @unidad is null or @unidad = ''
		begin
			select @unidad = '-1'
		end

		SET @sql = ' select	a.correlativo as ID,
				b.nombre++'' ''++b.ape_paterno_trabaj++'' ''++b.ape_materno_trabaj	as nombre,
				d.descripcion as ''Beneficio'',
				a.estado as ''Estado'',
				convert(varchar(10),fecha_ingreso,103) as ''Fecha Ingreso''				
		from	sipweb_solbeneficio		a,
				personal				b,
				haber					d
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.cod_empresa		= d.cod_empresa
		and		a.cod_planta		= d.cod_planta
		and		a.cod_haber			= d.cod_haber
		and		a.estado			= ''Enviada''
		and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
					in ( select convert(varchar(10),cod_empresa)++convert(varchar(10),cod_planta) 
						from usuario_sipweb where usuario = '''+convert(varchar(10),@id)+'''  )
		and		b.cod_unidad_adminis in ( '++@unidad+' )
		order by a.correlativo desc'

		EXEC (@sql)
	end
END



















GO

/****** Object:  StoredProcedure [dbo].[sp_imp_sol_prog_adic]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[sp_imp_sol_prog_adic]
	@tipo				int,
	@id					varchar(14)
AS
declare	@unidad			nvarchar(4000)
DECLARE @sql			nvarchar(4000)
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.correl_compra as ID,
				b.nombre++' '++b.ape_paterno_trabaj++' '++b.ape_materno_trabaj	as nombre,
				convert(varchar(10),fecha_compra,103) as 'Fecha Solicitud',
				a.dias_progresivos as 'Dias Progresivos',
				a.dias_adicionales as 'Dias Adicionales',
				a.dias_comprados as 'Dias Total',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso'
		from	sipweb_com_adic_prog	a,
				personal				b
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.estado			= 'Enviada'
		and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
					in ( select convert(varchar(10),cod_empresa)++convert(varchar(10),cod_planta) 
						from usuario_sipweb where usuario = @id AND perfil_admin = 'S' )

		order by a.correl_compra desc
	end
	else if @tipo = 1
	begin
		select	a.correl_compra as ID,
				b.nombre++' '++b.ape_paterno_trabaj++' '++b.ape_materno_trabaj	as nombre,
				convert(varchar(10),fecha_compra,103) as 'Fecha Solicitud',
				a.dias_progresivos as 'Dias Progresivos',
				a.dias_adicionales as 'Dias Adicionales',
				a.dias_comprados as 'Dias Total',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso'
		from	sipweb_com_adic_prog	a,
				personal				b,
				personal_dinamico		c
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.estado			= 'Enviada'
		and		a.cod_empresa		= c.cod_empresa
		and		a.nro_trabajador	= c.nro_trabajador
		and		c.nombre_interno	= 'RutJefDir'
		and		c.valor_columna		= convert(varchar(10),@id)
		order by a.correl_compra desc
	end
	else if @tipo = 2
	begin
		select	a.cod_empresa,
				a.cod_planta,
				dias_adicionales,
				dias_progresivos,
				dias_comprados,
				observaciones,
				estado,
				convert(varchar(10),fecha_ingreso,103) as 'F. Ingreso',
				b.casilla_e_mail,
				b.rut_trabajador,
				a.nro_trabajador,
				convert(varchar(10),fecha_autorizacion ,103) as 'Fecha Autoriza',
				convert(varchar(10),fecha_rechazo ,103) as 'Fecha Rechazo'
		from	sipweb_com_adic_prog	a,
				personal				b
		where	a.correl_compra		= @id
		and		a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
	end
	else if @tipo = 3
	begin
		select	a.correl_compra as ID,
				b.nombre++' '++b.ape_paterno_trabaj++' '++b.ape_materno_trabaj	as nombre,
				a.dias_progresivos as 'Dias Progresivos',
				a.dias_adicionales as 'Dias Adicionales',
				a.dias_comprados as 'Dias Total',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso',
				convert(varchar(10),fecha_autorizacion,103) as 'Fecha Autorizacion'	
		from	sipweb_com_adic_prog	a,
				personal				b
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.estado			= 'Aprobada'
				and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
					in ( select convert(varchar(10),cod_empresa)++convert(varchar(10),cod_planta) 
						from usuario_sipweb where usuario = @id  )
		order by a.correl_compra desc
	end
	else if @tipo = 4
	begin

		select @unidad = cod_unidad_adminis from usuario_sipweb where usuario = @id AND perfil_jefe_uadm = 'S'
		if @unidad is null or @unidad = ''
		begin
			select @unidad = '-1'
		end
		SET @sql = ' select	a.correl_compra as ID,
				b.nombre++'' ''++b.ape_paterno_trabaj++'' ''++b.ape_materno_trabaj	as nombre,
				a.dias_progresivos as ''Dias Progresivos'',
				a.dias_adicionales as ''Dias Adicionales'',
				a.dias_comprados as ''Dias Total'',
				a.estado as ''Estado'',
				convert(varchar(10),fecha_ingreso,103) as ''Fecha Ingreso''
		from	sipweb_com_adic_prog	a,
				personal				b
		where	a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.estado			= ''Enviada''
		and		convert(varchar(10),a.cod_empresa)++convert(varchar(10),a.cod_planta)
					in ( select convert(varchar(10),cod_empresa)++convert(varchar(10),cod_planta) 
						from usuario_sipweb where usuario = '''+convert(varchar(10),@id)+'''  )
		and		b.cod_unidad_adminis in ( '++@unidad+' )
		order by a.correl_compra desc '

		EXEC (@sql)
	end

END














GO

/****** Object:  StoredProcedure [dbo].[sp_imp_ant_personal_upd]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_imp_ant_personal_upd]
	@cod_empresa		int,
	@cod_planta			int,
	@scampo_ins			varchar(4000),
	@scampo_upd			varchar(8000)
AS
DECLARE @sql varchar(8000)
DECLARE @sql2 varchar(4000)
BEGIN TRANSACTION
	
		select @scampo_ins = left(@scampo_ins,len(@scampo_ins)-1)
		select @scampo_upd = left(@scampo_upd,len(@scampo_upd)-1)

		SET @sql = 'update sipweb_personal set '++@scampo_upd
	    SET @sql2 = 'from personal b
					where sipweb_personal.cod_empresa		= '++convert(varchar,@cod_empresa)++' 
					and	  sipweb_personal.cod_planta		= '++convert(varchar,@cod_planta)++'
					and	  sipweb_personal.cod_empresa		= b.cod_empresa
					and	  sipweb_personal.cod_planta		= b.cod_planta
					and	  sipweb_personal.nro_trabajador	= b.nro_trabajador '

		EXEC (@sql+' '+@sql2)

		SET @sql = 'insert into sipweb_personal ( cod_empresa, cod_planta, nro_trabajador, dv_trabajador,
								rut_trabajador, dv_rut_trabajador, cod_vigen_trabajad, '++@scampo_ins++' ) '
	    SET @sql2 = 'select cod_empresa, cod_planta, nro_trabajador, dv_trabajador,
							rut_trabajador, dv_rut_trabajador, cod_vigen_trabajad, '++@scampo_ins++' 
					from	personal 
					where	cod_empresa		= '++convert(varchar,@cod_empresa)++' 
					and		cod_planta		= '++convert(varchar,@cod_planta)++'
					and		nro_trabajador not in 
							( select nro_trabajador
							  from sipweb_personal
							  where cod_empresa		= '++convert(varchar,@cod_empresa)++' 
							   and	cod_planta		= '++convert(varchar,@cod_planta)++' )'

		EXEC (@sql+@sql2)


		delete from sipweb_carrera_laboral
		where cod_empresa = @cod_empresa
		and	cod_planta = @cod_planta

		insert into sipweb_carrera_laboral ( cod_empresa, nro_trabajador, dv_trabajador, tipo_modif, fecha_modif, codigo_nuevo,
		descripcion_nueva, hora_modif, usuario_modif, cod_planta, fec_ini_Cargo, fec_fin_Cargo ) 
		select cod_empresa, nro_trabajador, dv_trabajador, tipo_modif, fecha_modif, codigo_nuevo,
		descripcion_nueva, hora_modif, usuario_modif, cod_planta, fec_ini_Cargo, fec_fin_Cargo
		from carrera_laboral
		where cod_empresa = @cod_empresa
		and	cod_planta = @cod_planta
		and tipo_modif = 'CT'

COMMIT TRANSACTION
















GO

/****** Object:  StoredProcedure [dbo].[sp_imp_ant_personal]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_imp_ant_personal]
	@tipo				int,
	@nro_trabajador		int
AS
BEGIN
	if @tipo = 0
	begin
		select	distinct a.cod_empresa,
				b.sigla_empresa,
				a.cod_planta,
				c.planta,
				1 as Importar
		from	usuario_sipweb	a,
				empresa			b,
				planta			c
		where	a.cod_empresa	= b.cod_empresa
		and		a.cod_empresa	= c.cod_empresa
		and		a.cod_planta	= c.cod_planta
		and		(a.perfil_admin	= 'S' or perfil_jefeportal	= 'S' or perfil_jefe_uadm	= 'S')
		and		a.usuario		= @nro_trabajador
	end
	else if @tipo = 1
	begin
		select	a.name as campo, 1 as Importar
		from	syscolumns	a,
				sysobjects	b
		where	b.name = 'Personal'
		and		a.id	= b.id
		and		a.name not in ( 'cod_empresa', 'cod_planta', 'nro_trabajador', 'dv_trabajador',
		'rut_trabajador', 'dv_rut_trabajador', 'cod_vigen_trabajad' )
		order by colid

	end
END

















GO

/****** Object:  StoredProcedure [dbo].[sp_hsthaberes]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_hsthaberes]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int,
	@ano				int,
	@mes				int,
	@tipo				int	
AS
BEGIN
	SET NOCOUNT ON;

	if @tipo = 0
	begin
		SELECT DISTINCT ANO_PERIODO 
		FROM	liquidacio_haberes
		WHERE	COD_EMPRESA = @cod_empresa	
		AND		COD_PLANTA = @cod_planta
		AND		NRO_TRABAJADOR = @nro_trabajador
		order by ANO_PERIODO desc
	end
	else if @tipo = 1
	begin
		SELECT 	a.ANO_PERIODO,
				a.MES_PERIODO,
				case a.MES_PERIODO 
					when 1 then 'Enero'
					when 2 then 'Febrero'
					when 3 then 'Marzo'
					when 4 then 'Abril'
					when 5 then 'Mayo'
					when 6 then 'Junio'
					when 7 then 'Julio'
					when 8 then 'Agosto'
					when 9 then 'Septiembre'
					when 10 then 'Octubre'
					when 11 then 'Noviembre'
					when 12 then 'Diciembre'
				end as MES,
				sum(a.valor_transac_peso) as total
		FROM 	liquidacio_haberes a, 
				sipweb_liq_publicadas B,
				HABER h,
				sipweb_conf_sistema	z
		WHERE 	a.ANO_PERIODO		= @ano
		AND 	a.NRO_TRABAJADOR	= @nro_trabajador
		AND 	a.COD_EMPRESA		= @cod_empresa
		AND 	a.COD_PLANTA		= @cod_planta
	--	AND		( a.COD_TIPO_PROCESO  not like 'LQ%' or a.COD_TIPO_PROCESO = z.PROCESOLIQH)
		AND		a.COD_TIPO_PROCESO  = z.PROCESOLIQH
		AND 	a.COD_EMPRESA 		= b.COD_EMPRESA 
		AND 	a.COD_PLANTA 		= b.COD_PLANTA 
		AND 	a.ANO_PERIODO 		= b.ANO_PERIODO 
		AND 	a.MES_PERIODO 		= b.MES_PERIODO
		and		a.COD_HABER			= H.COD_HABER 
		AND		a.COD_EMPRESA		= H.COD_EMPRESA 
		AND		a.COD_PLANTA		= H.COD_PLANTA
		and		H.indic_papeleta = 'S'
		GROUP BY a.ANO_PERIODO, a.MES_PERIODO
	end
	else if @tipo = 2
	begin
		SELECT 	sum(a.valor_transac_peso) as total
		FROM 	liquidacio_haberes a, sipweb_liq_publicadas B,
				HABER h,
				sipweb_conf_sistema	z
		WHERE 	a.ANO_PERIODO		= @ano
		AND 	a.NRO_TRABAJADOR	= @nro_trabajador
		AND 	a.COD_EMPRESA		= @cod_empresa
		AND 	a.COD_PLANTA		= @cod_planta
--		AND		( a.COD_TIPO_PROCESO  not like 'LQ%' or a.COD_TIPO_PROCESO = z.PROCESOLIQH)
		and		a.COD_TIPO_PROCESO = z.PROCESOLIQH
		AND 	a.COD_EMPRESA 		= b.COD_EMPRESA 
		AND 	a.COD_PLANTA 		= b.COD_PLANTA 
		AND 	a.ANO_PERIODO 		= b.ANO_PERIODO 
		AND 	a.MES_PERIODO 		= b.MES_PERIODO
		and		a.COD_HABER			= H.COD_HABER 
		AND		a.COD_EMPRESA		= H.COD_EMPRESA 
		AND		a.COD_PLANTA		= H.COD_PLANTA
		and		H.indic_papeleta = 'S'
	end
	else if @tipo = 3
	begin
		SELECT	H.COD_HABER, 
				H.DESCRIPCION, 
				SUM(L.VALOR_TRANSAC_PESO) as total
		FROM liquidacio_haberes L INNER JOIN HABER H  ON L.COD_HABER = H.COD_HABER 
					AND L.COD_EMPRESA = H.COD_EMPRESA AND L.COD_PLANTA = H.COD_PLANTA,
				sipweb_conf_sistema	z
		WHERE L.ANO_PERIODO  = @ano
		AND MES_PERIODO 	 = @mes
		AND NRO_TRABAJADOR   = @nro_trabajador
--		AND	( COD_TIPO_PROCESO  not like 'LQ%' or COD_TIPO_PROCESO = z.PROCESOLIQH)
		AND	COD_TIPO_PROCESO = z.PROCESOLIQH
		AND L.COD_EMPRESA 	 = @cod_empresa
		AND L.COD_PLANTA 	 = @cod_planta
		and	H.indic_papeleta = 'S'
		GROUP BY H.COD_HABER, H.DESCRIPCION
		ORDER BY H.COD_HABER, H.DESCRIPCION
	end
	else if @tipo = 4
	begin
		SELECT SUM(L.VALOR_TRANSAC_PESO) as total
		FROM liquidacio_haberes L INNER JOIN HABER H  ON L.COD_HABER = H.COD_HABER 
					AND L.COD_EMPRESA = H.COD_EMPRESA AND L.COD_PLANTA = H.COD_PLANTA,
				sipweb_conf_sistema	z
		WHERE L.ANO_PERIODO  = @ano
		AND MES_PERIODO 	 = @mes
		AND NRO_TRABAJADOR   = @nro_trabajador
	--	AND	( COD_TIPO_PROCESO  not like 'LQ%' or COD_TIPO_PROCESO = z.PROCESOLIQH)
		AND	COD_TIPO_PROCESO = z.PROCESOLIQH
		AND L.COD_EMPRESA 	 = @cod_empresa
		AND L.COD_PLANTA 	 = @cod_planta
		and	H.indic_papeleta = 'S'
	end
END


















GO

/****** Object:  StoredProcedure [dbo].[sp_hstdescuentos]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_hstdescuentos]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int,
	@ano				int,
	@mes				int,
	@tipo				int	
AS
BEGIN
	SET NOCOUNT ON;

	if @tipo = 0
	begin
		SELECT DISTINCT ANO_PERIODO 
		FROM	liquida_descuentos
		WHERE	COD_EMPRESA = @cod_empresa	
		AND		COD_PLANTA = @cod_planta
		AND		NRO_TRABAJADOR = @nro_trabajador
		order by ANO_PERIODO desc
	end
	else if @tipo = 1
	begin
		SELECT 	a.ANO_PERIODO,
				a.MES_PERIODO,
				case a.MES_PERIODO 
					when 1 then 'Enero'
					when 2 then 'Febrero'
					when 3 then 'Marzo'
					when 4 then 'Abril'
					when 5 then 'Mayo'
					when 6 then 'Junio'
					when 7 then 'Julio'
					when 8 then 'Agosto'
					when 9 then 'Septiembre'
					when 10 then 'Octubre'
					when 11 then 'Noviembre'
					when 12 then 'Diciembre'
				end as MES,
				sum(a.valor_transac_peso) as total
		FROM 	liquida_descuentos a, sipweb_liq_publicadas B,
				sipweb_conf_sistema	z
		WHERE 	a.ANO_PERIODO		= @ano
		AND 	a.NRO_TRABAJADOR	= @nro_trabajador
		AND 	a.COD_EMPRESA		= @cod_empresa
		AND 	a.COD_PLANTA		= @cod_planta
	--	AND		a.COD_TIPO_PROCESO = 'LQ'
		AND		a.COD_TIPO_PROCESO  = z.PROCESOLIQD
		AND 	a.COD_EMPRESA 		= b.COD_EMPRESA 
		AND 	a.COD_PLANTA 		= b.COD_PLANTA 
		AND 	a.ANO_PERIODO 		= b.ANO_PERIODO 
		AND 	a.MES_PERIODO 		= b.MES_PERIODO
		GROUP BY a.ANO_PERIODO, a.MES_PERIODO
	end
	else if @tipo = 2
	begin
		SELECT 	sum(a.valor_transac_peso) as total
		FROM 	liquida_descuentos a, sipweb_liq_publicadas B,
				sipweb_conf_sistema	z
		WHERE 	a.ANO_PERIODO		= @ano
		AND 	a.NRO_TRABAJADOR	= @nro_trabajador
		AND 	a.COD_EMPRESA		= @cod_empresa
		AND 	a.COD_PLANTA		= @cod_planta
	--	AND		a.COD_TIPO_PROCESO = 'LQ'
		and		a.COD_TIPO_PROCESO = z.PROCESOLIQD
		AND 	a.COD_EMPRESA 		= b.COD_EMPRESA 
		AND 	a.COD_PLANTA 		= b.COD_PLANTA 
		AND 	a.ANO_PERIODO 		= b.ANO_PERIODO 
		AND 	a.MES_PERIODO 		= b.MES_PERIODO
	end
	else if @tipo = 3
	begin
		SELECT	H.COD_DESCUENTO, 
				H.DESCRIPCION, 
				case H.APLICA_CTA_CTE
					when 'S' then 'Cuotas'
					else 'Fijo'
				end as Tipo_Descuento,
				(Select	convert(varchar,numero_cuota)++' de '++convert(varchar,total_cuotas_ptmo)
					from	cta_cte_trabajador	a,
							estado_cuota		b
					where	a.nro_trabajador	= @nro_trabajador
					and		a.cod_empresa		= b.cod_empresa
					and		a.cod_planta		= b.cod_planta
					and		a.nro_doc_cta_cte	= b.nro_doc_cta_cte
					and		a.cod_descuento		= H.COD_DESCUENTO
					and		b.saldo_cuota_proces = 0 
					and		(ano_aplicacion * 100 + mes_aplic_prog_cuo ) = ( @ano * 100 + @mes) ) as Cuota,
				SUM(L.VALOR_TRANSAC_PESO) as total
		FROM LIQUIDA_DESCUENTOS L INNER JOIN DESCUENTO H  ON L.COD_DESCUENTO = H.COD_DESCUENTO 
					AND L.COD_EMPRESA = H.COD_EMPRESA AND L.COD_PLANTA = H.COD_PLANTA,
				sipweb_conf_sistema	z
		WHERE L.ANO_PERIODO  = @ano
		AND MES_PERIODO 	 = @mes
		AND NRO_TRABAJADOR   = @nro_trabajador
	--	AND COD_TIPO_PROCESO = 'LQ'
		AND	COD_TIPO_PROCESO = z.PROCESOLIQD
		AND L.COD_EMPRESA 	 = @cod_empresa
		AND L.COD_PLANTA 	 = @cod_planta
		GROUP BY H.COD_DESCUENTO, H.DESCRIPCION, H.APLICA_CTA_CTE
		ORDER BY H.DESCRIPCION
	end
	else if @tipo = 4
	begin
		SELECT SUM(L.VALOR_TRANSAC_PESO) as total
		FROM LIQUIDA_DESCUENTOS L INNER JOIN DESCUENTO H  ON L.COD_DESCUENTO = H.COD_DESCUENTO 
					AND L.COD_EMPRESA = H.COD_EMPRESA AND L.COD_PLANTA = H.COD_PLANTA,
				sipweb_conf_sistema	z
		WHERE L.ANO_PERIODO  = @ano
		AND MES_PERIODO 	 = @mes
		AND NRO_TRABAJADOR   = @nro_trabajador
	--	AND COD_TIPO_PROCESO = 'LQ'
		AND	COD_TIPO_PROCESO = z.PROCESOLIQD
		AND L.COD_EMPRESA 	 = @cod_empresa
		AND L.COD_PLANTA 	 = @cod_planta
	end
END

















GO

/****** Object:  StoredProcedure [dbo].[sp_funferiados]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_funferiados]
	@cod_empresa		int,
	@cod_planta			int,
	@nAnoPeriodo		int,
	@nMesPeriodo		int,
	@tipo				int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	flg_fer_30_dias 
		from	parametro
		where	cod_empresa	= @cod_empresa
		and		cod_planta	= @cod_planta
		and		ano			= @nAnoPeriodo
		and		nro_mes		= @nMesPeriodo
	end
	else if @tipo >= 1
	begin
	
	  select SUM(dia_feriado)
	  from (
		select  count(dia_feriado) as dia_feriado
		from	dias_feriados
		where	( ano_feriado * 10000 + mes_feriado * 100 + dia_feriado) >= @nAnoPeriodo 
		and		( ano_feriado  * 10000 + mes_feriado * 100 + dia_feriado) <= @nMesPeriodo 
		and	( ciudad_feriado = '' or ciudad_feriado is null )
		union all
		select  	count(distinct dia_feriado)  as dia_feriado
		from 	personal			a,
			sucursal			b,
			comuna			c,
			dias_feriados_local		d
		where	a.cod_empresa	= b.cod_empresa
		and	a.cod_planta	= b.cod_planta
		and	a.cod_sucursal	= b.cod_sucursal
		and	b.cod_comuna	= c.cod_comuna
		and	a.cod_empresa	= @cod_empresa
		and	a.cod_planta	= @cod_planta
		and	a.nro_trabajador    = @tipo
		and	d.ciudad_feriado     = c.cod_ciudad
		and	( ano_feriado * 10000 + mes_feriado * 100 + dia_feriado) >= @nAnoPeriodo 
		and	( ano_feriado  * 10000 + mes_feriado * 100 + dia_feriado) <= @nMesPeriodo ) a
		
	end
END















GO

/****** Object:  StoredProcedure [dbo].[sp_fichaexterno]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_fichaexterno]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int
AS
BEGIN
	SET NOCOUNT ON;

	select	a.nombre_usuario,
			'',
			'',
			ltrim(rtrim(a.usuario)),
			a.dv_trabajador, 
			'', 
			'Externo', 
			a.cod_unidad_adminis, 
			a.cod_unidad_adminis, 
			a.nro_trabajador,
			'',
			a.dv_trabajador
	from	usuario_sipweb	a				
	where	a.nro_trabajador = @nro_trabajador
	and		a.cod_empresa = @cod_empresa
	and		a.cod_planta = @cod_planta
	
END

















GO

/****** Object:  StoredProcedure [dbo].[sp_ficha_sinemp]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













create PROCEDURE [dbo].[sp_ficha_sinemp]
	@rut_trabajador		int,
	@nro_trabajador		int
AS
BEGIN
	SET NOCOUNT ON;

	select	a.nombre, a.ape_paterno_trabaj, a.ape_materno_trabaj, a.rut_trabajador, a.dv_rut_trabajador, 
			a.cod_cargo, c.cargo_trabajador, a.cod_unidad_adminis, b.unidad_administrat, a.nro_trabajador,
			b.cod_ficha_jefe, a.dv_trabajador
	from	personal a  left outer join unidad_administrat b on a.cod_empresa = b.cod_empresa and a.cod_unidad_adminis = b.cod_unidad_adminis
						left outer join cargo_trabajador c on a.cod_empresa = c.cod_empresa and a.cod_cargo = c.cod_cargo 
						left outer join foto_trabajador d on a.cod_empresa = d.cod_empresa and a.nro_trabajador = d.nro_trabajador
	where	a.rut_trabajador = @rut_trabajador
	and		a.nro_trabajador = @nro_trabajador
	and		a.cod_vigen_trabajad = 'S'

END

















GO

/****** Object:  StoredProcedure [dbo].[sp_ficha]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_ficha]
	@rut_trabajador		int,
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int
AS
declare @existe int
BEGIN
	SET NOCOUNT ON;
	
	set @existe = ( select count(*) from sipweb_personal 
				where	rut_trabajador = @rut_trabajador
				and		nro_trabajador = @nro_trabajador
				and		cod_empresa = @cod_empresa
				and		cod_planta = @cod_planta)
	
	if (@existe > 0 ) 
	begin
		select	a.nombre, a.ape_paterno_trabaj, a.ape_materno_trabaj, a.rut_trabajador, a.dv_rut_trabajador, 
				a.cod_cargo, left(c.cargo_trabajador,60), a.cod_unidad_adminis, left(b.unidad_administrat,60), a.nro_trabajador,
				b.cod_ficha_jefe, a.dv_trabajador, a.casilla_e_mail
		from	sipweb_personal a  left outer join unidad_administrat b on a.cod_empresa = b.cod_empresa and a.cod_unidad_adminis = b.cod_unidad_adminis
							left outer join cargo_trabajador c on a.cod_empresa = c.cod_empresa and a.cod_cargo = c.cod_cargo 
							left outer join foto_trabajador d on a.cod_empresa = d.cod_empresa and a.nro_trabajador = d.nro_trabajador
		where	a.rut_trabajador = @rut_trabajador
		and		a.nro_trabajador = @nro_trabajador
		and		a.cod_empresa = @cod_empresa
		and		a.cod_planta = @cod_planta
	
	end
	else
	begin	
		select	a.nombre, a.ape_paterno_trabaj, a.ape_materno_trabaj, a.rut_trabajador, a.dv_rut_trabajador, 
				a.cod_cargo, left(c.cargo_trabajador,60), a.cod_unidad_adminis, left(b.unidad_administrat,60), a.nro_trabajador,
				b.cod_ficha_jefe, a.dv_trabajador, a.casilla_e_mail
		from	personal a  left outer join unidad_administrat b on a.cod_empresa = b.cod_empresa and a.cod_unidad_adminis = b.cod_unidad_adminis
							left outer join cargo_trabajador c on a.cod_empresa = c.cod_empresa and a.cod_cargo = c.cod_cargo 
							left outer join foto_trabajador d on a.cod_empresa = d.cod_empresa and a.nro_trabajador = d.nro_trabajador
		where	a.rut_trabajador = @rut_trabajador
		and		a.nro_trabajador = @nro_trabajador
		and		a.cod_empresa = @cod_empresa
		and		a.cod_planta = @cod_planta
	end
	
END
















GO

/****** Object:  StoredProcedure [dbo].[sp_familia]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_familia]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int,
	@tipo				int
AS
BEGIN
	SET NOCOUNT ON;

	if @tipo = 0
	begin
		select	a.nombre_familiar++' '++ape_paterno_famili++' '++ape_materno_famili as nombre, 
				convert(varchar(10),a.nro_rut_familiar)++'-'++convert(varchar(10),dv_rut_familiar) as rut,
				convert(varchar(10),a.fec_nacim_familiar,103) as fec_nacim_familiar,
				convert(varchar(10),DATEDIFF(month, a.fec_nacim_familiar, getdate())/12) as edad,
				a.es_carga,
				a.tipo_carga_familia,
				convert(varchar(10),fec_ini_vigencia,103) as fec_ini_vigencia,
				convert(varchar(10),fec_fin_vigencia,103) as fec_fin_vigencia,
				parentesco as cod_parentesco,
				a.cod_sexo_familiar,
				b.nivel_escolar,
				a.cod_actividad,
				carga_seg_vida,
				porc_seg_vida
		from	NUCLEO_FAMILIAR		a left outer join nivel_escolar b
									on a.cod_nivel_escolar	= b.cod_nivel_escolar,
				parentesco			c
		where	a.cod_parentesco	= c.cod_parentesco
		and		a.nro_trabajador	= @nro_trabajador
		and		a.cod_empresa		= @cod_empresa	
	end
	else if @tipo = 1
	begin
		select  afp as cod_afp,
				isapre as cod_isapre
		from	sipweb_personal a left outer join afp b on a.cod_afp = b.cod_afp 
						left outer join isapre c on a.cod_isapre = c.cod_isapre 						
		where	nro_trabajador = @nro_trabajador
		and		cod_empresa = @cod_empresa
		and		cod_planta = @cod_planta
	end

END

















GO

/****** Object:  StoredProcedure [dbo].[sp_eval_reportes_hst_ju]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_eval_reportes_hst_ju]
	@tipo				int,
	@cod_encuesta		varchar(50),
	@swhere				varchar(900)
AS
DECLARE @sql nvarchar(4000)
BEGIN
	SET NOCOUNT ON
	select @swhere = replace(@swhere, '&apos;', '''')
	if @tipo = 0
	  begin
			SET @sql = 'select	distinct convert(varchar(10),a.rut_trabajador)++''-''++a.dv_rut_trabajador as Rut, 
					a.ape_paterno_trabaj++'' ''++a.ape_materno_trabaj++'' ''++a.nombre as Nombre,
					a.rut_trabajador
	        from	personal			a,
					personal_dinamico	b
		    where   a.cod_vigen_trabajad	= ''S''
			and		b.nombre_interno		= ''RutJefDir''
			and		a.rut_trabajador		= b.valor_columna
			' + @swhere

	 end
	 else if @tipo = 1
	 begin
			SET @sql = 'select	a.ano_proceso,
					convert(varchar(10),a.fecha_evaluacion,103) as fecha_evaluacion,	
					a.desc_eval,
					a.cod_eval,
					a.version_eval,
					convert(varchar(10),a.rut_evaluado)++''-''++h.dv_rut_trabajador as Rut,
					nom_evaluado,
					h.cod_vigen_trabajad,
					puntaje_obtenido,
					puntaje_maximo,
					convert(varchar(10),a.cod_empresa)++'':''++f.sigla_empresa,
					convert(varchar(10),a.cod_planta)++'':''++c.planta,
					convert(varchar(10),a.unidad_evaluado)++'':''++d.unidad_administrat,
					convert(varchar(10),a.sucursal_evaluado)++'':''++e.sucursal,
					convert(varchar(10),a.area_evaluado)++'':''++case when g.area_perten is null then '''' else g.area_perten end,
					convert(varchar(10),a.ccosto_evaluado)++'':''++b.centro_costo
				from	sipweb_eval_trab			a left outer join area_perten g 
										on 	a.cod_empresa		= g.cod_empresa
										and	a.area_evaluado		= g.cod_area_perten,
						centro_costo		b,
						planta			    c,
						unidad_administrat  d,
						sucursal            e,
						empresa				f,
						personal			h,
						sipweb_eval_publ	i
				where	a.cod_empresa		= b.cod_empresa
				and		a.ccosto_evaluado	= b.cod_centro_costo
				and		a.cod_empresa		= c.cod_empresa
				and		a.cod_planta		= c.cod_planta
				and		a.cod_empresa		= d.cod_empresa
				and		a.unidad_evaluado = d.cod_unidad_adminis
				and		a.cod_empresa		= e.cod_empresa
				and		a.cod_planta		= e.cod_planta
				and		a.sucursal_evaluado	= e.cod_sucursal
				and		a.cod_empresa		= f.cod_empresa
				and		a.cod_empresa		= h.cod_empresa
				and		a.cod_planta		= h.cod_planta
				and		a.nro_evaluado		= h.nro_trabajador
				and		a.rut_evaluado		= h.rut_trabajador
				and		a.cod_encuesta		= i.cod_encuesta
				and		i.estado			= ''Cerrada''
				and		a.tipo_eval			= ''Trab''
			' + @swhere + '
			order by a.ano_proceso, fecha_evaluacion'
	 end

			EXEC (@sql)
END















GO

/****** Object:  StoredProcedure [dbo].[sp_eval_reportes_hst_emp]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_eval_reportes_hst_emp]
	@tipo				int,
	@cod_encuesta		varchar(50),
	@swhere				varchar(900)
AS
DECLARE @sql nvarchar(4000)
BEGIN
	SET NOCOUNT ON
	select @swhere = replace(@swhere, '&apos;', '''')
	if @tipo = 0
	 begin
			SET @sql = 'select	a.ano_proceso,
					convert(varchar(10),fecha_desde,103)++'' - ''++convert(varchar(10),fecha_hasta,103) as periodo,
					a.desc_eval,
					a.cod_eval,
					a.version_eval,
					a.cod_empresa,
					f.sigla_empresa,
					(sum(puntaje_obtenido)/count(*)),
					puntaje_maximo
				from	sipweb_eval_trab			a left outer join area_perten g 
										on 	a.cod_empresa		= g.cod_empresa
										and	a.area_evaluado		= g.cod_area_perten,
						centro_costo		b,
						planta			    c,
						unidad_administrat  d,
						sucursal            e,
						empresa				f,
						personal			h,
						sipweb_eval_publ	i
				where	a.cod_empresa		= b.cod_empresa
				and		a.ccosto_evaluado	= b.cod_centro_costo
				and		a.cod_empresa		= c.cod_empresa
				and		a.cod_planta		= c.cod_planta
				and		a.cod_empresa		= d.cod_empresa
				and		a.unidad_evaluado = d.cod_unidad_adminis
				and		a.cod_empresa		= e.cod_empresa
				and		a.cod_planta		= e.cod_planta
				and		a.sucursal_evaluado	= e.cod_sucursal
				and		a.cod_empresa		= f.cod_empresa
				and		a.cod_empresa		= h.cod_empresa
				and		a.cod_planta		= h.cod_planta
				and		a.nro_evaluado		= h.nro_trabajador
				and		a.rut_evaluado		= h.rut_trabajador
				and		a.cod_encuesta		= i.cod_encuesta
				and		i.estado			= ''Cerrada''
			' + @swhere + '
			group by a.ano_proceso,
					fecha_desde, 
					fecha_hasta,
					a.desc_eval,
					a.cod_eval,
					a.version_eval,
					a.cod_empresa,
					f.sigla_empresa,
					puntaje_maximo
			order by a.ano_proceso'
	 end

			EXEC (@sql)
END















GO

/****** Object:  StoredProcedure [dbo].[sp_eval_reportes_hst_cons]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_eval_reportes_hst_cons]
	@tipo				int,
	@ruttrab			int,
	@cod_encuesta		varchar(50),
	@swhere				varchar(900)
AS
DECLARE @sql nvarchar(4000)
declare @nota_crit_s decimal(12,4)
declare @tipoevaluacion varchar(30)
BEGIN
	select @swhere = replace(@swhere, '&apos;', '''')
	SET NOCOUNT ON
	 if @tipo = 0
	  begin
			select	desc_eval, ano_proceso, cod_eval, version_eval
	        from	sipweb_hst_eval
		    where   cod_encuesta = @cod_encuesta
	 end
	 else if @tipo = 1
	 begin
			SET @sql = 'select	a.id_item,
							convert(varchar(10),a.id_item)++'':''++a.desc_item as desc_item
					from	sipweb_hst_eval_item a
					where	cod_encuesta = '''+@cod_encuesta+'''
					' + @swhere + ' order by id_item'
			EXEC (@sql)
	 end
	 else if @tipo = 2
	 begin
			DECLARE Cursor01 CURSOR FOR 
				select	max(nota_crit_s)
				from	sipweb_hst_eval_crit
				where	cod_encuesta = @cod_encuesta


			OPEN Cursor01

			FETCH NEXT FROM Cursor01 
			INTO @nota_crit_s

			CLOSE Cursor01
			DEALLOCATE Cursor01
			
			DECLARE Cursor01 CURSOR FOR 
				select	tipoevaluacion
				from	sipweb_hst_eval
				where	cod_encuesta = @cod_encuesta


			OPEN Cursor01

			FETCH NEXT FROM Cursor01 
			INTO @tipoevaluacion

			CLOSE Cursor01
			DEALLOCATE Cursor01
			
			if ( @tipoevaluacion = 'Notas' )
			begin
				SET @sql = 'select	convert(varchar(10),a.rut_evaluado)++''-''++h.dv_rut_trabajador as Rut,
								nom_evaluado,
								convert(varchar(10),a.cod_planta)++'':''++c.planta,
								convert(varchar(10),a.unidad_evaluado)++'':''++d.unidad_administrat,
								convert(varchar(10),a.sucursal_evaluado)++'':''++e.sucursal,
								convert(varchar(10),a.area_evaluado)++'':''++case when g.area_perten is null then '''' else g.area_perten end,
								convert(varchar(10),a.ccosto_evaluado)++'':''++b.centro_costo,
								round((avg(z.nota_recibi)),3),
								'+convert(varchar(12),@nota_crit_s)+'
				from	sipweb_eval_trab			a left outer join area_perten g 
										on 	a.cod_empresa		= g.cod_empresa
										and	a.area_evaluado		= g.cod_area_perten,
						centro_costo			b,
						planta					c,
						unidad_administrat		d,
						sucursal				e,
						personal				h,
						sipweb_eval_trab_item	z,
						sipweb_hst_eval_item	zz
				where	a.cod_empresa		= b.cod_empresa
				and		a.ccosto_evaluado	= b.cod_centro_costo
				and		a.cod_empresa		= c.cod_empresa
				and		a.cod_planta		= c.cod_planta
				and		a.cod_empresa		= d.cod_empresa
				and		a.unidad_evaluado = d.cod_unidad_adminis
				and		a.cod_empresa		= e.cod_empresa
				and		a.cod_planta		= e.cod_planta
				and		a.sucursal_evaluado	= e.cod_sucursal
				and		a.cod_empresa		= h.cod_empresa
				and		a.cod_planta		= h.cod_planta
				and		a.nro_evaluado		= h.nro_trabajador
				and		a.rut_evaluado		= h.rut_trabajador
				and		a.cod_encuesta		= z.cod_encuesta
				and		a.cod_empresa		= z.cod_empresa
				and		a.cod_planta		= z.cod_planta
				and		a.nro_evaluador		= z.nro_evaluador
				and		a.nro_evaluado		= z.nro_evaluado
				and		z.cod_encuesta		= zz.cod_encuesta
				and		z.id_item			= zz.id_item
				and		a.cod_encuesta		= '''+@cod_encuesta+'''
			' + @swhere + '
			group by a.rut_evaluado, h.dv_rut_trabajador, nom_evaluado,
					a.cod_planta,
					c.planta,					
					a.unidad_evaluado,
					d.unidad_administrat,
					a.sucursal_evaluado,
					e.sucursal,
					a.area_evaluado,
					g.area_perten,
					a.ccosto_evaluado,
					b.centro_costo
			order by nom_evaluado '
			EXEC (@sql)
		  end
		else
		begin
			SET @sql = 'select	convert(varchar(10),a.rut_evaluado)++''-''++h.dv_rut_trabajador as Rut,
								nom_evaluado,
								convert(varchar(10),a.cod_planta)++'':''++c.planta,
								convert(varchar(10),a.unidad_evaluado)++'':''++d.unidad_administrat,
								convert(varchar(10),a.sucursal_evaluado)++'':''++e.sucursal,
								convert(varchar(10),a.area_evaluado)++'':''++case when g.area_perten is null then '''' else g.area_perten end,
								convert(varchar(10),a.ccosto_evaluado)++'':''++b.centro_costo,
								round((sum(z.nota_recibi*(convert(decimal,porc_calc))/100)),3),
								round((sum('+convert(varchar(12),@nota_crit_s)+'*(convert(decimal,porc_calc))/100)),3)
				from	sipweb_eval_trab			a left outer join area_perten g 
										on 	a.cod_empresa		= g.cod_empresa
										and	a.area_evaluado		= g.cod_area_perten,
						centro_costo			b,
						planta					c,
						unidad_administrat		d,
						sucursal				e,
						personal				h,
						sipweb_eval_trab_item	z,
						sipweb_hst_eval_item	zz
				where	a.cod_empresa		= b.cod_empresa
				and		a.ccosto_evaluado	= b.cod_centro_costo
				and		a.cod_empresa		= c.cod_empresa
				and		a.cod_planta		= c.cod_planta
				and		a.cod_empresa		= d.cod_empresa
				and		a.unidad_evaluado = d.cod_unidad_adminis
				and		a.cod_empresa		= e.cod_empresa
				and		a.cod_planta		= e.cod_planta
				and		a.sucursal_evaluado	= e.cod_sucursal
				and		a.cod_empresa		= h.cod_empresa
				and		a.cod_planta		= h.cod_planta
				and		a.nro_evaluado		= h.nro_trabajador
				and		a.rut_evaluado		= h.rut_trabajador
				and		a.cod_encuesta		= z.cod_encuesta
				and		a.cod_empresa		= z.cod_empresa
				and		a.cod_planta		= z.cod_planta
				and		a.nro_evaluador		= z.nro_evaluador
				and		a.nro_evaluado		= z.nro_evaluado
				and		z.cod_encuesta		= zz.cod_encuesta
				and		z.id_item			= zz.id_item
				and		a.cod_encuesta		= '''+@cod_encuesta+'''
			' + @swhere + '
			group by a.rut_evaluado, h.dv_rut_trabajador, nom_evaluado,
					a.cod_planta,
					c.planta,					
					a.unidad_evaluado,
					d.unidad_administrat,
					a.sucursal_evaluado,
					e.sucursal,
					a.area_evaluado,
					g.area_perten,
					a.ccosto_evaluado,
					b.centro_costo
			order by nom_evaluado '
			EXEC (@sql)
		end
		end
END
















GO

/****** Object:  StoredProcedure [dbo].[sp_eval_reportes_hst]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_eval_reportes_hst]
	@tipo				int,
	@ruttrab			int,
	@cod_encuesta		varchar(50)
AS
BEGIN
	SET NOCOUNT ON
	  if @tipo = 0
	  begin
			select	convert(varchar(10),a.rut_trabajador)++'-'++a.dv_rut_trabajador as Rut, 
					a.ape_paterno_trabaj++' '++a.ape_materno_trabaj++' '++a.nombre as Nombre
	        from	personal a
		    where   rut_trabajador		= @ruttrab
			and		cod_vigen_trabajad	= 'S'
	 end
	 else if @tipo = 1
	 begin
		if ( @cod_encuesta != 'Todas') 
		begin
			select	a.ano_proceso,
					max(convert(varchar(10),a.fecha_evaluacion,103)) as fecha_evaluacion,	
					a.desc_eval,
					a.cod_eval,
					a.version_eval,
					round(sum(puntaje_obtenido)/count(*),2),
					puntaje_maximo,
					convert(varchar(10),a.cod_empresa)++':'++f.sigla_empresa,
					convert(varchar(10),a.cod_planta)++':'++c.planta,
					convert(varchar(10),a.unidad_evaluado)++':'++d.unidad_administrat,
					convert(varchar(10),a.sucursal_evaluado)++':'++e.sucursal,
					convert(varchar(10),a.area_evaluado)++':'++case when g.area_perten is null then '''' else g.area_perten end,
					convert(varchar(10),a.ccosto_evaluado)++':'++b.centro_costo
				from	sipweb_eval_trab			a left outer join area_perten g 
										on 	a.cod_empresa		= g.cod_empresa
										and	a.area_evaluado		= g.cod_area_perten,
						centro_costo		b,
						planta			    c,
						unidad_administrat  d,
						sucursal            e,
						empresa				f
				where	a.cod_empresa		= b.cod_empresa
				and		a.ccosto_evaluado	= b.cod_centro_costo
				and		a.cod_empresa		= c.cod_empresa
				and		a.cod_planta		= c.cod_planta
				and		a.cod_empresa		= d.cod_empresa
				and		a.unidad_evaluado = d.cod_unidad_adminis
				and		a.cod_empresa		= e.cod_empresa
				and		a.cod_planta		= e.cod_planta
				and		a.sucursal_evaluado	= e.cod_sucursal
				and		a.cod_empresa		= f.cod_empresa
				and		a.rut_evaluado		= @ruttrab
				and		a.cod_encuesta		= @cod_encuesta
				group by a.ano_proceso,
					a.desc_eval,
					a.cod_eval,
					a.version_eval,
					puntaje_maximo,
					a.cod_empresa,
					f.sigla_empresa,
					a.cod_planta,
					c.planta,					
					a.unidad_evaluado,
					d.unidad_administrat,
					a.sucursal_evaluado,
					e.sucursal,
					a.area_evaluado,
					g.area_perten,
					a.ccosto_evaluado,
					b.centro_costo
			order by a.ano_proceso, fecha_evaluacion
		end
		else
		begin
			select	a.ano_proceso,
					max(convert(varchar(10),a.fecha_evaluacion,103)) as fecha_evaluacion,	
					a.desc_eval,
					a.cod_eval,
					a.version_eval,
					round(sum(puntaje_obtenido)/count(*),2),
					puntaje_maximo,
					convert(varchar(10),a.cod_empresa)++':'++f.sigla_empresa,
					convert(varchar(10),a.cod_planta)++':'++c.planta,
					convert(varchar(10),a.unidad_evaluado)++':'++d.unidad_administrat,
					convert(varchar(10),a.sucursal_evaluado)++':'++e.sucursal,
					convert(varchar(10),a.area_evaluado)++':'++case when g.area_perten is null then '''' else g.area_perten end,
					convert(varchar(10),a.ccosto_evaluado)++':'++b.centro_costo
				from	sipweb_eval_trab			a left outer join area_perten g 
										on 	a.cod_empresa		= g.cod_empresa
										and	a.area_evaluado		= g.cod_area_perten,
						centro_costo		b,
						planta			    c,
						unidad_administrat  d,
						sucursal            e,
						empresa				f,
						sipweb_eval_publ	i
				where	a.cod_empresa		= b.cod_empresa
				and		a.ccosto_evaluado	= b.cod_centro_costo
				and		a.cod_empresa		= c.cod_empresa
				and		a.cod_planta		= c.cod_planta
				and		a.cod_empresa		= d.cod_empresa
				and		a.unidad_evaluado = d.cod_unidad_adminis
				and		a.cod_empresa		= e.cod_empresa
				and		a.cod_planta		= e.cod_planta
				and		a.sucursal_evaluado	= e.cod_sucursal
				and		a.cod_empresa		= f.cod_empresa
				and		a.cod_encuesta		= i.cod_encuesta
				and		i.estado			= 'Cerrada'
				and		a.rut_evaluado		= @ruttrab
				group by a.ano_proceso,
					a.desc_eval,
					a.cod_eval,
					a.version_eval,
					puntaje_maximo,
					a.cod_empresa,
					f.sigla_empresa,
					a.cod_planta,
					c.planta,					
					a.unidad_evaluado,
					d.unidad_administrat,
					a.sucursal_evaluado,
					e.sucursal,
					a.area_evaluado,
					g.area_perten,
					a.ccosto_evaluado,
					b.centro_costo
			order by a.ano_proceso, fecha_evaluacion
		end
	 end
END













GO

/****** Object:  StoredProcedure [dbo].[sp_eval_param_reportes]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_eval_param_reportes]
	@tipo				int,
	@cod_encuesta		varchar(50)
AS
BEGIN
	SET NOCOUNT ON
	  if @tipo = 0
	  begin
			select	a.cod_encuesta,
					a.cod_encuesta++':'++a.desc_eval as desc_eval
			from	sipweb_hst_eval		a,
					sipweb_eval_publ	b
			where	a.cod_encuesta = b.cod_encuesta
			and		b.estado != 'Cancelada'
	   end
	   else if @tipo = 1
	   begin
			select	ano_proceso,
					cod_eval,
					version_eval,
					convert(varchar(10),fecha_desde,103)++' - '++convert(varchar(10),fecha_hasta,103) as periodo
			from	sipweb_eval_publ
			where	cod_encuesta		= @cod_encuesta
		end
		else if @tipo = 2
	    begin
			select	a.cod_encuesta,
					a.cod_encuesta++':'++a.desc_eval as desc_eval
			from	sipweb_hst_eval		a,
					sipweb_eval_publ	b
			where	a.cod_encuesta = b.cod_encuesta
			and		b.estado = 'Cerrada'
	   end
		else if @tipo = 3
	    begin
			select	a.id_item,
					convert(varchar(10),a.id_item)++':'++a.desc_item as desc_item
			from	sipweb_hst_eval_item a
			where	cod_encuesta = @cod_encuesta
	   end
END
















GO

/****** Object:  StoredProcedure [dbo].[sp_estudios]    Script Date: 09/11/2017 21:02:36 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_estudios]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int,
	@tipo				int	
AS
BEGIN
	SET NOCOUNT ON;

	if @tipo = 0
	begin
		select	a.tipo_estudio, 
				c.institucion_estudi,
				b.titulo_profesional,
				convert(varchar(10),a.fecha_egreso ,103) as fecha_egreso,
				a.calificacion_estud
		from	estudio_trabajador	a left outer join titulo_profesional	b
							on a.cod_titulo_profesi = b.cod_titulo_profesi
							left outer join institucion_estudi	c
							on a.cod_instit_estudio = c.cod_instit_estudio
							left outer join calificacion d
							on a.cod_calificacion	 = d.cod_calificacion
		where	a.nro_trabajador	= @nro_trabajador
		and		a.cod_empresa		= @cod_empresa	
	end
	else
	begin
		select	b.nivel_escolar 
		from	sipweb_personal	a left outer join nivel_escolar b
				on a.cod_nivel_educacio	= b.cod_nivel_escolar
		where	a.nro_trabajador	= @nro_trabajador
		and		a.cod_empresa		= @cod_empresa	
		and		a.cod_planta		= @cod_planta	
	end
END















GO

/****** Object:  StoredProcedure [dbo].[sp_encasillamiento]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_encasillamiento]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int,
	@tipo			    int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	tipo_trabajador,
				cod_organizacion,
				categoria_cargo,
				clave_presupuesto,
				forma_pago,
				cuenta_cargo,
				centro_costo,
				cuenta_receptor,
				lugar_pago,
				(select convert(varchar(10),max(fecha_modif),103)
					from carrera_laboral
					where carrera_laboral.cod_empresa = @cod_empresa	
					and carrera_laboral.nro_trabajador = @nro_trabajador
					and carrera_laboral.tipo_modif = 'CT' )  as fecha_encasillamiento
		from	personal			a,
				tipo_trabajador		b,
				cargo_trabajador	c,
				forma_pago			d,
				centro_costo		e,
				lugar_pago			f
		where	a.cod_tipo_trabajado = b.cod_tipo_trabajado
		and		a.cod_empresa		= c.cod_empresa 
		and		a.cod_cargo			= c.cod_cargo 
		and		a.cod_forma_pago	= d.codigo_forma_pago 
		and		a.cod_empresa		= e.cod_empresa 
		and		a.cod_centro_costo	= e.cod_centro_costo
		and		a.cod_lugar_pago	= f.cod_lugar_pago
		and		a.nro_trabajador	= @nro_trabajador
		and		a.cod_empresa		= @cod_empresa	
		and		a.cod_planta		= @cod_planta			
	end
	else if @tipo = 1
	begin
		select	cargo_trabajador,
				descripcion,
				valor_benef,
				moneda_benef
		from	personal			p,
				cargo_trabajador	a,
				benef_x_cargo		b,
				haber				c
		where	p.cod_empresa		= a.cod_empresa 
		and		p.cod_cargo			= a.cod_cargo 
		and		p.cod_empresa		= b.cod_empresa 
		and		p.cod_cargo			= b.cod_cargo 
		and		b.cod_empresa		= c.cod_empresa 
		and		b.cod_haber			= c.cod_haber
		and		p.nro_trabajador	= @nro_trabajador
		and		p.cod_empresa		= @cod_empresa	
		and		p.cod_planta		= @cod_planta
		and		c.cod_planta		= @cod_planta
	end

END
























GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solvacaciones_tras]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_doc_solvacaciones_tras]
	@cod_empresa		int,
	@usuario_traspaso	varchar(15)
AS
declare
	@cod_empresa2			int,
	@cod_planta				int,
	@nro_trabajador			int,
	@dv_trabajador			varchar(5),
	@fecha_desde			datetime,
	@fecha_fin				datetime,
	@cantidad				decimal(7, 2),
	@fecha_ingreso			datetime,
	@fecha_ingresoH			varchar(8),
	@usuario_autoriza		varchar(15),
	@fecha_autorizacion		datetime,
	@fecha_autorizacionH	varchar(8),
	@correl_feriados		int,
	@dias_legales		decimal(14,2),
	@dias_adicionales	decimal(14,2),
	@dias_progres		decimal(14,2),
	@noincl_adic		char(1),
	@noincl_prog		char(1),
	@observaciones		varchar(254)
	
BEGIN TRANSACTION

		DECLARE Cursor01 CURSOR FOR 
				select	a.cod_empresa, a.cod_planta, a.nro_trabajador, b.dv_trabajador,
						fecha_desde, fecha_fin, cantidad, convert(varchar(10),fecha_ingreso,111), convert(varchar(8),fecha_ingreso,114),
						usuario_autoriza, fecha_autorizacion, convert(varchar(8),fecha_autorizacion,114), dias_legales, dias_adicionales,
						dias_progres, noincl_adic, noincl_prog, observaciones
				from	sipweb_solvacaciones	a,
						personal				b
				where	a.cod_empresa		= b.cod_empresa
				and		a.cod_planta		= b.cod_planta
				and		a.nro_trabajador	= b.nro_trabajador
				and		a.estado			= 'Aprobada'


			OPEN Cursor01

			FETCH NEXT FROM Cursor01 
			INTO @cod_empresa2, @cod_planta, @nro_trabajador, @dv_trabajador, 
				@fecha_desde, @fecha_fin, @cantidad, @fecha_ingreso, @fecha_ingresoH,
						@usuario_autoriza, @fecha_autorizacion, @fecha_autorizacionH,
						@dias_legales, @dias_adicionales, @dias_progres, @noincl_adic, @noincl_prog,
						@observaciones
					
				 
			WHILE (@@FETCH_STATUS = 0)
			BEGIN

				--dbo.Fn_Retorna_Correl(a.cod_empresa, a.cod_planta, a.nro_trabajador,0)
					DECLARE cur_folio SCROLL CURSOR FOR
						select	max(correl_feriados)+1 
						from	Movimient_feriados
						where	cod_empresa		= @cod_empresa2
						and		cod_planta		= @cod_planta
						and		nro_trabajador	= @nro_trabajador
					OPEN cur_folio
					FETCH NEXT FROM cur_folio INTO @correl_feriados
					CLOSE cur_folio
					DEALLOCATE cur_folio
			
				if (@correl_feriados is null) 
				BEGIN
					select @correl_feriados = 0
				end 

				insert into Movimient_feriados(
						cod_empresa,cod_planta,nro_trabajador,dv_trabajador,
						tipo_movimiento, correl_feriados, fec_inicio_feriado, fecha_fin_feriado,
						num_dias_feriados, cod_bono_feriado, valor_bono_feriado, cod_feriado_solici,
						fec_feriad_solicit, pendientes, saldo_antes, dias_pend_antes, dias_ult_per_antes,
						dias_prox_antes, traspasada_ausenci, num_dias_no_provi,
						usuario_ingreso, fecha_ingreso, hora_ingreso, usuario_autoriza,
						fecha_autoriza, hora_autoriza, dias_legales, dias_adicionales,
						dias_progres, noincl_adic, noincl_prog, num_dias_no_provi_leg, 
						num_dias_no_provi_adi, num_dias_no_provi_pro, comentario )
				values ( @cod_empresa2, @cod_planta, @nro_trabajador, @dv_trabajador,
						'CARGO', @correl_feriados, @fecha_desde, @fecha_fin, 
						@cantidad, 'N', 0, 'A', 
						@fecha_ingreso, 0, 0, 0, 0, 0, 'N', 0,
						@nro_trabajador, @fecha_ingreso, @fecha_ingresoH,
						@usuario_autoriza, @fecha_autorizacion, @fecha_autorizacionH,
						@dias_legales, @dias_adicionales,
						@dias_progres, @noincl_adic, @noincl_prog, 0,0,0, @observaciones )

			FETCH NEXT FROM Cursor01 INTO
				@cod_empresa2, @cod_planta, @nro_trabajador, @dv_trabajador, 
				@fecha_desde, @fecha_fin, @cantidad, @fecha_ingreso, @fecha_ingresoH,
						@usuario_autoriza, @fecha_autorizacion, @fecha_autorizacionH,
						@dias_legales, @dias_adicionales, @dias_progres, @noincl_adic, @noincl_prog,
						@observaciones
			END

			CLOSE Cursor01
			DEALLOCATE Cursor01


			update	sipweb_solvacaciones 
			set		estado				= 'Traspasada',
					usuario_traspaso	= @usuario_traspaso,
					fecha_traspaso		= getdate()
			where	estado				= 'Aprobada'		
			
COMMIT TRANSACTION



















GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solprestamo_upd]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_doc_solprestamo_upd]
	@id					numeric(14),
	@cod_empresa		int,
	@cod_planta			int,
	@cod_tipo_cta_cte	int,
	@nro_trabajador		int,
	@dv_trabajador		varchar(1),
	@unidad_prestamo	varchar(4),
	@monto_prestamo		decimal,
	@nro_cuotas			decimal,
	@mes_descto			int,
	@ano_descto			int,
	@cod_tipo_interes   char(1),
	@monto_interes		decimal(15, 2),
	@fecha_valorizacion	datetime,
	@observaciones		varchar(254),
	@estado				varchar(20),
	@usuario_autoriza	varchar(15),
	@fecha_autorizacion datetime,
	@usuario_traspaso	varchar(15),
	@fecha_traspaso		datetime,
	@usuario_rechazo	varchar(15),
	@fecha_rechazo		datetime,
	@tipo				int
AS
declare @correlativo  numeric
BEGIN TRANSACTION

	if ( @tipo = 0 )
	begin

		if (SELECT COUNT(*) FROM sipweb_solprestamo ) = 0
		begin
				SELECT @correlativo  = 1
		end	
		else
		begin
				SELECT @correlativo = MAX(correlativo) + 1 FROM sipweb_solprestamo
		end
	
		INSERT INTO sipweb_solprestamo
			(cod_empresa,cod_planta,nro_trabajador,
			dv_trabajador,correlativo,cod_tipo_cta_cte,unidad_prestamo,
			fecha_solicitud,monto_prestamo,nro_cuotas,mes_descto,
			ano_descto,observaciones,estado,fecha_ingreso )
        VALUES
           (@cod_empresa,@cod_planta,@nro_trabajador,
			@dv_trabajador,@correlativo,@cod_tipo_cta_cte,@unidad_prestamo,
			getdate(),@monto_prestamo,@nro_cuotas,@mes_descto,
			@ano_descto,@observaciones,@estado,getdate())

	end
	else if ( @tipo = 1 )
	begin
		update	sipweb_solprestamo
		set		cod_tipo_cta_cte = @cod_tipo_cta_cte,
				unidad_prestamo	= @unidad_prestamo,
				monto_prestamo	= @monto_prestamo,
				nro_cuotas		= @nro_cuotas,
				mes_descto		= @mes_descto,
				ano_descto		= @ano_descto,
				observaciones	= @observaciones,
				estado			= @estado
		where	correlativo		= @id
	
	end
	else if ( @tipo = 2 )
	begin
		update	sipweb_solprestamo
		set		estado				= @estado,
				usuario_autoriza	= @usuario_autoriza,
				cod_tipo_interes	= @cod_tipo_interes,
				monto_interes		= @monto_interes,
				fecha_valorizacion	= getdate(),
				fecha_autorizacion	= getdate()
		where	correlativo			= @id
	end
	else if ( @tipo = 3 )
	begin
		update	sipweb_solprestamo
		set		estado				= @estado,
				usuario_rechazo		= @usuario_rechazo,
				fecha_rechazo		= getdate(),
				observaciones		= @observaciones
		where	correlativo			= @id
	end
	else if ( @tipo = 99 )
	begin
		delete from sipweb_solprestamo 
		where	correlativo		= @id
	end	

COMMIT TRANSACTION

















GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solprestamo_tras]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













create PROCEDURE [dbo].[sp_doc_solprestamo_tras]
	@cod_empresa		int,
	@usuario_traspaso	varchar(15)
AS
declare
	@cod_empresa2		int,
	@cod_planta			int,
	@nro_trabajador		int,
	@dv_trabajador		varchar(5),
	@cod_tipo_cta_cte	int,
	@unidad_prestamo	varchar(4),
	@fecha_solicitud	datetime,
	@monto_prestamo		decimal(15, 2),
	@nro_cuotas			decimal(15, 2),
	@mes_descto			int,
	@ano_descto			int,
	@observaciones		varchar(254),
	@fecha_ingreso		datetime,
	@fecha_autorizacion	datetime,
	@fecha_traspaso		datetime,
	@fecha_valorizacion	datetime,
	@cod_tipo_interes  char(1),
	@monto_interes		decimal(15, 2),
	@nro_doc_cta_cte	int,
	@cod_descuento		int,
	@cod_reaj_cta_cte	int,
	@sal_mon_orig_ctact	decimal(15,4),
	@mon_orig_cta_proce decimal(15,4),
	@tipo_cta_cte		varchar(60),
	@numero_cuota		int,
	@mto_cuota_prestamo	decimal(15,4),
	@valor_intere_cuota	decimal(15,4),
	@dif				decimal(15,4),
	@nInteres			decimal(15,4)
	
BEGIN TRANSACTION

			DECLARE Cursor01 CURSOR FOR 
				select	a.cod_empresa, a.cod_planta,a.nro_trabajador,
						b.dv_trabajador,a.cod_tipo_cta_cte,a.unidad_prestamo,
						a.fecha_solicitud,a.monto_prestamo,a.nro_cuotas,a.mes_descto,
						a.ano_descto,a.observaciones,a.fecha_ingreso, a.fecha_autorizacion,
						a.fecha_traspaso, a.fecha_valorizacion, cod_tipo_interes, monto_interes,
						d.tipo_cta_cte
				from	sipweb_solprestamo	a,
						personal			b,
						tipo_cta_cte		d
				where	a.cod_empresa		= b.cod_empresa
				and		a.cod_planta		= b.cod_planta
				and		a.nro_trabajador	= b.nro_trabajador
				and		a.cod_empresa		= d.cod_empresa
				and		a.cod_tipo_cta_cte	= d.cod_tipo_cta_cte
				and		a.estado			= 'Aprobada'

			OPEN Cursor01

			FETCH NEXT FROM Cursor01 
			INTO @cod_empresa2, @cod_planta, @nro_trabajador,
				 @dv_trabajador, @cod_tipo_cta_cte, @unidad_prestamo,
				 @fecha_solicitud, @monto_prestamo, @nro_cuotas, @mes_descto,
				 @ano_descto, @observaciones, @fecha_ingreso, @fecha_autorizacion,
			     @fecha_traspaso, @fecha_valorizacion, @cod_tipo_interes, @monto_interes,
					@tipo_cta_cte
			WHILE (@@FETCH_STATUS = 0)
			BEGIN

					DECLARE cur_folio SCROLL CURSOR FOR
						select	nro_folio_cta_cte 
						from	Folio_cta_cte
						where	cod_empresa			= @cod_empresa2
						and		cod_planta			= @cod_planta
						and		cod_aplicaci_folio	= 1
					OPEN cur_folio
					FETCH NEXT FROM cur_folio INTO @nro_doc_cta_cte
					CLOSE cur_folio
					DEALLOCATE cur_folio

					select @nro_doc_cta_cte = @nro_doc_cta_cte + 1

					DECLARE cur_descto SCROLL CURSOR FOR
						select	cod_descuento, cod_reaj_cta_cte
						from	descuento_cta_cte
						where	cod_empresa			= @cod_empresa2
						and		cod_planta			= @cod_planta
						and		cod_tipo_cta_cte	= @cod_tipo_cta_cte
					OPEN cur_descto
					FETCH NEXT FROM cur_descto INTO @cod_descuento, @cod_reaj_cta_cte
					CLOSE cur_descto
					DEALLOCATE cur_descto

					insert into cta_cte_trabajador(cod_empresa, cod_planta, nro_doc_cta_cte, nro_trabajador,
						dv_trabajador, cod_descuento, cod_tipo_cta_cte, cod_reaj_cta_cte, 
						cod_unidad_cobro, val_mon_ori_ctacte, moned_nac_cta_cte, sal_mon_orig_ctact,
						mon_orig_cta_proce, cod_tipo_interes, tasa_interes, cod_modo_pago,total_cuotas_ptmo,
						fec_valoriz_ptmo, sol_otorgam_ptmo, estado_ptmo_actual, asocia_solic_pago, descrip_ptmo )
				    values( @cod_empresa2, @cod_planta, @nro_doc_cta_cte, @nro_trabajador,
							@dv_trabajador, @cod_descuento, @cod_tipo_cta_cte, @cod_reaj_cta_cte,
						@unidad_prestamo, @monto_prestamo, @monto_prestamo, @sal_mon_orig_ctact,
						@mon_orig_cta_proce, @cod_tipo_interes, @monto_interes, 'C', @nro_cuotas,
						@fecha_valorizacion, @fecha_autorizacion, 'A', 'N', @tipo_cta_cte )
	
					select @numero_cuota = 1
					WHILE @numero_cuota <= @nro_cuotas
					BEGIN

							select @mto_cuota_prestamo = round(@monto_prestamo / @nro_cuotas,0,0)
							select @dif = @monto_prestamo - (@mto_cuota_prestamo * @nro_cuotas)							
							
							if @numero_cuota = @nro_cuotas
							begin
								select @mto_cuota_prestamo = @mto_cuota_prestamo + @dif
							end

							select @valor_intere_cuota = 0

							if @cod_tipo_interes = 'L'
							begin
								select @valor_intere_cuota = round( ((@monto_prestamo	* ( @monto_interes / 100) ) / @nro_cuotas),4,1)
							end	
							else
							begin
								select @nInteres = ( @monto_interes / 100)
								select @valor_intere_cuota = round( (@monto_prestamo * @nInteres * ( POWER((1+ @nInteres), @nro_cuotas) - POWER( 1+@nInteres, @numero_cuota - 1) ) )   / (POWER( 1+ @nInteres, @nro_cuotas) -1),4,1)
							end	

							INSERT INTO estado_cuota (cod_empresa, cod_planta,nro_doc_cta_cte,
								numero_cuota,cod_unidad_cobro,mto_cuota_prestamo,sldo_cuota_prestam,
								saldo_cuota_proces,proceso_a_aplicar,mes_aplic_prog_cuo,ano_aplicacion,
								val_reajuste_cuota,valor_intere_cuota,valor_sobreg_cuota,estado_cuota )
							values(  @cod_empresa2, @cod_planta, @nro_doc_cta_cte,
								@numero_cuota,@unidad_prestamo,@mto_cuota_prestamo, @mto_cuota_prestamo,
								@mto_cuota_prestamo,'LQ', @mes_descto, @ano_descto,
								0, @valor_intere_cuota, 0, '' )
	
							select @mes_descto = @mes_descto + 1
							if @mes_descto = 13
							begin
								select @mes_descto = 1
								select @ano_descto = @ano_descto + 1
							end

							select @numero_cuota = @numero_cuota + 1
					end

					update	Folio_cta_cte
					set		nro_folio_cta_cte  = @nro_doc_cta_cte
					where	cod_empresa			= @cod_empresa2
					and		cod_planta			= @cod_planta
					and		cod_aplicaci_folio	= 1

			FETCH NEXT FROM Cursor01 INTO
				@cod_empresa2, @cod_planta, @nro_trabajador,
				 @dv_trabajador, @cod_tipo_cta_cte, @unidad_prestamo,
				 @fecha_solicitud, @monto_prestamo, @nro_cuotas, @mes_descto,
				 @ano_descto, @observaciones, @fecha_ingreso, @fecha_autorizacion,
			     @fecha_traspaso, @fecha_valorizacion, @cod_tipo_interes, @monto_interes,
					@tipo_cta_cte
			END

			CLOSE Cursor01
			DEALLOCATE Cursor01

	update	sipweb_solprestamo 
	set		estado				= 'Traspasada',
			usuario_traspaso	= @usuario_traspaso,
			fecha_traspaso		= getdate()
	where	estado				= 'Aprobada'		
			
COMMIT TRANSACTION
















GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solprestamo]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[sp_doc_solprestamo]
	@tipo				int,
	@id					numeric(14),
	@cod_empresa		int,
	@cod_planta			int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.correlativo as ID,
				d.tipo_cta_cte as 'Tipo Prestamo',
				a.monto_prestamo as 'Monto',
				a.nro_cuotas as 'Nro. Cuotas',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso',
				convert(varchar(10),fecha_autorizacion ,103) as 'Fecha Autoriza',
				convert(varchar(10),fecha_rechazo ,103) as 'Fecha Rechazo'					
		from	sipweb_solprestamo		a,
				tipo_cta_cte			d
		where	a.cod_empresa		= d.cod_empresa
		and		a.cod_tipo_cta_cte	= d.cod_tipo_cta_cte
		and		a.nro_trabajador	= @id
		and		a.cod_empresa		= @cod_empresa
		and		a.cod_planta		= @cod_planta
		order by a.fecha_ingreso desc
	end
	else if @tipo = 1
	begin
		select	cod_empresa,
				cod_planta,
				cod_tipo_cta_cte,
				unidad_prestamo,
				monto_prestamo,
				nro_cuotas,
				mes_descto,
				ano_descto,
				observaciones,
				estado,
				convert(varchar(10),fecha_autorizacion ,103) as 'F. Autoriza',
				convert(varchar(10),fecha_rechazo ,103) as 'F. Rechazo'			
		from	sipweb_solprestamo		a
		where	correlativo				= @id
		and		a.cod_empresa		= @cod_empresa
		and		a.cod_planta		= @cod_planta
	end

END
















GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solpermiso_upd]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[sp_doc_solpermiso_upd]
	@id					numeric(14),
	@cod_empresa		int,
	@cod_planta			int,
	@cod_permiso		varchar(4),
	@nro_trabajador		int,
	@dv_trabajador		varchar(1),
	@unidad_permiso		varchar(4),
	@fecha_desde		datetime,
	@cantidad			decimal,
	@observaciones		varchar(254),
	@estado				varchar(20),
	@usuario_autoriza	varchar(15),
	@fecha_autorizacion datetime,
	@usuario_traspaso	varchar(15),
	@fecha_traspaso		datetime,
	@usuario_rechazo	varchar(15),
	@fecha_rechazo		datetime,
	@tipo				int
AS
declare @correlativo  numeric,
	@fecha_fin		datetime
BEGIN TRANSACTION

	select @correlativo = @id
	
	if (rtrim(@unidad_permiso)='HORA') 
	begin
		select @fecha_fin = @fecha_desde
	end
	else
	begin
		select @fecha_fin = (@fecha_desde+@cantidad)-1
	end

	if ( @tipo = 0 )
	begin

		if (SELECT COUNT(*) FROM sipweb_solpermiso ) = 0
		begin
				SELECT @correlativo  = 1
		end	
		else
		begin
				SELECT @correlativo = MAX(correlativo) + 1 FROM sipweb_solpermiso
		end
	
		INSERT INTO sipweb_solpermiso
           (cod_empresa,cod_planta,cod_permiso,nro_trabajador,
			dv_trabajador,correlativo,
			unidad_permiso,fecha_desde,fecha_fin, cantidad,
			observaciones,estado,fecha_ingreso)
        VALUES
           (@cod_empresa,@cod_planta,@cod_permiso,@nro_trabajador,
			@dv_trabajador,@correlativo,
			@unidad_permiso,@fecha_desde,@fecha_fin,@cantidad,
			@observaciones,@estado,getdate())
			
	end
	else if ( @tipo = 1 )
	begin
		update	sipweb_solpermiso
		set		cod_permiso		= @cod_permiso,
				unidad_permiso	= @unidad_permiso,
				fecha_desde		= @fecha_desde,
				fecha_fin		= @fecha_fin,
				cantidad		= @cantidad,
				observaciones	= @observaciones,
				estado			= @estado
		where	correlativo		= @id
	
	end
	else if ( @tipo = 2 )
	begin
		update	sipweb_solpermiso
		set		estado				= @estado,
				usuario_autoriza	= @usuario_autoriza,
				fecha_autorizacion	= getdate()
		where	correlativo			= @id
		
	end
	else if ( @tipo = 3 )
	begin
		update	sipweb_solpermiso
		set		estado				= @estado,
				usuario_rechazo		= @usuario_rechazo,
				fecha_rechazo		= getdate(),
				observaciones	= @observaciones
		where	correlativo			= @id
	end
	else if ( @tipo = 99 )
	begin
		delete from sipweb_solpermiso 
		where	correlativo		= @id
	end	

COMMIT TRANSACTION

RETURN @correlativo		










GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solpermiso_tras]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_doc_solpermiso_tras]
	@cod_empresa		int,
	@usuario_traspaso	varchar(15)
AS
BEGIN TRANSACTION

	insert into Movimiento_ausenci(
			cod_empresa,cod_planta,nro_trabajador,dv_trabajador,
			cod_ausencia,fec_ini_ausencia,cantidad,fec_fin_ausencia,
			cod_centro_costo,cod_unidad_adminis,cod_usado,nro_licencia )
	select	a.cod_empresa, a.cod_planta, a.nro_trabajador, b.dv_trabajador,
			a.cod_permiso, fecha_desde, cantidad, fecha_fin,
			b.cod_centro_costo, b.cod_unidad_adminis,'N',0
	from	sipweb_solpermiso	a,
			personal			b,
			ausencia			c
	where	a.cod_empresa		= b.cod_empresa
	and		a.cod_planta		= b.cod_planta
	and		a.nro_trabajador	= b.nro_trabajador
	and		a.cod_empresa		= c.cod_empresa
	and		a.cod_planta		= c.cod_planta
	and		a.cod_permiso		= c.cod_ausencia
	and		a.estado			= 'Aprobada'

	update	sipweb_solpermiso 
	set		estado				= 'Traspasada',
			usuario_traspaso	= @usuario_traspaso,
			fecha_traspaso		= getdate()
	where	estado				= 'Aprobada'		
			
COMMIT TRANSACTION


















GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solpermiso_pdf]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[sp_doc_solpermiso_pdf]
	@tipo				int,
	@rut_trabajador		int,
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin 
		select	a.nro_trabajador,
				a.dv_trabajador,
				a.rut_trabajador, 
				a.dv_rut_trabajador, 
				a.nombre, 
				a.ape_paterno_trabaj, 
				a.ape_materno_trabaj, 
				c.cargo_trabajador, 
				b.unidad_administrat, 
				f.empresa,
				g.centro_costo,
				h.sucursal,
				cast(rut_empresa as varchar(10))++'-'++dv_rut_empresa as rut_empresa,
				f.sigla_empresa				
		from	personal a  left outer join unidad_administrat b on a.cod_empresa = b.cod_empresa and a.cod_unidad_adminis = b.cod_unidad_adminis
							left outer join cargo_trabajador c on a.cod_empresa = c.cod_empresa and a.cod_cargo = c.cod_cargo 
							left outer join empresa f on a.cod_empresa = f.cod_empresa
							left outer join centro_costo g on a.cod_empresa = g.cod_empresa and a.cod_centro_costo = g.cod_centro_costo
							left outer join sucursal h on a.cod_empresa = h.cod_empresa and a.cod_planta = h.cod_planta and a.cod_sucursal = h.cod_sucursal
		where	a.rut_trabajador	= @rut_trabajador
		and		a.nro_trabajador	= @nro_trabajador
		and		a.cod_empresa		= @cod_empresa
		and		a.cod_planta		= @cod_planta
	end
	else 
	begin 
		select	a.cod_empresa,
				a.cod_planta,
				convert(varchar(10),fecha_ingreso,103) as 'F. Ingreso',
				convert(varchar(10),fecha_desde ,103) as 'Fecha Desde',
				convert(varchar(10),fecha_fin ,103) as 'Fecha Hasta',
				cantidad,
				observaciones,
				cod_permiso,
				b.descrip_ausencia,
				unidad_permiso,
				estado				
		from	sipweb_solpermiso		a left outer join ausencia b on 
								a.cod_empresa		= b.cod_empresa
						and		a.cod_planta		= b.cod_planta
						and		a.cod_permiso		= b.cod_ausencia
		where	a.correlativo		= @rut_trabajador
		
	end
end







GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solpermiso]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[sp_doc_solpermiso]
	@tipo				int,
	@id					numeric(14),
	@cod_empresa		int,
	@cod_planta			int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.correlativo as ID,
				d.descrip_ausencia as 'Tipo Permiso',
				convert(varchar(10),fecha_desde ,103) as 'Fecha Desde',
				convert(varchar(10),fecha_fin ,103) as 'Fecha Hasta',
				a.cantidad as 'Cantidad',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso',
				convert(varchar(10),fecha_autorizacion ,103) as 'Fecha Autoriza',
				convert(varchar(10),fecha_rechazo ,103) as 'Fecha Rechazo'					
		from	sipweb_solpermiso		a,
				ausencia				d
		where	a.cod_empresa		= d.cod_empresa
		and		a.cod_planta		= d.cod_planta
		and		a.cod_permiso		= d.cod_ausencia
		and		a.nro_trabajador	= @id
		and		a.cod_empresa		= @cod_empresa
		and		a.cod_planta		= @cod_planta
		order by a.fecha_ingreso desc
	end
	else if @tipo = 1
	begin
		select	cod_empresa,
				cod_planta,
				cod_permiso,
				unidad_permiso,
				convert(varchar(10),fecha_desde ,103) as fecha_desde,
				cantidad,
				observaciones,
				estado,
				convert(varchar(10),fecha_autorizacion ,103) as 'F. Autoriza',
				convert(varchar(10),fecha_rechazo ,103) as 'F. Rechazo'			
		from	sipweb_solpermiso		a
		where	correlativo				= @id
		and		a.cod_empresa		= @cod_empresa
		and		a.cod_planta		= @cod_planta
	end

END


















GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solbeneficio_upd]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_doc_solbeneficio_upd]
	@id					numeric(14),
	@cod_empresa		int,
	@cod_planta			int,
	@cod_haber			int,
	@nro_trabajador		int,
	@dv_trabajador		varchar(1),
	@observaciones		varchar(254),
	@estado				varchar(20),
	@fecha_aplicacion	datetime,
	@ocurrencia			int,
	@usuario_autoriza	varchar(15),
	@fecha_autorizacion datetime,
	@usuario_traspaso	varchar(15),
	@fecha_traspaso		datetime,
	@usuario_rechazo	varchar(15),
	@fecha_rechazo		datetime,
	@tipo				int
AS
declare @correlativo  numeric,
	@ano_periodo		int,
	@mes_periodo		int
BEGIN TRANSACTION

	if ( @tipo = 0 )
	begin

		if (SELECT COUNT(*) FROM sipweb_solbeneficio ) = 0
		begin
				SELECT @correlativo  = 1
		end	
		else
		begin
				SELECT @correlativo = MAX(correlativo) + 1 FROM sipweb_solbeneficio
		end
	
		select @ano_periodo = year(getdate())
		select @mes_periodo = month(getdate())

		INSERT INTO sipweb_solbeneficio
           (cod_empresa,cod_planta,cod_haber,nro_trabajador,
			dv_trabajador,ano_periodo,mes_periodo,correlativo,
			observaciones,estado,fecha_ingreso)
        VALUES
           (@cod_empresa,@cod_planta,@cod_haber,@nro_trabajador,
			@dv_trabajador,@ano_periodo,@mes_periodo,@correlativo,
			@observaciones,@estado,getdate())

	end
	else if ( @tipo = 1 )
	begin
		update	sipweb_solbeneficio
		set		cod_haber		= @cod_haber,
				observaciones	= @observaciones,
				estado			= @estado
		where	correlativo		= @id
	
	end
	else if ( @tipo = 2 )
	begin
		update	sipweb_solbeneficio
		set		estado				= @estado,
				fecha_aplicacion	= @fecha_aplicacion,
				ocurrencia			= @ocurrencia,
				usuario_autoriza	= @usuario_autoriza,
				fecha_autorizacion	= getdate()
		where	correlativo			= @id
	end
	else if ( @tipo = 3 )
	begin
		update	sipweb_solbeneficio
		set		estado				= @estado,
				usuario_rechazo		= @usuario_rechazo,
				fecha_rechazo		= getdate(),
				observaciones		= @observaciones
		where	correlativo			= @id
	end
	else if ( @tipo = 99 )
	begin
		delete from sipweb_solbeneficio 
		where	correlativo		= @id
	end	

COMMIT TRANSACTION


















GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solbeneficio_tras]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_doc_solbeneficio_tras]
	@cod_empresa		int,
	@usuario_traspaso	varchar(15)
AS
declare
	@cod_empresa2			int,
	@cod_planta				int,
	@nro_trabajador			int,
	@dv_trabajador			varchar(5),
	@cod_haber				int,
	@fecha_aplicacion		datetime,
	@cod_unidad_moneda		varchar(4),
	@ocurrencia				int,
	@cod_centro_costo		int,
	@monto_haber			decimal(13, 4),
	@usuario_traspaso2		varchar(15),
	@fecha_traspaso			datetime,
	@correlativo			numeric(10)
BEGIN TRANSACTION

			DECLARE Cursor01 CURSOR FOR 
			select	a.cod_empresa, a.cod_planta, a.nro_trabajador, b.dv_trabajador,
						a.cod_haber, fecha_aplicacion, c.cod_unidad_moneda,
						ocurrencia, b.cod_centro_costo, c.monto_haber,
						usuario_traspaso, fecha_traspaso
				from	sipweb_solbeneficio	a,
						personal			b,
						haber				c
				where	a.cod_empresa		= b.cod_empresa
				and		a.cod_planta		= b.cod_planta
				and		a.nro_trabajador	= b.nro_trabajador
				and		a.cod_empresa		= c.cod_empresa
				and		a.cod_planta		= c.cod_planta
				and		a.cod_haber			= c.cod_haber
				and		a.estado			= 'Aprobada'



			OPEN Cursor01

			FETCH NEXT FROM Cursor01 
			INTO @cod_empresa2, @cod_planta, @nro_trabajador, @dv_trabajador, 
				@cod_haber, @fecha_aplicacion, @cod_unidad_moneda,
						@ocurrencia, @cod_centro_costo, @monto_haber,
						@usuario_traspaso2, @fecha_traspaso
					
				 
			WHILE (@@FETCH_STATUS = 0)
			BEGIN

				--dbo.Fn_Retorna_Correl(a.cod_empresa, a.cod_planta, a.nro_trabajador,0)
					DECLARE cur_folio SCROLL CURSOR FOR
						select	max(correlativo)+1 
						from	haber_informado
						where	cod_empresa = @cod_empresa2
						and		cod_planta	= @cod_planta
						and		nro_trabajador	= @nro_trabajador
					OPEN cur_folio
					FETCH NEXT FROM cur_folio INTO @correlativo
					CLOSE cur_folio
					DEALLOCATE cur_folio
			
				if (@correlativo is null) 
				BEGIN
					select @correlativo = 0
				end 

				insert into haber_informado( cod_empresa, cod_planta, nro_trabajador, dv_trabajador,
							cod_haber, cod_tipo_proceso, correlativo, fec_aplicacion, cod_unidad_moneda,
							nro_cuotas, cod_centro_costo, valor_concepto,
							nro_licencia, nombre_usuario, fec_ingreso_habere )
				values ( @cod_empresa2, @cod_planta, @nro_trabajador, @dv_trabajador,
						@cod_haber, 'LQ', @correlativo, 
						@fecha_aplicacion, @cod_unidad_moneda,
						@ocurrencia, @cod_centro_costo, @monto_haber,
						0, @usuario_traspaso2, @fecha_traspaso )

			FETCH NEXT FROM Cursor01 INTO
				@cod_empresa2, @cod_planta, @nro_trabajador, @dv_trabajador, 
				@cod_haber, @fecha_aplicacion, @cod_unidad_moneda,
						@ocurrencia, @cod_centro_costo, @monto_haber,
						@usuario_traspaso2, @fecha_traspaso
			END

			CLOSE Cursor01
			DEALLOCATE Cursor01


			update	sipweb_solbeneficio 
			set		estado				= 'Traspasada',
					usuario_traspaso	= @usuario_traspaso,
					fecha_traspaso		= getdate()
			where	estado				= 'Aprobada'	
			
COMMIT TRANSACTION


















GO

/****** Object:  StoredProcedure [dbo].[sp_doc_solbeneficio]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[sp_doc_solbeneficio]
	@tipo				int,
	@id					numeric(14),
	@cod_empresa		int,
	@cod_planta			int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.correlativo as ID,
				d.descripcion as 'Beneficio',
				a.estado as 'Estado',
				convert(varchar(10),fecha_ingreso,103) as 'Fecha Ingreso',
				convert(varchar(10),fecha_autorizacion ,103) as 'Fecha Autoriza',
				convert(varchar(10),fecha_rechazo ,103) as 'Fecha Rechazo'					
		from	sipweb_solbeneficio		a,
				haber					d
		where	a.cod_empresa		= d.cod_empresa
		and		a.cod_planta		= d.cod_planta
		and		a.cod_haber			= d.cod_haber
		and		a.nro_trabajador	= @id
		and		a.cod_empresa		= @cod_empresa
		and		a.cod_planta		= @cod_planta
		order by a.correlativo desc
	end
	else if @tipo = 1
	begin
		select	cod_empresa,
				cod_planta,
				cod_haber,
				observaciones,
				estado,
				convert(varchar(10),fecha_autorizacion ,103) as 'F. Autoriza',
				convert(varchar(10),fecha_rechazo ,103) as 'F. Rechazo'			
		from	sipweb_solbeneficio		a
		where	correlativo				= @id
		and		a.cod_empresa		= @cod_empresa
		and		a.cod_planta		= @cod_planta
	end

END



















GO

/****** Object:  StoredProcedure [dbo].[sp_doc_sol_prog_adic_tras]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[sp_doc_sol_prog_adic_tras]
	@cod_empresa		int,
	@usuario_traspaso	varchar(15)
AS

BEGIN TRANSACTION

			update	sipweb_com_adic_prog 
			set		estado				= 'Traspasada',
					usuario_traspaso	= @usuario_traspaso,
					fecha_traspaso		= getdate()
			where	estado				= 'Aprobada'		
			
COMMIT TRANSACTION



















GO

/****** Object:  StoredProcedure [dbo].[sp_cumpleanos]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO















CREATE PROCEDURE [dbo].[sp_cumpleanos]
	@cod_empresa		int,
	@tipo				int
AS
declare @cumplebd  varchar(10)
BEGIN
	SET NOCOUNT ON;

	SELECT @cumplebd = cumplebd FROM sipweb_conf_sistema

	if @tipo = 0
	begin
		if @cumplebd = 'Si'
		begin
			select	a.nombre, 
					a.ape_paterno_trabaj, 
					a.ape_materno_trabaj,
					a.nro_citofono, 
					b.unidad_administrat, 
					foto_trabajador,
					fec_nacimiento
			from	personal a  left outer join unidad_administrat b on a.cod_empresa = b.cod_empresa and a.cod_unidad_adminis = b.cod_unidad_adminis
							left outer join foto_trabajador c on a.cod_empresa = c.cod_empresa and a.nro_trabajador = c.nro_trabajador
			where	datepart(day,fec_nacimiento) = datepart(day,getdate())
			and		datepart(month,fec_nacimiento) = datepart(month,getdate())
			and		cod_vigen_trabajad = 'S'
		end
		else
		begin
			select	a.nombre, 
					a.ape_paterno_trabaj, 
					a.ape_materno_trabaj,
					a.nro_citofono, 
					b.unidad_administrat, 
					foto_trabajador,
					fec_nacimiento
			from	personal a  left outer join unidad_administrat b on a.cod_empresa = b.cod_empresa and a.cod_unidad_adminis = b.cod_unidad_adminis
							left outer join foto_trabajador c on a.cod_empresa = c.cod_empresa and a.nro_trabajador = c.nro_trabajador
			where	datepart(day,fec_nacimiento) = datepart(day,getdate())
			and		datepart(month,fec_nacimiento) = datepart(month,getdate())
			and		cod_vigen_trabajad = 'S'
			and		a.cod_empresa = @cod_empresa
		end
	end
	else if @tipo = 1
	begin
		if @cumplebd = 'Si'
		begin
				select	distinct datepart(day,fec_nacimiento) as dia,
						nombre++' '++ape_paterno_trabaj++' '++ape_materno_trabaj as nombre
				from	personal
				where	datepart(month,fec_nacimiento) = datepart(month,getdate())
				and		cod_vigen_trabajad = 'S'
				order by 1
		end
		else
		begin
				select	distinct datepart(day,fec_nacimiento) as dia,
						nombre++' '++ape_paterno_trabaj++' '++ape_materno_trabaj as nombre
				from	personal
				where	datepart(month,fec_nacimiento) = datepart(month,getdate())
				and		cod_vigen_trabajad = 'S'
				and		cod_empresa = @cod_empresa
				order by 1
		end
	end
	else if @tipo = 2
	begin
		select  distinct DAY(getdate()) as dia
		from	personal
	end
	
END

















GO

/****** Object:  StoredProcedure [dbo].[sp_contratos]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_contratos]
	@cod_empresa		int,
	@cod_planta			int,
	@nro_trabajador		int,
	@tipo				int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	nombre_completo, nombre_encripta
		from	sipweb_contr
		where	cod_empresa		= @cod_empresa
		and		cod_planta		= @cod_planta
		and		nro_trabajador	= @nro_trabajador

	end
	else if @tipo = 1
	begin
		select	nombre_completo, nombre_encripta
		from	sipweb_contr			a,
				personal				d
		where	a.cod_empresa	= d.cod_empresa
		and		a.cod_planta	= d.cod_planta
		and		a.nro_trabajador = d.nro_trabajador
		and		a.cod_empresa		= @cod_empresa
		and		d.rut_trabajador	= @nro_trabajador
	end
	else if @tipo = 2
	begin
		select	nombre_completo, nombre_encripta
		from	sipweb_contr			a,
				personal				d
		where	a.cod_empresa	= d.cod_empresa
		and		a.cod_planta	= d.cod_planta
		and		a.nro_trabajador = d.nro_trabajador
		and		d.rut_trabajador	= @nro_trabajador

	end
END

















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_usuario_aut]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO











CREATE PROCEDURE [dbo].[sp_conf_usuario_aut]
	@tipo				int,
	@empresa			int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.cod_empresa,
				b.sigla_empresa,
				automatico,
				perfil_def,
				cambia_clave,
				tipo_clave,
				correo_aut
		from	sipweb_conf_usuario	a,
				empresa				b
		where	a.cod_empresa = b.cod_empresa
		and		a.cod_empresa		in ( select cod_empresa from usuario_sipweb where usuario = @empresa )
		order by a.cod_empresa desc
	end
	else if @tipo = 1
	begin
		select	cod_empresa,
				automatico,
				perfil_def,
				cambia_clave,
				tipo_clave,
				correo_aut,
				mail_from,
				mail_asunto,
				mail_cuerpo
		from	sipweb_conf_usuario
		where	cod_empresa				= @empresa
	end

END











GO

/****** Object:  StoredProcedure [dbo].[sp_conf_update_procesos]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_conf_update_procesos]
	@cod_modulo			varchar(20),
	@cod_menu			varchar(20),
	@cod_proceso		varchar(20),
	@sdescripcion		varchar(50),
	@simagen 			varchar(80)
AS
BEGIN TRANSACTION
	update	sipweb_conf_procesos 
	set		descripcion = @sdescripcion,
			nom_imagen	= @simagen
	where	cod_modulo	= @cod_modulo
	and		cod_menu	= @cod_menu
	and		cod_proceso = @cod_proceso	

COMMIT TRANSACTION





















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_update_perfil_emp]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_conf_update_perfil_emp]
	@empresa			int,
	@sperfil			varchar(20),
	@cod_modulo			varchar(20),
	@cod_menu			varchar(20),
	@cod_proceso		varchar(20),
	@tipo				int
AS
BEGIN TRANSACTION
	if ( @tipo = 0 )
	begin
		delete from sipweb_conf_perfiles_emp 
		where	cod_empresa	 = @empresa
		and		perfil		= @sperfil
		and		cod_modulo  = @cod_modulo
		and		cod_menu    = @cod_menu
	end
	else
	begin
		insert into sipweb_conf_perfiles_emp( cod_empresa, perfil, cod_modulo, cod_menu, cod_proceso, usu_mod, fec_mod )
		values ( @empresa, @sperfil, @cod_modulo, @cod_menu, @cod_proceso, system_user, getdate() )

	end	

COMMIT TRANSACTION















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_update_perfil]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_conf_update_perfil]
	@sperfil			varchar(20),
	@cod_modulo			varchar(20),
	@cod_menu			varchar(20),
	@cod_proceso		varchar(20),
	@tipo				int
AS
BEGIN TRANSACTION
	if ( @tipo = 0 )
	begin
		delete from sipweb_conf_perfiles 
		where	perfil		= @sperfil
		and		cod_modulo  = @cod_modulo
		and		cod_menu    = @cod_menu
	end
	else
	begin
		insert into sipweb_conf_perfiles( perfil, cod_modulo, cod_menu, cod_proceso, usu_mod, fec_mod )
		values ( @sperfil, @cod_modulo, @cod_menu, @cod_proceso, system_user, getdate() )

	end	

COMMIT TRANSACTION















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_sistema]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_conf_sistema]
AS
BEGIN

		select	tipo_feriado, tiempo_session, envia_correo, mostrar_foto, coment_liq, apprech_Liq, popup,
				intentos_fallidos, duracion_clave, cumplebd, recuperaclave, mediodiasvaca, correosvaca,
				registra_loglq, correosbenef, correosprest, correosgestion, mail_gestion, visualizadoctos,
				manejarcertificado, '', '',
				correosvaca_admin,correosvaca_jefe,correosvaca_trab,
				correosbenef_admin,correosbenef_jefe,correosbenef_trab,
				correosprest_admin,correosprest_jefe ,correosprest_trab,
				correospermi_admin,correospermi_jefe,correospermi_trab,
				correosapprech_admin,correosapprech_jefe,correosapprech_trab,
				ltrim(rtrim(ProcesoLIQH)) as ProcesoLIQH,
				listadosolfer, desbloqueocuenta, veranexoLIQ, orientacionfoto,
				ltrim(rtrim(ProcesoLIQD)) as ProcesoLIQD,
				EliminaSolFer,
				correosantper,
				correosantper_admin,
				correosantper_jefe,
				correosantper_trab, tipo_papeletafer, conf_publicacion, marca_agua, texto_marca_agua,
				liqapprech_obliga, liqapprech_mensaje, feriado_neg, fichafer_titulo, fichafer_tipo, fichafer_saldowin,
				archperm_obliga, estado_solvac
		from	sipweb_conf_sistema

END















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_santoral_ing]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













create PROCEDURE [dbo].[sp_conf_santoral_ing]
	@mes				int,
	@dia				int,
	@santo				varchar(40)
AS
BEGIN TRANSACTION

	delete from sipweb_santoral
	where	mes			= @mes
	and		dia			= @dia

	insert into	sipweb_santoral (mes, dia, santo)
	values( @mes, @dia, @santo )

COMMIT TRANSACTION



















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_recup_clave_upd]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_conf_recup_clave_upd]
	@susuario			varchar(15),
	@sclave				varchar(15),
	@cambiar			varchar(15)
AS
DECLARE @RetId	bigint
BEGIN TRANSACTION

	
	if (SELECT COUNT(*) FROM sipweb_conf_sistema where desbloqueocuenta = 0 ) = 1
	begin
				update	usuario_sipweb 
				set		contrasena			= @sclave,
						cambia_contrasena	= @cambiar
				where	usuario				= @susuario
	end	
	else
	begin
				update	usuario_sipweb 
				set		contrasena			= @sclave,
						cambia_contrasena	= @cambiar,
						intentosfallidos	= 0
				where	usuario				= @susuario
	end


	if (SELECT COUNT(*) FROM hist_contrasena ) = 0
		begin
				SELECT @RetId  = 1
		end	
		else
		begin
				SELECT @RetId = MAX(id_contrasena) + 1 FROM hist_contrasena
	end

	insert into hist_contrasena 
		(	id_contrasena, 
			usuario, 
			contrasena, 
			fecha_contrasena )
	values (
			@RetId,
			@susuario,
			@sclave,
			getdate()
		)

COMMIT TRANSACTION
















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_recup_clave_ins]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_conf_recup_clave_ins]
	@tipoclave			varchar(20),
	@ind_appaterno		int,
	@ind_apmaterno		int,
	@ind_fecnac			int,
	@ind_isapre			int,
	@ind_afp			int,
	@despliegue			varchar(20),
	@ind_anos			int,
	@ind_banco			int,
	@ind_cargas			int,
	@ind_comuna			int,
	@dias_semana		varchar(1),
	@hora_desde			varchar(5),
	@hora_hasta			varchar(5),
	@mensaje			varchar(1000)

AS
BEGIN TRANSACTION

	delete from sipweb_recup_clave 

	insert into sipweb_recup_clave( tipoclave,ind_appaterno,ind_apmaterno,ind_fecnac,ind_isapre,ind_afp,				despliegue,
				ind_anos,
				ind_banco,
				ind_cargas,
				ind_comuna,
				dias_semana,
				hora_desde,
				hora_hasta,
				mensaje ) 
	values ( @tipoclave, @ind_appaterno, @ind_apmaterno, @ind_fecnac, @ind_isapre, @ind_afp, @despliegue,
				@ind_anos,
				@ind_banco,
				@ind_cargas,
				@ind_comuna,
				@dias_semana,
				@hora_desde,
				@hora_hasta,
				@mensaje )

COMMIT TRANSACTION















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_recup_clave_bit]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_conf_recup_clave_bit]
	@susuario			varchar(15),
	@ip_sesion			varchar(30),
	@estado				varchar(20)
AS
BEGIN TRANSACTION
	
	insert into sipweb_cambios_contrasena 
		(	usuario, 
			ip_sesion, 
			fecha_contrasena,
			estado )
	values (
			@susuario,
			@ip_sesion,
			getdate(),
			@estado
		)

COMMIT TRANSACTION
















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_perfiles]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_conf_perfiles]
	@nro_trabajador		int,
	@cod_empresa		int,
	@perfil				varchar(30),
	@tipo				int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	distinct 'ADMIN', perfil_admin
		from	usuario_sipweb
		where	usuario	= @nro_trabajador
		and		cod_vigente		= 'S'
		and		perfil_admin	= 'S'
		union all
		select	distinct 'JEFE PORTAL', perfil_jefeportal
		from	usuario_sipweb
		where	usuario			= @nro_trabajador
		and		cod_vigente			= 'S'
		and		perfil_jefeportal	= 'S'
		union all
		select	distinct 'JEFE UNIDAD ADMINISTRATIVA', perfil_jefe_uadm
		from	usuario_sipweb
		where	usuario			= @nro_trabajador
		and		cod_vigente			= 'S'
		and		perfil_jefe_uadm	= 'S'
		union all
		select	distinct 'TRABAJADOR', perfil_trab
		from	usuario_sipweb
		where	usuario			= @nro_trabajador
		and		cod_vigente		= 'S'
		and		perfil_trab		= 'S'
		union all
		select	distinct 'EJECUTIVO', perfil_ejec
		from	usuario_sipweb
		where	usuario			= @nro_trabajador
		and		cod_vigente		= 'S'
		and		perfil_ejec		= 'S'
	end
	else if @tipo = 1
	begin
		select	perfil
		from	sipweb_wf_perfilusuario
		where	nro_trabajador	= @nro_trabajador
	end
	else if @tipo = 2
	begin
		if @perfil = 'ADMIN'
		begin
			select	distinct a.cod_empresa, sigla_empresa
			from	usuario_sipweb	a,
					empresa			c
			where	a.usuario	= @nro_trabajador
			and		a.cod_vigente		= 'S'
			and		a.cod_empresa		= c.cod_empresa	
			and		a.perfil_admin	= 'S'
		end
		else if @perfil = 'JEFE PORTAL'   or @perfil = 'PORTAL' 
		begin
			select	distinct a.cod_empresa, sigla_empresa
			from	usuario_sipweb	a,
					empresa			c
			where	a.usuario	= @nro_trabajador
			and		a.cod_vigente		= 'S'
			and		a.cod_empresa		= c.cod_empresa	
			and		a.perfil_jefeportal		= 'S'
		end
		else if @perfil = 'JEFE UNIDAD ADM' or @perfil = 'JEFE UNIDAD ADMINISTRATIVA'  or @perfil = 'UADM' 
		begin
			select	distinct a.cod_empresa, sigla_empresa
			from	usuario_sipweb	a,
					empresa			c
			where	a.usuario	= @nro_trabajador
			and		a.cod_vigente		= 'S'
			and		a.cod_empresa		= c.cod_empresa	
			and		a.perfil_jefe_uadm		= 'S'
		end
		else if @perfil = 'TRABAJADOR'
		begin
			select	distinct a.cod_empresa, sigla_empresa
			from	usuario_sipweb	a,
					empresa			c
			where	a.usuario	= @nro_trabajador
			and		a.cod_vigente		= 'S'
			and		a.cod_empresa		= c.cod_empresa	
			and		a.perfil_trab		= 'S'
		end
		else if @perfil = 'EJECUTIVO'
		begin
			select	distinct a.cod_empresa, sigla_empresa
			from	usuario_sipweb	a,
					empresa			c
			where	a.usuario	= @nro_trabajador
			and		a.cod_vigente		= 'S'
			and		a.cod_empresa		= c.cod_empresa	
			and		a.perfil_ejec		= 'S'
		end
	end
	else if @tipo = 3
	begin
		if @perfil = 'ADMIN'
		begin
			select	distinct a.cod_planta, planta
			from	usuario_sipweb	a,
					planta			c
			where	a.usuario	     	= @nro_trabajador
			and		a.cod_empresa		= @cod_empresa
			and		a.cod_vigente		= 'S'
			and		a.cod_empresa		= c.cod_empresa
			and		a.cod_planta		= c.cod_planta
			and		a.perfil_admin		= 'S'
		end
		else if  @perfil = 'JEFE PORTAL'   or @perfil = 'PORTAL' 
		begin
			select	distinct a.cod_planta, planta
			from	usuario_sipweb	a,
					planta			c
			where	a.usuario	     	= @nro_trabajador
			and		a.cod_empresa		= @cod_empresa
			and		a.cod_vigente		= 'S'
			and		a.cod_empresa		= c.cod_empresa
			and		a.cod_planta		= c.cod_planta
			and		a.perfil_jefeportal		= 'S'
		end
		else if @perfil = 'JEFE UNIDAD ADM' or @perfil = 'JEFE UNIDAD ADMINISTRATIVA'  or @perfil = 'UADM' 
		begin
			select	distinct a.cod_planta, planta
			from	usuario_sipweb	a,
					planta			c
			where	a.usuario	     	= @nro_trabajador
			and		a.cod_empresa		= @cod_empresa
			and		a.cod_vigente		= 'S'
			and		a.cod_empresa		= c.cod_empresa
			and		a.cod_planta		= c.cod_planta
			and		a.perfil_jefe_uadm	 = 'S'
		end
		else if @perfil = 'TRABAJADOR'
		begin
			select	distinct a.cod_planta, planta
			from	usuario_sipweb	a,
					planta			c
			where	a.usuario	     	= @nro_trabajador
			and		a.cod_empresa		= @cod_empresa
			and		a.cod_vigente		= 'S'
			and		a.cod_empresa		= c.cod_empresa
			and		a.cod_planta		= c.cod_planta
			and		a.perfil_trab		= 'S'
		end
		else if @perfil = 'EJECUTIVO'
		begin
			select	distinct a.cod_planta, planta
			from	usuario_sipweb	a,
					planta			c
			where	a.usuario	     	= @nro_trabajador
			and		a.cod_empresa		= @cod_empresa
			and		a.cod_vigente		= 'S'
			and		a.cod_empresa		= c.cod_empresa
			and		a.cod_planta		= c.cod_planta
			and		a.perfil_ejec		= 'S'
		end
		
	end
	else if @tipo = 4
	begin
		select	distinct nro_trabajador
		from	usuario_sipweb
		where	usuario	     	= @nro_trabajador
		and		cod_empresa		= @cod_empresa
		and		cod_planta		= @perfil
		and		cod_vigente		= 'S'
	end
	else if @tipo = 5
	begin
		select	distinct cod_unidad_adminis
		from	usuario_sipweb
		where	usuario	     		= @nro_trabajador
		and		cod_empresa			= @cod_empresa
		and		cod_planta			= @perfil
		and		cod_vigente			= 'S'
		and		perfil_jefe_uadm	= 'S'
	end
END

















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_path_upd]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_conf_path_upd]
	@path_sipweb			varchar(200),
	@path_foto				varchar(200),
	@path_publicaciones		varchar(200),
	@path_liquidaciones		varchar(200),
	@path_certsueldos		varchar(200),
	@path_certificados		varchar(200),
	@path_contratos			varchar(200),
	@path_liqwinper			varchar(200),
	@path_winpliq			varchar(200)
AS
BEGIN TRANSACTION

	update	sipweb_path
	set		dir		= @path_sipweb
	where	clave	= 'path_sipweb'

	update	sipweb_path
	set		dir		= @path_foto
	where	clave	= 'path_foto'

	update	sipweb_path
	set		dir		= @path_publicaciones
	where	clave	= 'path_publicaciones'

	update	sipweb_path
	set		dir		= @path_liquidaciones
	where	clave	= 'path_liquidaciones'

	update	sipweb_path
	set		dir		= @path_certsueldos
	where	clave	= 'path_certsueldos'

	update	sipweb_path
	set		dir		= @path_certificados
	where	clave	= 'path_certificados'

	update	sipweb_path
	set		dir		= @path_contratos
	where	clave	= 'path_contratos'

	update	sipweb_path
	set		dir		= @path_liqwinper
	where	clave	= 'path_liqwinper'

	update	sipweb_path
	set		dir		= @path_winpliq
	where	clave	= 'path_winpliq'

COMMIT TRANSACTION

















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_path]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_conf_path]
	@clave				varchar(20)
AS
BEGIN
	SET NOCOUNT ON;

	select	dir
	from	sipweb_path
	where	clave			= @clave

END



















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_pantallas]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_conf_pantallas]
	@pantalla				varchar(20)
AS
BEGIN
	SET NOCOUNT ON;
	
	select	titulo,
			img_logo,
			img_fondo,
			texto1,
			texto2,
			texto3,
			img_boton1,
			img_boton2,
			img_boton3,
			img_boton4,
			titnombre,
			titRut,
			titFicha,
			titCargo,
			titUnidad,
			img_inicio
	from	sipweb_conf_pantallas
	where	pantalla	= @pantalla

END

















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_pantalla_upd]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_conf_pantalla_upd]
	@pantalla varchar(20),
	@titulo varchar(100),
	@img_logo varchar(80),
	@img_fondo varchar(80),
	@texto1 varchar(100),
	@texto2 varchar(100),
	@texto3 varchar(100),
	@img_boton1 varchar(80),
	@img_boton2 varchar(80),
	@img_boton3 varchar(80),
	@img_boton4 varchar(80),
	@img_boton5 varchar(80),
	@img_inicio varchar(80),
	@img_fondo_pro varchar(80),
	@titnombre varchar(50),
	@titRut varchar(50),
	@titFicha varchar(50),
	@titCargo varchar(50),
	@titUnidad varchar(50) 
AS
BEGIN TRANSACTION

	update sipweb_conf_pantallas
	set	titulo   = @titulo,
		img_logo   = @img_logo,
		img_fondo   = @img_fondo,
		texto1   = @texto1,
		texto2   = @texto2,
		texto3   = @texto3,
		img_boton1   = @img_boton1,
		img_boton2   = @img_boton2,
		img_boton3   = @img_boton3,
		img_boton4   = @img_boton4,
		titnombre   = @titnombre,
		titRut   = @titRut,
		titFicha   = @titFicha,
		titCargo   = @titCargo,
		titUnidad = @titUnidad
	where pantalla = @pantalla

COMMIT TRANSACTION

















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evalsubitem_upd]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













create PROCEDURE [dbo].[sp_conf_evalsubitem_upd]
	@id_eval				int,
	@id_item				int,
	@id_sub_item			int,
	@descripcion			text,
	@desc_corta				varchar(250),
	@tipo					int
AS
BEGIN TRANSACTION
	if ( @tipo = 0 )
	begin
		insert into sipweb_conf_eval_subitem
			( id_eval,	id_item, id_sub_item, descripcion, desc_corta)
		values 
			( @id_eval,	@id_item, @id_sub_item,  @descripcion, @desc_corta )
	end
	else if ( @tipo = 1 )
	begin
		update	sipweb_conf_eval_subitem
		set		descripcion		= @descripcion,
				desc_corta		= @desc_corta
		where	id_eval			= @id_eval
		and		id_item			= @id_item
		and		id_sub_item		= @id_sub_item
	end
	else if ( @tipo = 2 )
	begin
		delete from	sipweb_conf_eval_subitem
		where	id_eval			= @id_eval
		and		id_item			= @id_item
		and		id_sub_item		= @id_sub_item
	end

COMMIT TRANSACTION
















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evalsubitem]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_conf_evalsubitem]
	@tipo				int,
	@id_eval			int,
	@id_item			int,
	@id_subitem			int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	id_eval,
				id_item,
				id_sub_item,
				descripcion,
				desc_corta
		from	sipweb_conf_eval_subitem
		where	id_eval	= @id_eval
		and		id_item = @id_item
		order by id_eval, id_item, id_sub_item asc
	end
	else if @tipo = 1
	begin
		select	desc_corta,
				descripcion
		from	sipweb_conf_eval_subitem
		where	id_eval		= @id_eval
		and		id_item		= @id_item
		and		id_sub_item	= @id_subitem
	end
	else if @tipo = 99
	begin
		select	case  when max(id_sub_item) is null then 1 else max(id_sub_item)+1 end
		from	sipweb_conf_eval_subitem
		where	id_eval		= @id_eval
		and		id_item		= @id_item
	end

END















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evalitem]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_conf_evalitem]
	@tipo				int,
	@id_eval			int,
	@id_item			int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	id_eval,
				id_item,
				desc_item,
				porc_calc,
				case when no_aplica_trab = 0 then '-' else 'No Aplica Trabajador' end as no_aplica_trab
		from	sipweb_conf_eval_item
		where	id_eval	= @id_eval
		order by id_eval, id_item asc
	end
	else if @tipo = 1
	begin
		select	desc_item,
				porc_calc,
				no_aplica_trab
		from	sipweb_conf_eval_item
		where	id_eval		= @id_eval
		and		id_item		= @id_item
	end
	else if @tipo = 2
	begin
		select	id_item,
				convert(varchar(10),id_item)++':'++desc_item  as desc_item
		from	sipweb_conf_eval_item
		where	id_eval	= @id_eval
		order by id_eval, id_item asc
	end
	else if @tipo = 99
	begin
		select	case  when max(id_item) is null then 1 else max(id_item)+1 end
		from	sipweb_conf_eval_item
		where	id_eval	= @id_eval
	end

END













GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evalcrit_upd]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













create PROCEDURE [dbo].[sp_conf_evalcrit_upd]
	@id_eval				int,
	@id_crit				int,
	@cod_nivel_crit			varchar(10),
	@nivel_crit				varchar(50),
	@desc_crit				varchar(200),
	@nota_crit_i			decimal(13, 9),
	@nota_crit_s			decimal(13, 9),
	@req_just				varchar(1),
	@tipo					int
AS
BEGIN TRANSACTION
	if ( @tipo = 0 )
	begin
		insert into sipweb_conf_eval_crit
			( id_eval,	id_crit,	cod_nivel_crit,
			nivel_crit,	desc_crit,	nota_crit_i,
			nota_crit_s, req_just	)
		values 
			( @id_eval,	@id_crit,	@cod_nivel_crit,
			@nivel_crit, @desc_crit,	@nota_crit_i,
			@nota_crit_s, @req_just )
	end
	else if ( @tipo = 1 )
	begin
		update	sipweb_conf_eval_crit
		set		cod_nivel_crit	= @cod_nivel_crit,
				nivel_crit		= @nivel_crit,
				desc_crit		= @desc_crit,
				nota_crit_i		= @nota_crit_i,
				nota_crit_s		= @nota_crit_s,
				req_just		= @req_just
		where	id_eval			= @id_eval
		and		id_crit			= @id_crit
	end
	else if ( @tipo = 2 )
	begin
		delete from	sipweb_conf_eval_crit
		where	id_eval			= @id_eval
		and		id_crit			= @id_crit
	end

COMMIT TRANSACTION
















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_evalcrit]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_conf_evalcrit]
	@tipo				int,
	@id_eval			int,
	@id_crit			int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	id_eval,
				id_crit,
				cod_nivel_crit,
				nivel_crit,
				desc_crit,
				nota_crit_i,
				nota_crit_s,
				case when req_just = 0 then 'N' else 'S' end as req_just
		from	sipweb_conf_eval_crit
		where	id_eval	= @id_eval
		order by id_eval, id_crit asc
	end
	else if @tipo = 1
	begin
		select	cod_nivel_crit,
				nivel_crit,
				desc_crit,
				nota_crit_i,
				nota_crit_s,
				case when req_just = 0 then 'N' else 'S' end as req_just
		from	sipweb_conf_eval_crit
		where	id_eval		= @id_eval
		and		id_crit		= @id_crit
	end
	else if @tipo = 99
	begin
		select	case  when max(id_crit) is null then 1 else max(id_crit)+1 end
		from	sipweb_conf_eval_crit
		where	id_eval	= @id_eval
	end

END















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_eval_logalerta_upd]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_conf_eval_logalerta_upd]
	@cod_encuesta		varchar(50),
	@asunto				varchar(80),
	@comentario			varchar(500)
AS
BEGIN TRANSACTION
		insert into sipweb_eval_logalerta
			( fecha_envio, cod_encuesta, asunto, textmail )
		values 
			( getdate(), @cod_encuesta, @asunto, @comentario )

COMMIT TRANSACTION


















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_eval_logalerta]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_conf_eval_logalerta]
	@tipo				int,
	@cod_encuesta		varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	convert(varchar(10),fecha_envio,103) as fecha_envio,
				asunto,
				textmail
		from	sipweb_eval_logalerta
		where	cod_encuesta = @cod_encuesta
		order by fecha_envio asc

	end
	else if @tipo = 1
	begin
		select	cod_encuesta,
				desc_eval
		from	sipweb_eval_publ
		where	estado		= 'Abierta'
		order by ano_proceso, cod_encuesta asc
	end
	else if @tipo = 2
	begin
		select distinct casilla_e_mail 
		from	personal			a,
				usuario_sipweb		b,
				personal_dinamico	c
		where	a.cod_vigen_trabajad = 'S'
		and		a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		a.cod_empresa		= c.cod_empresa
		and		a.cod_planta		= c.cod_planta
		and		a.nro_trabajador	= c.nro_trabajador
		and		c.nombre_interno	= 'RutJefDir'
	  union 
		select distinct casilla_e_mail 
		from	personal			a,
				usuario_sipweb		b
		where	a.cod_vigen_trabajad = 'S'
		and		a.cod_empresa		= b.cod_empresa
		and		a.cod_planta		= b.cod_planta
		and		a.nro_trabajador	= b.nro_trabajador
		and		( b.perfil_jefeportal = 'S' or perfil_jefe_uadm = 'S' )
	end
END














GO

/****** Object:  StoredProcedure [dbo].[sp_conf_datos_upd]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













create PROCEDURE [dbo].[sp_conf_datos_upd]
	@cod_empresa	int,
	@cod_planta		int,
	@nro_trabajador	int,
	@id				numeric(14),
	@campo			varchar(40),
	@dato_origen	varchar(250),
	@dato_destino	varchar(250),
	@estado			varchar(30),
	@tipo			int  
AS
declare @correlativo  numeric
BEGIN TRANSACTION

	if ( @tipo = 0 )
	begin

		if (SELECT COUNT(*) FROM sipweb_mod_datoper ) = 0
		begin
				SELECT @correlativo  = 1
		end	
		else
		begin
				SELECT @correlativo = MAX(correlativo) + 1 FROM sipweb_mod_datoper
		end

		INSERT INTO sipweb_mod_datoper
           (cod_empresa,cod_planta,nro_trabajador,correlativo,campo,dato_origen,dato_destino,fecha_mod,estado)
        VALUES
           (@cod_empresa,@cod_planta,@nro_trabajador,@correlativo,@campo, @dato_origen, @dato_destino, getdate(), @estado )

	end
	else if ( @tipo = 1 )
	begin
		update	sipweb_mod_datoper
		set		fecha_adm		= getdate(),
				estado			= @estado
		where	correlativo		= @id
	
	end

COMMIT TRANSACTION















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_datos]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_conf_datos]
	@tabla		varchar(40)
AS
BEGIN
	SET NOCOUNT ON;

	select	tabla, grupo, campo, descripcion, visible, editable
	from	sipweb_confdatos
	where	tabla	= @tabla
	order by tabla, grupo
END




















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_correocumple_upd]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_conf_correocumple_upd]
	@cod_empresa		int,
	@automatico			varchar(2),
	@mail_asunto		varchar(80),
	@mail_plantilla		varchar(100),
	@envioempresa		varchar(2),
	@emp_mail_asunto	varchar(80),
	@emp_mail_plantilla	varchar(100),
	@tipo				int
AS
BEGIN TRANSACTION

	if ( @tipo = 0 )
	begin
		insert into sipweb_conf_cumple
			( cod_empresa,
				automatico,
				mail_asunto,
				mail_plantilla,
				envioempresa,
				emp_mail_asunto,				
				emp_mail_plantilla	)
		values 
			( @cod_empresa,
				@automatico,
				@mail_asunto,
				@mail_plantilla,
				@envioempresa,
				@emp_mail_asunto,
				@emp_mail_plantilla )
	end
	else if ( @tipo = 1 )
	begin
		update	sipweb_conf_cumple
		set		automatico	= @automatico,
				mail_asunto	= @mail_asunto,
				mail_plantilla	= @mail_plantilla,
				envioempresa = @envioempresa,
				emp_mail_asunto = @emp_mail_asunto,
				emp_mail_plantilla = @emp_mail_plantilla
		where	cod_empresa			= @cod_empresa
	end

COMMIT TRANSACTION















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_correocumple]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO











CREATE PROCEDURE [dbo].[sp_conf_correocumple]
	@tipo				int,
	@empresa			int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.cod_empresa,
				b.sigla_empresa,
				automatico,
				mail_asunto,
				mail_plantilla,
				envioempresa,
				emp_mail_asunto,
				emp_mail_plantilla
		from	sipweb_conf_cumple	a,
				empresa				b
		where	a.cod_empresa = b.cod_empresa
		and		a.cod_empresa		in ( select cod_empresa from usuario_sipweb where usuario = @empresa )
		order by a.cod_empresa desc
	end
	else if @tipo = 1
	begin
		select	cod_empresa,
				automatico,
				mail_asunto,
				mail_plantilla,
				envioempresa,
				emp_mail_asunto,
				emp_mail_plantilla
		from	sipweb_conf_cumple
		where	cod_empresa				= @empresa
	end

END











GO

/****** Object:  StoredProcedure [dbo].[sp_conf_correo_upd]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_conf_correo_upd]
	@smtp varchar(60),
	@port numeric(10, 0),
	@mail_from varchar(80),
	@mail_us varchar(80),
	@mail_ps varchar(80),
	@enablessl numeric(1)
	
AS
BEGIN TRANSACTION

	delete from sipweb_conf_correo where tipo = 'SipWeb' 

	insert into sipweb_conf_correo( smtp, port, mail_from, mail_us, mail_ps, tipo, enablessl)
	values ( @smtp, @port, @mail_from, @mail_us, @mail_ps, 'SipWeb', @enablessl )

COMMIT TRANSACTION
















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_correo]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_conf_correo]
	@tipo		varchar(15)
AS
BEGIN
	SET NOCOUNT ON;

	select	smtp,
			port,
			mail_from,
			mail_us,
			mail_ps,
			enablessl
	from	sipweb_conf_correo
	where	tipo = @tipo

END
















GO

/****** Object:  StoredProcedure [dbo].[sp_conf_avisoter_upd]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[sp_conf_avisoter_upd]
	@cod_empresa		int,
	@automatico			varchar(2),
	@mail_asunto		varchar(80),
	@dias_vcto			int,
	@reenviar_vcto		varchar(2),
	@tipo				int
AS
BEGIN TRANSACTION

	if ( @tipo = 0 )
	begin
		insert into sipweb_conf_avisoter
			( cod_empresa,
				automatico,
				mail_asunto,
				dias_vcto,
				reenviar_vcto	)
		values 
			( @cod_empresa,
				@automatico,
				@mail_asunto,
				@dias_vcto,
				@reenviar_vcto )
	end
	else if ( @tipo = 1 )
	begin
		update	sipweb_conf_avisoter
		set		automatico	= @automatico,
				mail_asunto	= @mail_asunto,
				dias_vcto	= @dias_vcto,
				reenviar_vcto = @reenviar_vcto
		where	cod_empresa			= @cod_empresa
	end

COMMIT TRANSACTION





GO

/****** Object:  StoredProcedure [dbo].[sp_conf_avisoter]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[sp_conf_avisoter]
	@tipo				int,
	@empresa			int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		select	a.cod_empresa,
				b.sigla_empresa,
				automatico,
				mail_asunto,
				dias_vcto,
				reenviar_vcto
		from	sipweb_conf_avisoter	a,
				empresa				b
		where	a.cod_empresa = b.cod_empresa
		and		a.cod_empresa		in ( select cod_empresa from usuario_sipweb where usuario = @empresa )
		order by a.cod_empresa desc
	end
	else if @tipo = 1
	begin
		select	cod_empresa,
				automatico,
				mail_asunto,
				dias_vcto,
				reenviar_vcto
		from	sipweb_conf_avisoter
		where	cod_empresa				= @empresa
	end

END




GO

/****** Object:  StoredProcedure [dbo].[sp_clave]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_clave]
	@scod_empresa		int,
	@susuario			varchar(15),
	@tipo				int
AS
BEGIN
	SET NOCOUNT ON;

	if ( @tipo = 0 )
	begin
		select	contrasena
		from	usuario_sipweb
		where	cod_empresa		= @scod_empresa
		and		usuario			= @susuario	
	end
	else
	begin
		select	rtrim(contrasena)
		from	hist_contrasena
		where	usuario		= @susuario
		order by	fecha_contrasena desc
	end
		
END


















GO

/****** Object:  StoredProcedure [dbo].[sp_certificado_update]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_certificado_update]
	@cod_empresa		int,
	@cod_planta			int,
	@ano_periodo		int,
	@tipo			    int
AS
BEGIN TRANSACTION
	if ( @tipo = 0 )
	begin
		delete from sipweb_cert_publicadas 
		where	cod_empresa		= @cod_empresa
		and		cod_planta		= @cod_planta
	end
	else
	begin
		insert into sipweb_cert_publicadas( cod_empresa, cod_planta, ano_periodo, usuario, fecha  )
		values ( @cod_empresa, @cod_planta, @ano_periodo, system_user, getdate() )
	end
COMMIT TRANSACTION

















GO

/****** Object:  StoredProcedure [dbo].[sp_certificado]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_certificado]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int,
	@tipo			    int
AS
BEGIN
	SET NOCOUNT ON;
	if @tipo = 0
	begin
		SELECT 	distinct a.ANO_PERIODO,
				case when b.ANO_PERIODO is not null then 1 else 0 end as Publicar
		FROM 	historico_liquidac		a left outer join 	sipweb_cert_publicadas	b
								on a.COD_EMPRESA 		= b.COD_EMPRESA 
								AND 	a.COD_PLANTA 		= b.COD_PLANTA 
								AND 	a.ANO_PERIODO 		= b.ANO_PERIODO 
		WHERE 	a.COD_EMPRESA		= @cod_empresa
		AND 	a.COD_PLANTA		= @cod_planta
		AND		a.COD_TIPO_PROCESO = 'LQ'
		order by  a.ano_periodo desc
	end
	else if @tipo = 1
	begin
		select	DISTINCT a.ano_periodo,
				case when c.nombre_encripta is null then convert(varchar,a.ano_periodo) else c.nombre_encripta end
		from	sipweb_cert_publicadas	a,
				sipweb_cert_sii			c
		where	a.cod_empresa	= c.cod_empresa 
		AND		a.cod_planta	= c.cod_planta 
		AND		a.ano_periodo	= c.ano_proceso 
		AND		c.cod_empresa	= @cod_empresa	
		and		c.cod_planta	= @cod_planta	
		and		c.nro_trabajador = @nro_trabajador
		order by a.ano_periodo desc
	end
	else if @tipo = 2
	begin
		select	nombre_certificado, nombre_encripta
		from	certificado_trabajador	
		where	cod_empresa	= @cod_empresa	
		and		cod_planta	= @cod_planta	
		and		nro_trabajador = @nro_trabajador
	end
	else if @tipo = 3
	begin
		select	DISTINCT a.ano_periodo,
				case when c.nombre_encripta is null then convert(varchar,a.ano_periodo) else c.nombre_encripta end
		from	sipweb_cert_publicadas	a,
				sipweb_cert_sii			c,
				personal				d
		where	a.cod_empresa	= c.cod_empresa 
		AND		a.cod_planta	= c.cod_planta 
		AND		a.ano_periodo	= c.ano_proceso 
		and		c.cod_empresa	= d.cod_empresa
		and		c.cod_planta	= d.cod_planta
		and		c.nro_trabajador = d.nro_trabajador
		AND		c.cod_empresa	= @cod_empresa	
		and		d.rut_trabajador = @nro_trabajador
		order by a.ano_periodo desc
	end
	else if @tipo = 4
	begin
		select	DISTINCT a.ano_periodo,
				case when c.nombre_encripta is null then convert(varchar,a.ano_periodo) else c.nombre_encripta end
		from	sipweb_cert_publicadas	a,
				sipweb_cert_sii			c,
				personal				d
		where	a.cod_empresa	= c.cod_empresa 
		AND		a.cod_planta	= c.cod_planta 
		AND		a.ano_periodo	= c.ano_proceso 
		and		c.cod_empresa	= d.cod_empresa
		and		c.cod_planta	= d.cod_planta
		and		c.nro_trabajador = d.nro_trabajador
		and		d.rut_trabajador = @nro_trabajador
		order by a.ano_periodo desc
	end
	else if @tipo = 5
	begin
		select	nombre_certificado, nombre_encripta
		from	certificado_trabajador	a,
				personal				d
		where	a.cod_empresa		= d.cod_empresa
		and		a.cod_planta		= d.cod_planta
		and		a.nro_trabajador	= d.nro_trabajador
		and		a.cod_empresa		= @cod_empresa
		and		d.rut_trabajador	= @nro_trabajador
	end
	else if @tipo = 6
	begin
		select	nombre_certificado, nombre_encripta
		from	certificado_trabajador	a,
				personal				d
		where	a.cod_empresa		= d.cod_empresa
		and		a.cod_planta		= d.cod_planta
		and		a.nro_trabajador	= d.nro_trabajador
		and		d.rut_trabajador	= @nro_trabajador
	end
END















GO

/****** Object:  StoredProcedure [dbo].[sp_carrera]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_carrera]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int
AS
BEGIN
	SET NOCOUNT ON;

	select	case tipo_modif 
				when 'UA' then descripcion_nueva
				when 'CT' then descripcion_nueva
				when 'JT' then descripcion_nueva
				when 'SU' then descripcion_nueva
				when 'SC' then codigo_nuevo
			end as descripcion_nueva,
			convert(varchar(2),month(a.fecha_modif))++'-'++convert(varchar(4),year(a.fecha_modif)) as fecha_modif,
			case tipo_modif 
				when 'UA' then 'Unidad Administrativa'
				when 'CT' then 'Contrato Trabajo'
				when 'JT' then 'Jornada de Trabajo'	
				when 'SU' then 'Sucursal'
				when 'SC' then 'Sueldo Contractual'
			end as tipo_modif,
			descripcion_nueva as cargo,
			unidad_administrat as area
	from	sipweb_carrera_laboral		a,
			personal			b,
			unidad_administrat	c,
			rhsipweb_carrera_laboral	d
	where	b.rut_trabajador = @nro_trabajador
--	and		a.cod_empresa	= @cod_empresa
--	and		a.cod_planta	= @cod_planta	
	and		a.tipo_modif = 'CT'
	and		a.cod_empresa	= b.cod_empresa
	and		a.nro_trabajador = b.nro_trabajador
	and		b.cod_empresa	= c.cod_empresa
	and		b.cod_unidad_adminis = c.cod_unidad_adminis
	and		a.cod_empresa	= d.cod_empresa
	and		a.nro_trabajador = d.nro_trabajador
	and		convert(varchar(2),month(a.fecha_modif))++'-'++convert(varchar(4),year(a.fecha_modif)) =  d.fecha_modif
	and		isnull(a.fec_fin_cargo,getdate()) = d.fec_fin_cargo
	order by convert(datetime,a.fecha_modif) desc
	
END













GO

/****** Object:  StoredProcedure [dbo].[sp_cargaarchivo_del]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_cargaarchivo_del]
	@usuario		varchar(15),
	@nombre_arch	varchar(150),
	@nro_trabajador int
as
BEGIN TRANSACTION

					delete from  sipweb_archivos
					where usuario = @usuario 
					and	nro_trabajador = @nro_trabajador
					and nombre_arch = @nombre_arch

						
COMMIT TRANSACTION

















GO

/****** Object:  StoredProcedure [dbo].[sp_cargaarchivo]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_cargaarchivo]
	@usuario		varchar(15),
	@nombre_arch	varchar(150),
	@descripcion	varchar(150),
	@tipo			varchar(50),
	@archivo		image,
	@jefe			int,
	@adminis		int,
	@trabajador		int,
	@todos			int,
	@nro_trabajador int
as
BEGIN TRANSACTION

			if (SELECT COUNT(*) 
				FROM sipweb_archivos 
				where usuario = @usuario 
				and nombre_arch = @nombre_arch ) = 0
				begin
						insert into sipweb_archivos( usuario,
						nombre_arch,
						descripcion,
						fecha,
						tipo,
						archivo,
						jefe,
						adminis,
						trabajador,
						todos,
						nro_trabajador  ) 
				values ( @usuario,
						@nombre_arch,
						@descripcion,
						getdate(),
						@tipo,
						@archivo,
						@jefe,
						@adminis,
						@trabajador,
						@todos,
						@nro_trabajador )

				end	
				else
				begin
						update sipweb_archivos
						set	descripcion	= @descripcion,
							jefe		= @jefe,
							adminis		= @adminis,
							trabajador	= @trabajador,
							todos		= @todos
						where usuario = @usuario 
						and	nro_trabajador = @nro_trabajador
						and nombre_arch = @nombre_arch

			end
			
			
COMMIT TRANSACTION

















GO

/****** Object:  StoredProcedure [dbo].[sp_capacitacion]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_capacitacion]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int
AS
BEGIN
	SET NOCOUNT ON;

		select	nom_curso as curso, 
				convert(varchar(10),b.fec_ini_curso,103) as fec_ini_curso, 
				convert(varchar(10),b.fec_fin_curso ,103) as fec_fin_curso,
				b.cant_horas,
				b.cod_vigencia,
				a.porc_asistencia
		from	Asistenc_x_curso a,
				curso_dictado	 b,
				cursos			 c
		where	a.cod_tipo_curso	= b.cod_tipo_curso
		and		a.cod_subtipo_curso	= b.cod_subtipo_curso
		and		a.cod_curso			= b.cod_curso
		and     a.fec_ini_curso     = b.fec_ini_curso 
		and		a.cod_tipo_curso	= c.cod_tipo_curso
		and		a.cod_subtipo_curso	= c.cod_subtipo_curso
		and		a.cod_curso			= c.cod_curso
		and		a.nro_trabajador	= @nro_trabajador
		and		a.cod_empresa		= @cod_empresa
		and		a.cod_planta		= @cod_planta
END























GO

/****** Object:  StoredProcedure [dbo].[sp_Bitacora_contras]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_Bitacora_contras]
	@nro_trabajador		int,
	@swhere				varchar(500),
	@rango				varchar(100)
AS
DECLARE @sql nvarchar(4000)
DECLARE @campos nvarchar(3000)
BEGIN
	SET NOCOUNT ON

	select @swhere = replace(@swhere, '&apos;', '''')
		
		SET @sql = 'select distinct '''++@rango++''' as rango,
						aa.nro_trabajador,
						a.usuario Rut,
						aa.nombre_usuario as Nombre,
						a.ip_sesion,
						a.fecha_contrasena,
						a.estado
				from	sipweb_cambios_contrasena		a  left outer join usuario_sipweb aa on a.usuario		= aa.usuario
				' + @swhere +'
				order by a.fecha_contrasena, aa.nro_trabajador'

		EXEC (@sql)
END















GO

/****** Object:  StoredProcedure [dbo].[sp_anticipo]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[sp_anticipo]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int,
	@tipo				int
AS
BEGIN
	SET NOCOUNT ON;

	if @tipo = 0
	begin
		select  a.valor_antic_pagado, 
				convert(varchar(10),a.fecha_pago_anticip,103) as fecha_pago_anticip, 
				b.descripcion
		from	anticipo_pagado a, 
				descuento b
		where	a.cod_empresa	= b.cod_empresa 
		and		a.cod_planta = b.cod_planta
		and		a.cod_descuento = b.cod_descuento
		and		a.nro_trabajador = @nro_trabajador
		and		a.cod_empresa	= @cod_empresa
		and		a.cod_planta	= @cod_planta
		order by convert(datetime,a.fecha_pago_anticip) desc
	end
	else if @tipo = 1
	begin
		select  a.valor_antic_pagado, 
				convert(varchar(10),a.fecha_pago_anticip,103) as fecha_pago_anticip, 
				b.descripcion
		from	hist_antici_pagado a, 
				descuento b
		where	a.cod_empresa	= b.cod_empresa 
		and		a.cod_planta = b.cod_planta
		and		a.cod_descuento = b.cod_descuento
		and		a.nro_trabajador = @nro_trabajador
		and		a.cod_empresa	= @cod_empresa
		and		a.cod_planta	= @cod_planta
		order by convert(datetime,a.fecha_pago_anticip) desc
	end
	else if @tipo = 2
	begin
		select  sueldo_mensual
		from	sipweb_personal
		where	nro_trabajador = @nro_trabajador
		and		cod_empresa	= @cod_empresa
		and		cod_planta	= @cod_planta
	end
END
















GO

/****** Object:  StoredProcedure [dbo].[sp_antecedentes_personales]    Script Date: 09/11/2017 21:02:37 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[sp_antecedentes_personales]
	@nro_trabajador		int,
	@cod_empresa		int,
	@cod_planta			int,
	@tipo			    int
AS
BEGIN
	SET NOCOUNT ON;

	if @tipo = 0
	begin
		select  convert(varchar(10),fec_nacimiento,103) as fec_nacimiento, 
				cod_estado_civil, 
				cod_sexo, 
				nacionalidad,
				cod_nivel_educacio as nivel_escolar,
				nro_incrip_militar
		from	sipweb_personal a 
		where	nro_trabajador = @nro_trabajador
		and		cod_empresa = @cod_empresa
		and		cod_planta = @cod_planta
	end
	else if @tipo = 1
	begin
		select  cod_isapre,
				cod_afp,
				convert(varchar(10),fec_ini_contrato,103) as fec_ini_contrato,
				cod_interno,
				--convert(varchar(10),DATEDIFF(YY, fec_ini_contrato, getdate())) ++' Años' as antiguedad,
				convert(varchar(60),floor(cast(datediff(day, fec_ini_contrato, getdate()) as float)/365))++ ' Año(s) ' ++ convert(varchar(60),floor((cast(datediff(day, fec_ini_contrato, getdate()) as float)/365-(floor(cast(datediff(day, fec_ini_contrato, getdate()) as float)/365)))*12))++ ' Mes(es)' as antiguedad,
				nro_citofono,
				a.cod_centro_costo
		from	sipweb_personal a 
		where	nro_trabajador = @nro_trabajador
		and		a.cod_empresa = @cod_empresa
		and		a.cod_planta = @cod_planta
	end
	else if @tipo = 2
	begin
		select  direccion,
				cod_comuna,
				cod_ciudad,
				fono,
				fono2,
				casilla_e_mail,
				codigo_postal
		from	sipweb_personal a
		where	nro_trabajador = @nro_trabajador
		and		cod_empresa = @cod_empresa
		and		cod_planta = @cod_planta
	end
	else if @tipo = 3
	begin
		select  cod_lugar_pago,
				cod_medio_pago,
				cod_banco,
				nro_cta_cte_bancar
		from	sipweb_personal a
		where	a.nro_trabajador = @nro_trabajador
		and		a.cod_empresa = @cod_empresa
		and		a.cod_planta = @cod_planta
	end

END

















GO



