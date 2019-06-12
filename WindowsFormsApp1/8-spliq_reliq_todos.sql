/****** Object:  StoredProcedure [dbo].[spliq_valores_monp_reliq]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_valores_monp_reliq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_valores_monp_reliq]
GO
/****** Object:  StoredProcedure [dbo].[spliq_valores_mon_reliq]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_valores_mon_reliq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_valores_mon_reliq]
GO
/****** Object:  StoredProcedure [dbo].[spliq_trab_pesado_reliq]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_trab_pesado_reliq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_trab_pesado_reliq]
GO
/****** Object:  StoredProcedure [dbo].[spliq_rt_relgrat]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_rt_relgrat]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_rt_relgrat]
GO
/****** Object:  StoredProcedure [dbo].[spliq_rev_ctacte_reliq]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_rev_ctacte_reliq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_rev_ctacte_reliq]
GO
/****** Object:  StoredProcedure [dbo].[spliq_reb_ctacte_reliq]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_reb_ctacte_reliq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_reb_ctacte_reliq]
GO
/****** Object:  StoredProcedure [dbo].[spliq_ini_legales_reliq]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_ini_legales_reliq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_ini_legales_reliq]
GO
/****** Object:  StoredProcedure [dbo].[spliq_haberes_reliq_fnqt]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_haberes_reliq_fnqt]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_haberes_reliq_fnqt]
GO
/****** Object:  StoredProcedure [dbo].[spliq_haberes_reliq]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_haberes_reliq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_haberes_reliq]
GO
/****** Object:  StoredProcedure [dbo].[spliq_descuentos_reliq]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_descuentos_reliq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_descuentos_reliq]
GO
/****** Object:  StoredProcedure [dbo].[spliq_descuentos_apv_reliq]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_descuentos_apv_reliq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_descuentos_apv_reliq]
GO
/****** Object:  StoredProcedure [dbo].[spliq_desc_ctacte_reliq]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_desc_ctacte_reliq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_desc_ctacte_reliq]
GO
/****** Object:  StoredProcedure [dbo].[spliq_comp_llss_reliq]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_comp_llss_reliq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_comp_llss_reliq]
GO
/****** Object:  StoredProcedure [dbo].[spliq_calc_reliq_hl]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_calc_reliq_hl]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_calc_reliq_hl]
GO
/****** Object:  StoredProcedure [dbo].[spliq_calc_reliq_fnqt]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_calc_reliq_fnqt]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_calc_reliq_fnqt]
GO
/****** Object:  StoredProcedure [dbo].[spliq_calc_reliq]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_calc_reliq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_calc_reliq]
GO
/****** Object:  StoredProcedure [dbo].[spliq_calc_ctacte_reliq]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_calc_ctacte_reliq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_calc_ctacte_reliq]
GO
/****** Object:  StoredProcedure [dbo].[spliq_calc_aporte_reliq]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_calc_aporte_reliq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_calc_aporte_reliq]
GO
/****** Object:  StoredProcedure [dbo].[spliq_calc_anticip_reliq]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_calc_anticip_reliq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_calc_anticip_reliq]
GO
/****** Object:  StoredProcedure [dbo].[spliq_cal_impuesto_reliq]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_cal_impuesto_reliq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_cal_impuesto_reliq]
GO
/****** Object:  StoredProcedure [dbo].[spliq_borro_indivi_reliq]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_borro_indivi_reliq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_borro_indivi_reliq]
GO
/****** Object:  StoredProcedure [dbo].[spliq_aporte_segur_reliq]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_aporte_segur_reliq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_aporte_segur_reliq]
GO
/****** Object:  StoredProcedure [dbo].[spliq_aporte_mutual_reliq]    Script Date: 05/03/2019 15:03:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spliq_aporte_mutual_reliq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spliq_aporte_mutual_reliq]
GO

/****** Object:  StoredProcedure [dbo].[spliq_aporte_mutual_reliq]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE procedure [dbo].[spliq_aporte_mutual_reliq](@sp_mes_proceso int,@sp_ano_proceso int,@sp_empresa int,@sp_planta int,
@sp_nro_trabajador int,@sp_dv_trabajador char(1),@sp_tipo_proceso char(4),@sp_consolida_empresa char(1),
@sp_imponible numeric(28,10), @por_mutual_base decimal(7,4),@por_mutual_adic decimal(7,4),
@sp_aporte numeric(28,10) output, @sp_aporte_adic numeric(28,10) output, @sp_aporte_sanna numeric(28,10) output)
as
declare @sp_ini_informacio datetime,@sp_fin_informacio datetime,@sp_nombre char(50),@sp_cod_centro_cost int,
        @sp_cod_sucursal int,@sp_tramo_carga_fam char(1),@sp_cod_tipo_trabaj char(2),@sp_nro_convenio int,
        @sp_valor_especial numeric(38,10),@sp_tot_imp_no_prop numeric(38,10),@sp_carga_fam_peso int,
        @sp_carga_familiar int,@sp_aporte_especial int,@sp_tot_desc_cta_ct numeric(38,10),
        @sp_val_liquido_pag numeric(38,10),@sp_tot_impon_sin_t numeric(38,10),@sp_tot_imponible numeric(38,10),
        @sp_monto_dl18566 numeric(38,10),@sp_afecto_impto numeric(38,10),@sp_mto_tope60_dfl4 numeric(38,10),
        @sp_mto_dfl44 numeric(38,10),@sp_tot_impon_stg numeric(38,10),@sp_nAfecImpo numeric(38,10),
        @sp_I900 int,@valor_decimal numeric(38,10),@monto_haber_l numeric(38,10),@monto_tope_uf	numeric(38,10),
        @valor_tope_uf numeric(38,10),@valor_topado numeric(38,10),@unidad_moneda_l char(4),@cod_haber_l int,
        @tipo_convenio_l int,@tope_uf_l decimal(13,4),@val_min_redond_l int,@val_max_redond_l int,
        @nConcepto_l int,@proporcional_l char(1),@proporcional_h char(1),@tipo_hab_contab_l char(1),
        @indic_redond_l char(1),@tip_trabajador_l char(2),@historico_l char(18),@rutina_l char(100),
        @sValor_liquido varchar(50),@nDigRedondeo int,@nDigRedondeomax int,@nUltimoValor int,
        @nRedondeo numeric(38,10),@sp_val_liquido_pag_aux int,@valor_total_habere numeric(38,10),
        @sUltimoValor char(10),@nValorPaso int,@nValorPaso2 int,@mto_descuento decimal(13,4),
        @cod_unidad_tope_l char(4),@sp_tope_minimo decimal(13,4),@sp_unidad_tope_min char(4),@monto_tope_min decimal(13,4),
        @por_mutual_sanna decimal(7,4),@sp_rut_trabajador int

declare @select_aportes varchar(8000)
declare @bPrimerAporte int

select @select_aportes = 'insert into #tmp_aportes_reliq select cod_haber,monto_haber,cod_unidad_moneda,acumula_historico,cod_tip_trabajador,cod_tipo_convenio,'+
'rutina,tipo_hab_contabili,proporcional_dias,tope_uf,prop_dias_habiles,cod_unidad_tope,'+
'tope_minimo,unidad_tope_min,prioridad from haber where ' + 
'cod_empresa = '+ convert(char(20),@sp_empresa) +' and cod_planta=' + convert(char(20),@sp_planta) + ' and ' +
'tipo_hab_contabili = ''E'' order by cod_haber,prioridad '

create table #tmp_aportes_reliq(cod_haber int,monto_haber decimal(13,4) NULL,cod_unidad_moneda char(4) NULL,acumula_historico char(18) NULL,
cod_tip_trabajador char(2) NULL,cod_tipo_convenio int NULL,rutina char(100) NULL,tipo_hab_contabili char(1) NULL,proporcional_dias char(1) NULL,
tope_uf decimal(13,4) NULL,prop_dias_habiles char(1) NULL,cod_unidad_tope char(4) NULL,tope_minimo decimal(13,4) NULL,unidad_tope_min char(4) NULL,
prioridad int NULL)

exec (@select_aportes) 

select @por_mutual_base = 0
select @por_mutual_adic = 0
select @por_mutual_sanna = 0

select @sp_rut_trabajador = rut_trabajador
from personal
where
cod_empresa    = @sp_empresa        and
cod_planta     = @sp_planta         and
nro_trabajador = @sp_nro_trabajador and
dv_trabajador  = @sp_dv_trabajador

if @sp_consolida_empresa = 'N'
select  @por_mutual_base = por_mutual_base,
        @por_mutual_adic = por_mutual_adic,
        @por_mutual_sanna = por_mutual_sanna
from historico_liquidac
where
cod_empresa = @sp_empresa  and
cod_planta  = @sp_planta   and
cod_tipo_proceso = 'LQ'    and
ano_periodo = @sp_ano_proceso and
mes_periodo = @sp_mes_proceso and
nro_trabajador = @sp_nro_trabajador and
dv_trabajador  = @sp_dv_trabajador
else
select  @por_mutual_base  = a.por_mutual_base,
        @por_mutual_adic  = a.por_mutual_adic,
        @por_mutual_sanna = a.por_mutual_sanna
from historico_liquidac a, personal b
where
a.cod_empresa      = @sp_empresa        and
a.cod_tipo_proceso = 'LQ'               and
a.ano_periodo      = @sp_ano_proceso    and
a.mes_periodo      = @sp_mes_proceso    and
a.cod_empresa      = b.cod_empresa      and
a.cod_planta       = b.cod_planta       and
a.nro_trabajador   = b.nro_trabajador   and
a.dv_trabajador    = b.dv_trabajador    and
b.rut_trabajador   = @sp_rut_trabajador


if @por_mutual_base is null select @por_mutual_base = 0
if @por_mutual_adic is null select @por_mutual_adic = 0
if @por_mutual_sanna is null select @por_mutual_sanna = 0

declare cursor_aporte cursor  for 
select cod_haber,monto_haber,cod_unidad_moneda,acumula_historico,cod_tip_trabajador,cod_tipo_convenio,
       rutina,tipo_hab_contabili,proporcional_dias,tope_uf,prop_dias_habiles,cod_unidad_tope,
       tope_minimo,unidad_tope_min from #tmp_aportes_reliq order by cod_haber,prioridad for read only 
open cursor_aporte
fetch cursor_aporte into @cod_haber_l,@monto_haber_l,@unidad_moneda_l,@historico_l,@tip_trabajador_l,
                         @tipo_convenio_l,@rutina_l,@tipo_hab_contab_l,@proporcional_l,@tope_uf_l,
                         @proporcional_h,@cod_unidad_tope_l,@sp_tope_minimo,@sp_unidad_tope_min
select @bPrimerAporte = 1
while @@FETCH_STATUS = 0
  begin
    select @valor_decimal = 0

    exec spliq_valores_mon_reliq @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,@sp_nro_trabajador,
    @sp_dv_trabajador,@sp_tipo_proceso,@tope_uf_l,@cod_unidad_tope_l,@cod_haber_l,
    @sp_fin_informacio,'',@proporcional_l,@proporcional_h,@monto_tope_uf output
    
    exec spliq_valores_mon_reliq @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,@sp_nro_trabajador,
    @sp_dv_trabajador,@sp_tipo_proceso,@tope_uf_l,@cod_unidad_tope_l,@cod_haber_l,
    @sp_fin_informacio,'',@proporcional_l,@proporcional_h,@monto_tope_min output
    
    if (@unidad_moneda_l ='%ILS' )
    begin
			select @valor_decimal = round(@por_mutual_sanna * ( @sp_imponible / 100 ),0)
			select @sp_aporte_sanna = @valor_decimal
    end
    else
    begin
		if @bPrimerAporte = 1
		  begin
			select @valor_decimal = round(@por_mutual_base * ( @sp_imponible / 100 ),0)
			select @sp_aporte = @valor_decimal
			select @bPrimerAporte = 0
		  end
		else
		  begin
			select @valor_decimal = round(@por_mutual_adic * ( @sp_imponible / 100 ),0)
			select @sp_aporte_adic = @valor_decimal
		  end 
    end      
	
	fetch cursor_aporte
	into    @cod_haber_l, @monto_haber_l, @unidad_moneda_l, @historico_l,
				@tip_trabajador_l, @tipo_convenio_l, @rutina_l, @tipo_hab_contab_l,
				@proporcional_l, @tope_uf_l, @proporcional_h,@cod_unidad_tope_l,
				@sp_tope_minimo,@sp_unidad_tope_min              
  end

close cursor_aporte
deallocate cursor_aporte
return









GO
/****** Object:  StoredProcedure [dbo].[spliq_aporte_segur_reliq]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE procedure [dbo].[spliq_aporte_segur_reliq](@sp_mes_proceso int,@sp_ano_proceso int,@sp_empresa int,@sp_planta int,
@sp_nro_trabajador int,@sp_dv_trabajador char(1),@sp_tipo_proceso char(4),@sp_consolida_empresa char(1),
@sp_cod_forma_pago char(1),@cod_tipo_contra char(1),@sp_fin_informacio datetime,@dias_proceso int,@sp_fec_mod_tip_con datetime,
@sp_ini_informacio datetime,@sp_tot_impon_sin_t numeric(38,10),@sp_mto_seg_cta_ind numeric(38,10) output,
@sp_mto_seg_cta_fon numeric(38,10) output, @sp_tot_impon_calc numeric(38,10) output)
as
declare @sp_nombre char(50),@sp_cod_centro_cost int,@sp_cod_sucursal int,@sp_cod_tipo_trabaj char(2),@sp_nro_convenio int,
        @valor_decimal numeric(38,10),@monto_haber_l	numeric(38,10),@monto_haber_p numeric(38,10),@monto_haber_q numeric(38,10),
        @monto_tope_uf numeric(38,10),@valor_tope_uf numeric(38,10),@valor_topado numeric(38,10),@unidad_moneda_l char(4),
        @cod_haber_l int,@tipo_convenio_l int,@tip_trabajador_l char(2),@cod_unidad_tope_l char(4),@sp_tope_minimo decimal(13,4),
        @sp_unidad_tope_min char(4),@monto_tope_min decimal(13,4),@sp_prioridad int,
        @monto_descuento_l decimal(38,10),@valor_topado_tope decimal(38,10),@historico_l char(18),
        @proporcional_l char(1),@proporcional_h char(1),@rutina_l char(100),@sp_nro_dias_enferm int,@monto_tope_descto decimal(13,4),
        @nFactor_cambio1 decimal(13,12),@nFactor_cambio2 decimal(13,12),@nFactor_cambio decimal(13,12),@tope_uf_l decimal(13,4),
        @moneda_tope_l char(4),@codigo_busco_l char(10),@sp_nro_dias_asistidos int, @valor_tope numeric(38,10),
        @valor_topado_tope_prop decimal(38,10), @sp_fin_informacio_ant datetime , @sp_nro_dias_vacacione int, @esTopeMesAnterior int,
	@nPropMesAnt decimal(38,10), @sp_fec_ini_contr_vige datetime, @sp_fec_fin_contr datetime
declare @ultimo_mes int, @ultimo_ano int, @sp_rut_trabajador int, @ano_proc int, @mes_proc int

select @codigo_busco_l = ' '
select @nFactor_cambio1 = 1
select @nFactor_cambio2 = 1
select @valor_topado_tope = 0
select @valor_topado_tope_prop = 0
select @esTopeMesAnterior = 0

select @sp_rut_trabajador = rut_trabajador
from personal
where
cod_empresa    = @sp_empresa        and
cod_planta     = @sp_planta         and
nro_trabajador = @sp_nro_trabajador and
dv_trabajador  = @sp_dv_trabajador


if @sp_consolida_empresa = 'N'
select top 1 @ultimo_ano = h.ano_periodo, 
             @ultimo_mes = h.mes_periodo
      from historico_liquidac h
      where h.cod_empresa = @sp_empresa and
            h.cod_planta = @sp_planta and
            h.cod_tipo_proceso='LQ'  and 
            h.ano_periodo* 100 + h.mes_periodo = @sp_ano_proceso*100+@sp_mes_proceso and 
            h.nro_trabajador=@sp_nro_trabajador and
            h.dv_trabajador=@sp_dv_trabajador
order by h.nro_dias_asistidos desc, h.ano_periodo desc, h.mes_periodo desc 
else
select top 1 @ultimo_ano = h.ano_periodo, 
             @ultimo_mes = h.mes_periodo
      from historico_liquidac h, personal b
      where h.cod_empresa = @sp_empresa and
            h.cod_tipo_proceso='LQ'  and 
            h.ano_periodo* 100 + h.mes_periodo = @sp_ano_proceso*100+@sp_mes_proceso and 
			h.cod_empresa    = b.cod_empresa and
			h.cod_planta     = b.cod_planta  and
			h.nro_trabajador = b.nro_trabajador and
			h.dv_trabajador  = b.dv_trabajador and
			b.nro_trabajador = @sp_rut_trabajador
order by h.nro_dias_asistidos desc, h.ano_periodo desc, h.mes_periodo desc 


if @ultimo_ano is null select @ultimo_ano = 0
if @ultimo_mes is null select @ultimo_mes = 0

if @ultimo_ano > 0
   select @sp_fin_informacio_ant = fec_fin_info_perio
   from   control_procesos
   where  cod_empresa = @sp_empresa and
          cod_planta = @sp_planta and
          cod_mes_proceso = @ultimo_mes and
          ano_proc_cont_proc = @ultimo_ano 
else
   select @sp_fin_informacio_ant = @sp_fin_informacio



if datepart(mm,@sp_fec_mod_tip_con) = @sp_mes_proceso and
   datepart(yy,@sp_fec_mod_tip_con) = @sp_ano_proceso and
   datepart(dd,@sp_fec_mod_tip_con) != 1 and @cod_tipo_contra = 'P'
   begin
      select @nFactor_cambio1 = ((datepart(dd,@sp_fec_mod_tip_con) - datepart(dd,@sp_ini_informacio ) )*1.0) / datepart(dd,@sp_fin_informacio)
      select @nFactor_cambio2 = (( (datepart(dd,@sp_fin_informacio) - datepart(dd,@sp_fec_mod_tip_con)) + 1 )*1.0) / datepart(dd,@sp_fin_informacio)
   end

select @monto_descuento_l=0
select @sp_tot_impon_calc=0
select @valor_tope=0
select @sp_tot_impon_calc = @sp_tot_impon_sin_t

if @sp_consolida_empresa = 'N'
select  @sp_cod_tipo_trabaj = cod_tipo_trabajado,
        @sp_cod_centro_cost = cod_centro_costo,
        @sp_cod_sucursal = cod_sucursal,
        @sp_nro_dias_enferm = nro_dias_enfermo,
        @sp_nro_dias_asistidos = nro_dias_asistidos,
	@sp_nro_dias_vacacione = nro_dias_vacacione,
	@sp_fec_ini_contr_vige = fec_ini_contr_vige,
	@sp_fec_fin_contr = fec_fin_contr
from historico_liquidac
where cod_empresa = @sp_empresa and
      cod_planta = @sp_planta and
      mes_periodo = @sp_mes_proceso and
      ano_periodo = @sp_ano_proceso and
      cod_tipo_proceso='LQ' and
      nro_trabajador=@sp_nro_trabajador	and
      dv_trabajador=@sp_dv_trabajador
else
select  @sp_cod_tipo_trabaj = a.cod_tipo_trabajado,
        @sp_cod_centro_cost = a.cod_centro_costo,
        @sp_cod_sucursal = a.cod_sucursal,
        @sp_nro_dias_enferm = a.nro_dias_enfermo,
        @sp_nro_dias_asistidos = a.nro_dias_asistidos,
	@sp_nro_dias_vacacione = a.nro_dias_vacacione,
	@sp_fec_ini_contr_vige = a.fec_ini_contr_vige,
	@sp_fec_fin_contr = a.fec_fin_contr
from historico_liquidac a, personal b
where a.cod_empresa = @sp_empresa and
      a.mes_periodo = @sp_mes_proceso and
      a.ano_periodo = @sp_ano_proceso and
      a.cod_tipo_proceso='LQ' and
	  a.cod_empresa  = b.cod_empresa and
	  a.cod_planta   = b.cod_planta  and
	  a.nro_trabajador = b.nro_trabajador and
	  a.dv_trabajador  = b.dv_trabajador and
	  b.rut_trabajador = @sp_rut_trabajador


select @sp_nro_dias_enferm = 0

select @valor_topado_tope  = mto_tope_afc_peso
from parametro
where
cod_empresa = @sp_empresa     and
cod_planta  = @sp_planta      and
ano         = @sp_ano_proceso and
nro_mes     = @sp_mes_proceso

if @sp_nro_dias_enferm > 0
   begin
      select  @sp_tot_impon_calc = 0
      if @sp_consolida_empresa = 'N'
        select top 1 
            @sp_tot_impon_calc = tot_impon_sin_tope
        from historico_liquidac
        where cod_empresa = @sp_empresa and
              cod_planta = @sp_planta and
              cod_tipo_proceso='LQ' and
              ano_periodo* 100 + mes_periodo < @sp_ano_proceso*100+@sp_mes_proceso and 
              nro_trabajador=@sp_nro_trabajador and
              dv_trabajador=@sp_dv_trabajador and
              nro_dias_enfermo = 0
        order by ano_periodo desc, mes_periodo desc
      else
        select top 1 
            @sp_tot_impon_calc = sum(a.tot_impon_sin_tope), @ano_proc = a.ano_periodo, @mes_proc = a.mes_periodo
        from historico_liquidac a, personal b
        where a.cod_empresa = @sp_empresa and
              a.cod_tipo_proceso='LQ' and
              a.ano_periodo* 100 + a.mes_periodo < @sp_ano_proceso*100+@sp_mes_proceso and 
              a.nro_trabajador=@sp_nro_trabajador and
              a.dv_trabajador=@sp_dv_trabajador and
			  a.cod_empresa = b.cod_empresa and
			  a.cod_planta  = b.cod_planta and
			  a.nro_trabajador = b.nro_trabajador and
			  a.dv_trabajador = b.dv_trabajador and
			  b.rut_trabajador = @sp_rut_trabajador and
              a.nro_dias_enfermo = 0
	    group by a.ano_periodo , a.mes_periodo 
        order by a.ano_periodo desc, a.mes_periodo desc

	select @esTopeMesAnterior = 1

      if @sp_tot_impon_calc is null or @sp_tot_impon_calc = 0
         if  @sp_consolida_empresa = 'N'
            select 
            @sp_tot_impon_calc = sum(isnull(valor_transac_peso,0))
            from haberes_contractua
            where cod_empresa = @sp_empresa and
            cod_planta = @sp_planta and
            cod_tipo_proceso='LQ' and
            ano_periodo=@sp_ano_proceso and
	         mes_periodo=@sp_mes_proceso and
            nro_trabajador=@sp_nro_trabajador and
            dv_trabajador=@sp_dv_trabajador and
            cod_haber in (select cod_haber from haber where cod_empresa=@sp_empresa and
                          cod_planta=@sp_planta and concepto_imponible='S')
         else
            select 
            @sp_tot_impon_calc = sum(isnull(a.valor_transac_peso,0))
            from haberes_contractua a, personal b
            where 
			a.cod_empresa = @sp_empresa and
            a.cod_tipo_proceso='LQ' and
            a.ano_periodo=@sp_ano_proceso and
	        a.mes_periodo=@sp_mes_proceso and
			a.cod_empresa = b.cod_empresa and
			a.cod_planta = b.cod_planta and
			a.nro_trabajador = b.nro_trabajador and
			a.dv_trabajador = b.dv_trabajador and
			b.rut_trabajador = @sp_rut_trabajador and
            a.cod_haber in (select cod_haber from haber where cod_empresa=@sp_empresa and
                          cod_planta=@sp_planta and concepto_imponible='S')
        
     end  
else



/** DAG DAG DAG 2492 DAG DAG DAG ***/
if  (@sp_nro_dias_enferm > 0)AND
(
( @sp_fec_ini_contr_vige > @sp_ini_informacio and @sp_fec_ini_contr_vige < @sp_fin_informacio ) OR
( ( @sp_fec_fin_contr > @sp_ini_informacio and @sp_fec_fin_contr < @sp_fin_informacio) and
	( @sp_fec_fin_contr is not null) ) )
And ( @esTopeMesAnterior = 1 )
begin

	/** DAG Proporcionar topes de meses anteriores En base 30**/
	Select @nPropMesAnt = (( @sp_nro_dias_enferm + @sp_nro_dias_asistidos + @sp_nro_dias_vacacione ) / 30.0)
	
	Select @sp_tot_impon_calc = (  @sp_tot_impon_calc * @nPropMesAnt )
	
end

select @monto_tope_descto=tope_uf,
       @monto_descuento_l=mto_descuento
from descuento
where cod_empresa = @sp_empresa and
      cod_planta = @sp_planta and
      cod_descuento=509

declare cursor_aporte cursor  for
SELECT  cod_haber, monto_haber, cod_unidad_moneda, acumula_historico,
        cod_tip_trabajador, cod_tipo_convenio, rutina, 
        proporcional_dias, prop_dias_habiles,tope_uf,cod_unidad_tope
from haber
WHERE cod_empresa = @sp_empresa AND cod_planta = @sp_planta
AND  tipo_hab_contabili = 'F' 
ORDER BY prioridad
for read only

open cursor_aporte
fetch cursor_aporte
into    @cod_haber_l, @monto_haber_l, @unidad_moneda_l, @historico_l,
        @tip_trabajador_l, @tipo_convenio_l, @rutina_l, 
        @proporcional_l, @proporcional_h,@tope_uf_l,@moneda_tope_l

select @sp_prioridad=1
select @sp_mto_seg_cta_ind=0
select @sp_mto_seg_cta_fon=0
select @monto_haber_p=0
select @monto_haber_q=0

select @nFactor_cambio = @nFactor_cambio1

while @@FETCH_STATUS = 0  and @sp_prioridad <=2
  begin
    if @monto_haber_l > 0
      begin
        if @cod_tipo_contra != 'P' OR  (@sp_prioridad=1 AND @nFactor_cambio1 < 1)
          begin
            if @sp_ano_proceso * 100 + @sp_mes_proceso < 200905
              begin
                select @monto_haber_p= @monto_haber_l
                
                select @monto_haber_l= sum(monto_haber),
                       @tope_uf_l=sum(tope_uf)
                from haber
                where 
                cod_empresa = @sp_empresa and
                cod_planta = @sp_planta and
                tipo_hab_contabili = 'F'
                
                select @monto_haber_l = @monto_haber_l + @monto_descuento_l
                select @tope_uf_l = @tope_uf_l + @monto_tope_descto
                if @nFactor_cambio1 = 1
                  begin
                    select @sp_prioridad=3
                  end
              end
            else
              begin                
                if @sp_prioridad=1
                  begin
                    select @monto_haber_p= @monto_haber_l  
                    select @monto_haber_l = 2.8
                    if @nFactor_cambio1 < 1
                      select @monto_haber_q = 0.2  
                    else
                      select @monto_haber_q = 0 
                  end
                else
                  begin
                    select @monto_haber_l = 0.2
                    select @monto_haber_q = 0  
                  end
              end   
          end
        if @unidad_moneda_l = '%IMS'
          begin
            if (@sp_prioridad=1 AND @nFactor_cambio1 < 1)
              begin                
                select @valor_decimal = (round(@sp_tot_impon_calc * @nFactor_cambio1 * (@monto_haber_l / 100.),0)) + (round(@sp_tot_impon_calc * @nFactor_cambio2 * ( @monto_haber_p / 100.),0))  
                                             
              end
            else
              begin
                select @valor_decimal = (round(@sp_tot_impon_calc * @nFactor_cambio * (@monto_haber_l / 100.),0)) +
                                       (round(@sp_tot_impon_calc * @nFactor_cambio1 * ( @monto_haber_q / 100.),0)) 
              end
          end
        else
          begin
            select @valor_decimal = 0
          end
        
        if @nFactor_cambio1 < 1
          begin
            if @tope_uf_l != 0 and @moneda_tope_l is not  null and @moneda_tope_l != ' '
              begin
                if @sp_nro_dias_enferm > 0
                  exec  spliq_valores_mon_reliq @sp_mes_proceso, @sp_ano_proceso, @sp_empresa,@sp_planta,@sp_nro_trabajador,
                        @sp_dv_trabajador,@sp_tipo_proceso, @tope_uf_l,@moneda_tope_l,0, @sp_fin_informacio_ant,
                        @codigo_busco_l,'','',@valor_tope_uf output
                else
                  exec spliq_valores_mon_reliq @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,@sp_nro_trabajador,
                       @sp_dv_trabajador,@sp_tipo_proceso,@tope_uf_l,@moneda_tope_l,0,@sp_fin_informacio,
                       @codigo_busco_l,'','',@valor_tope_uf output
                if  @valor_decimal > @valor_tope_uf
                  begin
                    select @valor_decimal = @valor_tope_uf
                end
              end
          end         
      end 
    if @sp_prioridad =1
      begin
        select  @sp_mto_seg_cta_ind= @valor_decimal
        select  @nFactor_cambio=@nFactor_cambio2
      end
    else
      begin
        if @sp_prioridad=2
          begin
            select  @sp_mto_seg_cta_fon=@valor_decimal
          end
        else
          begin
            if @sp_prioridad=3
              begin
                select @sp_mto_seg_cta_ind = @valor_decimal
                select @sp_mto_seg_cta_fon=0
              end
          end   
      end
    select @sp_prioridad = @sp_prioridad + 1
    fetch cursor_aporte     into    @cod_haber_l, @monto_haber_l, @unidad_moneda_l, @historico_l,
            @tip_trabajador_l, @tipo_convenio_l, @rutina_l, 
            @proporcional_l, @proporcional_h,@tope_uf_l,@moneda_tope_l
  end
close  cursor_aporte
deallocate cursor_aporte
return








GO
/****** Object:  StoredProcedure [dbo].[spliq_borro_indivi_reliq]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO







CREATE PROCEDURE  [dbo].[spliq_borro_indivi_reliq](@sp_mes_proceso_liq int, @sp_ano_proceso_liq int,
@sp_empresa int, @sp_planta int,@sp_nro_trabajador int, @sp_dv_trabajador char(1),@sp_tipo_proceso char(4))
as

delete from liquidacio_haberes
where 
cod_empresa      = @sp_empresa and
cod_planta       = @sp_planta and
cod_tipo_proceso = @sp_tipo_proceso and
ano_periodo      = @sp_ano_proceso_liq and
mes_periodo      = @sp_mes_proceso_liq and
nro_trabajador   = @sp_nro_trabajador and
dv_trabajador    = @sp_dv_trabajador

delete from liquida_descuentos
where 
cod_empresa      = @sp_empresa and
cod_planta       = @sp_planta and
cod_tipo_proceso = @sp_tipo_proceso and
ano_periodo      = @sp_ano_proceso_liq and
mes_periodo      = @sp_mes_proceso_liq and
nro_trabajador   = @sp_nro_trabajador and
dv_trabajador    = @sp_dv_trabajador

delete from hist_diferencias
where 
cod_empresa      = @sp_empresa and
cod_planta       = @sp_planta and
cod_tipo_proceso = @sp_tipo_proceso and
ano_proceso_liq  = @sp_ano_proceso_liq and
mes_proceso_liq  = @sp_mes_proceso_liq and
nro_trabajador   = @sp_nro_trabajador and
dv_trabajador    = @sp_dv_trabajador

delete from historico_liquidac
where 
cod_empresa      = @sp_empresa and
cod_planta       = @sp_planta and
cod_tipo_proceso = @sp_tipo_proceso and
ano_periodo      = @sp_ano_proceso_liq and
mes_periodo      = @sp_mes_proceso_liq and
nro_trabajador   = @sp_nro_trabajador and
dv_trabajador    = @sp_dv_trabajador

delete from errores_calculo
where 
cod_empresa      = @sp_empresa and
cod_planta       = @sp_planta and
cod_tipo_proceso = @sp_tipo_proceso and
nro_trabajador   = @sp_nro_trabajador and
dv_trabajador    = @sp_dv_trabajador









GO
/****** Object:  StoredProcedure [dbo].[spliq_cal_impuesto_reliq]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE procedure [dbo].[spliq_cal_impuesto_reliq]
(@sp_mes_proceso int, @sp_ano_proceso int,@sp_empresa int, @sp_planta int,
@sp_nro_trabajador int, @sp_dv_trabajador char(1),@sp_cod_sucursal int,
@sp_cod_tipo_trabaj char(2),@sp_afecto_impto numeric(38,10), @sp_consolida char(1),
@sp_monto_impuesto_reliq numeric(38,10) output, @sp_asignacion_zona int output)
as
declare 
@sp_ini_informacio datetime, 
@sp_fin_informacio datetime, 
@sp_fin_anterior    datetime
declare @sp_tasa_mto_impto  numeric(38,10)
declare @sp_rebaja_impuesto numeric(38,10)
declare @sp_tope_asig_zona  int
declare @sp_pje_asig_zona   numeric(38,10)
declare @sp_val_leyes_socia int
declare @sp_tot_dctos_legal int
declare @monto_calculo int, @region int, @tramo_paso int, @encontro int
declare @porcentaje numeric(38,10)
declare @valor_decimal numeric(38,10)
declare @tabla_impuesto_l char(1)
declare @cant_rebajar_pes_l numeric(38,10), @tope_superior numeric(38,10)
declare @tasa_impuesto_l  numeric(38,10),@sp_reb_tributacion numeric(38,10) ,
@sp_tope_tribut numeric(13,4),@sp_uf_mes  numeric(13,4),@sp_mto_seguro_des numeric(38,10),
@leyes_reliquidas numeric(38,10),@sp_fec_ini_contr datetime,@haber_reliq numeric(38,10),
@monto_reliq numeric(38,10),@sp_mto_prev_volunt numeric(38,10),@sp_monto_ahor_prev numeric(38,10),
@sp_afecto_impto_previo numeric(38,10),@sp_afecto_impto_previo1 numeric(38,10),@sp_afecto_impto_previo2 numeric(38,10) ,
@monto_cancel_impto_previo numeric(38,10),@monto_cancel_impto_previo1 numeric(38,10),@monto_cancel_impto_previo2 numeric(38,10),
@sp_rut_trabajador int,@sp_flg_revisa_hist char(1)

select @sp_flg_revisa_hist='N'
select @sp_afecto_impto_previo = 0
select @sp_afecto_impto_previo1 = 0
select @sp_afecto_impto_previo2 = 0
select @monto_cancel_impto_previo = 0
select @monto_cancel_impto_previo1 = 0
select @monto_cancel_impto_previo2 = 0

select @sp_rut_trabajador = 0
select @sp_mto_prev_volunt = 0

select @sp_flg_revisa_hist = flg_revisa_hist
from control_parametros
where 
cod_empresa        = @sp_empresa and 
cod_planta         = @sp_planta and
mes_control_proces = @sp_mes_proceso and 
ano_control_proces = @sp_ano_proceso

select @leyes_reliquidas = sum(valor_concepto)
from descuento_informad
where
cod_empresa      = @sp_empresa and
cod_planta       = @sp_planta and
nro_trabajador   = @sp_nro_trabajador and
dv_trabajador    = @sp_dv_trabajador and
cod_descuento    in (187,188) and
cod_tipo_proceso = 'BONO'

if @leyes_reliquidas is null select @leyes_reliquidas=0

select @sp_pje_asig_zona  = isnull(pje_asigacion_zona,0),
       @sp_tope_asig_zona = isnull(tope_asignaci_zona,0)
from parametro
where 
cod_empresa = @sp_empresa and
cod_planta  = @sp_planta and
nro_mes     = @sp_mes_proceso and
ano         = @sp_ano_proceso

select @sp_ini_informacio = fec_ini_info_perio,
       @sp_fin_informacio = fec_fin_info_perio
from control_procesos
where 
cod_empresa        = @sp_empresa and
cod_planta         = @sp_planta and
cod_mes_proceso    = @sp_mes_proceso and
ano_proc_cont_proc = @sp_ano_proceso 

select @sp_uf_mes         = val_moneda_unidad
from valor_moneda
where
cod_unidad_cobro  = 'UF' and
fec_valor_moneda  = @sp_fin_informacio

SELECT @tabla_impuesto_l = tabla_impuesto
from tipo_trabajador
where
cod_empresa        = @sp_empresa and
cod_tipo_trabajado = @sp_cod_tipo_trabaj

select @sp_reb_tributacion = 0

exec spliq_valores_mon_reliq @sp_mes_proceso, @sp_ano_proceso, @sp_empresa, @sp_planta,
     @sp_nro_trabajador, @sp_dv_trabajador, 'LQ',1,'TAPV',502,
     @sp_fin_informacio, '', 'N','N', @sp_tope_tribut output

if @sp_tope_tribut = 0 or @sp_tope_tribut is null
  exec  spliq_valores_mon_reliq @sp_mes_proceso, @sp_ano_proceso, @sp_empresa, @sp_planta,
        @sp_nro_trabajador, @sp_dv_trabajador, 'LQ',50,'UF',502,
        @sp_fin_informacio, '', 'N','N', @sp_tope_tribut output

if @sp_tope_tribut = 0 or @sp_tope_tribut is null
  select @sp_tope_tribut = 0

if @sp_mto_prev_volunt > 0
  begin
    select @sp_tope_tribut = @sp_tope_tribut - @sp_mto_prev_volunt
    if @sp_tope_tribut < 0 select @sp_tope_tribut = 0
  end

if  @sp_reb_tributacion > 0
  begin
    if @sp_reb_tributacion > @sp_tope_tribut
      begin
        select @sp_reb_tributacion= @sp_tope_tribut
      end
  end
select @valor_decimal = 0
if @sp_cod_sucursal = 0
  begin
    if exists(select provincia.cod_region from planta, comuna, provincia
              where cod_empresa = @sp_empresa and cod_planta = @sp_planta and
              planta.cod_comuna = comuna.cod_comuna and comuna.cod_provincia = provincia.cod_provincia)
      begin
        select @region=provincia.cod_region 
        from planta, comuna, provincia
        where
        cod_empresa = @sp_empresa and
        cod_planta = @sp_planta and
        planta.cod_comuna = comuna.cod_comuna and
        comuna.cod_provincia = provincia.cod_provincia
        
        if @region = 1 OR @region = 12
          begin
            select @valor_decimal = round(@sp_afecto_impto *round(( @sp_pje_asig_zona /( 100. + @sp_pje_asig_zona )),4),4)
          end
      end    
  end
else
  begin
    if exists(select pje_asig_zona_suc from hist_asig_zona
              where 
              cod_empresa  = @sp_empresa and 
              cod_planta   = @sp_planta  and 
              cod_sucursal = @sp_cod_sucursal and
              ano_periodo  = @sp_ano_proceso  and
              mes_periodo  = @sp_mes_proceso)
      begin
        select  @porcentaje        = pje_asig_zona_suc,
                @sp_tope_asig_zona = tope_asignacion
        from hist_asig_zona
        where
        cod_empresa  = @sp_empresa and
        cod_planta   = @sp_planta and
        cod_sucursal = @sp_cod_sucursal and
        ano_periodo  = @sp_ano_proceso  and
        mes_periodo  = @sp_mes_proceso
        select @valor_decimal = round(@sp_afecto_impto * round(( @porcentaje / ( 100. + @porcentaje )),4),4)
      end
   else if exists(select pje_asig_zona_suc from sucursal
              where cod_empresa=@sp_empresa and cod_planta = @sp_planta and cod_sucursal = @sp_cod_sucursal)
      begin
        select @porcentaje=pje_asig_zona_suc,
               @sp_tope_asig_zona=tope_asignacion
        from sucursal
        where
        cod_empresa = @sp_empresa and
        cod_planta=@sp_planta and
        cod_sucursal = @sp_cod_sucursal
        
        select @valor_decimal = round(@sp_afecto_impto * round(( @porcentaje / ( 100. + @porcentaje )),4),4)
      end    
  end
 
 if @valor_decimal is null
	select @valor_decimal = 0
 
 if @sp_tope_asig_zona is null
	select @sp_tope_asig_zona = 0


select @sp_asignacion_zona = round(@valor_decimal, 0)

if @sp_asignacion_zona > 0
  begin
    if @sp_tope_asig_zona < @sp_asignacion_zona
      select @sp_asignacion_zona = @sp_tope_asig_zona
    select @sp_afecto_impto = @sp_afecto_impto - @sp_asignacion_zona
  end

if @sp_afecto_impto <= 0 or @sp_afecto_impto is null
  begin
    select @sp_afecto_impto = 0
  end


select @sp_rut_trabajador = rut_trabajador
from personal
where
cod_empresa    = @sp_empresa        and
cod_planta     = @sp_planta         and
nro_trabajador = @sp_nro_trabajador and
dv_trabajador  = @sp_dv_trabajador

if @sp_flg_revisa_hist is null select @sp_flg_revisa_hist = 'N'

if ( @sp_flg_revisa_hist = 'C' or  @sp_flg_revisa_hist ='E'  or  @sp_flg_revisa_hist ='P' )  and @sp_consolida = 'N'
  begin
    if @sp_flg_revisa_hist = 'E'
      begin
        select @sp_afecto_impto_previo1    = sum(isnull(afecto_impto,0)),
               @monto_cancel_impto_previo1 = sum(isnull(monto_cancel_impto,0))
        from historico_liquidac a, personal b
        where
        a.cod_empresa     = @sp_empresa and
        a.cod_planta      = @sp_planta and
        a.mes_periodo     = @sp_mes_proceso and
        a.ano_periodo     = @sp_ano_proceso and
        a.nro_trabajador != @sp_nro_trabajador and
        a.cod_tipo_proceso in (select p.cod_tipo_proceso from tipo_proceso p where p.flg_proceso_lq='S') and
        a.cod_empresa     = b.cod_empresa and
        a.cod_planta      = b.cod_planta and
        a.nro_trabajador  = b.nro_trabajador and
        a.dv_trabajador   = b.dv_trabajador and
        b.rut_trabajador  = @sp_rut_trabajador
               
        select @sp_afecto_impto_previo2    = sum(isnull(afecto_impto,0)),
               @monto_cancel_impto_previo2 = sum(isnull(monto_cancel_impto,0))
        from hist_diferencias a, personal b
        where 
        a.cod_empresa     = @sp_empresa and
        a.cod_planta      = @sp_planta and
        a.mes_periodo     = @sp_mes_proceso and
        a.ano_periodo     = @sp_ano_proceso and
        a.nro_trabajador != @sp_nro_trabajador and
        a.cod_tipo_proceso in (select p.cod_tipo_proceso from tipo_proceso p where p.flg_proceso_lq='S') and
        a.cod_empresa     = b.cod_empresa and
        a.cod_planta      = b.cod_planta and
        a.nro_trabajador  = b.nro_trabajador and
        a.dv_trabajador   = b.dv_trabajador and
        b.rut_trabajador  = @sp_rut_trabajador
      end
    else if @sp_flg_revisa_hist = 'C'
      begin
        select @sp_afecto_impto_previo1    = sum(isnull(afecto_impto,0)),
               @monto_cancel_impto_previo1 = sum(isnull(monto_cancel_impto,0))
        from historico_liquidac a, personal b
        where 
        ( (a.cod_empresa = @sp_empresa and
        a.cod_planta != @sp_planta and
        a.mes_periodo = @sp_mes_proceso and
        a.ano_periodo = @sp_ano_proceso ) or
        (a.cod_empresa = @sp_empresa and
        a.cod_planta = @sp_planta and
        a.mes_periodo = @sp_mes_proceso and
        a.ano_periodo = @sp_ano_proceso and
        a.nro_trabajador != @sp_nro_trabajador) )  and
        a.cod_tipo_proceso in (select p.cod_tipo_proceso from tipo_proceso p where p.flg_proceso_lq='S') and
        a.cod_empresa=b.cod_empresa and
        a.cod_planta=b.cod_planta and
        a.nro_trabajador=b.nro_trabajador and
        a.dv_trabajador=b.dv_trabajador and
        b.rut_trabajador = @sp_rut_trabajador
                
        select @sp_afecto_impto_previo2    = sum(isnull(afecto_impto,0)),
               @monto_cancel_impto_previo2 = sum(isnull(monto_cancel_impto,0))
        from hist_diferencias a, personal b
        where
        ( (a.cod_empresa = @sp_empresa and
        a.cod_planta != @sp_planta and
        a.mes_periodo = @sp_mes_proceso and
        a.ano_periodo = @sp_ano_proceso ) or
        (a.cod_empresa = @sp_empresa and
        a.cod_planta = @sp_planta and
        a.mes_periodo = @sp_mes_proceso and
        a.ano_periodo = @sp_ano_proceso and
        a.nro_trabajador != @sp_nro_trabajador) )  and
        a.cod_tipo_proceso in (select p.cod_tipo_proceso from tipo_proceso p where p.flg_proceso_lq='S') and
        a.cod_empresa=b.cod_empresa and
        a.cod_planta=b.cod_planta and
        a.nro_trabajador=b.nro_trabajador and
        a.dv_trabajador=b.dv_trabajador and
        b.rut_trabajador = @sp_rut_trabajador
      end
    else if @sp_flg_revisa_hist = 'P'
      begin
        select @sp_afecto_impto_previo1    = sum(isnull(afecto_impto,0)),
               @monto_cancel_impto_previo1 = sum(isnull(monto_cancel_impto,0))
        from historico_liquidac a, personal b
        where 
        ( (a.cod_empresa = @sp_empresa and
        a.cod_planta != @sp_planta and
        a.mes_periodo = @sp_mes_proceso and
        a.ano_periodo = @sp_ano_proceso ) or
        (a.cod_empresa = @sp_empresa and
        a.cod_planta = @sp_planta and
        a.mes_periodo = @sp_mes_proceso and
        a.ano_periodo = @sp_ano_proceso and
        a.nro_trabajador != @sp_nro_trabajador) or 
       (a.cod_empresa != @sp_empresa and
        a.mes_periodo = @sp_mes_proceso and
        a.ano_periodo = @sp_ano_proceso ) )  and
        a.cod_tipo_proceso in (select p.cod_tipo_proceso from tipo_proceso p where p.flg_proceso_lq='S') and
        a.cod_empresa=b.cod_empresa and
        a.cod_planta=b.cod_planta and
        a.nro_trabajador=b.nro_trabajador and
        a.dv_trabajador=b.dv_trabajador and
        b.rut_trabajador = @sp_rut_trabajador
                
        select @sp_afecto_impto_previo2    = sum(isnull(afecto_impto,0)),
               @monto_cancel_impto_previo2 = sum(isnull(monto_cancel_impto,0))
        from hist_diferencias a, personal b
        where
        ( (a.cod_empresa = @sp_empresa and
        a.cod_planta != @sp_planta and
        a.mes_periodo = @sp_mes_proceso and
        a.ano_periodo = @sp_ano_proceso ) or
        (a.cod_empresa = @sp_empresa and
        a.cod_planta = @sp_planta and
        a.mes_periodo = @sp_mes_proceso and
        a.ano_periodo = @sp_ano_proceso and
        a.nro_trabajador != @sp_nro_trabajador) or 
       (a.cod_empresa != @sp_empresa and
        a.mes_periodo = @sp_mes_proceso and
        a.ano_periodo = @sp_ano_proceso ) )  and
        a.cod_tipo_proceso in (select p.cod_tipo_proceso from tipo_proceso p where p.flg_proceso_lq='S') and
        a.cod_empresa=b.cod_empresa and
        a.cod_planta=b.cod_planta and
        a.nro_trabajador=b.nro_trabajador and
        a.dv_trabajador=b.dv_trabajador and
        b.rut_trabajador = @sp_rut_trabajador
      end
    if @sp_afecto_impto_previo1 is null select @sp_afecto_impto_previo1 = 0
    if @sp_afecto_impto_previo2 is null select @sp_afecto_impto_previo2 = 0
   
    if @monto_cancel_impto_previo1 is null select @monto_cancel_impto_previo1 = 0
    if @monto_cancel_impto_previo2 is null select @monto_cancel_impto_previo2 = 0
    
    select @sp_afecto_impto_previo = @sp_afecto_impto_previo1 + @sp_afecto_impto_previo2
    select @monto_cancel_impto_previo = @monto_cancel_impto_previo1 + @monto_cancel_impto_previo2
    select @sp_afecto_impto = @sp_afecto_impto + @sp_afecto_impto_previo    
  end
else if ( @sp_flg_revisa_hist = 'N'  and @sp_consolida = 'S' )

      begin
        select @sp_afecto_impto_previo1    = sum(isnull(afecto_impto,0)),
               @monto_cancel_impto_previo1 = sum(isnull(monto_cancel_impto,0))
        from historico_liquidac a, personal b
        where 
        ( (a.cod_empresa = @sp_empresa and
        a.cod_planta != @sp_planta and
        a.mes_periodo = @sp_mes_proceso and
        a.ano_periodo = @sp_ano_proceso ) or
        (a.cod_empresa = @sp_empresa and
        a.cod_planta = @sp_planta and
        a.mes_periodo = @sp_mes_proceso and
        a.ano_periodo = @sp_ano_proceso and
        a.nro_trabajador != @sp_nro_trabajador) )  and
        a.cod_tipo_proceso in (select p.cod_tipo_proceso from tipo_proceso p where p.flg_proceso_lq='S') and
        a.cod_empresa=b.cod_empresa and
        a.cod_planta=b.cod_planta and
        a.nro_trabajador=b.nro_trabajador and
        a.dv_trabajador=b.dv_trabajador and
        b.rut_trabajador = @sp_rut_trabajador
                
        select @sp_afecto_impto_previo2    = sum(isnull(afecto_impto,0)),
               @monto_cancel_impto_previo2 = sum(isnull(monto_cancel_impto,0))
        from hist_diferencias a, personal b
        where
        ( (a.cod_empresa = @sp_empresa and
        a.cod_planta != @sp_planta and
        a.mes_periodo = @sp_mes_proceso and
        a.ano_periodo = @sp_ano_proceso ) or
        (a.cod_empresa = @sp_empresa and
        a.cod_planta = @sp_planta and
        a.mes_periodo = @sp_mes_proceso and
        a.ano_periodo = @sp_ano_proceso and
        a.nro_trabajador != @sp_nro_trabajador) )  and
        a.cod_tipo_proceso in (select p.cod_tipo_proceso from tipo_proceso p where p.flg_proceso_lq='S') and
        a.cod_empresa=b.cod_empresa and
        a.cod_planta=b.cod_planta and
        a.nro_trabajador=b.nro_trabajador and
        a.dv_trabajador=b.dv_trabajador and
        b.rut_trabajador = @sp_rut_trabajador
      end

select @encontro = 0
if @tabla_impuesto_l = 'N'
  begin
    declare cursor_impuesto cursor for
    select tope_superio_pesos, cant_rebajar_pesos, tasa_impuesto, nro_tramo
    from impuesto_unico where ano = @sp_ano_proceso and nro_mes = @sp_mes_proceso
    order by nro_tramo
    for read only
    
    open cursor_impuesto
    fetch cursor_impuesto into @tope_superior,@cant_rebajar_pes_l,@tasa_impuesto_l,@tramo_paso
    while @@FETCH_STATUS = 0
      begin
        if (@tope_superior > @sp_afecto_impto OR @tope_superior = 999999999) and @encontro = 0
          begin
            if @cant_rebajar_pes_l is null select @cant_rebajar_pes_l = 0
            if @tasa_impuesto_l is null select @tasa_impuesto_l = 0
            select @encontro = 1            
            select @sp_rebaja_impuesto = @cant_rebajar_pes_l
            select @sp_tasa_mto_impto = @tasa_impuesto_l
            select @valor_decimal = round(((@sp_afecto_impto * @tasa_impuesto_l) - @sp_rebaja_impuesto),4)            
            select @sp_monto_impuesto_reliq = round(@valor_decimal, 0)          
            if @sp_monto_impuesto_reliq <= 0 select @sp_monto_impuesto_reliq = 0
            if @sp_monto_impuesto_reliq is null select @sp_monto_impuesto_reliq = 0
            if  @sp_monto_impuesto_reliq > @monto_cancel_impto_previo
              begin
                select @sp_monto_impuesto_reliq =  @sp_monto_impuesto_reliq - @monto_cancel_impto_previo
                select @sp_afecto_impto = @sp_afecto_impto - @sp_afecto_impto_previo
              end
          end
        fetch cursor_impuesto into @tope_superior,@cant_rebajar_pes_l,@tasa_impuesto_l,@tramo_paso
      end
    close cursor_impuesto
    deallocate cursor_impuesto
  end

return @sp_monto_impuesto_reliq













GO
/****** Object:  StoredProcedure [dbo].[spliq_calc_anticip_reliq]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO









CREATE PROCEDURE  [dbo].[spliq_calc_anticip_reliq]
(@sp_mes_proceso int, @sp_ano_proceso int,@sp_empresa int, @sp_planta int,
 @sp_nro_trabajador int, @sp_dv_trabajador char(1),@sp_tipo_proceso char(4))
as
declare @sp_ini_informacio  datetime, @sp_fin_informacio datetime,
@sp_cod_centro_cost int, @sp_cod_sucursal int,@sp_cod_tipo_trabaj char(2),
@sp_valor_anticipo  int, @sp_tot_dctos_no_le int, @monto_descuento_l numeric(28,10),
@cod_descuento_l int, @correlativo int,@nro_contr_vig_proc int

select @sp_cod_sucursal    = cod_sucursal, 
       @sp_cod_centro_cost = cod_centro_costo,
       @sp_cod_tipo_trabaj = cod_tipo_trabajado, 
       @sp_tot_dctos_no_le = tot_dctos_no_legal,
       @nro_contr_vig_proc = nro_contr_vig_proc
from historico_liquidac
where 
cod_empresa      = @sp_empresa        and 
cod_planta       = @sp_planta         and
mes_periodo      = @sp_mes_proceso    and 
ano_periodo      = @sp_ano_proceso    and
cod_tipo_proceso = @sp_tipo_proceso   and
nro_trabajador   = @sp_nro_trabajador and 
dv_trabajador    = @sp_dv_trabajador

select @sp_ini_informacio = fec_ini_info_perio, 
       @sp_fin_informacio = fec_fin_info_perio
from control_procesos
where 
cod_empresa        = @sp_empresa        and 
cod_planta         = @sp_planta         and
ano_proc_cont_proc = @sp_ano_proceso    and
cod_mes_proceso    = @sp_mes_proceso 

select @sp_valor_anticipo = 0
if @sp_tot_dctos_no_le is null
  select @sp_tot_dctos_no_le = 0

select @correlativo = 1

declare movimiento_anticipo  cursor for
SELECT cod_descuento, SUM (valor_antic_pagado)
  from  anticipo_pagado
  WHERE cod_empresa = @sp_empresa           AND
        cod_planta = @sp_planta             AND
        nro_trabajador = @sp_nro_trabajador AND
        dv_trabajador = @sp_dv_trabajador   AND
        cod_tipo_proceso = @sp_tipo_proceso AND
         fec_descuento >= @sp_ini_informacio AND
         fec_descuento <= @sp_fin_informacio AND
         (cod_tipo_anticipo = 'B' OR cod_tipo_anticipo = 'M' OR cod_tipo_anticipo = 'A')
  GROUP BY cod_descuento

open movimiento_anticipo
  fetch movimiento_anticipo into @cod_descuento_l, @monto_descuento_l
while @@FETCH_STATUS = 0
  begin
   if @monto_descuento_l > 0
      begin
        if exists(select cod_empresa from liquida_descuentos 
                  where cod_empresa      = @sp_empresa        and 
                        cod_planta       = @sp_planta         and 
                        cod_tipo_proceso = @sp_tipo_proceso   and
                        ano_periodo      = @sp_ano_proceso    and 
                        mes_periodo      = @sp_mes_proceso    and
                        nro_trabajador   = @sp_nro_trabajador and 
                        dv_trabajador    = @sp_dv_trabajador  and 
                        cod_descuento    = @cod_descuento_l)
        
          begin
            select @correlativo = max(correlativo)
            from liquida_descuentos where cod_empresa      = @sp_empresa        and
                                          cod_planta       = @sp_planta         and
                                          cod_tipo_proceso = @sp_tipo_proceso   and
                                          ano_periodo      = @sp_ano_proceso    and 
                                          mes_periodo      = @sp_mes_proceso    and 
                                          nro_trabajador   = @sp_nro_trabajador and
                                          dv_trabajador    = @sp_dv_trabajador  and
                                          cod_descuento    = @cod_descuento_l
            select @correlativo = @correlativo + 1
          end
        else
          select @correlativo = 1
  
        insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
        mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
        cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
        values(@sp_empresa,@sp_planta,@sp_nro_trabajador,@sp_dv_trabajador,@cod_descuento_l,@sp_ano_proceso,
        @sp_mes_proceso,@sp_tipo_proceso,@correlativo,@monto_descuento_l,'$',@monto_descuento_l,0,
        @sp_cod_sucursal,@sp_cod_centro_cost,@sp_cod_tipo_trabaj,@nro_contr_vig_proc,@monto_descuento_l)
      end
   select @sp_valor_anticipo = @sp_valor_anticipo + @monto_descuento_l
  fetch movimiento_anticipo into @cod_descuento_l, @monto_descuento_l
end
close movimiento_anticipo
deallocate  movimiento_anticipo

select @sp_tot_dctos_no_le = @sp_tot_dctos_no_le + @sp_valor_anticipo

update historico_liquidac 
set valor_anticipo     =  valor_anticipo + @sp_valor_anticipo,
    tot_dctos_no_legal = @sp_tot_dctos_no_le
where 
cod_empresa      = @sp_empresa        and 
cod_planta       = @sp_planta         and
mes_periodo      = @sp_mes_proceso    and 
ano_periodo      = @sp_ano_proceso    and
cod_tipo_proceso = @sp_tipo_proceso   and
nro_trabajador   = @sp_nro_trabajador and 
dv_trabajador    = @sp_dv_trabajador

return










GO
/****** Object:  StoredProcedure [dbo].[spliq_calc_aporte_reliq]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO







CREATE procedure [dbo].[spliq_calc_aporte_reliq](@sp_mes_proceso int,@sp_ano_proceso int,@sp_empresa int,@sp_planta int,
@sp_nro_trabajador int,@sp_dv_trabajador char(1),@sp_tipo_proceso char(4),@sp_cod_forma_pago char(1),
@str_aportes varchar(200))
As
declare @sp_ini_informacio datetime,@sp_fin_informacio datetime,@sp_nombre char(50),@sp_cod_centro_cost int,
        @sp_cod_sucursal int,@sp_tramo_carga_fam char(1),@sp_cod_tipo_trabaj char(2),@sp_nro_convenio int,
        @sp_valor_especial numeric(38,10),@sp_tot_imp_no_prop numeric(38,10),@sp_carga_fam_peso int,
        @sp_carga_familiar int,@sp_aporte_especial int,@sp_tot_desc_cta_ct numeric(38,10),
        @sp_val_liquido_pag numeric(38,10),@sp_tot_impon_sin_t numeric(38,10),@sp_tot_imponible numeric(38,10),
        @sp_monto_dl18566 numeric(38,10),@sp_afecto_impto numeric(38,10),@sp_mto_tope60_dfl4 numeric(38,10),
        @sp_mto_dfl44 numeric(38,10),@sp_tot_impon_stg numeric(38,10),@sp_nAfecImpo numeric(38,10),
        @sp_I900 int,@valor_decimal numeric(38,10),@monto_haber_l numeric(38,10),@monto_tope_uf	numeric(38,10),
        @valor_tope_uf numeric(38,10),@valor_topado numeric(38,10),@unidad_moneda_l char(4),@cod_haber_l int,
        @tipo_convenio_l int,@tope_uf_l decimal(13,4),@val_min_redond_l int,@val_max_redond_l int,
        @nConcepto_l int,@proporcional_l char(1),@proporcional_h char(1),@tipo_hab_contab_l char(1),
        @indic_redond_l char(1),@tip_trabajador_l char(2),@historico_l char(18),@rutina_l char(100),
        @sValor_liquido varchar(50),@nDigRedondeo int,@nDigRedondeomax int,@nUltimoValor int,
        @nRedondeo numeric(38,10),@sp_val_liquido_pag_aux int,@valor_total_habere numeric(38,10),
        @sUltimoValor char(10),@nValorPaso int,@nValorPaso2 int,@mto_descuento decimal(13,4),
        @cod_unidad_tope_l char(4),@sp_tope_minimo decimal(13,4),@sp_unidad_tope_min char(4),@monto_tope_min decimal(13,4)

declare @select_aportes varchar(8000)
declare @registrado int
declare @sp_flg_no_reb_jub char(1), @sp_fec_nacimiento datetime, @sp_condic_previsional char(1), @sp_val_tot_tope_impon numeric(28,10), @sp_cod_sexo char(1)
declare @dif_fecha numeric(10,3)
if @sp_cod_forma_pago is null select @sp_cod_forma_pago='E'

select @sp_mto_dfl44 = 0
select @sp_mto_tope60_dfl4 = 0

select @sp_ini_informacio = fec_ini_info_perio,
       @sp_fin_informacio = fec_fin_info_perio
from   control_procesos
where  cod_empresa        = @sp_empresa     and
       cod_planta         = @sp_planta      and
       cod_mes_proceso    = @sp_mes_proceso and
       ano_proc_cont_proc = @sp_ano_proceso

select @sp_nombre         = nombre,
       @sp_valor_especial = valor_especial,
       @sp_carga_familiar = carga_familiar,
       @sp_carga_fam_peso = carga_fam_peso,
       @sp_nAfecImpo      = afecto_imponible
from liquidacion
where cod_empresa      = @sp_empresa        and
      cod_planta       = @sp_planta         and
      mes_periodo      = @sp_mes_proceso    and
      ano_periodo      = @sp_ano_proceso    and
      cod_tipo_proceso = @sp_tipo_proceso   and
      nro_trabajador   = @sp_nro_trabajador and
      dv_trabajador    = @sp_dv_trabajador

select @sp_cod_tipo_trabaj = cod_tipo_trabajado,
       @sp_nro_convenio    = nro_convenio,
       @sp_cod_centro_cost = cod_centro_costo,
       @sp_cod_sucursal    = cod_sucursal,
       @sp_monto_dl18566   = monto_dl18566,
       @sp_val_liquido_pag = val_liquido_pago,
       @sp_tot_imp_no_prop = tot_imp_no_prop,
       @sp_tramo_carga_fam = codigo_tramo,
       @sp_tot_impon_sin_t = tot_impon_sin_tope,
       @sp_tot_impon_stg   = total_imponi_ley,
       @sp_tot_imponible   = tot_imponible,
       @sp_mto_dfl44       = mto_dfl44,
       @valor_total_habere = valor_total_habere
from historico_liquidac
where cod_empresa      = @sp_empresa        and
      cod_planta       = @sp_planta         and
      mes_periodo      = @sp_mes_proceso    and
      ano_periodo      = @sp_ano_proceso    and
      cod_tipo_proceso = @sp_tipo_proceso   and
      nro_trabajador   = @sp_nro_trabajador and
      dv_trabajador    = @sp_dv_trabajador

if rtrim(ltrim(@str_aportes)) is not null and rtrim(ltrim(@str_aportes)) != ' '
  select @select_aportes = 'insert into #tmp_aportes_reliq select cod_haber,monto_haber,cod_unidad_moneda,acumula_historico,cod_tip_trabajador,cod_tipo_convenio,'+
                 'rutina,tipo_hab_contabili,proporcional_dias,tope_uf,prop_dias_habiles,cod_unidad_tope,'+
                 'tope_minimo,unidad_tope_min,prioridad from haber where ' + 
                 'cod_empresa = '+ convert(char(20),@sp_empresa) +' and cod_planta=' + convert(char(20),@sp_planta) + ' and ' +
                 'cod_haber in (' + @str_aportes + ') order by cod_haber,prioridad '
else
  select @select_aportes = 'insert into #tmp_aportes_reliq select cod_haber,monto_haber,cod_unidad_moneda,acumula_historico,cod_tip_trabajador,cod_tipo_convenio,'+
                 'rutina,tipo_hab_contabili,proporcional_dias,tope_uf,prop_dias_habiles,cod_unidad_tope,'+
                 'tope_minimo,unidad_tope_min,prioridad from haber where ' + 
                 'cod_empresa = '+ convert(char(20),@sp_empresa) +' and cod_planta=' + convert(char(20),@sp_planta) + ' and ' +
                 'cod_haber = -111 order by cod_haber,prioridad '

create table #tmp_aportes_reliq(cod_haber int,monto_haber decimal(13,4) NULL,cod_unidad_moneda char(4) NULL,acumula_historico char(18) NULL,
cod_tip_trabajador char(2) NULL,cod_tipo_convenio int NULL,rutina char(100) NULL,tipo_hab_contabili char(1) NULL,proporcional_dias char(1) NULL,
tope_uf decimal(13,4) NULL,prop_dias_habiles char(1) NULL,cod_unidad_tope char(4) NULL,tope_minimo decimal(13,4) NULL,unidad_tope_min char(4) NULL,
prioridad int NULL)

exec (@select_aportes) 

declare cursor_aporte cursor  for 
select cod_haber,monto_haber,cod_unidad_moneda,acumula_historico,cod_tip_trabajador,cod_tipo_convenio,
       rutina,tipo_hab_contabili,proporcional_dias,tope_uf,prop_dias_habiles,cod_unidad_tope,
       tope_minimo,unidad_tope_min from #tmp_aportes_reliq order by cod_haber,prioridad for read only 
open cursor_aporte
fetch cursor_aporte into @cod_haber_l,@monto_haber_l,@unidad_moneda_l,@historico_l,@tip_trabajador_l,
                         @tipo_convenio_l,@rutina_l,@tipo_hab_contab_l,@proporcional_l,@tope_uf_l,
                         @proporcional_h,@cod_unidad_tope_l,@sp_tope_minimo,@sp_unidad_tope_min

while @@FETCH_STATUS = 0
   begin
      select @valor_decimal = 0
      exec spliq_valores_mon_reliq @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,@sp_nro_trabajador,
                             @sp_dv_trabajador,@sp_tipo_proceso,@tope_uf_l,@cod_unidad_tope_l,@cod_haber_l,
                             @sp_fin_informacio,'',@proporcional_l,@proporcional_h,@monto_tope_uf output

      exec spliq_valores_mon_reliq @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,@sp_nro_trabajador,
                             @sp_dv_trabajador,@sp_tipo_proceso,@tope_uf_l,@cod_unidad_tope_l,@cod_haber_l,
                             @sp_fin_informacio,'',@proporcional_l,@proporcional_h,@monto_tope_min output

      if @tipo_hab_contab_l = 'A' or @tipo_hab_contab_l = 'P' or @tipo_hab_contab_l = 'Z'
         begin
            if (@tip_trabajador_l is not null AND @tip_trabajador_l != ' ') OR @tipo_convenio_l > 0
               begin
                  if @tip_trabajador_l = @sp_cod_tipo_trabaj or @tipo_convenio_l = @sp_nro_convenio OR  @tip_trabajador_l = 'G'
                     begin
                        if @monto_haber_l > 0
                           begin
                              if @unidad_moneda_l = 'TTH'
                                 begin
                                    exec spliq_valores_mon_reliq @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,
                                                           @sp_planta,@sp_nro_trabajador,@sp_dv_trabajador,
                                                           @sp_tipo_proceso,@monto_haber_l,@unidad_moneda_l,
                                                           @cod_haber_l,@sp_fin_informacio,'',@proporcional_l,
                                                           @proporcional_h,@valor_decimal output
                                    select @valor_decimal = round(@valor_decimal ,0)
                                 end
                              else
                                 begin
                                    if @unidad_moneda_l = 'CF'
                                       begin
                                          exec spliq_valores_mon_reliq @sp_mes_proceso, @sp_ano_proceso,@sp_empresa,
                                                                 @sp_planta,@sp_nro_trabajador,@sp_dv_trabajador,
                                                                 @sp_tipo_proceso,@monto_haber_l,@sp_tramo_carga_fam,
                                                                 @cod_haber_l,@sp_fin_informacio,'',@proporcional_l,
                                                                 @proporcional_h,@valor_decimal output
                                          select @valor_decimal = round(@valor_decimal ,0)
                                       end
                                    else
                                       begin
                                          exec spliq_valores_mon_reliq @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,
                                                                 @sp_planta,@sp_nro_trabajador,@sp_dv_trabajador,
                                                                 @sp_tipo_proceso,@monto_haber_l,@unidad_moneda_l,
                                                                 @cod_haber_l,@sp_fin_informacio,'',@proporcional_l,
                                                                 @proporcional_h,@valor_decimal output
                                          select  @valor_decimal = round(@valor_decimal ,0)
                                       end
                                 end
                           end
                        else
                           begin
                              select @monto_haber_l = 0
                           end
                     end
                  if @historico_l is not null and @historico_l != ' ' 
                     begin
                        exec spliq_actualiza_h @sp_mes_proceso, @sp_ano_proceso,@sp_empresa,@sp_planta,
                                               @sp_nro_trabajador,@sp_dv_trabajador,@sp_tipo_proceso,
                                               @valor_decimal,@cod_haber_l
                     end
                  if @valor_decimal != 0
                     begin
                        select @valor_decimal = round(@valor_decimal,0)
                        exec spliq_inserta_hab @sp_mes_proceso, @sp_ano_proceso, @sp_empresa,
                                               @sp_planta,@sp_nro_trabajador,@sp_dv_trabajador,
                                               @sp_tipo_proceso,@cod_haber_l,@valor_decimal,@unidad_moneda_l,
                                               @valor_decimal,@sp_cod_centro_cost,@sp_cod_centro_cost,
                                               @sp_cod_tipo_trabaj,@sp_cod_sucursal
                     end
                  else
                     begin
                        exec spliq_inserta_hab @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,
                                               @sp_nro_trabajador,@sp_dv_trabajador,@sp_tipo_proceso,
                                               @cod_haber_l,@monto_haber_l,@unidad_moneda_l,@valor_decimal,
                                               @sp_cod_centro_cost,@sp_cod_centro_cost,@sp_cod_tipo_trabaj,
                                               @sp_cod_sucursal
                     end
               end
         end
      if @tipo_hab_contab_l = 'C' and @sp_valor_especial > 0
         begin
            exec spliq_valores_mon_reliq @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,@sp_nro_trabajador,
                                   @sp_dv_trabajador,@sp_tipo_proceso,@monto_haber_l,@unidad_moneda_l,
                                   @cod_haber_l,@sp_fin_informacio,'',@proporcional_l,@proporcional_h,
                                   @valor_decimal output
            select @valor_decimal = round(@valor_decimal ,0)
            
            if @historico_l is not null and @historico_l != ' ' 
               begin
                  exec spliq_actualiza_h @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,
                                         @sp_nro_trabajador,@sp_dv_trabajador,@sp_tipo_proceso,
                                         @valor_decimal,@cod_haber_l
               end
            if @sp_valor_especial > 0
               begin
                  select @valor_decimal = round(@sp_valor_especial * (@monto_haber_l / 100.),0)
                  select @sp_valor_especial = 0
         
                  update liquidacion set valor_especial = @sp_valor_especial
                  where
                  cod_empresa = @sp_empresa and
                  cod_planta = @sp_planta and
                  mes_periodo = @sp_mes_proceso and
                  ano_periodo = @sp_ano_proceso and
                  cod_tipo_proceso = @sp_tipo_proceso and
                  nro_trabajador = @sp_nro_trabajador and
                  dv_trabajador = @sp_dv_trabajador
          
                  exec spliq_inserta_hab @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,
                                         @sp_nro_trabajador,@sp_dv_trabajador,@sp_tipo_proceso,
                                         @cod_haber_l,@monto_haber_l,@unidad_moneda_l,@valor_decimal,
                                         @sp_cod_centro_cost,@sp_cod_centro_cost,@sp_cod_tipo_trabaj,
                                         @sp_cod_sucursal
               end
         end
      if @tipo_hab_contab_l = 'S'
         begin
            if @sp_monto_dl18566 > 0
            exec spliq_inserta_hab @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,@sp_nro_trabajador,
                                   @sp_dv_trabajador,@sp_tipo_proceso,@cod_haber_l,@sp_monto_dl18566,'$',
                                   @sp_monto_dl18566,@sp_cod_centro_cost,@sp_cod_centro_cost,
                                   @sp_cod_tipo_trabaj,@sp_cod_sucursal
         end
      if @tipo_hab_contab_l = 'L'
         begin
            select @sp_val_liquido_pag = round(@sp_val_liquido_pag,0)
            select @sp_val_liquido_pag_aux =round(@sp_val_liquido_pag,0)

            if @sp_cod_forma_pago != ' ' and @sp_cod_forma_pago  is not null 
               begin
                  select @indic_redond_l = 'N'
                  select @indic_redond_l = indic_redondeo,
                         @val_min_redond_l = val_min_redondeo,
                         @val_max_redond_l = val_max_redondeo,
                         @nConcepto_l = cod_haber
                  from forma_pago
                  where 
                  cod_empresa = @sp_empresa and
                  codigo_forma_pago = @sp_cod_forma_pago
               end

            if @indic_redond_l='S'
               begin
                  select @sValor_liquido=rtrim(ltrim(convert(varchar(50),@sp_val_liquido_pag_aux)))
                  select @nDigRedondeo=DATALENGTH(rtrim(ltrim(convert(char(10),@val_min_redond_l))))
                  select @nDigRedondeomax=DATALENGTH(rtrim(ltrim(convert(char(10),@val_max_redond_l))))
                  if @nDigRedondeo = @nDigRedondeomax
                     begin
                        select @nDigRedondeo= @nDigRedondeo - 1
                     end
                  select @nUltimoValor= CONVERT(int,RIGHT(@sValor_liquido,@nDigRedondeo))

                  if @nUltimoValor != 0
                     begin
                        if @nUltimoValor > @val_min_redond_l
                           begin
                               select @nRedondeo = @val_max_redond_l - @nUltimoValor
                           end
                        else
                           begin
                              select @nRedondeo = @val_min_redond_l - @nUltimoValor
                           end
                     end
                  else
                     begin
                        select @nRedondeo=0
                     end
                  
                  select @valor_total_habere = @valor_total_habere + @nRedondeo
                  select  @sp_val_liquido_pag = @sp_val_liquido_pag + @nRedondeo

                  exec spliq_inserta_hab @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,
                                         @sp_nro_trabajador,@sp_dv_trabajador,@sp_tipo_proceso,@nConcepto_l,
                                         @nRedondeo,'$',@nRedondeo,@sp_cod_centro_cost,@sp_cod_centro_cost,
                                         @sp_cod_tipo_trabaj,@sp_cod_sucursal
               end
            
            exec spliq_inserta_hab @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,@sp_nro_trabajador,
                                   @sp_dv_trabajador,@sp_tipo_proceso,@cod_haber_l,@sp_val_liquido_pag,'$',
                                   @sp_val_liquido_pag,@sp_cod_centro_cost,@sp_cod_centro_cost,
                                   @sp_cod_tipo_trabaj,@sp_cod_sucursal
             
         end
     
      if @tipo_hab_contab_l = 'B'
         begin
            if @tip_trabajador_l is not null  or @tipo_convenio_l > 0
               begin
                  if @tip_trabajador_l = @sp_cod_tipo_trabaj or @tipo_convenio_l = @sp_nro_convenio or @tip_trabajador_l = 'G'
                     begin
                        if @monto_haber_l > 0
                           begin
                              if @unidad_moneda_l = '%IM'
                                 begin
                                    select @valor_decimal = round(@sp_tot_imp_no_prop *  (@monto_haber_l / 100.),0)
                                 end
                              else
                                 begin
                                    select @valor_decimal = 0
                                 end
                              if (@valor_decimal > @monto_tope_uf) and (@monto_tope_uf > 0)
                                 begin
                                    select @valor_decimal = @monto_tope_uf
                                 end
                              else
                                 begin
                                    select @monto_haber_l = 0
                                 end
                           end
                  if  @historico_l is not null and @historico_l != ' ' 
                     begin
                        exec spliq_actualiza_h @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,
                                               @sp_nro_trabajador,@sp_dv_trabajador,@sp_tipo_proceso,
                                               @valor_decimal,@cod_haber_l
                     end
                  if @monto_haber_l = 0 and @valor_decimal != 0
                     begin
                        select @valor_decimal = round(@valor_decimal,0)
                        exec spliq_inserta_hab @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,
                                               @sp_nro_trabajador,@sp_dv_trabajador,@sp_tipo_proceso,
                                               @cod_haber_l,@valor_decimal,'$',@valor_decimal,
                                               @sp_cod_centro_cost,@sp_cod_centro_cost,@sp_cod_tipo_trabaj,
                                               @sp_cod_sucursal
                     end
                  else
                     begin
                        exec spliq_inserta_hab @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,
                                               @sp_nro_trabajador,@sp_dv_trabajador,@sp_tipo_proceso,
                                               @cod_haber_l,@monto_haber_l,@unidad_moneda_l,@valor_decimal,
                                               @sp_cod_centro_cost,@sp_cod_centro_cost,@sp_cod_tipo_trabaj,
                                               @sp_cod_sucursal
                     end
               end
            end         
         end

      
      if @tipo_hab_contab_l = 'D'
         begin
            if @sp_carga_fam_peso != 0 AND @sp_carga_familiar  = 1 
               begin
                  if @tip_trabajador_l is not null OR @tipo_convenio_l > 0
                     begin
                        if @tip_trabajador_l = @sp_cod_tipo_trabaj or @tipo_convenio_l = @sp_nro_convenio OR @tip_trabajador_l = 'G'
                           begin
                              select @valor_decimal = round((@sp_carga_fam_peso * @monto_haber_l),0)
                              if  @historico_l != ' ' AND @historico_l  is not null 
                                 begin
                                    exec spliq_actualiza_h @sp_mes_proceso, @sp_ano_proceso,@sp_empresa,@sp_planta,
                                                           @sp_nro_trabajador,@sp_dv_trabajador,@sp_tipo_proceso,
                                                           @valor_decimal,@cod_haber_l
                                 end
                              exec spliq_inserta_hab @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,@sp_nro_trabajador,

                                                     @sp_dv_trabajador,@sp_tipo_proceso,@cod_haber_l,@valor_decimal,'$',
                                                     @valor_decimal,@sp_cod_centro_cost,@sp_cod_centro_cost,@sp_cod_tipo_trabaj,@sp_cod_sucursal
                           end
                     end
               end
         end
      
        if @tipo_hab_contab_l = 'E'
         begin 

			if @unidad_moneda_l = '%ILS'
				select @registrado = 2

 
            
            if @monto_haber_l > 0
               begin
                  exec spliq_valores_mon_reliq @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,
                                         @sp_nro_trabajador,@sp_dv_trabajador,@sp_tipo_proceso,@monto_haber_l,
                                         @unidad_moneda_l,@cod_haber_l,@sp_fin_informacio,'',@proporcional_l,
                                         @proporcional_h, @valor_decimal output
                  select @valor_decimal = round(@valor_decimal ,0)
               end
             
 
			if @valor_decimal = 0 and @monto_haber_l != 0 
				if (@sp_cod_sexo='F' and @dif_fecha >= 60) or (@sp_cod_sexo='M' and @dif_fecha >= 65)
					if @sp_condic_previsional !='J'
						if @sp_flg_no_reb_jub = 'N'
							 select @valor_decimal = round(@sp_val_tot_tope_impon * (@monto_haber_l / 100.),3)
            
            if @historico_l != ' ' AND @historico_l  is not null 
               begin
                  exec spliq_actualiza_h @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,
                                         @sp_nro_trabajador,@sp_dv_trabajador,@sp_tipo_proceso,@valor_decimal,
                                         @cod_haber_l
               end
            if @monto_haber_l = 0 AND @valor_decimal != 0
               begin
                  select @valor_decimal = round(@valor_decimal,0)
                  exec spliq_inserta_hab @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,@sp_nro_trabajador,
                                         @sp_dv_trabajador,@sp_tipo_proceso,@cod_haber_l,@valor_decimal,'$',
                                         @valor_decimal,@sp_cod_centro_cost,@sp_cod_centro_cost,@sp_cod_tipo_trabaj,@sp_cod_sucursal
               end
            else
               begin
                  select @valor_decimal = round(@valor_decimal,0)
                  exec spliq_inserta_hab @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,@sp_nro_trabajador,
                                         @sp_dv_trabajador,@sp_tipo_proceso,@cod_haber_l,@monto_haber_l,
                                         @unidad_moneda_l,@valor_decimal,@sp_cod_centro_cost,@sp_cod_centro_cost,
                                         @sp_cod_tipo_trabaj,@sp_cod_sucursal
               end
            
            select @sp_aporte_especial = 0
            
            if @registrado = 1  
              update historico_liquidac
              set
              por_mutual_adic = @monto_haber_l
              where
              cod_empresa = @sp_empresa and
              cod_planta = @sp_planta and
              mes_periodo = @sp_mes_proceso and
              ano_periodo = @sp_ano_proceso and
              cod_tipo_proceso = @sp_tipo_proceso and             
              nro_trabajador = @sp_nro_trabajador and
              dv_trabajador = @sp_dv_trabajador
            else if @registrado = 0 
              begin
                update historico_liquidac
                set
                por_mutual_base = @monto_haber_l
                where
                cod_empresa = @sp_empresa and
                cod_planta = @sp_planta and
                mes_periodo = @sp_mes_proceso and
                ano_periodo = @sp_ano_proceso and
                cod_tipo_proceso = @sp_tipo_proceso and             
                nro_trabajador = @sp_nro_trabajador and
                dv_trabajador = @sp_dv_trabajador
                select @registrado = 1
				end
			else if @registrado = 2
              begin
                update historico_liquidac
                set
                por_mutual_sanna = @monto_haber_l
                where
                cod_empresa = @sp_empresa and
                cod_planta = @sp_planta and
                mes_periodo = @sp_mes_proceso and
                ano_periodo = @sp_ano_proceso and
                cod_tipo_proceso = @sp_tipo_proceso and             
                nro_trabajador = @sp_nro_trabajador and
                dv_trabajador = @sp_dv_trabajador
                select @registrado = 1
              end
           
         end


      fetch cursor_aporte
      into    @cod_haber_l, @monto_haber_l, @unidad_moneda_l, @historico_l,
              @tip_trabajador_l, @tipo_convenio_l, @rutina_l, @tipo_hab_contab_l,
              @proporcional_l, @tope_uf_l, @proporcional_h,@cod_unidad_tope_l,
              @sp_tope_minimo,@sp_unidad_tope_min
   end

close cursor_aporte
deallocate cursor_aporte

declare cursor_haber_descto cursor  for
SELECT  haber.cod_haber, monto_haber, cod_unidad_moneda, acumula_historico,
              cod_tip_trabajador, cod_tipo_convenio, rutina, tipo_hab_contabili,
              proporcional_dias, tope_uf,prop_dias_habiles,mto_descuento,cod_unidad_tope,
              tope_minimo,unidad_tope_min
from   haber, haber_descuento
WHERE   haber.cod_empresa =@sp_empresa  AND
        haber.cod_planta = @sp_planta AND
        haber_descuento.ano_periodo=@sp_ano_proceso AND
        haber_descuento.mes_periodo=@sp_mes_proceso AND
        haber.cod_haber = haber_descuento.cod_haber and
        haber.cod_empresa = haber_descuento.cod_empresa and
        haber.cod_planta = haber_descuento.cod_planta and
        nro_trabajador = @sp_nro_trabajador and
        dv_trabajador = @sp_dv_trabajador and
        cod_tipo_proceso = @sp_tipo_proceso
for read only

open cursor_haber_descto
fetch cursor_haber_descto
into    @cod_haber_l, @monto_haber_l, @unidad_moneda_l, @historico_l,
        @tip_trabajador_l, @tipo_convenio_l, @rutina_l, @tipo_hab_contab_l,
        @proporcional_l, @tope_uf_l, @proporcional_h,@mto_descuento,@cod_unidad_tope_l,
        @sp_tope_minimo,@sp_unidad_tope_min


while @@FETCH_STATUS = 0
   begin
      if (@monto_haber_l = 0 or @monto_haber_l is null)
         begin
            select @monto_haber_l=@mto_descuento
            select @unidad_moneda_l='$'
         end
      if @rutina_l is null or @rutina_l = ' '
         begin
            if @monto_haber_l > 0
               begin
                  if @tipo_hab_contab_l = 'B'
                     begin
                        if @unidad_moneda_l = '%IM'
                           begin
                              select @valor_decimal = round((@sp_tot_imp_no_prop *  (@monto_haber_l / 100.)),0)
                           end
                        else
                           begin
                              select @valor_decimal = 0
                           end
                     end   
                  else
                     begin
                        if @unidad_moneda_l = 'TTH'
                           begin
                              exec spliq_valores_mon_reliq @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,@sp_nro_trabajador,
                                                     @sp_dv_trabajador,@sp_tipo_proceso,@monto_haber_l,@unidad_moneda_l,
                                                     @cod_haber_l,@sp_fin_informacio,'',@proporcional_l,@proporcional_h,@valor_decimal output
                              select  @valor_decimal = round(@valor_decimal ,0)
                           end
                        else
                           begin
                              if @unidad_moneda_l = 'CF'
                                 begin
                                    exec spliq_valores_mon_reliq @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,
                                                           @sp_nro_trabajador,@sp_dv_trabajador,@sp_tipo_proceso,
                                                           @monto_haber_l,@sp_tramo_carga_fam,@cod_haber_l,@sp_fin_informacio,
                                                           '',@proporcional_l,@proporcional_h,@valor_decimal output
                                    select  @valor_decimal = round(@valor_decimal ,0)
                                 end
                              else                                  begin
                                    exec spliq_valores_mon_reliq @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,@sp_nro_trabajador,
                                                           @sp_dv_trabajador,@sp_tipo_proceso,@monto_haber_l,@unidad_moneda_l,@cod_haber_l,
                                                           @sp_fin_informacio,'',@proporcional_l,@proporcional_h,@valor_decimal output
                                    select  @valor_decimal = round(@valor_decimal ,0)
                                 end
                           end
                     end
               end
            else
               begin
                  select @monto_haber_l = 0
               end
            if @tope_uf_l != 0 and @tope_uf_l is not null 
               begin
                  select @valor_tope_uf = 0
                  select @valor_topado = 0
                  exec spliq_valores_mon_reliq @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,@sp_nro_trabajador,
                                         @sp_dv_trabajador,@sp_tipo_proceso,@tope_uf_l,@cod_unidad_tope_l,@cod_haber_l,
                                         @sp_fin_informacio,'',@proporcional_l,@proporcional_h,@valor_tope_uf output
                  select @valor_topado = @valor_tope_uf
                  if @valor_decimal > @valor_topado
                     begin
                        select @valor_decimal = @valor_topado
                     end
               end
         end
      else
         begin
            exec spliq_externo_a @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,@sp_nro_trabajador,
                                 @sp_dv_trabajador,@sp_tipo_proceso,@cod_haber_l,@monto_haber_l,@unidad_moneda_l,
                                 @rutina_l,@sp_fin_informacio,@sp_nAfecImpo,@valor_decimal output
         end

      select @valor_decimal = round(@valor_decimal,0)

      if @historico_l != ' ' AND @historico_l  is not null 
         begin
            exec spliq_actualiza_h @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,@sp_nro_trabajador,@sp_dv_trabajador,
                                   @sp_tipo_proceso, @valor_decimal, @cod_haber_l
         end
      if @monto_haber_l = 0 AND @valor_decimal != 0
         begin
            select @valor_decimal = round(@valor_decimal,0)
            exec spliq_inserta_hab @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,@sp_nro_trabajador,@sp_dv_trabajador,
                                   @sp_tipo_proceso,@cod_haber_l,@valor_decimal,'$',@valor_decimal,@sp_cod_centro_cost,
                                   @sp_cod_centro_cost,@sp_cod_tipo_trabaj,@sp_cod_sucursal
         end
      else
         begin
            exec spliq_inserta_hab @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,@sp_nro_trabajador,@sp_dv_trabajador,
                                   @sp_tipo_proceso,@cod_haber_l,@monto_haber_l,@unidad_moneda_l,@valor_decimal,@sp_cod_centro_cost,
                                   @sp_cod_centro_cost,@sp_cod_tipo_trabaj,@sp_cod_sucursal
         end

      fetch cursor_haber_descto
      into @cod_haber_l, @monto_haber_l, @unidad_moneda_l, @historico_l,
           @tip_trabajador_l, @tipo_convenio_l, @rutina_l, @tipo_hab_contab_l,
           @proporcional_l, @tope_uf_l, @proporcional_h,@mto_descuento,@cod_unidad_tope_l,
           @sp_tope_minimo,@sp_unidad_tope_min
   end
close cursor_haber_descto
deallocate cursor_haber_descto

if @sp_I900 = 1
   begin
      select @sp_mto_dfl44 = @sp_tot_impon_stg
   end
else
   begin
      if @sp_mto_dfl44 > @sp_tot_imponible
         begin
            select @sp_mto_dfl44 = @sp_tot_imponible
         end
   end

select @sp_mto_tope60_dfl4 = @sp_tot_imponible

update historico_liquidac set
mto_dfl44 = @sp_mto_dfl44,
mto_tope60_dfl44 = @sp_tot_imponible,
val_liquido_pago=@sp_val_liquido_pag,
valor_total_habere=@valor_total_habere
where
cod_empresa = @sp_empresa and
cod_planta = @sp_planta and
mes_periodo = @sp_mes_proceso and
ano_periodo = @sp_ano_proceso and
cod_tipo_proceso = @sp_tipo_proceso and
nro_trabajador = @sp_nro_trabajador and
dv_trabajador = @sp_dv_trabajador
return








GO
/****** Object:  StoredProcedure [dbo].[spliq_calc_ctacte_reliq]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO







create Procedure [dbo].[spliq_calc_ctacte_reliq](@sp_mes_proceso int,@sp_ano_proceso int,
@sp_empresa int,@sp_planta int,@sp_nro_trabajador int,@sp_dv_trabajador char(1),
@sp_tipo_proceso char(4))
as

declare @cod_descuento_l int,@doc_cta_cte int,@cuota int,@valor_descontar int,
@moneda char(4),@legal char(1),@aplica char(1),@valor_cuota numeric(28,10),
@valor_decimal numeric(28,10),@uf_hoy numeric(28,10),
@sp_fin_informacio datetime, @sp_tot_dctos_no_le int,@sp_tot_dctos_legal int,
@sp_cod_centro_cost int,@sp_cod_sucursal int,@sp_cod_tipo_trabaj char(2)

select @sp_cod_sucursal    = cod_sucursal, 
       @sp_cod_centro_cost = cod_centro_costo, 
       @sp_cod_tipo_trabaj = cod_tipo_trabajado,
       @sp_tot_dctos_no_le = tot_dctos_no_legal, 
       @sp_tot_dctos_legal = tot_dctos_legales
from historico_liquidac
where	
cod_empresa      = @sp_empresa        and 
cod_planta       = @sp_planta         and 
mes_periodo      = @sp_mes_proceso    and
ano_periodo      = @sp_ano_proceso    and
cod_tipo_proceso = @sp_tipo_proceso   and 
nro_trabajador   = @sp_nro_trabajador and 
dv_trabajador    = @sp_dv_trabajador

select @sp_fin_informacio = fec_fin_info_perio
from control_procesos
where
cod_empresa        = @sp_empresa and
cod_planta         = @sp_planta  and
ano_proc_cont_proc = @sp_ano_proceso and
cod_mes_proceso    = @sp_mes_proceso

select @uf_hoy     = val_moneda_unidad
from valor_moneda
where	
cod_unidad_cobro = 'UF' and
fec_valor_moneda = @sp_fin_informacio

declare cursor_cta_cte cursor  for
SELECT cta_cte_trabajador.cod_descuento,estado_cuota.nro_doc_cta_cte,numero_cuota,
       estado_cuota.cod_unidad_cobro,saldo_cuota_proces,aplica_cta_cte,descuento_legal
FROM  cta_cte_trabajador, estado_cuota, descuento
WHERE 
cta_cte_trabajador.cod_empresa = @sp_empresa        AND 
cta_cte_trabajador.cod_planta  = @sp_planta         AND
nro_trabajador                 = @sp_nro_trabajador AND 
dv_trabajador                  = @sp_dv_trabajador  AND
cta_cte_trabajador.cod_empresa     = estado_cuota.cod_empresa     AND 
cta_cte_trabajador.cod_planta      = estado_cuota.cod_planta      AND
cta_cte_trabajador.nro_doc_cta_cte = estado_cuota.nro_doc_cta_cte AND 
mon_orig_cta_proce != 0  AND
estado_ptmo_actual = 'A' AND 
saldo_cuota_proces != 0  AND 
ano_aplicacion     = @sp_ano_proceso  AND 
mes_aplic_prog_cuo = @sp_mes_proceso  AND
proceso_a_aplicar  = @sp_tipo_proceso AND 
cta_cte_trabajador.cod_empresa   = descuento.cod_empresa AND 
cta_cte_trabajador.cod_planta    = descuento.cod_planta  AND 
cta_cte_trabajador.cod_descuento = descuento.cod_descuento
ORDER BY cta_cte_trabajador.cod_descuento
for read only

open cursor_cta_cte
fetch cursor_cta_cte into @cod_descuento_l,@doc_cta_cte,@cuota,@moneda,@valor_cuota,
      @aplica,@legal
while @@FETCH_STATUS = 0
  begin
    if @aplica = 'S'
      begin
        select @valor_decimal = 0
        if @moneda != '$' and @moneda != 'UF'
          begin
            exec spliq_valores_mon_reliq @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,
                 @sp_planta,@sp_nro_trabajador,@sp_dv_trabajador,@sp_tipo_proceso, 
                 @valor_cuota,@moneda,@cod_descuento_l,@sp_fin_informacio,'','N','N',
                 @valor_decimal output
            select @valor_descontar = round(@valor_decimal,0)
          end
        else
          begin
            if @moneda = 'UF'
              begin
                select @valor_decimal = @valor_cuota * @uf_hoy
                select @valor_descontar = round(@valor_decimal,0)
              end
            else
              begin
                select @valor_descontar = @valor_cuota
              end
          end
      end
    exec spliq_desc_ctacte_reliq @sp_mes_proceso,@sp_ano_proceso,@sp_empresa,@sp_planta,
         @sp_nro_trabajador,@sp_dv_trabajador,@sp_tipo_proceso,@cod_descuento_l,
         @valor_cuota,@moneda,@valor_descontar,@sp_cod_centro_cost,0,'',@sp_cod_centro_cost,
         @sp_cod_tipo_trabaj,@sp_cod_sucursal,@doc_cta_cte,@cuota
    exec spliq_reb_ctacte_reliq @sp_mes_proceso, @sp_ano_proceso,@sp_empresa, @sp_planta,
         @sp_nro_trabajador,@sp_dv_trabajador,@sp_tipo_proceso, @valor_cuota,
         @valor_descontar,@doc_cta_cte,@cuota,'S'
    if @legal = 'S'    
      select @sp_tot_dctos_legal = @sp_tot_dctos_legal + @valor_descontar
    else
      select @sp_tot_dctos_no_le = @sp_tot_dctos_no_le + @valor_descontar
    fetch cursor_cta_cte into @cod_descuento_l, @doc_cta_cte,@cuota, @moneda, @valor_cuota, @aplica, @legal
  end
close cursor_cta_cte
deallocate cursor_cta_cte

update historico_liquidac 
set 
tot_dctos_legales  = @sp_tot_dctos_legal , 
tot_dctos_no_legal = @sp_tot_dctos_no_le
where 
cod_empresa      = @sp_empresa        and 
cod_planta       = @sp_planta         and 
mes_periodo      = @sp_mes_proceso    and
ano_periodo      = @sp_ano_proceso    and 
cod_tipo_proceso = @sp_tipo_proceso   and
nro_trabajador   = @sp_nro_trabajador and 
dv_trabajador    = @sp_dv_trabajador
return








GO
/****** Object:  StoredProcedure [dbo].[spliq_calc_reliq]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spliq_calc_reliq]
(@mes_proceso int, @ano_proceso int, @empresa_proceso int, @planta_proceso int,
 @tipo_proceso char(4), @mes_inicio int, @ano_inicio int, @mes_termino int,
 @ano_termino int, @sp_usuario char(15) )
as
declare 
@sp_incluye_mes_inicio char(1),@sp_incluye_mes_final  char(1),@sp_bitacora_reliq  char(1),
@sp_ind_finiquitados   char(1),@sp_calc_ult_contrato  char(1),@nro_dias_enfermo int,
@sp_consolida_empresa  char(1),@sp_ajuste_sencillo    char(1),@nro_dias_asistidos int,
@sp_indic_genera_haber char(1),@sp_indic_genera_dscto char(1),@nro_dias_vacacione int,
@sp_sobregira_dsctos   char(1),@sp_ind_leyes_sociales char(1),@sp_ind_salud_pagada char(1),
@sp_ind_seg_desempleo  char(1),@sp_ind_impuesto       char(1),@dias_asistidos int,
@sp_ind_afp_mes        char(1),@sp_ind_cotiz_volunt   char(1),@nro_dias_ausente int,
@sp_ind_cotiz_apv      char(1),@sp_ind_dscto_retenci  char(1),
@sp_ind_dscto_cta_cte  char(1),@sp_prop_dist_haber    char(1),
@sp_dist_haber_meses   char(1),@sp_prop_total_dias    char(1),
@sp_prop_haber_mes     char(1),@sp_prop_lic_medica    char(1),
@sp_prop_feriados      char(1),@sp_prop_ausencias     char(1),
@sp_aporte_empresa     char(1),@sp_periodo_utm        char(1),
@sp_incluye_hist_difer char(1),@flg_tope_salud        char(1),
@sp_cod_haber_sobreg   int,@sp_cod_dscto_sobreg   int,
@sp_mes_base           int,@sp_ano_base           int,
@sp_mes_registro       int,@sp_ano_registro       int,
@sp_fec_apli_dscto     datetime,
@sp_cod_proceso_sobreg char(4),
@sp_str_aportes        char(200),
@sp_str_proc_diferenci char(200),
@sp_rut_trabajador     int
declare
@cod_instit_previsi int, @cod_instit_salud int,@caja_comp_antigua int,
@cod_instit_previsi_act int, @cod_instit_salud_act int,@caja_comp_antigua_act int,
@mto_antig_previsio numeric(38,10),@mto_antig_previsio_reliq numeric(38,10),@valor_desahucio_reliq numeric(38,10),@pje_cotzado_caja decimal(13,4),
@val_leyes_sociales numeric(38,10),@val_leyes_sociales_reliq numeric(38,10),@afecto_impto numeric(38,10),
@asignacion_zona numeric(38,10),@asignacion_zona_reliq numeric(38,10),@monto_cancel_impto numeric(38,10),
@aporte_patron_mutu numeric(38,10),@aporte_patron_mutu_reliq numeric(38,10), @tot_tributable numeric(38,10),@total_imponi_ley numeric(38,10),@afecto_cotizacion numeric(38,10),
@afecto_impto_corr numeric(38,10),@monto_seguro_des numeric(38,10),@monto_impon_seguro numeric(38,10),
@mto_seg_cta_indidu numeric(38,10),@mto_seg_cta_fondos numeric(38,10),@monto_impto_corr numeric(38,10),
@mto_seg_cta_indidu_reliq numeric(38,10),@mto_seg_cta_fondos_reliq numeric(38,10),
@sp_afecto_impto_lq numeric(38,10),@asignacion_zona_lq numeric(38,10),@adicional_isapre_lq numeric(38,10),@sp_afecto_impto_otros numeric(38,10),
@asignacion_zona_otros numeric(38,10),@sp_afecto_impto numeric(38,10),@sp_impto_lq numeric(38,10),@sp_impto_otros numeric(38,10),
@valor_pactado_isap_lq numeric(38,10),@monto_salud_lq numeric(38,10),@mto_salud_legal_lq numeric(38,10),@mto_salud_real_lq numeric(38,10),
@tot_tributable_reliq numeric(38,10), @control_meses int,@meses_efectivos int,@meses_reales int,@meses_reliq int,
@b501 int,@b504 int,@b505 int,@b506 int,@b513 int
declare 
@sp_nro_trabajador    int,@centro_costo         int,@centro_costo_mes int,
@cod_sucursal_mes     int,@cod_sucursal int,@cod_tipo_trabajador char(2), @meses_proceso        int,
@mes_indice           int,@mes_reliq            int,
@ano_reliq            int,@dias_proceso         int,
@cod_haber_l          int,@cod_hab_aporte       int, @sp_nro_dias_licencia int,@tot_imponible_mes int,
@convenio             int,@cod_sindicato        int,@dsctos_legales_reliq numeric(38,10),
@cod_cargo            int,@nro_contr_vig	int,@cod_haber	int,
@sp_porc_trab_pesad   numeric(5,2),@cod_tipo_jornada int,
@valor_haber          numeric(38,10),@valor_aporte numeric(38,10), @valor_exento numeric(38,10), @valor_mes            numeric(38,10),
@valor_mes_corr       numeric(38,10),@valor_prop_mes numeric(38,10),@valor_dsctos_varios numeric(38,10),
@valor_mes_tribut     numeric(28,10),@valor_ultimo_mes     numeric(38,10),@valor_descuento numeric(38,10),
@hab_no_imp_no_trib   numeric(38,10),@tot_desc_cta_cte	   numeric(38,10),
@ret_judic_resconta   numeric(38,10),@tot_dctos_no_legal   numeric(38,10),
@tot_dctos_legales    numeric(38,10),@val_liquido_pago     numeric(38,10),
@sobregiros_mes       numeric(38,10),@tot_impon_sin_tope   numeric(38,10),@tot_impon_sin_tope_mes numeric(38,10),
@tot_imponible        numeric(38,10),@mto_cancela_previs   numeric(38,10),@mto_cancela_previs_reliq numeric(38,10),
@monto_salud          numeric(38,10),@mto_salud_legal      numeric(38,10),
@monto_salud_reliq    numeric(38,10),@tope_salud_mes       numeric(28,10),
@valor_pactado_isap   numeric(38,10),@val_volunt_isapre    numeric(38,10),
@mto_pagado_ccaf      numeric(38,10),@mto_pagado_ccaf_reliq numeric(38,10),@aporte_patron_ccaf   numeric(38,10),
@pagado_ccaf_lq       numeric(38,10),@pagado_ccaf_total    numeric(38,10),
@aporte_patronal_1    numeric(38,10),@aporte_patronal_2    numeric(38,10),
@saldo_cta_cte        numeric(38,10),@val_total_desctos    numeric(38,10),
@valor_desahucio      numeric(38,10),@pje_desahucio        numeric(38,10),
@tot_imp_no_prop      numeric(38,10),@mto_tope60_dfl44     numeric(38,10),
@mto_dfl44            numeric(38,10),@valor_apv_tributa    numeric(38,10),
@adicional_isapre     numeric(38,10),@pje_cotiz_previs     decimal(5,2),
@pje_cotiz_salud      decimal(5,2),@tot_impto_reliq        numeric(38,10),
@impto_voluntario     numeric(38,10),@mto_salud_real       numeric(38,10),
@aporte_convenido     numeric(38,10),@cod_unidad_adminis   int,
@monto_ahorro_prev    numeric(38,10),@mto_trab_tr_pesado   numeric(38,10),
@mto_apor_tr_pesado   numeric(38,10),@porc_apl_tr_pesado   decimal(5,2),
@cod_afp_afc          int,@mto_imp_aporte_afc              numeric(38,10),
@mto_imp_aporte_afc_reliq  numeric(38,10),@valor_alcance_liq numeric(38,10),
@monto_seg_des        decimal(38,10),@valor_total_habere numeric(38,10),
@valor_haber_reliq    numeric(38,10),@valor_utm_proceso    decimal(13,4),
@valor_utm_mes        decimal(13,4),
@sp_dv_trabajador     char(1),@sp_apli_seguro_des   char(1),
@cod_tipo_contra      char(1),@sp_cod_forma_pago    char(1),@cod_forma_pago char(1),
@sp_apl_trab_pesado   char(1),@condic_previsional   char(1),
@sp_flg_difer_tope    char(1),@sp_flg_revisa_hist   char(1),
@dif_seguro           int,@codigo_tipo_contra   char(1),
@aplica_seguro_des    char(1),
@cod_tipo_trabajador_mes      char(2),
@cod_escala_sueldo    char(4),
@sp_fec_ini_contrat   datetime,@sp_fec_fin_contr_v   datetime,
@sp_fec_ini_contrat_i datetime,@sp_fec_fin_contr_v_i datetime,
@sp_fec_ini_seguro    datetime,@sp_fec_mod_tip_con   datetime,
@sp_fec_nacimiento    datetime,@fec_aplicacion       datetime,
@fec_ini_seguro_des   datetime,@fec_inicio           datetime,
@fec_final            datetime,@fec_mod_tipo_contr   datetime
declare @mto_cancela_previs_l numeric(38,10)
declare @nombre_completo varchar(50),@sp_ape_paterno varchar(30),
@sp_ape_materno varchar(30), @sp_nombre varchar(30),@cal_hab_liq_sl char(1),
@val_liquido_retorna numeric(38,10), @dscto_reliquida int

declare @mes_max_imponi_ley			numeric(38,10)
declare @mes_max_afecto_cotiz		numeric(38,10)
declare @mes_max_impon_seguro		numeric(38,10)
declare @max_impon_sis				numeric(38,10)

/*33977*/
declare @afecto_mto_sis_lq 		  numeric(38,10)
declare @monto_impon_seguro_lq	  numeric(38,10)
declare @total_imponi_ley_lq	  numeric(38,10)
declare @mto_tope_afc_uf		 decimal(7,4)
declare @afecto_cotiza_sis_reliq	numeric(38,10)
declare @afecto_cotizacion_sis		numeric(38,10)
declare @sp_fec_inicio           datetime
declare @sp_fec_final            datetime
declare @valor_total_dias		numeric(38,10)

declare
@max_afecto_cotiz       numeric(38,10),@afecto_cotiza_reliq    numeric(38,10),@afecto_cotizacion_lq numeric(38,10),
@max_imponi_ley         numeric(38,10),@imponi_ley_reliq       numeric(38,10),@afecto_cotiza_total numeric(38,10),
@max_impon_seguro       numeric(38,10),@impon_seguro_reliq     numeric(38,10),@salud_legal_total numeric(38,10),
@max_afec_afp_res       numeric(38,10),@max_impon_inp_res      numeric(38,10),@max_afec_afp_res_act numeric(38,10),
@max_afec_afc_res       numeric(38,10),@max_salud_pagada_res   numeric(38,10),
@seguro_des_reliq       numeric(38,10),@mto_prevision_reliq    numeric(38,10),@mto_desahucio_reliq numeric(38,10),
@mto_salud_legal_reliq  numeric(38,10),@salud_voluntaria_reliq numeric(38,10),
@salud_adicional_reliq  numeric(38,10),@sp_afecto_impto_reliq  numeric(38,10),
@sp_afecto_impto_total  numeric(38,10),@mto_aportesis_reliq    numeric(28,10),
@sp_impto_reliq         numeric(38,10),@sp_impto_reliq_act     numeric(38,10),
@sp_impto_reliq_act_tot numeric(38,10),@mto_aporte_sis_reliq   numeric(28,10),@mto_aporte_sis numeric(28,10),
@flg_aporte_sis char(1),@cod_haber_sis int,
@monto_ahorro_prev_reliq numeric(38,10),@monto_ahorro_prev_reliq_corr numeric(38,10),
@valor_apv numeric(38,10),@valor_apv_reliq numeric(38,10), @valor_apv_mes numeric(38,10),
@valor_apv_ultimo_mes numeric(38,10),@valor_apv_mes_corr numeric(38,10),@valor_uf_mes decimal(12,2),
@val_liquido_pago_reliq numeric(38,10),@ano_proceso_i int, @mes_proceso_i int,
@periodo_inicio int, @periodo_termino int, @periodo_reliq int, @periodo_indice int,
@bSinMesInicio int, @bSinMesTermino int, @valor_anticipo numeric(38,10),
@sp_aporte_cta_ind int, @sp_aporte_cta_fon int,
@str_select varchar(8000),@condic_previs_act char(1)
declare @porc_mutual_base decimal(7,4), @porc_mutual_adic decimal(7,4), @porc_mutual_sanna decimal(7,4)
declare @sp_aporte numeric(28,10), @sp_aporte_adic numeric(28,10), @sp_aporte_sanna numeric(28,10),
@sp_aporte_mutu_base numeric(28,10), @sp_aporte_mutu_adic  numeric(28,10), @sp_aporte_mutu_sanna  numeric(28,10),
@cod_mutu_base int, @cod_mutu_adic int, @cod_mutu_sanna int
declare @no_redondea_llss char(1)
declare @str_update varchar(8000)
declare @acum_historico char(18)
declare @cod_tipo_invalidez int

declare @valor_liquido_1 numeric(28,10),@valor_liquido_2 numeric(28,10),@pasa_1 int,
@suma_haber_imp int, @valor_liquido_a_llegar numeric(28,10),@valor_sobregiro_ini numeric(28,10),
@valor_sobregiro  numeric(28,10),@valor_haber_liq numeric(28,10),@cantidad_haberes_liquido int,
@un_ciclo_mas int, @valor_sobregiro_a_llegar numeric(28,10),@suma_haberes_liquido numeric(28,10),
@moneda_haber_liq char(4),@es_imponible char(1), @es_base_calculo char(1),@es_propdias char(1),
@valor_decimal numeric(28,10),@haber_liq_impo char(1),@haber_liquido_trib char(1),
@haber_propdias char(1), @centro_costo_hl int , @bTieneAsignacion int

declare @mto_tope_prev_uf decimal(7,4),
@valor_topado decimal(28,10),
@valor_tabla decimal(9,3),
@ncantdias_reliq numeric(10),
@mes_termino_res int,
@ano_termino_res int

declare @max_afecto_mutu numeric(38,10), 
	@afecto_mutual numeric(38,10), 
	@afecto_mutual_reliq    numeric(38,10),
	@afecto_sanna_reliq    numeric(38,10),
	@afecto_sanna    numeric(38,10),
	@max_afecto_mutu_res       numeric(38,10),
	@max_afecto_mutu_res_act   numeric(38,10),
	@mes_max_afecto_mutu		numeric(38,10) 

select @es_base_calculo      = 'N'
select @max_afec_afp_res     = 0
select @max_impon_inp_res    = 0
select @max_afec_afc_res     = 0
select @max_salud_pagada_res = 0
select @sp_aporte_cta_ind    = 0
select @sp_aporte_cta_fon    = 0
select @sp_nro_dias_licencia = 0
select @saldo_cta_cte        = 0
select @tot_desc_cta_cte     = 0
select @valor_anticipo       = 0
select @centro_costo         = 0
select @centro_costo_mes     = 0

select @mes_termino_res	= @mes_termino
select @ano_termino_res = @ano_termino

SET DATEFORMAT dmy

select @sp_aporte_cta_ind = cod_haber
from haber
where
cod_empresa        = @empresa_proceso and
cod_planta         = @planta_proceso and
tipo_hab_contabili = 'F' and
prioridad          = 1
if @sp_aporte_cta_ind is null select @sp_aporte_cta_ind = 0

select @sp_aporte_cta_fon = cod_haber
from haber
where
cod_empresa        = @empresa_proceso and
cod_planta         = @planta_proceso and
tipo_hab_contabili = 'F' and
prioridad          = 2
if @sp_aporte_cta_fon is null select @sp_aporte_cta_fon = 0

select  @fec_inicio = fec_ini_info_perio,@fec_final =fec_fin_info_perio
from control_procesos
Where   cod_empresa =  @empresa_proceso and
        cod_planta = @planta_proceso    and
        cod_mes_proceso = @mes_proceso  and
        ano_proc_cont_proc = @ano_proceso

select @cod_mutu_base = cod_haber_base, 
       @cod_mutu_adic = cod_haber_adic
from planta
where
cod_empresa = @empresa_proceso and
cod_planta  = @planta_proceso
if @cod_mutu_base is null select @cod_mutu_base = 0
if @cod_mutu_adic is null select @cod_mutu_adic = 0


select @cod_mutu_sanna = cod_haber
from haber
where
cod_empresa        = @empresa_proceso and
cod_planta         = @planta_proceso and
cod_unidad_moneda = '%ILS'

if @cod_mutu_sanna is null select @cod_mutu_sanna = 0

select 
@sp_prop_dist_haber    = prop_dist_haber,
@sp_dist_haber_meses   = dist_haber_meses,
@sp_prop_total_dias    = prop_total_dias,
@sp_prop_haber_mes     = prop_haber_mes,
@sp_incluye_mes_inicio = incluye_mes_inicio,
@sp_incluye_mes_final  = incluye_mes_final,
@sp_calc_ult_contrato  = calc_ult_contrato,
@sp_ind_finiquitados   = ind_finiquitados,
@sp_indic_genera_dscto = indic_genera_dscto,
@sp_cod_dscto_sobreg   = cod_dscto_sobreg,
@sp_cod_proceso_sobreg = cod_proceso_sobreg,
@sp_ind_impuesto       = ind_impuesto,
@sp_ind_leyes_sociales = ind_leyes_sociales,
@sp_ind_salud_pagada   = ind_salud_pagada,
@sp_ind_dscto_retenci  = ind_dscto_retenci,
@sp_ind_dscto_cta_cte  = ind_dscto_cta_cte,
@sp_indic_genera_haber = indic_genera_haber,
@sp_cod_haber_sobreg   = cod_haber_sobreg,
@sp_incluye_hist_difer = incluye_hist_difer,
@sp_aporte_empresa     = aporte_empresa,
@sp_str_proc_diferenci = str_proc_diferenci,
@sp_str_aportes        = str_aportes,
@sp_consolida_empresa  = consolida_empresa,
@sp_ind_afp_mes        = ind_afp_mes,
@sp_fec_apli_dscto     = fec_apli_dscto,
@sp_sobregira_dsctos   = sobregira_dsctos,
@sp_ano_registro       = ano_registro,
@sp_mes_registro       = mes_registro,
@sp_ano_base           = ano_base,
@sp_mes_base           = mes_base,
@sp_ajuste_sencillo    = ajuste_sencillo,
@sp_periodo_utm        = periodo_utm,
@sp_prop_lic_medica    = prop_lic_medica,
@sp_prop_feriados      = prop_feriados,
@sp_prop_ausencias     = prop_ausencias,
@sp_ind_seg_desempleo  = ind_seg_desempleo,
@flg_tope_salud        = flg_tope_salud,
@sp_bitacora_reliq     = flg_bitacora,
@no_redondea_llss      = no_redondeo_llss
from param_reliquida
where
cod_empresa      = @empresa_proceso and
cod_planta       = @planta_proceso and
ano_periodo      = @ano_proceso and
mes_periodo      = @mes_proceso and
cod_tipo_proceso = @tipo_proceso
if @no_redondea_llss is null or @no_redondea_llss = ' '
  select @no_redondea_llss = 'N'
if @flg_tope_salud is null or @flg_tope_salud = ' '
  select @flg_tope_salud = 'N'
if @sp_ind_impuesto is null or @sp_ind_impuesto = ' '
  select @sp_ind_impuesto = 'N'
if @sp_ind_leyes_sociales is null or @sp_ind_leyes_sociales = ' '
  select @sp_ind_leyes_sociales = 'N'
if @sp_ind_salud_pagada is null or @sp_ind_salud_pagada = ' '
  select @sp_ind_salud_pagada = 'N'
if @sp_ind_dscto_cta_cte is null or @sp_ind_dscto_cta_cte = ' '
  select @sp_ind_dscto_cta_cte = 'N'
if @sp_ind_seg_desempleo is null or @sp_ind_seg_desempleo = ' '
  select @sp_ind_seg_desempleo = 'N'
if @sp_bitacora_reliq is null or @sp_bitacora_reliq = ' ' or @sp_bitacora_reliq = ''
  select @sp_bitacora_reliq = 'N'
if @sp_prop_haber_mes is null or @sp_prop_haber_mes = ' ' or @sp_prop_haber_mes = ''
  select @sp_prop_haber_mes = 'N'
if @sp_prop_lic_medica is null or @sp_prop_lic_medica = ' ' or @sp_prop_lic_medica = ''
  select @sp_prop_lic_medica = 'N'
if @sp_prop_feriados is null or @sp_prop_feriados = ' ' or @sp_prop_feriados = ''
  select @sp_prop_feriados = 'N'
if @sp_prop_ausencias is null or @sp_prop_ausencias = ' ' or @sp_prop_ausencias = ''
  select @sp_prop_ausencias = 'N'
if @sp_consolida_empresa is null or @sp_consolida_empresa = ' ' or @sp_consolida_empresa = ''
  select @sp_consolida_empresa = 'N'
if @sp_calc_ult_contrato is null or @sp_calc_ult_contrato = ' ' or @sp_calc_ult_contrato = ''
  select @sp_calc_ult_contrato = 'N'

create table #max_afecto_cotiz (valor numeric(28,10))
create table #max_afecto_mutual (valor numeric(28,10))
create table #max_imponi_ley (valor numeric(28,10))
create table #max_impon_seguro (valor numeric(28,10))
create table #impto_pagado(afecto numeric(28,10),impuesto numeric(28,10),asignacion_zona numeric(28,10))
create table #salud_pagada(monto_salud numeric(28,10))
if @sp_str_proc_diferenci is not null and rtrim(ltrim(@sp_str_proc_diferenci)) != ' '
  select @sp_str_proc_diferenci = ' (''' + replace(@sp_str_proc_diferenci,'-',''',''') + ''') '

select @fec_aplicacion = fec_fin_info_perio
from control_procesos
where
cod_empresa        = @empresa_proceso and
cod_planta         = @planta_proceso and
ano_proc_cont_proc = @sp_ano_base and
cod_mes_proceso    = @sp_mes_base

delete from errores_calculo
where 
cod_empresa      = @empresa_proceso and
cod_planta       = @planta_proceso and
cod_tipo_proceso = @tipo_proceso and
nro_trabajador not  in (select nro_trabajador from historico_liquidac 
where cod_empresa = @empresa_proceso and 
      cod_planta = @planta_proceso   and
      cod_tipo_proceso = @tipo_proceso and
      ano_periodo = @sp_ano_registro and
      mes_periodo = @sp_mes_registro)

if @sp_ind_finiquitados = 'S'
  declare lectura_personal cursor for
  select distinct a.nro_trabajador,a.dv_trabajador,a.nro_contrato_vigen,
         a.ape_paterno_trabaj,a.ape_materno_trabaj,a.nombre,a.rut_trabajador
  from personal a
  where
  a.cod_empresa        = @empresa_proceso AND
  a.cod_planta         = @planta_proceso AND
  a.indic_liq_individu = 'R' and
  ( ( datepart(yy,a.fec_fin_contr_vige) * 100 + datepart(mm,a.fec_fin_contr_vige) <= @sp_ano_base * 100 + @sp_mes_base and
      datepart(yy,a.fec_fin_contr_vige) * 100 + datepart(mm,a.fec_fin_contr_vige) >= @ano_inicio * 100 + @mes_inicio ) or
  (a.fec_fin_contr_vige is null and a.cod_vigen_trabajad='N') or 
  a.cod_vigen_trabajad = 'S' ) and
  ( a.nro_trabajador in ( select nro_trabajador from 
                        haber_informado where
                        cod_empresa         = @empresa_proceso    and
                        cod_planta          = @planta_proceso     and
                        cod_tipo_proceso    = @tipo_proceso    and
                        valor_concepto      > 0 ) or 
    a.nro_trabajador in ( select nro_trabajador from 
                        haber_liquido where
                        cod_empresa         = @empresa_proceso    and
                        cod_planta          = @planta_proceso     and
                        cod_tipo_proceso    = @tipo_proceso    and
                        valor_concepto      > 0 ) ) 
  order by a.ape_paterno_trabaj, a.ape_materno_trabaj, a.nombre
  for read only
else
  declare lectura_personal cursor for
  select distinct a.nro_trabajador,a.dv_trabajador,a.nro_contrato_vigen,
         a.ape_paterno_trabaj,a.ape_materno_trabaj,a.nombre,a.rut_trabajador
  from personal a
  where
  a.cod_empresa        = @empresa_proceso AND
  a.cod_planta         = @planta_proceso AND
  a.indic_liq_individu = 'R' and
  a.cod_vigen_trabajad = 'S' and
  ( a.nro_trabajador in ( select nro_trabajador from 
                        haber_informado where
                        cod_empresa         = @empresa_proceso    and
                        cod_planta          = @planta_proceso     and
                        cod_tipo_proceso    = @tipo_proceso    and
                        valor_concepto      > 0 ) or 
    a.nro_trabajador in ( select nro_trabajador from 
                        haber_liquido where
                        cod_empresa         = @empresa_proceso    and
                        cod_planta          = @planta_proceso     and
                        cod_tipo_proceso    = @tipo_proceso    and
                        valor_concepto      > 0 ) ) 
  order by a.ape_paterno_trabaj, a.ape_materno_trabaj, a.nombre
  for read only

open lectura_personal
fetch lectura_personal into
      @sp_nro_trabajador,@sp_dv_trabajador,@nro_contr_vig,
      @sp_ape_paterno, @sp_ape_materno, @sp_nombre, @sp_rut_trabajador
while @@FETCH_STATUS = 0
  begin    
  
	
	select @mes_termino	= @mes_termino_res
	select @ano_termino = @ano_termino_res

    select @valor_liquido_1 = 1
    select @valor_liquido_2 = 0
    select @pasa_1 = 1
    select @suma_haber_imp = 0
    select @valor_liquido_a_llegar = 0
    select @valor_sobregiro_a_llegar = 0
    select @valor_sobregiro_ini = 0
    select @valor_sobregiro = 0
    select @valor_haber_liq = 0
    
    select @cantidad_haberes_liquido = isnull(count(haber_liquido.cod_haber),0)
    from haber_liquido, haber 
    where 
    haber_liquido.cod_empresa           = @empresa_proceso and 
    haber_liquido.cod_planta            = @planta_proceso and 
    haber_liquido.cod_tipo_proceso      = @tipo_proceso and 
    year(haber_liquido.fec_aplicacion)  = @ano_proceso and 
    month(haber_liquido.fec_aplicacion) = @mes_proceso and 
    haber_liquido.nro_trabajador        = @sp_nro_trabajador and 
    haber_liquido.dv_trabajador         = @sp_dv_trabajador and 
    haber_liquido.cod_empresa           = haber.cod_empresa and 
    haber_liquido.cod_planta            = haber.cod_planta and 
    haber_liquido.cod_haber             = haber.cod_haber and 
    (haber.calc_liquido = 'S' or haber.haber_liquido_trib = 'S')
    if @cantidad_haberes_liquido is null select @cantidad_haberes_liquido = 0
     
    delete from haber_informado 
    where 
    cod_empresa      = @empresa_proceso and
    cod_planta       = @planta_proceso and
    cod_tipo_proceso = @tipo_proceso and 
    nro_trabajador   = @sp_nro_trabajador and 
    cod_haber in (select cod_haber from haber h where
    h.cod_empresa    = @empresa_proceso and
    h.cod_planta     = @planta_proceso and 
    (h.calc_liquido  = 'S' or h.haber_liquido_trib = 'S'))   
    
    update haber_liquido set nro_licencia = 0
    where 
    cod_empresa      = @empresa_proceso and
    cod_planta       = @planta_proceso and
    cod_tipo_proceso = @tipo_proceso and 
    nro_trabajador   = @sp_nro_trabajador
     
    select @un_ciclo_mas = 0 
	

   
    
    select @nombre_completo          = rtrim(ltrim(@sp_ape_paterno)) + ' ' + ltrim(rtrim(@sp_ape_materno)) + ' ' + ltrim(rtrim(@sp_nombre))
    select @aporte_patron_mutu       = 0
    select @aporte_patron_mutu_reliq = 0
    select @sp_impto_reliq_act_tot   = 0
    select @mto_imp_aporte_afc       = 0
    select @valor_total_habere       = 0
    select @tot_impon_sin_tope       = 0
    select @hab_no_imp_no_trib     = 0
    select @tot_tributable         = 0
    select @afecto_impto           = 0
    select @mto_cancela_previs     = 0
    select @valor_desahucio        = 0
    select @mto_cancela_previs_l   = 0
    select @mto_aporte_sis         = 0
    select @mto_antig_previsio     = 0
    select @val_leyes_sociales     = 0 
    select @val_total_desctos      = 0
    select @val_liquido_pago       = 0
    select @tot_dctos_legales      = 0
    select @tot_dctos_no_legal     = 0
    select @tot_desc_cta_cte       = 0
    select @valor_anticipo         = 0
    select @monto_cancel_impto     = 0
    select @asignacion_zona        = 0   
    select @sobregiros_mes         = 0  
    select @val_liquido_pago       = 0
    select @monto_salud            = 0
    select @mto_salud_legal        = 0
    select @mto_pagado_ccaf        = 0
    select @monto_seguro_des       = 0
    select @afecto_cotizacion      = 0
    select @afecto_cotizacion_sis  = 0
    select @total_imponi_ley       = 0   
    select @afecto_cotizacion      = 0   
    select @mto_seg_cta_indidu     = 0
    select @mto_seg_cta_fondos     = 0    
    select @monto_impon_seguro     = 0
    select @cod_afp_afc            = 0
    select @aporte_convenido       = 0
    select @pje_cotzado_caja       = 0
    select @pje_desahucio          = 0
    select @pje_cotiz_previs       = 0
    select @pje_cotiz_salud        = 0
    select @porc_mutual_base       = 0
    select @porc_mutual_adic       = 0
    select @porc_mutual_sanna	   = 0
    select @monto_ahorro_prev      = 0
    select @afecto_mutual			= 0
    
    --personal actual
    select 
    @codigo_tipo_contra      = codigo_tipo_contra,
    @fec_mod_tipo_contr      = fec_mod_tipo_contr,
    @aplica_seguro_des       = aplica_seguro_des,
    @fec_ini_seguro_des      = fec_ini_seguro_des,
    @sp_fec_ini_contrat      = fec_ini_contrato,
    @sp_fec_fin_contr_v      = fec_fin_contr_vige,
    @centro_costo            = cod_centro_costo,
    @cod_sucursal            = cod_sucursal,
    @cod_tipo_trabajador     = cod_tipo_trabajado,
    @convenio                = convenio,
    @cod_escala_sueldo       = cod_escala_sueldo,
    @cod_sindicato           = cod_sindicato,
    @cod_cargo               = cod_cargo,
    @cod_instit_previsi_act  = cod_afp,
    @cod_instit_salud_act    = cod_isapre,
    @caja_comp_antigua_act   = cod_caja_prevision,
    @nro_contr_vig           = nro_contrato_vigen,
    @cod_unidad_adminis      = cod_unidad_adminis,
    @cod_forma_pago          = cod_forma_pago,
    @condic_previs_act       = condic_previsional,
    @cod_afp_afc             = cod_afp_afc,
    @cod_tipo_invalidez		= cod_tipo_invalidez
    from personal
    where
    cod_empresa      = @empresa_proceso   and
    cod_planta       = @planta_proceso    and
    nro_trabajador   = @sp_nro_trabajador and
    dv_trabajador    = @sp_dv_trabajador
    

  
    if @nro_contr_vig is null
    begin
		select @nro_contr_vig = 0
    end
    
    if @cod_instit_previsi_act > 0 and @cod_instit_previsi_act != 900 and  
       @cod_instit_previsi_act != 888
      select @cod_afp_afc = @cod_instit_previsi_act
      --determinacion de periodo de reliquidacion - meses proceso
      if @ano_inicio = @ano_termino
        select @meses_proceso = @mes_termino - @mes_inicio + 1
      else
        select @meses_proceso = 12 * @ano_termino - 12 * @ano_inicio + @mes_termino - @mes_inicio + 1 
      select @meses_reliq = @meses_proceso
      select @periodo_inicio  = @ano_inicio  * 100 + @mes_inicio
      select @periodo_termino = @ano_termino * 100 + @mes_termino 
      
      if @sp_prop_total_dias = 'S'
	  begin	  	  
		select @ncantdias_reliq = @meses_proceso * 30		
	  end

	  if datepart(yy,@sp_fec_fin_contr_v) * 100 + datepart(mm,@sp_fec_fin_contr_v) <= (@ano_termino * 100 + @mes_termino)   
		  begin
			select @ano_termino = datepart(yyyy,@sp_fec_fin_contr_v)
			select @mes_termino = datepart(mm,@sp_fec_fin_contr_v)
			select @periodo_termino = @ano_termino * 100 + @mes_termino 
			
			if @ano_inicio = @ano_termino
				select @meses_proceso = @mes_termino - @mes_inicio + 1
			else
				select @meses_proceso = 12 * @ano_termino - 12 * @ano_inicio + @mes_termino - @mes_inicio + 1 
				
		    if @sp_prop_dist_haber = 'N'
			begin
				select @meses_reliq = @meses_proceso
			end
	  end	    
      
      --meses efectivos
      select @meses_efectivos = 0
      select @bSinMesInicio  = 0
      select @bSinMesTermino = 0
      if datepart(yy,@sp_fec_ini_contrat) * 100 + datepart(mm,@sp_fec_ini_contrat) >= (@ano_inicio  * 100 + @mes_inicio) and
         datepart(yy,@sp_fec_ini_contrat) * 100 + datepart(mm,@sp_fec_ini_contrat) <= (@ano_termino * 100 + @mes_termino)
        if @sp_incluye_mes_inicio = 'N' or @sp_incluye_mes_inicio is null
          select bSinMesInicio = 1
      if datepart(yy,@sp_fec_fin_contr_v) * 100 + datepart(mm,@sp_fec_fin_contr_v) >= (@ano_inicio  * 100 + @mes_inicio) and
         datepart(yy,@sp_fec_fin_contr_v) * 100 + datepart(mm,@sp_fec_fin_contr_v) <= (@ano_termino * 100 + @mes_termino)
        if @sp_incluye_mes_final = 'N' or @sp_incluye_mes_final is null
          begin
            if datepart(yy,@sp_fec_fin_contr_v) = datepart(yy,@sp_fec_ini_contrat) and 
               datepart(mm,@sp_fec_fin_contr_v) = datepart(mm,@sp_fec_ini_contrat)
              if @bSinMesInicio = 0
                select @bSinMesTermino = 1
              else
                select @bSinMesTermino = 1
          end
     
        
      if @sp_consolida_empresa = 'N'
        begin
          if @sp_calc_ult_contrato = 'S'
            select @meses_efectivos = count(*)
            from historico_liquidac
            where
            cod_empresa                      = @empresa_proceso                    and
            cod_planta                       = @planta_proceso                     and
            cod_tipo_proceso                 = 'LQ'                                and
            ano_periodo * 100 + mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
            ano_periodo * 100 + mes_periodo <= (@ano_termino * 100 + @mes_termino) and
            nro_trabajador                   = @sp_nro_trabajador                  and
            dv_trabajador                    = @sp_dv_trabajador                   and
            fec_ini_contr_vige               = @sp_fec_ini_contrat
          else
            select @meses_efectivos = count(*)
            from historico_liquidac
            where
            cod_empresa                      = @empresa_proceso                    and
            cod_planta                       = @planta_proceso                     and
            cod_tipo_proceso                 = 'LQ'                                and
            ano_periodo * 100 + mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
            ano_periodo * 100 + mes_periodo <= (@ano_termino * 100 + @mes_termino) and
            nro_trabajador                   = @sp_nro_trabajador                  and
            dv_trabajador                    = @sp_dv_trabajador  
        end
      else
        begin
          if @sp_calc_ult_contrato = 'S'
            select @meses_efectivos = count(distinct a.mes_periodo)
            from historico_liquidac a, personal b
            where
            a.cod_empresa                        = @empresa_proceso                    and
            a.cod_tipo_proceso                   = 'LQ'                                and
            a.ano_periodo * 100 + a.mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
            a.ano_periodo * 100 + a.mes_periodo <= (@ano_termino * 100 + @mes_termino) and
			a.cod_empresa                        = b.cod_empresa                       and
			a.cod_planta                         = b.cod_planta                        and
			a.nro_trabajador                     = b.nro_trabajador                    and
			a.dv_trabajador                      = b.dv_trabajador                     and
			b.rut_trabajador                     = @sp_rut_trabajador                  and
            a.fec_ini_contr_vige                 = @sp_fec_ini_contrat
          else
            select @meses_efectivos = count(distinct a.mes_periodo)
            from historico_liquidac a, personal b
            where
            a.cod_empresa                        = @empresa_proceso                    and
            a.cod_tipo_proceso                   = 'LQ'                                and
            a.ano_periodo * 100 + a.mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
            a.ano_periodo * 100 + a.mes_periodo <= (@ano_termino * 100 + @mes_termino) and
			a.cod_empresa                        = b.cod_empresa                       and
			a.cod_planta                         = b.cod_planta                        and
			a.nro_trabajador                     = b.nro_trabajador                    and
			a.dv_trabajador                      = b.dv_trabajador                     and
			b.rut_trabajador                     = @sp_rut_trabajador
        end
      if @meses_efectivos is null select @meses_efectivos = 0
      select @meses_reales = @meses_efectivos
      if @meses_efectivos < @meses_proceso
         begin
           if @sp_consolida_empresa = 'N'
             begin
               if @sp_calc_ult_contrato = 'S'
                 select top 1 @mes_proceso_i = mes_periodo, @ano_proceso_i = ano_periodo
                 from historico_liquidac
                 where
                 cod_empresa                      = @empresa_proceso               and
                 cod_planta                       = @planta_proceso                and
                 cod_tipo_proceso                 = 'LQ'                           and
                 ano_periodo * 100 + mes_periodo <= (@ano_termino  * 100 + @mes_termino)  and
                 nro_trabajador                   = @sp_nro_trabajador             and
                 dv_trabajador                    = @sp_dv_trabajador              and
				 fec_ini_contr_vige     = @sp_fec_ini_contrat
                 order by (ano_periodo * 100 + mes_periodo ) desc
               else
                 select top 1 @mes_proceso_i = mes_periodo, @ano_proceso_i = ano_periodo
                 from historico_liquidac
                 where
                 cod_empresa                      = @empresa_proceso                    and
                 cod_planta                       = @planta_proceso                     and
                 cod_tipo_proceso                 = 'LQ'                                and
                 ano_periodo * 100 + mes_periodo <= (@ano_termino  * 100 + @mes_termino)  and
                 nro_trabajador                   = @sp_nro_trabajador                  and
                 dv_trabajador                    = @sp_dv_trabajador                   
                 order by (ano_periodo * 100 + mes_periodo ) desc
             end
           else 
             begin
               if @sp_calc_ult_contrato = 'S'
                 select top 1 @mes_proceso_i = a.mes_periodo, @ano_proceso_i = a.ano_periodo
                 from historico_liquidac a, personal b
                 where
                 a.cod_empresa                        = @empresa_proceso                     and
                 a.cod_tipo_proceso                   = 'LQ'                                 and
                 a.ano_periodo * 100 + a.mes_periodo <= (@ano_termino  * 100 + @mes_termino) and
			     a.cod_empresa                        = b.cod_empresa                        and
			     a.cod_planta                         = b.cod_planta                         and
			     a.nro_trabajador                     = b.nro_trabajador                     and
			     a.dv_trabajador                      = b.dv_trabajador                      and
			     b.rut_trabajador                     = @sp_rut_trabajador                   and
				 a.fec_ini_contr_vige                 = @sp_fec_ini_contrat
                 order by (a.ano_periodo * 100 + a.mes_periodo ) desc
               else
                 select top 1 @mes_proceso_i = a.mes_periodo, @ano_proceso_i = a.ano_periodo
                 from historico_liquidac a, personal b
                 where
                 a.cod_empresa                        = @empresa_proceso                     and
                 a.cod_tipo_proceso                   = 'LQ'                                 and
                 a.ano_periodo * 100 + a.mes_periodo <= (@ano_termino  * 100 + @mes_termino) and
			     a.cod_empresa                        = b.cod_empresa                        and
			     a.cod_planta                         = b.cod_planta                         and
			     a.nro_trabajador                     = b.nro_trabajador                     and
			     a.dv_trabajador                      = b.dv_trabajador                      and
			     b.rut_trabajador                     = @sp_rut_trabajador
                 order by (a.ano_periodo * 100 + a.mes_periodo ) desc
             end
           select @periodo_termino = @ano_proceso_i * 100 + @mes_proceso_i 
           if @sp_consolida_empresa = 'N'
             begin
               if @sp_calc_ult_contrato = 'S'
                 select top 1 @mes_proceso_i = mes_periodo, @ano_proceso_i = ano_periodo
                 from historico_liquidac
                 where
                 cod_empresa                      = @empresa_proceso                    and
                 cod_planta                       = @planta_proceso                     and
                 cod_tipo_proceso                 = 'LQ'                                and
                 ano_periodo * 100 + mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
                 nro_trabajador                   = @sp_nro_trabajador                  and
                 dv_trabajador                    = @sp_dv_trabajador                   and
				 fec_ini_contr_vige     = @sp_fec_ini_contrat
                 order by ano_periodo * 100 + mes_periodo 
               else
                 select top 1 @mes_proceso_i = mes_periodo, @ano_proceso_i = ano_periodo
                 from historico_liquidac
                 where
                 cod_empresa                      = @empresa_proceso                    and
                 cod_planta                       = @planta_proceso                     and
                 cod_tipo_proceso                 = 'LQ'                                and
                 ano_periodo * 100 + mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
                 nro_trabajador                   = @sp_nro_trabajador                  and
                 dv_trabajador                    = @sp_dv_trabajador                   
                 order by ano_periodo * 100 + mes_periodo 
             end
           else
             begin
               if @sp_calc_ult_contrato = 'S'
                 select top 1 @mes_proceso_i = a.mes_periodo, @ano_proceso_i = a.ano_periodo
                 from historico_liquidac a, personal b
                 where
                 a.cod_empresa                        = @empresa_proceso                    and
                 a.cod_tipo_proceso                   = 'LQ'                                and
                 a.ano_periodo * 100 + a.mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
			     a.cod_empresa                        = b.cod_empresa                       and
			     a.cod_planta                         = b.cod_planta                        and
			     a.nro_trabajador                     = b.nro_trabajador                    and
			     a.dv_trabajador                      = b.dv_trabajador                     and
			     b.rut_trabajador                     = @sp_rut_trabajador                  and
                 a.fec_ini_contr_vige                 = @sp_fec_ini_contrat
                 order by a.ano_periodo * 100 + a.mes_periodo 
               else
                 select top 1 @mes_proceso_i = a.mes_periodo, @ano_proceso_i = a.ano_periodo
                 from historico_liquidac a, personal b
                 where
                 a.cod_empresa                        = @empresa_proceso                    and
                 a.cod_tipo_proceso                   = 'LQ'                                and
                 a.ano_periodo * 100 + a.mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
			     a.cod_empresa                        = b.cod_empresa                       and
			     a.cod_planta                         = b.cod_planta                        and
			     a.nro_trabajador                     = b.nro_trabajador                    and
			     a.dv_trabajador                      = b.dv_trabajador                     and
			     b.rut_trabajador                     = @sp_rut_trabajador
                 order by a.ano_periodo * 100 + a.mes_periodo 
             end
           select @meses_proceso = @meses_efectivos
           if @bSinMesInicio = 1
             begin
               select @meses_proceso = @meses_proceso - 1
               if @mes_proceso_i = 12
                 begin
                   select @mes_proceso_i = 1
                   select @ano_proceso_i = @ano_proceso_i + 1
                 end
               else
                 select @mes_proceso_i = @mes_proceso_i + 1
             end
           if @bSinMesTermino = 1
             begin
               select @meses_proceso = @meses_proceso - 1
               if @mes_termino = 1
                 begin
                   select @mes_termino = 12
                   select @ano_termino = @ano_termino - 1
                 end
               else
                 select @mes_termino = @mes_termino -1
             end
            
           select @mes_indice    = @mes_proceso_i 
           select @mes_reliq     = @mes_proceso_i 
           select @ano_reliq     = @ano_proceso_i 
            
           select @periodo_reliq  = @ano_reliq     * 100 + @mes_reliq
           select @periodo_indice = @ano_proceso_i * 100 + @mes_proceso_i
          end
        else
         begin
            if @bSinMesInicio = 1
              begin
                select @meses_proceso = @meses_proceso - 1
                if @mes_proceso_i = 12
                  begin
                    select @mes_proceso_i = 1
                    select @ano_proceso_i = @ano_proceso_i + 1
                  end
                else
                  select @mes_proceso_i = @mes_proceso_i + 1
              end
            if @bSinMesTermino = 1
              begin
                select @meses_proceso = @meses_proceso - 1
                if @mes_termino = 1
                  begin
                    select @mes_termino = 12
                    select @ano_termino = @ano_termino - 1
                  end
                else
                  select @mes_termino = @mes_termino -1
              end
            select @mes_indice     = 1
            select @mes_reliq      = @mes_inicio
            select @ano_reliq      = @ano_inicio
            select @periodo_reliq  = @ano_reliq * 100 + @mes_reliq
            select @periodo_indice = @ano_reliq * 100 + @mes_reliq
          end
          
          --TIPS 26632
          
		select @val_liquido_retorna  = 0
     
		if @cantidad_haberes_liquido = 0 or @cantidad_haberes_liquido is null
		  select @valor_liquido_2 = @valor_liquido_1 + 5
		else
		begin
		  if @meses_proceso > 0
			  exec spliq_calc_reliq_hl @mes_proceso,@ano_proceso,@empresa_proceso,@planta_proceso,
			  @sp_nro_trabajador,@sp_dv_trabajador,@tipo_proceso,@mes_inicio,
			  @ano_inicio,@mes_termino,@ano_termino,@sp_usuario, @val_liquido_retorna output
		end
		      
          
      exec spliq_borro_indivi_reliq @sp_mes_registro, @sp_ano_registro,@empresa_proceso,
      @planta_proceso, @sp_nro_trabajador,@sp_dv_trabajador, @tipo_proceso
      
      select @valor_haber = 0
      select @cod_haber   = 0
      select @valor_exento= 0
      
      if @sp_prop_dist_haber = 'N' and @meses_proceso > 0
        begin
          select @meses_reales = 0
          select @meses_reliq  = 0
        end
       
      exec spliq_haberes_reliq @mes_proceso, @ano_proceso, @empresa_proceso,
      @planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador, @tipo_proceso,@cod_sucursal,
      @centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@sp_ano_registro,@sp_mes_registro,
      @sp_ano_base, @sp_mes_base, @meses_reales, @meses_reliq, @cod_haber output, 
      @valor_haber output, @valor_exento output, @cod_hab_aporte output,@valor_aporte output,
      @bTieneAsignacion output
      
     
      if @valor_haber = 0 and @bTieneAsignacion = 1
        begin
          insert into errores_calculo(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,
          nombre,cod_tipo_proceso,cod_error_tabla,descripcion_codigo,masivo_informado,
          descripcion_error,tabla_del_error, tipo_error) 
          values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,
          @nombre_completo,@tipo_proceso,100,'Valor informado','C',
          'El valor informado del haber es cero','haber_informado','E')
        end
        
      select @valor_apv = 0
      
      exec spliq_descuentos_apv_reliq @mes_proceso, @ano_proceso, @empresa_proceso,
      @planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador, @tipo_proceso,
      @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@sp_ano_registro,
      @sp_mes_registro,@sp_ano_base, @sp_mes_base, @valor_apv output  
      
      select @valor_total_dias = 0
      
	  if @sp_prop_total_dias = 'S'
	  begin	  
		      select 
                   @nro_dias_enfermo        = sum(nro_dias_enfermo),
                   @nro_dias_vacacione      = sum(nro_dias_vacacione),
                   @nro_dias_ausente        = sum(nro_dias_ausente),
                   @dias_asistidos          = sum(nro_dias_asistidos)
              from historico_liquidac
              where
              cod_empresa      = @empresa_proceso   and
              cod_tipo_proceso = 'LQ'               and
              ano_periodo * 100 + mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
			  ano_periodo * 100 + mes_periodo <= (@ano_termino * 100 + @mes_termino) and
              nro_trabajador   = @sp_nro_trabajador and
              dv_trabajador    = @sp_dv_trabajador	  
               
              if @sp_prop_lic_medica = 'S'
                select @dias_asistidos = @dias_asistidos + @nro_dias_enfermo
              if @sp_prop_feriados = 'S'
                select @dias_asistidos = @dias_asistidos + @nro_dias_vacacione
              if @sp_prop_ausencias = 'S'
                select @dias_asistidos = @dias_asistidos + @nro_dias_ausente              
	  
			select @valor_haber = ( @valor_haber / @ncantdias_reliq ) * @dias_asistidos
			select @valor_total_dias = @valor_total_dias + @valor_haber
	  end
      
      select @valor_haber = round(@valor_haber,0)
      select @valor_apv   = round(@valor_apv  ,0)
      if @meses_proceso > 0
        select @valor_mes = round(@valor_haber / @meses_proceso,0)
      if @meses_proceso > 0
        select @valor_apv_mes = round(@valor_apv / @meses_proceso,0)
       
      select @valor_ultimo_mes     = @valor_haber - @valor_mes * ( @meses_proceso - 1 )* 1.0
      select @valor_ultimo_mes     = round(@valor_ultimo_mes,0)
      select @valor_apv_ultimo_mes = @valor_apv - @valor_apv_mes * ( @meses_proceso - 1 ) * 1.0
      select @valor_apv_ultimo_mes = round(@valor_apv_ultimo_mes,0)
  
      insert into historico_liquidac(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,
      ano_periodo,mes_periodo,cod_tipo_proceso,nro_contr_vig_proc,cod_sucursal,
      fec_ini_contr_vige,fec_fin_contr,nro_convenio,cod_cargo,cod_centro_costo,
      cod_tipo_trabajado,cod_tipo_jornada,valor_total_habere,hab_no_imp_no_trib,
      tot_desc_cta_cte,ret_judic_resconta,tot_dctos_no_legal,tot_dctos_legales,
      val_liquido_pago,sobregiros_mes,tot_impon_sin_tope,tot_imponible,cod_instit_previsi,
      mto_cancela_previs,cod_instit_salud,monto_salud,mto_salud_legal,valor_pactado_isap,
      val_volunt_isapre,mto_pagado_ccaf,caja_comp_antigua,mto_antig_previsio,pje_cotzado_caja,
      val_leyes_sociales,afecto_impto,asignacion_zona,monto_cancel_impto,aporte_patron_mutu,
      aporte_patron_ccaf,aporte_patronal_1,aporte_patronal_2,saldo_cta_cte,tot_tributable,
      val_total_desctos,valor_desahucio,pje_desahucio,tot_imp_no_prop,mto_tope60_dfl44,
      mto_dfl44,afecto_cotizacion,total_imponi_ley,adicional_isapre,pje_cotiz_previs,
      pje_cotiz_salud,tot_impto_reliq,impto_voluntario,mto_salud_real,aporte_convenido,
      cod_unidad_adminis,cod_sindicato,monto_seguro_des,monto_ahorro_prev,mto_seg_cta_indidu,
      mto_seg_cta_fondos,monto_impon_seguro,mto_trab_tr_pesado,mto_apor_tr_pesado,
      porc_apl_tr_pesado,cod_afp_afc,mto_imp_aporte_afc,codigo_tipo_contra,
      fec_mod_tipo_contr,aplica_seguro_des,fec_ini_seguro_des,valor_anticipo,monto_aporte_sis,
      asignacion_familia,asig_famil_retroac,val_tot_tope_impon, afecto_mutual, afec_ley_sanna)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,
      @sp_ano_registro,@sp_mes_registro,@tipo_proceso,@nro_contr_vig,@cod_sucursal,
      @sp_fec_ini_contrat,@sp_fec_fin_contr_v,@convenio,@cod_cargo,@centro_costo,
      @cod_tipo_trabajador,@cod_tipo_jornada,@valor_total_habere,@hab_no_imp_no_trib,
      @tot_desc_cta_cte,@ret_judic_resconta,@tot_dctos_no_legal,@tot_dctos_legales,
      @val_liquido_pago,@sobregiros_mes,@tot_impon_sin_tope,@tot_imponible,@cod_instit_previsi_act,
      @mto_cancela_previs,@cod_instit_salud_act,@monto_salud,@mto_salud_legal,@valor_pactado_isap,
      @val_volunt_isapre,@mto_pagado_ccaf,@caja_comp_antigua_act,@mto_antig_previsio,@pje_cotzado_caja,
      @val_leyes_sociales,@afecto_impto,@asignacion_zona,0,@aporte_patron_mutu,
      @aporte_patron_ccaf,@aporte_patronal_1,@aporte_patronal_2,@saldo_cta_cte,@tot_tributable,
      @val_total_desctos,@valor_desahucio,@pje_desahucio,@tot_imp_no_prop,@mto_tope60_dfl44,
      @mto_dfl44,@afecto_cotizacion,@total_imponi_ley,@adicional_isapre,@pje_cotiz_previs,
      @pje_cotiz_salud,@tot_impto_reliq,@impto_voluntario,@mto_salud_real,@aporte_convenido,
      @cod_unidad_adminis,@cod_sindicato,@monto_seguro_des,@monto_ahorro_prev,@mto_seg_cta_indidu,
      @mto_seg_cta_fondos,@monto_impon_seguro,@mto_trab_tr_pesado,@mto_apor_tr_pesado,
      @porc_apl_tr_pesado,@cod_afp_afc,@mto_imp_aporte_afc,@codigo_tipo_contra,
      @fec_mod_tipo_contr,@aplica_seguro_des,@fec_ini_seguro_des,@valor_anticipo,@mto_aporte_sis,
      0,0,@afecto_cotizacion, @afecto_mutual, @afecto_mutual)
      
      if @sp_periodo_utm = 'A' 
        select @valor_utm_proceso = val_moneda_unidad from valor_moneda
        where 
        cod_unidad_cobro = 'UTM' and
        datepart(yy,fec_valor_moneda) = @ano_proceso and
        datepart(mm,fec_valor_moneda) = @mes_proceso
      else if @sp_periodo_utm = 'B' 
        select @valor_utm_proceso = val_moneda_unidad from valor_moneda
        where 
        cod_unidad_cobro = 'UTM' and
        datepart(yy,fec_valor_moneda) = @sp_ano_base and
        datepart(mm,fec_valor_moneda) = @sp_mes_base
      else
        select @valor_utm_proceso = val_moneda_unidad from valor_moneda
        where cod_unidad_cobro = 'UTM' and
        datepart(yy,fec_valor_moneda) = @sp_ano_registro and
        datepart(mm,fec_valor_moneda) = @sp_mes_registro
      
      select @hab_no_imp_no_trib = @hab_no_imp_no_trib + @valor_exento
      select @valor_total_habere = @valor_total_habere + @valor_exento
      select @control_meses = 0
      select @valor_prop_mes = 0
      select @sp_aporte_mutu_base = 0
      select @sp_aporte_mutu_adic = 0
      select @sp_aporte_mutu_sanna = 0
      
      while @periodo_indice <= @periodo_termino and @valor_haber > 0
        begin
	
	 if @meses_proceso > 0
	     select @valor_mes = round(@valor_haber / @meses_proceso,0)


          if @sp_consolida_empresa = 'N'
            begin
              if not exists(select cod_empresa from historico_liquidac 
                            where 
                            cod_empresa      = @empresa_proceso   and
                            cod_planta       = @planta_proceso    and
                            cod_tipo_proceso = 'LQ'               and
                            ano_periodo      = @ano_reliq         and
                            mes_periodo      = @mes_reliq         and
                            nro_trabajador   = @sp_nro_trabajador and
                            dv_trabajador    = @sp_dv_trabajador)
              
                begin
                  if @mes_reliq = 12
                    begin
                      select @mes_reliq = 1
                      select @ano_reliq = @ano_reliq + 1
                    end
                  else
                    select @mes_reliq = @mes_reliq + 1
                  select @mes_indice = @mes_indice + 1
                  select @periodo_indice = @ano_reliq * 100 + @mes_reliq
                  continue           
                end
            end
          else
            begin
              if not exists(select a.cod_empresa from historico_liquidac a, personal b
                            where 
							a.cod_empresa      = @empresa_proceso   and
                            a.cod_tipo_proceso = 'LQ'               and
                            a.ano_periodo      = @ano_reliq         and
                            a.mes_periodo      = @mes_reliq         and
							a.cod_empresa      = b.cod_empresa      and
							a.cod_planta       = b.cod_planta       and
							a.nro_trabajador   = b.nro_trabajador   and
							a.dv_trabajador    = b.dv_trabajador    and
							b.rut_trabajador   = @sp_rut_trabajador)
               
                begin
                  if @mes_reliq = 12
                    begin
                      select @mes_reliq = 1
                      select @ano_reliq = @ano_reliq + 1
                    end
                  else
                    select @mes_reliq = @mes_reliq + 1
                  select @mes_indice = @mes_indice + 1
                  select @periodo_indice = @ano_reliq * 100 + @mes_reliq
                  continue           
                end
            end
          select @control_meses = 1
          if @periodo_indice = @periodo_termino 
            begin
              select @valor_mes = @valor_ultimo_mes
              select @valor_apv_mes = @valor_apv_ultimo_mes
            end          
          select @valor_utm_mes = val_moneda_unidad from valor_moneda
          where cod_unidad_cobro = 'UTM' and
          datepart(yy,fec_valor_moneda) = @ano_reliq and
          datepart(mm,fec_valor_moneda) = @mes_reliq
          if @valor_utm_proceso > 0
            begin
              select @valor_mes_corr     = round((@valor_mes * @valor_utm_mes)/ @valor_utm_proceso, 0) 
              select @valor_apv_mes_corr = round((@valor_apv_mes * @valor_utm_mes)/ @valor_utm_proceso, 0) 
          --histórico de liquidación
            end
          else
            begin
              select @valor_mes_corr     = round(@valor_mes, 0) 
              select @valor_apv_mes_corr = round(@valor_apv_mes, 0) 
          --histórico de liquidación
            end 
            
           
          select @sp_afecto_impto_lq      = 0
          select @sp_impto_lq             = 0
          select @asignacion_zona_lq      = 0
          --
          select @max_afecto_cotiz        = 0
          select @max_afecto_mutu		  = 0
          select @max_imponi_ley          = 0
          select @max_impon_seguro        = 0
          select @cod_tipo_contra         = 0
          select @sp_fec_mod_tip_con      = 0
          select @sp_apli_seguro_des      = 0
          select @sp_fec_ini_seguro       = 0
          select @sp_fec_ini_contrat      = 0
          select @sp_fec_fin_contr_v      = 0
          --select @centro_costo            = 0
          select @cod_sucursal_mes        = 0
          select @cod_tipo_trabajador_mes = 0
          select @convenio                = 0
          select @cod_escala_sueldo       = 0
          select @cod_sindicato           = 0
          select @cod_tipo_jornada        = 0
          select @cod_cargo               = 0
          select @tot_imponible_mes       = 0
          select @cod_instit_previsi      = 0
          select @cod_instit_salud        = 0
          select @caja_comp_antigua       = 0
          select @nro_contr_vig           = 0
          select @sp_afecto_impto_lq      = 0
          select @sp_impto_lq             = 0
          select @asignacion_zona_lq      = 0
          select @monto_salud_lq          = 0
          select @valor_pactado_isap_lq   = 0
          select @adicional_isapre_lq     = 0
          select @mto_salud_legal_lq      = 0
          select @mto_salud_real_lq       = 0
          select @afecto_cotizacion_lq    = 0
          select @pagado_ccaf_lq          = 0
          select @nro_dias_enfermo        = 0
          select @nro_dias_vacacione      = 0
          select @nro_dias_ausente        = 0
          select @dias_asistidos          = 0
          select @porc_mutual_base        = 0
          select @porc_mutual_adic        = 0
          select @porc_mutual_sanna	      = 0
          select @aporte_patron_mutu_reliq = 0
          select @pje_cotiz_previs         = 0
          select @pje_cotiz_salud         = 0
          --
          if @sp_consolida_empresa = 'N'
          begin
            select @max_afecto_cotiz        = max_afecto_cotiz,
            	   @max_afecto_mutu		    = max_afecto_mutu,
                   @max_imponi_ley          = max_imponi_ley,
                   @max_impon_seguro        = max_impon_seguro,
                   @cod_tipo_contra         = codigo_tipo_contra,
                   @sp_fec_mod_tip_con      = fec_mod_tipo_contr,
                   @sp_apli_seguro_des      = aplica_seguro_des,
                   @sp_fec_ini_seguro       = fec_ini_seguro_des,
                   @sp_fec_ini_contrat      = fec_ini_contr_vige,
                   @sp_fec_fin_contr_v      = fec_fin_contr,
                   @centro_costo_mes        = cod_centro_costo,
                   @cod_sucursal_mes        = cod_sucursal,
                   @cod_tipo_trabajador_mes = cod_tipo_trabajado,
                   @convenio                = nro_convenio,
                   @cod_escala_sueldo       = cod_escala_sueldo,
                   @cod_sindicato           = cod_sindicato,
                   @cod_tipo_jornada        = cod_tipo_jornada,
                   @cod_cargo               = cod_cargo,
                   @tot_imponible_mes       = tot_imponible,
                   @cod_instit_previsi      = cod_instit_previsi,
                   @cod_instit_salud        = cod_instit_salud,
                   @caja_comp_antigua       = caja_comp_antigua,
                   @nro_contr_vig           = nro_contr_vig_proc,
                   @sp_afecto_impto_lq      = afecto_impto,
                   @sp_impto_lq             = monto_cancel_impto,
                   @asignacion_zona_lq      = asignacion_zona,
                   @monto_salud_lq          = monto_salud  - val_volunt_isapre,
                   @valor_pactado_isap_lq   = valor_pactado_isap,
                   @adicional_isapre_lq     = adicional_isapre,
                   @mto_salud_legal_lq      = mto_salud_legal,
                   @mto_salud_real_lq       = mto_salud_real,
                   @afecto_cotizacion_lq    = afecto_cotizacion,
                   @pagado_ccaf_lq          = mto_pagado_ccaf,
                   @nro_dias_enfermo        = nro_dias_enfermo,
                   @nro_dias_vacacione      = nro_dias_vacacione,
                   @nro_dias_ausente        = nro_dias_ausente,
                   @dias_asistidos          = nro_dias_asistidos,
                   @porc_mutual_base        = por_mutual_base,
                   @porc_mutual_adic        = por_mutual_adic   ,
                   @pje_desahucio           = pje_desahucio,
                   @pje_cotzado_caja        = pje_cotzado_caja,
                   @pje_cotiz_previs        = pje_cotiz_previs,
                   @pje_cotiz_salud         = pje_cotiz_salud  ,
                   @afecto_mto_sis_lq 		= afecto_mto_sis,
                   @monto_impon_seguro_lq	= monto_impon_seguro,
                   @total_imponi_ley_lq		= total_imponi_ley,
                   @porc_mutual_sanna		= por_mutual_sanna              
            from historico_liquidac
            where
            cod_empresa      = @empresa_proceso   and
            cod_planta       = @planta_proceso    and
            cod_tipo_proceso = 'LQ'               and
            ano_periodo      = @ano_reliq         and
            mes_periodo      = @mes_reliq         and
            nro_trabajador   = @sp_nro_trabajador and
            dv_trabajador    = @sp_dv_trabajador
          end
          else
            begin
              select @max_afecto_cotiz        = max_afecto_cotiz,
            	     @max_afecto_mutu		    = max_afecto_mutu,
                     @max_imponi_ley          = max_imponi_ley,
                     @max_impon_seguro        = max_impon_seguro,
                     @cod_tipo_contra         = codigo_tipo_contra,
                     @sp_fec_mod_tip_con      = fec_mod_tipo_contr,
                     @sp_apli_seguro_des      = aplica_seguro_des,
                     @sp_fec_ini_seguro       = fec_ini_seguro_des,
                     @sp_fec_ini_contrat      = fec_ini_contr_vige,
                     @sp_fec_fin_contr_v      = fec_fin_contr,
                     @centro_costo_mes        = cod_centro_costo,
                     @cod_sucursal_mes        = cod_sucursal,
                     @cod_tipo_trabajador_mes = cod_tipo_trabajado,
                     @convenio                = nro_convenio,
                     @cod_escala_sueldo       = cod_escala_sueldo,
                     @cod_sindicato           = cod_sindicato,
                     @cod_tipo_jornada        = cod_tipo_jornada,
                     @cod_cargo               = cod_cargo,
                     @tot_imponible_mes       = tot_imponible,
                     @cod_instit_previsi      = cod_instit_previsi,
                     @cod_instit_salud        = cod_instit_salud,
                     @caja_comp_antigua       = caja_comp_antigua,
                     @nro_contr_vig           = nro_contr_vig_proc,
                     @monto_salud_lq          = monto_salud  - val_volunt_isapre,
                     @valor_pactado_isap_lq   = valor_pactado_isap,
                     @adicional_isapre_lq     = adicional_isapre,
                     @mto_salud_legal_lq      = mto_salud_legal,
                     @mto_salud_real_lq       = mto_salud_real,
                     @afecto_cotizacion_lq    = afecto_cotizacion,
                     @pagado_ccaf_lq          = mto_pagado_ccaf,
                     @nro_dias_enfermo        = nro_dias_enfermo,
                     @nro_dias_vacacione      = nro_dias_vacacione,
                     @nro_dias_ausente        = nro_dias_ausente,
                     @dias_asistidos          = nro_dias_asistidos,
                     @porc_mutual_base        = por_mutual_base,
                     @porc_mutual_adic        = por_mutual_adic,
                     @pje_desahucio           = pje_desahucio,
                     @pje_cotzado_caja        = pje_cotzado_caja , 
                     @pje_cotiz_previs        = pje_cotiz_previs,
                     @pje_cotiz_salud         = pje_cotiz_salud ,
                     @afecto_mto_sis_lq 	  = afecto_mto_sis,
                     @monto_impon_seguro_lq	  = monto_impon_seguro,
                     @total_imponi_ley_lq	  = total_imponi_ley
              from historico_liquidac
              where
              cod_empresa      = @empresa_proceso   and
              cod_tipo_proceso = 'LQ'               and
              ano_periodo      = @ano_reliq         and
              mes_periodo      = @mes_reliq         and
              nro_trabajador   = @sp_nro_trabajador and
              dv_trabajador    = @sp_dv_trabajador
              
              select 
                 @sp_afecto_impto_lq      = sum(isnull(a.afecto_impto,0)),
                 @sp_impto_lq             = sum(isnull(a.monto_cancel_impto,0)),
                 @asignacion_zona_lq      = sum(isnull(a.asignacion_zona,0))             
              from historico_liquidac a, personal b
              where
              a.cod_empresa      = @empresa_proceso   and
              a.cod_tipo_proceso = 'LQ'               and
              a.ano_periodo      = @ano_reliq         and
              a.mes_periodo      = @mes_reliq         and
			  a.cod_empresa      = b.cod_empresa      and
			  a.cod_planta       = b.cod_planta       and
			  a.nro_trabajador   = b.nro_trabajador   and
			  a.dv_trabajador    = b.dv_trabajador    and
			  b.rut_trabajador   = @sp_rut_trabajador
            end
            
               
              /* valida topes en cero o nulo tips 33977 @max_imponi_ley y impon SIS*/
              
              if @max_imponi_ley  is null select @max_imponi_ley  = 0
              if @max_afecto_cotiz is null select @max_afecto_cotiz = 0
              if @max_impon_seguro  is null select @max_impon_seguro  = 0
              if @max_afecto_mutu is null   select @max_afecto_mutu  = 0             
              
              select @mto_tope_prev_uf = mto_tope_prev_uf,
				     @mto_tope_afc_uf  = mto_tope_afc_uf
			  from parametro
			  where 
			  cod_empresa = @empresa_proceso and
			  cod_planta  = @planta_proceso  and
			  ano         = @ano_reliq       and
			  nro_mes     = @mes_reliq
           
                   
              select @valor_uf_mes = uf_mes from liquidacion
			  where
			  cod_empresa      = @empresa_proceso   and
			  cod_planta       = @planta_proceso    and
			  cod_tipo_proceso = 'LQ'               and
			  ano_periodo      = @ano_reliq         and
			  mes_periodo      = @mes_reliq         and
			  nro_trabajador   = @sp_nro_trabajador and
			  dv_trabajador    = @sp_dv_trabajador        
                    
          /*  comentado a solicitud de b.Villalobos.
           
			  if @max_imponi_ley = 0 and @total_imponi_ley_lq != 0
              begin
					 select  @valor_topado = round(@mto_tope_prev_uf * @valor_uf_mes,0)
					 select  @valor_topado = ( @valor_topado - @total_imponi_ley_lq )
					 
					 if @valor_topado >= 0
						select @max_imponi_ley = @valor_topado
              end
              
              if @max_afecto_cotiz = 0 and @afecto_cotizacion_lq != 0
              begin
					 select  @valor_topado = round(@mto_tope_prev_uf * @valor_uf_mes,0)
					 select  @valor_topado = ( @valor_topado - @afecto_cotizacion_lq )
					 
					 if @valor_topado >= 0
						select @max_afecto_cotiz = @valor_topado
              end
              
              if @max_impon_seguro = 0 and @monto_impon_seguro_lq != 0
              begin
					 select  @valor_topado = round(@mto_tope_afc_uf * @valor_uf_mes,0)
					 select  @valor_topado = ( @valor_topado - @monto_impon_seguro_lq )
					 
					 if @valor_topado >= 0
						select @max_impon_seguro = @valor_topado
              end


              if @afecto_mto_sis_lq != 0
              begin
				  select  @valor_topado = round(@mto_tope_prev_uf * @valor_uf_mes,0)
				  select  @max_impon_sis = ( @valor_topado - @afecto_mto_sis_lq )
				  if @max_impon_sis < 0
					select @max_impon_sis = 0
			  end
			  else
			  begin
					select  @max_impon_sis = 0
			  end 
*/
			  
		    select @max_impon_sis = @max_imponi_ley
			  
		    if @max_impon_seguro < 0
			begin
				select @max_impon_seguro = 0
			end
			  
              /* fin valida topes en cero  */
              
            select @mes_max_imponi_ley		= @max_imponi_ley
            select @mes_max_afecto_cotiz	= @max_afecto_cotiz
            select @mes_max_impon_seguro	= @max_impon_seguro
            select @mes_max_afecto_mutu		= @max_afecto_mutu            

          
          if @cod_instit_previsi != @cod_instit_previsi_act
            insert into errores_calculo(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,
            nombre,cod_tipo_proceso,cod_error_tabla,descripcion_codigo,masivo_informado,
            descripcion_error,tabla_del_error, tipo_error) values(@empresa_proceso,
            @planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@nombre_completo,
            @tipo_proceso,200,'Inst.Previsión','C',
            'Previsión actual distinta a periodo mensual:'+ convert(char(2),@mes_reliq)+
            '-'+convert(char(4),@ano_reliq),'historico_liquidac','A')
          
          if @cod_instit_salud != @cod_instit_salud_act
            insert into errores_calculo(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,
            nombre,cod_tipo_proceso,cod_error_tabla,descripcion_codigo,masivo_informado,
            descripcion_error,tabla_del_error, tipo_error) values(@empresa_proceso,
            @planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@nombre_completo,
            @tipo_proceso,300,'Inst.Salud','C',
            'Salud actual distinta a periodo mensual:'+ convert(char(2),@mes_reliq)+
            '-'+convert(char(4),@ano_reliq),'historico_liquidac','A')        
          
          if @porc_mutual_base is null select @porc_mutual_base = 0
          if @porc_mutual_adic is null select @porc_mutual_adic = 0
          if @porc_mutual_sanna is null select @porc_mutual_sanna = 0
          
          
          --
          if @sp_prop_haber_mes = 'S'
            begin
			   if @mes_reliq = 2
			   begin
					if @dias_asistidos > 27
						  select @dias_asistidos = 30
					if @nro_dias_enfermo > 27
						  select @nro_dias_enfermo = 30
					if @nro_dias_vacacione > 27
						  select @nro_dias_vacacione = 30
					if @nro_dias_ausente > 27
						  select @nro_dias_ausente = 30
			   end
			   

              if @sp_prop_lic_medica = 'S'
                select @dias_asistidos = @dias_asistidos + @nro_dias_enfermo
              if @sp_prop_feriados = 'S'
                select @dias_asistidos = @dias_asistidos + @nro_dias_vacacione
              if @sp_prop_ausencias = 'S'
                select @dias_asistidos = @dias_asistidos + @nro_dias_ausente

              if @dias_asistidos > 30 
                select @dias_asistidos = 30

              select @valor_mes_corr = round(@dias_asistidos * ( @valor_mes_corr / 30 ),0) 
              select @valor_mes      = round(@dias_asistidos * ( @valor_mes      / 30 ),0)  
              select @valor_prop_mes = @valor_prop_mes + @valor_mes        
            end    
             
     /*    if @valor_uf_mes > 0
            if (@monto_ahorro_prev / @valor_uf_mes) + (@valor_apv_mes_corr / @valor_uf_mes) > 50
              begin
                select @valor_apv_mes_corr = 50 * @valor_uf_mes - @monto_ahorro_prev 
                if @valor_apv_mes_corr < 0 select @valor_apv_mes_corr = 0
                select @valor_apv_mes_corr = round(@valor_apv_mes_corr, 0 )
              end        */
              
           if @valor_uf_mes > 0
            if (@valor_apv_mes_corr / @valor_uf_mes) > 50
              begin
                select @valor_apv_mes_corr = 50 * @valor_uf_mes
                if @valor_apv_mes_corr < 0 select @valor_apv_mes_corr = 0
                select @valor_apv_mes_corr = round(@valor_apv_mes_corr, 0 )
              end         
          
           
          
          select @dsctos_legales_reliq     = 0
          select @mto_cancela_previs_reliq = 0
          select @mto_aporte_sis_reliq     = 0
          select @monto_salud_reliq        = 0
          select @mto_salud_legal_reliq    = 0
          select @salud_voluntaria_reliq   = 0
          select @mto_pagado_ccaf_reliq    = 0
          
          
          
          select @mto_antig_previsio_reliq = 0
          select @mto_desahucio_reliq = 0
          select @val_leyes_sociales_reliq = 0
          select @sp_afecto_impto_reliq    = 0
          select @asignacion_zona_reliq    = 0
          select @sp_impto_reliq           = 0
          select @tot_tributable_reliq     = 0
          select @imponi_ley_reliq         = 0
          select @afecto_impto_corr        = 0
          select @seguro_des_reliq         = 0
          select @mto_seg_cta_indidu_reliq = 0
          select @mto_seg_cta_fondos_reliq = 0
          select @impon_seguro_reliq       = 0
          select @sp_impto_reliq_act       = 0
          select @afecto_cotiza_reliq      = 0
          select @val_liquido_pago_reliq   = 0   
          select @afecto_mutual_reliq      = 0
          select @afecto_sanna_reliq	   = 0
	         
   
          select @tot_tributable_reliq     = @valor_mes_corr
          select @valor_haber_reliq        = 0                    
          select @tot_tributable		   = @tot_tributable     + @valor_mes

          if @sp_ind_leyes_sociales = 'S'
            begin
              select @tot_impon_sin_tope = @tot_impon_sin_tope + @valor_mes_corr
              select @tot_impon_sin_tope_mes = @valor_mes_corr
																			  
																		 
            end
          else
            begin
              select @tot_impon_sin_tope = @tot_impon_sin_tope + 0
              select @tot_impon_sin_tope_mes = 0
            end
          select @valor_total_habere = @valor_total_habere + @valor_mes
          select @valor_haber_reliq  = @valor_mes
          --maximos afectos en reliquidacion
          select @max_afec_afp_res = 0
          select @max_afecto_mutu_res = 0
          select @max_impon_inp_res = 0
          select @max_afec_afc_res = 0
          select @max_salud_pagada_res = 0
          select @sp_afecto_impto_otros = 0
          select @asignacion_zona_otros = 0
          select @sp_impto_otros = 0
          --
          select @max_afec_afp_res  = -1
          select @max_impon_inp_res = -1
          select @max_afec_afc_res  = -1
          select @max_afecto_mutu_res  = -1
          --
          if @sp_incluye_hist_difer = 'S' and @sp_str_proc_diferenci is not null and
           ltrim(rtrim(@sp_str_proc_diferenci)) != ' '
            begin
            
			  if @sp_consolida_empresa = 'N'
			  begin
            
				  --AFP-ISAPRE            
				  delete from #max_afecto_cotiz
				  select @str_select = 'insert into #max_afecto_cotiz(valor) select sum(afecto_cotizacion) from hist_diferencias ' +
				  ' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and cod_planta = ' + convert(char(10),@planta_proceso) + ' and
				  ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq) + 
				  ' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
				  ' and cod_tipo_proceso in ' + @sp_str_proc_diferenci            
				  exec (@str_select)
				  select @max_afec_afp_res = valor from #max_afecto_cotiz
				  select @max_afec_afp_res = @max_afecto_cotiz - @max_afec_afp_res
	              
				  --MUTUAL      
				  delete from #max_afecto_mutual
				  select @str_select = 'insert into #max_afecto_mutual(valor) select sum(afecto_mutual) from hist_diferencias ' +
				  ' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and cod_planta = ' + convert(char(10),@planta_proceso) + ' and
				  ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq) + 
				  ' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
				  ' and cod_tipo_proceso in ' + @sp_str_proc_diferenci            
				  exec (@str_select)
				  select @max_afecto_mutu_res = valor from #max_afecto_mutual
				  select @max_afecto_mutu_res = @max_afecto_mutu - @max_afecto_mutu_res
	              
	              
				  --if @max_afec_afp_res is null select @max_afec_afp_res = 0
				  --INP-FONASA
				  delete from #max_imponi_ley
				  select @str_select = 'insert into #max_imponi_ley(valor) select sum(total_imponi_ley)  from hist_diferencias ' +
				  ' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and cod_planta = ' + convert(char(10),@planta_proceso) + ' and
				  ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq)  + 
				  ' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
				  ' and cod_tipo_proceso in ' + @sp_str_proc_diferenci 
				  exec (@str_select)
				  select @max_impon_inp_res = valor from #max_imponi_ley
				  select @max_impon_inp_res = @max_imponi_ley - @max_impon_inp_res
	              
	              
				  --if @max_impon_inp_res is null select @max_impon_inp_res = 0
				  --AFC
				  delete from #max_impon_seguro
				  select @str_select = 'insert into #max_impon_seguro(valor) select sum(monto_impon_seguro) from hist_diferencias ' +
				  ' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and cod_planta = ' + convert(char(10),@planta_proceso) + ' and
				  ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq) +   
				  ' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
				  ' and cod_tipo_proceso in ' + @sp_str_proc_diferenci            
				  exec (@str_select)
				  select @max_afec_afc_res = valor from #max_impon_seguro
				  select @max_afec_afc_res = @max_impon_seguro - @max_afec_afc_res

				  --if @max_impon_inp_res is null select @max_impon_inp_res = 0
				  --IMPUESTOS PAGADOS
				  delete from #impto_pagado
				  select @str_select = 'insert into #impto_pagado(afecto,impuesto,asignacion_zona) select sum(afecto_impto),sum(monto_cancel_impto),sum(asignacion_zona) from hist_diferencias ' +
				  ' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and cod_planta = ' + convert(char(10),@planta_proceso) + ' and
				  ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq)  + 
				  ' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
				  ' and cod_tipo_proceso in ' + @sp_str_proc_diferenci            
				  exec (@str_select)
				  select @sp_afecto_impto_otros = afecto,@sp_impto_otros=impuesto, @asignacion_zona_otros = asignacion_zona from #impto_pagado
				  if @sp_afecto_impto_otros is null select @sp_afecto_impto_otros = 0
				  if @sp_impto_otros is null select @sp_impto_otros = 0
				  if @asignacion_zona_otros is null select @asignacion_zona_otros = 0  
	               
	       
				  --SALUD PAGADA            
				  delete from #salud_pagada
				  select @str_select = 'insert into #salud_pagada(monto_salud) select sum(monto_salud) from hist_diferencias ' +
				  ' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and cod_planta = ' + convert(char(10),@planta_proceso) + ' and
				  ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq) + 
				  ' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
				  ' and cod_tipo_proceso in ' + @sp_str_proc_diferenci            
				  exec (@str_select)
				  select @max_salud_pagada_res = monto_salud from #salud_pagada
				  if @max_salud_pagada_res is null select @max_salud_pagada_res = 0    
			  end
			  else
			  begin
				
				 --AFP-ISAPRE            
				  delete from #max_afecto_cotiz
				  select @str_select = 'insert into #max_afecto_cotiz(valor) select sum(a.afecto_cotizacion) from hist_diferencias a, personal b ' +
				  ' where a.cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and
				  a.ano_periodo= ' + convert(char(10),@ano_reliq) + ' and a.mes_periodo= ' + convert(char(10),@mes_reliq) + 
				  ' and a.cod_empresa = b.cod_empresa and a.cod_planta = b.cod_planta and a.nro_trabajador = b.nro_trabajador ' +
				  ' and a.dv_trabajador = b.dv_trabajador and b.rut_trabajador = ' + convert(char(10),@sp_rut_trabajador) +
				  ' and a.cod_tipo_proceso in ' + @sp_str_proc_diferenci            
				  exec (@str_select)
				  select @max_afec_afp_res = valor from #max_afecto_cotiz
				  select @max_afec_afp_res = @max_afecto_cotiz - @max_afec_afp_res
	              
				  --MUTUAL      
				  delete from #max_afecto_mutual
				  select @str_select = 'insert into #max_afecto_mutual(valor) select sum(a.afecto_mutual) from hist_diferencias a, personal b ' +
				  ' where a.cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and
				  a.ano_periodo= ' + convert(char(10),@ano_reliq) + ' and a.mes_periodo= ' + convert(char(10),@mes_reliq) + 
				  ' and a.cod_empresa = b.cod_empresa and a.cod_planta = b.cod_planta and a.nro_trabajador = b.nro_trabajador ' +
				  ' and a.dv_trabajador = b.dv_trabajador and b.rut_trabajador = ' + convert(char(10),@sp_rut_trabajador) +
				  ' and a.cod_tipo_proceso in ' + @sp_str_proc_diferenci            
				  exec (@str_select)
				  select @max_afecto_mutu_res = valor from #max_afecto_mutual
				  select @max_afecto_mutu_res = @max_afecto_mutu - @max_afecto_mutu_res
	              
	              
				  --if @max_afec_afp_res is null select @max_afec_afp_res = 0
				  --INP-FONASA
				  delete from #max_imponi_ley
				  select @str_select = 'insert into #max_imponi_ley(valor) select sum(a.total_imponi_ley)  from hist_diferencias a, personal b ' +
				  ' where a.cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and
				  a.ano_periodo= ' + convert(char(10),@ano_reliq) + ' and a.mes_periodo= ' + convert(char(10),@mes_reliq)  + 
				  ' and a.cod_empresa = b.cod_empresa and a.cod_planta = b.cod_planta and a.nro_trabajador = b.nro_trabajador ' +
				  ' and a.dv_trabajador = b.dv_trabajador and b.rut_trabajador = ' + convert(char(10),@sp_rut_trabajador) +
				  ' and a.cod_tipo_proceso in ' + @sp_str_proc_diferenci 
				  exec (@str_select)
				  select @max_impon_inp_res = valor from #max_imponi_ley
				  select @max_impon_inp_res = @max_imponi_ley - @max_impon_inp_res
	              
	              
				  --if @max_impon_inp_res is null select @max_impon_inp_res = 0
				  --AFC
				  delete from #max_impon_seguro
				  select @str_select = 'insert into #max_impon_seguro(valor) select sum(a.monto_impon_seguro) from hist_diferencias a, personal b ' +
				  ' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and
				  a.ano_periodo= ' + convert(char(10),@ano_reliq) + ' and a.mes_periodo= ' + convert(char(10),@mes_reliq) +   
				  ' and a.cod_empresa = b.cod_empresa and a.cod_planta = b.cod_planta and a.nro_trabajador = b.nro_trabajador ' +
				  ' and a.dv_trabajador = b.dv_trabajador and b.rut_trabajador = ' + convert(char(10),@sp_rut_trabajador) +
				  ' and a.cod_tipo_proceso in ' + @sp_str_proc_diferenci            
				  exec (@str_select)
				  select @max_afec_afc_res = valor from #max_impon_seguro
				  select @max_afec_afc_res = @max_impon_seguro - @max_afec_afc_res

				  --if @max_impon_inp_res is null select @max_impon_inp_res = 0
				  --IMPUESTOS PAGADOS
				  delete from #impto_pagado
				  select @str_select = 'insert into #impto_pagado(afecto,impuesto,asignacion_zona) select sum(a.afecto_impto),sum(a.monto_cancel_impto),sum(a.asignacion_zona) from hist_diferencias a, personal b ' +
				  ' where a.cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and
				  a.ano_periodo= ' + convert(char(10),@ano_reliq) + ' and a.mes_periodo= ' + convert(char(10),@mes_reliq)  +   
				  ' and a.cod_empresa = b.cod_empresa and a.cod_planta = b.cod_planta and a.nro_trabajador = b.nro_trabajador ' +
				  ' and a.dv_trabajador = b.dv_trabajador and b.rut_trabajador = ' + convert(char(10),@sp_rut_trabajador) +
				  ' and a.cod_tipo_proceso in ' + @sp_str_proc_diferenci            
				  exec (@str_select)
				  select @sp_afecto_impto_otros = afecto,@sp_impto_otros=impuesto, @asignacion_zona_otros = asignacion_zona from #impto_pagado
				  if @sp_afecto_impto_otros is null select @sp_afecto_impto_otros = 0
				  if @sp_impto_otros is null select @sp_impto_otros = 0
				  if @asignacion_zona_otros is null select @asignacion_zona_otros = 0  
	               
	       
				  --SALUD PAGADA            
				  delete from #salud_pagada
				  select @str_select = 'insert into #salud_pagada(monto_salud) select sum(a.monto_salud) from hist_diferencias a, personal b ' +
				  ' where a.cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and
				  a.ano_periodo= ' + convert(char(10),@ano_reliq) + ' and a.mes_periodo= ' + convert(char(10),@mes_reliq) +  
				  ' and a.cod_empresa = b.cod_empresa and a.cod_planta = b.cod_planta and a.nro_trabajador = b.nro_trabajador ' +
				  ' and a.dv_trabajador = b.dv_trabajador and b.rut_trabajador = ' + convert(char(10),@sp_rut_trabajador) +
				  ' and a.cod_tipo_proceso in ' + @sp_str_proc_diferenci            
				  exec (@str_select)
				  select @max_salud_pagada_res = monto_salud from #salud_pagada
				  if @max_salud_pagada_res is null select @max_salud_pagada_res = 0   
			  
			  end	  
			 
				  
            end
                  
          if @sp_ind_leyes_sociales = 'S'
            begin
              if @max_afec_afp_res  is null select @max_afec_afp_res  = -1
              if @max_impon_inp_res is null select @max_impon_inp_res = -1
              if @max_afec_afc_res  is null select @max_afec_afc_res  = -1     
              if @max_afecto_mutu_res is null select @max_afecto_mutu_res  = -1     
              
                       
              if @max_afec_afp_res  is null or @max_afec_afp_res < 0
                select @max_afec_afp_res_act = 0
              else
                select @max_afec_afp_res_act = @max_afec_afp_res     
                
              if @max_afecto_mutu_res  is null or @max_afecto_mutu_res < 0
                select @max_afecto_mutu_res_act = 0
              else
                select @max_afecto_mutu_res_act = @max_afecto_mutu_res        
              
              /*33977  */
              if @max_afec_afp_res > 0
                begin
                  if @max_afec_afp_res < @valor_mes
                  begin
                    select @afecto_cotiza_reliq = @max_afec_afp_res
                    select @afecto_cotiza_sis_reliq = @max_afec_afp_res
                  end
                  else
                  begin
                    select @afecto_cotiza_reliq = @valor_mes
                    select @afecto_cotiza_sis_reliq = @valor_mes
                  end
                    
                  select @max_afec_afp_res = @max_afec_afp_res - @afecto_cotiza_reliq
                  if @max_afec_afp_res is null or @max_afec_afp_res < 0
                    select @max_afec_afp_res = 0
                end
              else if @max_afec_afp_res = -1
                begin
				     if @max_afecto_cotiz < @valor_mes
				     begin
						select @afecto_cotiza_reliq = @max_afecto_cotiz
						select @afecto_cotiza_sis_reliq = @max_impon_sis
					 end
					 else
					 begin
					    select @afecto_cotiza_reliq = @valor_mes
					    select @afecto_cotiza_sis_reliq = @valor_mes
					 end
						
                  select @max_afec_afp_res = @max_afecto_cotiz - @afecto_cotiza_reliq
                  if @max_afec_afp_res is null or @max_afec_afp_res < 0
                    select @max_afec_afp_res = 0
                end
              else
                begin
                  select @afecto_cotiza_reliq = 0
                  select @max_afec_afp_res = 0
                  select @afecto_cotiza_sis_reliq = 0
                end
                
               
              if @max_afecto_mutu_res > 0
                begin
                  if @max_afecto_mutu_res < @valor_mes
                  begin
                    select @afecto_mutual_reliq = @max_afecto_mutu_res
                  end
                  else
                  begin
                    select @afecto_mutual_reliq = @valor_mes
                  end
                    
                  select @max_afecto_mutu_res = @max_afecto_mutu_res - @afecto_mutual_reliq
                  
                  if @max_afecto_mutu_res is null or @max_afecto_mutu_res < 0
                    select @max_afecto_mutu_res = 0
                end
              else if @max_afecto_mutu_res = -1
                begin
				     if @max_afecto_mutu < @valor_mes
				     begin
						select @afecto_mutual_reliq = @max_afecto_mutu
					 end
					 else
					 begin
					    select @afecto_mutual_reliq = @valor_mes
					 end
						
                   select @max_afecto_mutu_res = @max_afecto_mutu - @afecto_mutual_reliq

                  
                  if @max_afecto_mutu_res is null or @max_afecto_mutu_res < 0
                    select @max_afecto_mutu_res = 0
                end
              else
                begin
                  select @afecto_mutual_reliq = 0
                  select @max_afecto_mutu_res = 0
                  select @afecto_sanna_reliq = 0
                end

              if @max_impon_inp_res > 0
                begin
                  if @max_impon_inp_res < @valor_mes
                    select @imponi_ley_reliq = @max_impon_inp_res
                  else
                    select @imponi_ley_reliq = @valor_mes
                  select @max_impon_inp_res = @max_impon_inp_res - @imponi_ley_reliq
                  if @max_impon_inp_res is null or @max_impon_inp_res < 0
                    select @max_impon_inp_res = 0
                end
              else if @max_impon_inp_res = -1
                begin
                  if @max_imponi_ley < @valor_mes
					select @imponi_ley_reliq = @max_imponi_ley
				  else
					select @imponi_ley_reliq = @valor_mes
				  
				  select @max_impon_inp_res = @max_imponi_ley - @imponi_ley_reliq
                  if @max_impon_inp_res is null or @max_impon_inp_res < 0
                    select @max_impon_inp_res = 0
                end
              else
                begin
                  select @imponi_ley_reliq = 0
                  select @max_impon_inp_res = 0
                end
          
            end
          else
            begin
              select @afecto_cotiza_reliq = 0
              select @imponi_ley_reliq = 0                       
			  select @impon_seguro_reliq = 0
              select @afecto_cotiza_sis_reliq = 0
              select @max_afec_afp_res    = @max_afecto_cotiz
              select @max_impon_inp_res   = @max_imponi_ley
              select @max_afec_afc_res    = @max_impon_seguro
              
              select @afecto_mutual_reliq = 0
              select @afecto_sanna_reliq = 0
              select @max_afecto_mutu_res = @max_afecto_mutu
            end
            
		if @sp_ind_seg_desempleo = 'S'
		begin
			        
              if @max_afec_afc_res  is null select @max_afec_afc_res  = -1     
              
              if @max_afec_afc_res > 0
                begin
                  if @max_afec_afc_res < @valor_mes
                    select @impon_seguro_reliq = @max_afec_afc_res
                  else
                    select @impon_seguro_reliq = @valor_mes
                  select @max_afec_afc_res = @max_afec_afc_res - @impon_seguro_reliq
                  if @max_afec_afc_res is null or @max_afec_afc_res < 0
                    select @max_afec_afc_res = 0
                end 
              else if @max_afec_afc_res = -1
                begin
                  if @max_impon_seguro < @valor_mes
                    select @impon_seguro_reliq = @max_impon_seguro
                  else
                    select @impon_seguro_reliq = @valor_mes
                  select @max_afec_afc_res = @max_impon_seguro - @impon_seguro_reliq
                  if @max_afec_afc_res is null or @max_afec_afc_res < 0
                    select @max_afec_afc_res = 0
                end 
              else
                begin
                  select @impon_seguro_reliq = 0
                  select @max_afec_afc_res = 0
                end		
		end
		else
            begin
              select @impon_seguro_reliq = 0
              select @max_afec_afc_res    = @max_impon_seguro              
            end
            
	
       	if @condic_previsional is null
		  set @condic_previsional = ''

        if @sp_ind_leyes_sociales = 'S' or @sp_ind_seg_desempleo = 'S'
            begin  
            
            exec spliq_comp_llss_reliq @mes_reliq, @ano_reliq, @empresa_proceso, @planta_proceso,
              @sp_nro_trabajador, @sp_dv_trabajador,@sp_ind_afp_mes,@sp_consolida_empresa,@afecto_cotiza_reliq,@imponi_ley_reliq,@impon_seguro_reliq,@afecto_cotiza_sis_reliq,
              @mto_desahucio_reliq output,@mto_prevision_reliq output,@mto_salud_legal_reliq output,@mto_pagado_ccaf_reliq output,@salud_voluntaria_reliq output,
              @salud_adicional_reliq output,@seguro_des_reliq output, @mto_aportesis_reliq output, @sp_nro_dias_licencia   

              if @sp_ind_leyes_sociales = 'N'
              begin
				  select @mto_desahucio_reliq = 0
				  select @mto_prevision_reliq = 0
				  select @mto_salud_legal_reliq = 0
				  select @mto_pagado_ccaf_reliq = 0
				  select @salud_voluntaria_reliq = 0
				  select @salud_adicional_reliq = 0
				  select @mto_aportesis_reliq = 0	              
              end                     
                     
             if @mes_max_afecto_cotiz = 0 or @mes_max_afecto_cotiz is null
              begin
					select @mto_prevision_reliq = 0
					select @afecto_cotiza_reliq = 0
					if @cod_instit_salud > 1 and @cod_instit_previsi > 0 and @condic_previsional != 'J'
					begin

						select @mto_salud_legal_reliq = 0
						select @salud_voluntaria_reliq = 0
						select @salud_adicional_reliq = 0 
					end
               end
             						
              if @mes_max_afecto_mutu = 0 or @mes_max_afecto_mutu is null
              begin	
				    select @afecto_mutual_reliq = 0				    
					select @afecto_sanna_reliq = 0
              end
              
              if @mes_max_imponi_ley = 0 or @mes_max_imponi_ley is null
              begin
					select @mto_pagado_ccaf_reliq = 0
					select @imponi_ley_reliq = 0
					if @cod_instit_salud = 1
					begin
						select @mto_salud_legal_reliq = 0
						select @salud_voluntaria_reliq = 0
						select @salud_adicional_reliq = 0 
					end
              end 
              
              if @mes_max_impon_seguro = 0 or @mes_max_impon_seguro is null
              begin	
				    select @seguro_des_reliq = 0
					select @impon_seguro_reliq = 0
              end
              
              if @cod_instit_salud = 0
              begin
				  if ( @max_impon_sis = 0 or @max_impon_sis is null ) and @afecto_cotiza_sis_reliq = 0
				  begin
						select @mto_aportesis_reliq = 0
				  end
			  end
			  else
			  begin
				if ( @max_impon_sis = 0 or @max_impon_sis is null )
				  begin
						select @mto_aportesis_reliq = 0
				  end			  
			  end

              if @sp_ind_seg_desempleo = 'N' select @seguro_des_reliq = 0
              if @mto_aportesis_reliq is null select @mto_aportesis_reliq = 0
              if  @no_redondea_llss = 'N' or @no_redondea_llss = '' or @no_redondea_llss = ' '
                begin
                  select @mto_desahucio_reliq    = round(@mto_desahucio_reliq, 0)
                  select @mto_prevision_reliq    = round(@mto_prevision_reliq, 0)
                  select @mto_salud_legal_reliq  = round(@mto_salud_legal_reliq, 0)
                  select @mto_pagado_ccaf_reliq  = round(@mto_pagado_ccaf_reliq, 0)
                  select @salud_voluntaria_reliq = round(@salud_voluntaria_reliq, 0)
                  select @salud_adicional_reliq  = round(@salud_adicional_reliq, 0)
                  select @seguro_des_reliq       = round(@seguro_des_reliq, 0)
                  select @mto_aportesis_reliq    = round(@mto_aportesis_reliq, 0)
                end
              			
              if ( @cod_instit_previsi_act = 0 or 
                   @cod_instit_previsi_act = 888 or 
                   @cod_instit_previsi_act = 999 ) and 
                 ( @caja_comp_antigua_act = 0 or @caja_comp_antigua_act is null )
                begin
                  select @mto_desahucio_reliq = 0
                  select @mto_prevision_reliq = 0
                end
              if @cod_instit_salud_act = 0
                begin
                  select @mto_salud_legal_reliq = 0
                  select @mto_pagado_ccaf_reliq = 0
                  select @salud_voluntaria_reliq = 0
                  select @salud_adicional_reliq = 0
                end
                
              if @aplica_seguro_des = 'N'
	          begin
                select @seguro_des_reliq = 0
				select @impon_seguro_reliq = 0
				select @max_afec_afc_res = 0
		      end        

              if @sp_ind_salud_pagada = 'S' and @cod_instit_salud_act > 1 and @condic_previsional != 'J'
                begin
                  if @max_afec_afp_res_act > 0
                    select @afecto_cotiza_total =  @tot_imponible_mes -  @max_afec_afp_res 
                  else
                    select @afecto_cotiza_total = @afecto_cotizacion_lq + @afecto_cotiza_reliq
                    
                  select @pagado_ccaf_total = 0
                  select @salud_legal_total = round(@afecto_cotiza_total * 0.07, 0)  
                  
                
                  if @monto_salud_lq > @salud_legal_total
                    begin
                      select @mto_salud_legal_reliq  = 0
                      select @mto_pagado_ccaf_reliq  = 0
                      select @salud_voluntaria_reliq = 0
                      select @salud_adicional_reliq  = 0
                    end
                  else
                    begin  
                      if @salud_legal_total - @monto_salud_lq < @mto_salud_legal_reliq
                        select @mto_salud_legal_reliq = @salud_legal_total - @monto_salud_lq
                    /*  if @salud_legal_total > @monto_salud_lq + @mto_salud_legal_reliq + @max_salud_pagada_res
                        select @mto_salud_legal_reliq = @salud_legal_total - @monto_salud_lq */
                      if @pagado_ccaf_total - @pagado_ccaf_lq < @mto_pagado_ccaf_reliq and @pagado_ccaf_total > 0
                        select @mto_pagado_ccaf_reliq = @pagado_ccaf_total - @pagado_ccaf_lq
                    end
                end
            end
          else
            begin
            
              select @mto_desahucio_reliq = 0
              select @mto_prevision_reliq = 0
              select @mto_salud_legal_reliq = 0
              select @mto_pagado_ccaf_reliq = 0
              select @salud_voluntaria_reliq = 0
              select @salud_adicional_reliq = 0
              select @seguro_des_reliq = 0
              select @mto_aportesis_reliq = 0
            end 
            
            
            
          select @tope_salud_mes = tope_salud_pesos
          from parametro
          where 
          cod_empresa = @empresa_proceso and
          cod_planta  = @planta_proceso  and
          ano         = @ano_reliq       and
          nro_mes     = @mes_reliq
          if @tope_salud_mes is null select @tope_salud_mes = 0
          
          
          if @flg_tope_salud = 'S'
            begin
				--tip 46757 
				if @cod_instit_salud_act <= 1 and @mto_salud_legal_lq > 0 and @monto_salud_lq > @mto_salud_legal_lq
				begin
					set @monto_salud_lq = @mto_salud_legal_lq		
				end
				--fin tip 46757 
            
				if @monto_salud_lq + @max_salud_pagada_res + @mto_salud_legal_reliq > @tope_salud_mes
						select @mto_salud_legal_reliq = @tope_salud_mes - ( @monto_salud_lq + @max_salud_pagada_res )
					  if @mto_salud_legal_reliq < 0 select @mto_salud_legal_reliq = 0
             
            end        
	
          
          if @mto_prevision_reliq is null
            select @mto_prevision_reliq = 0
          if @mto_desahucio_reliq is null
            select @mto_desahucio_reliq = 0
          if @mto_aportesis_reliq is null
            select @mto_aportesis_reliq = 0
                      				                   
          if @sp_ind_afp_mes = 'N'
            begin
              if @cod_instit_previsi_act > 0 and @cod_instit_salud_act > 1 
                begin
                  select @mto_desahucio_reliq = 0 
                  select @mto_cancela_previs_reliq = @mto_prevision_reliq 
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq      
                  select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq
                  select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                  select @monto_salud_reliq  = @mto_salud_legal_reliq
                end
              else if @cod_instit_previsi_act > 0 and @cod_instit_salud_act = 1
                begin    
                  select @mto_desahucio_reliq = 0 
                  select @mto_cancela_previs_reliq = @mto_prevision_reliq
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                  select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                  select @monto_salud_reliq  = @mto_salud_legal_reliq  
                  select @mto_salud_legal_reliq = 0             
                end              
              else if @cod_instit_previsi_act > 0 and @cod_instit_salud_act = 0
                begin    
                  select @mto_desahucio_reliq = 0 
                  select @mto_cancela_previs_reliq = @mto_prevision_reliq
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                  select @monto_salud        = 0
                  select @monto_salud_reliq  = 0  
                  select @mto_salud_legal_reliq = 0             
                end
              else if @caja_comp_antigua_act > 0 and @cod_instit_salud_act > 1   
                begin
                  select @mto_desahucio_reliq = @mto_desahucio_reliq 
                  select @mto_antig_previsio_reliq = @mto_prevision_reliq
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                  select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq
                  select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                  select @monto_salud_reliq  = @mto_salud_legal_reliq
                end
              else if @caja_comp_antigua_act > 0 and @cod_instit_salud_act = 1 
                begin   
                  select @mto_desahucio_reliq = @mto_desahucio_reliq 
                  select @mto_antig_previsio_reliq = @mto_prevision_reliq
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                  select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                  select @monto_salud_reliq  = @mto_salud_legal_reliq
                  select @mto_salud_legal_reliq = 0
                end
              else if @caja_comp_antigua_act > 0 and @cod_instit_salud_act = 0 
                begin   
                  select @mto_desahucio_reliq = @mto_desahucio_reliq 
                  select @mto_antig_previsio_reliq = @mto_prevision_reliq
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                  select @monto_salud        = 0
                  select @monto_salud_reliq  = 0
                  select @mto_pagado_ccaf_reliq = 0 
                  select @mto_salud_legal_reliq = 0
                end
              else if @caja_comp_antigua_act = 0 and @cod_instit_salud_act = 1 
                begin   
                  select @mto_desahucio_reliq = @mto_desahucio_reliq 
                  select @mto_antig_previsio_reliq = @mto_prevision_reliq
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                  select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                  select @monto_salud_reliq  = @mto_salud_legal_reliq
                  select @mto_salud_legal_reliq = 0
                end
              else if @caja_comp_antigua_act = 0 and @cod_instit_salud_act > 1 
                begin   
                  select @mto_desahucio_reliq = @mto_desahucio_reliq 
                  select @mto_antig_previsio_reliq = @mto_prevision_reliq
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                  select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                  select @monto_salud_reliq  = @mto_salud_legal_reliq
                  select @mto_salud_legal_reliq = 0
                end
            end
          else
            begin              
              if @cod_instit_previsi > 0 and @cod_instit_salud > 1 
                if @cod_instit_salud_act = 1 
                  begin
                    select @mto_desahucio_reliq = 0 
                    select @mto_cancela_previs_reliq = @mto_prevision_reliq
                    select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                    select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                    select @monto_salud_reliq  = @mto_salud_legal_reliq
                    select @mto_salud_legal_reliq = 0
                  end
                else
                  begin
                    select @mto_desahucio_reliq = 0 
                    select @mto_cancela_previs_reliq = @mto_prevision_reliq
                    select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                    select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq
                    select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                    select @monto_salud_reliq  = @mto_salud_legal_reliq
                  end
              else if @cod_instit_previsi > 0 and @cod_instit_salud = 1   
                begin 
                  select @mto_desahucio_reliq = 0 
                  select @mto_cancela_previs_reliq = @mto_prevision_reliq
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                  if @cod_instit_salud_act > 1
                    begin
                      select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
																							   
                      select @monto_salud_reliq  = @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                      select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                      select @mto_pagado_ccaf_reliq = 0 
                      select @mto_salud_legal_reliq = @monto_salud_reliq
                    end
                  else
                    begin
                      select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                      select @monto_salud_reliq  = @mto_salud_legal_reliq
                      select @mto_salud_legal_reliq = 0
                    end
                end
               else if @cod_instit_previsi > 0 and @cod_instit_salud = 0
                begin 
                  select @mto_desahucio_reliq = 0 
                  select @mto_cancela_previs_reliq = @mto_prevision_reliq
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                  
                  select @mto_salud_legal    = 0
                  select @monto_salud        = 0
                  select @monto_salud_reliq  = 0
                    
                end
              else if @caja_comp_antigua > 0 and @cod_instit_salud > 1  
                if @cod_instit_salud_act = 1 
                  begin
                    select @mto_desahucio_reliq = @mto_desahucio_reliq 
                    select @mto_antig_previsio_reliq = @mto_prevision_reliq
                    select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                    select @monto_salud_reliq  = @mto_salud_legal_reliq
                    select @mto_salud_legal_reliq = 0
                  end
                else
                  begin
                    select @mto_desahucio_reliq = @mto_desahucio_reliq 
                    select @mto_antig_previsio_reliq = @mto_prevision_reliq
                    select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq
                    select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                    select @monto_salud_reliq  = @mto_salud_legal_reliq
                  end
              else if @caja_comp_antigua > 0 and @cod_instit_salud = 1 
                begin 
                  select @mto_desahucio_reliq = @mto_desahucio_reliq 
                  select @mto_antig_previsio_reliq = @mto_prevision_reliq 
                  if @cod_instit_salud_act > 1
                    begin
                      select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                      select @monto_salud        = @monto_salud        + @mto_pagado_ccaf_reliq
                      select @monto_salud_reliq  = @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                      select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                      select @mto_pagado_ccaf_reliq = 0 
                      select @mto_salud_legal_reliq = @monto_salud_reliq
                    end
                  else
                    begin
                      select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                      select @monto_salud_reliq  = @mto_salud_legal_reliq
                      select @mto_salud_legal_reliq = 0
                    end
                end      
              else if @caja_comp_antigua > 0 and @cod_instit_salud = 0 
                begin 
                  select @mto_desahucio_reliq = @mto_desahucio_reliq 
                  select @mto_antig_previsio_reliq = @mto_prevision_reliq 
                  if @cod_instit_salud_act > 1
                    begin
                      select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                      select @monto_salud        = @monto_salud        + @mto_pagado_ccaf_reliq
                      select @monto_salud_reliq  = @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                      select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                      select @mto_pagado_ccaf_reliq = 0 
                      select @mto_salud_legal_reliq = @monto_salud_reliq
                    end
                  else
                    begin
                      select @monto_salud        = 0
                      select @monto_salud_reliq  = 0
                      select @mto_pagado_ccaf_reliq = 0 
                      select @mto_salud_legal_reliq = 0
                    end
                end        
              else if @caja_comp_antigua = 0 and @cod_instit_salud = 1     
                begin
                  select @mto_desahucio_reliq = @mto_desahucio_reliq 
                  select @mto_antig_previsio_reliq = @mto_prevision_reliq
                  if @cod_instit_salud_act > 1
                    begin
                      select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                      select @monto_salud        = @monto_salud        + @mto_pagado_ccaf_reliq
                      select @monto_salud_reliq  = @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                      select @mto_pagado_ccaf_reliq = 0 
                      select @mto_salud_legal_reliq = @monto_salud_reliq
                    end
                  else
                    begin
                      select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                      select @monto_salud_reliq  = @mto_salud_legal_reliq
                      select @mto_salud_legal_reliq = 0
                    end                
                end
              else if @caja_comp_antigua = 0 and @cod_instit_salud > 1     
                begin
                  select @mto_desahucio_reliq = 0 
                  select @mto_antig_previsio_reliq = @mto_prevision_reliq
                  select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                  select @monto_salud_reliq  = @mto_salud_legal_reliq
                  select @mto_salud_legal_reliq = 0
                end
            end
            
		  
		  
          select @afecto_mutual = @afecto_mutual + @afecto_mutual_reliq
          select @afecto_sanna = @afecto_sanna + @afecto_sanna_reliq 
          select @afecto_cotizacion  = @afecto_cotizacion  + @afecto_cotiza_reliq
          select @afecto_cotizacion_sis  = @afecto_cotizacion_sis  + @afecto_cotiza_sis_reliq
          select @total_imponi_ley   = @total_imponi_ley   + @imponi_ley_reliq
          select @mto_cancela_previs = @mto_cancela_previs + @mto_cancela_previs_reliq
          select @valor_desahucio    = @valor_desahucio    + @mto_desahucio_reliq 
          select @mto_antig_previsio = @mto_antig_previsio + @mto_antig_previsio_reliq
          select @mto_pagado_ccaf    = @mto_pagado_ccaf    + @mto_pagado_ccaf_reliq
      
	  
          select @monto_ahorro_prev       = @monto_ahorro_prev  + @valor_apv_mes
          select @monto_ahorro_prev_reliq = @valor_apv_mes_corr
          select @tot_dctos_no_legal      = @tot_dctos_no_legal + @valor_apv_mes
          select @val_total_desctos       = @val_total_desctos  + @valor_apv_mes
           
         
          
          if @sp_apl_trab_pesado='S'
            begin
              if @sp_porc_trab_pesad is null
                begin
                  insert into errores_calculo(cod_empresa, cod_planta, nro_trabajador, dv_trabajador,
                  nombre, cod_error_tabla, descripcion_codigo, masivo_informado,
                  descripcion_error, tabla_del_error,cod_tipo_proceso,tipo_error)
                  values(@empresa_proceso, @planta_proceso, @sp_nro_trabajador, @sp_dv_trabajador,
                  convert(char(10),@sp_nro_trabajador), 15, 'Revisar porcentaje de Trabajo Pesado', 'C',
                  'El trabajador tiene marcado Trabajo Pesado y no tiene asignado un porcentaje', 
                  'Personal',@tipo_proceso,'E')
                end
              else
                begin
                  exec spliq_trab_pesado_reliq @mes_reliq,@ano_reliq,@empresa_proceso,@planta_proceso,
                  @sp_nro_trabajador,@sp_dv_trabajador,@tipo_proceso,@sp_consolida_empresa,@sp_porc_trab_pesad,@fec_final,@dias_proceso,0
                end
            end
          select @mto_seg_cta_indidu_reliq = 0
          select @mto_seg_cta_fondos_reliq = 0
          select @mto_imp_aporte_afc_reliq = 0
          
          
          begin
				select  @sp_fec_inicio = fec_ini_info_perio,@sp_fec_final =fec_fin_info_perio
				from control_procesos
				Where   cod_empresa =  @empresa_proceso and
						cod_planta = @planta_proceso    and
						cod_mes_proceso = @mes_reliq  and
						ano_proc_cont_proc = @ano_reliq
					
              if @aplica_seguro_des ='S' and @fec_ini_seguro_des <= @sp_fec_final and @sp_ind_seg_desempleo = 'S'
                begin
                
				 if @condic_previs_act = 'J' and (  @cod_tipo_invalidez = 2 or @cod_tipo_invalidez is null )
				 begin
					 select @mto_seg_cta_fondos_reliq = 0
					  select @mto_imp_aporte_afc_reliq = 0
					  select @mto_seg_cta_indidu_reliq = 0
					  select @seguro_des_reliq	       = 0
				 end
				 else
				 begin               
                
                  if @cod_instit_previsi_act > 0
                    select @cod_afp_afc = @cod_instit_previsi_act   
                  select @dif_seguro = 0
 
                --  select @dif_seguro=convert(int,datediff(dd,@fec_ini_seguro_des,@fec_final) / 365.25) 
                  select @dif_seguro=convert(int,datediff(dd,@fec_ini_seguro_des,@sp_fec_final) / 365.25)

                  exec spliq_aporte_segur_reliq @mes_reliq,@ano_reliq,@empresa_proceso,@planta_proceso,
						@sp_nro_trabajador,@sp_dv_trabajador,@tipo_proceso,@sp_consolida_empresa,@sp_cod_forma_pago,@cod_tipo_contra,
						@sp_fec_final,@dias_proceso,@sp_fec_mod_tip_con,@sp_fec_inicio,@impon_seguro_reliq,@mto_seg_cta_indidu_reliq output,
						@mto_seg_cta_fondos_reliq output, @mto_imp_aporte_afc_reliq output
						
						
                  if @dif_seguro >=11
                  begin
						select @mto_seg_cta_indidu_reliq = 0
						select @seguro_des_reliq	     = 0
                  end
                  end
                 end
              else
                begin
                  select @mto_seg_cta_fondos_reliq = 0
                  select @mto_imp_aporte_afc_reliq = 0
                  select @mto_seg_cta_indidu_reliq = 0
				  select @seguro_des_reliq	       = 0
                end
            end
            
	           
          select @dsctos_legales_reliq = @mto_prevision_reliq + @monto_salud_reliq + 
                                         @salud_voluntaria_reliq + @seguro_des_reliq + @mto_desahucio_reliq          
          
          select @val_leyes_sociales_reliq = @mto_prevision_reliq + @monto_salud_reliq + @mto_pagado_ccaf_reliq + 
                                           @salud_voluntaria_reliq + @seguro_des_reliq + @mto_desahucio_reliq
                                           
                                              
          select @val_leyes_sociales = @val_leyes_sociales + @val_leyes_sociales_reliq
          select @tot_dctos_legales  = @tot_dctos_legales  + @val_leyes_sociales_reliq
          select @val_total_desctos  = @val_total_desctos  + @val_leyes_sociales_reliq
		  
          if @asignacion_zona_lq is null select @asignacion_zona_lq = 0
          if @asignacion_zona_otros is null select @asignacion_zona_otros = 0
          
          
          select @sp_afecto_impto_reliq = @tot_tributable_reliq - @val_leyes_sociales_reliq - @valor_apv_mes_corr 
          select @sp_afecto_impto_total = @tot_tributable_reliq - @val_leyes_sociales_reliq - @valor_apv_mes_corr + 
                 @sp_afecto_impto_lq + @sp_afecto_impto_otros + @asignacion_zona_lq + @asignacion_zona_otros 

		 
		  
                 
       
          if @sp_ind_impuesto = 'S'
            begin
              exec spliq_cal_impuesto_reliq @mes_reliq,@ano_reliq,@empresa_proceso,@planta_proceso,
              @sp_nro_trabajador,@sp_dv_trabajador,@cod_sucursal_mes,@cod_tipo_trabajador_mes,
              @sp_afecto_impto_total,@sp_consolida_empresa,@sp_impto_reliq output,  @asignacion_zona_reliq output
              
              if (@sp_impto_reliq - @sp_impto_lq - @sp_impto_otros)> @sp_afecto_impto_reliq
              begin
                select @sp_impto_otros = 0
				select @sp_afecto_impto_otros = 0
				
				select @sp_afecto_impto_reliq = @tot_tributable_reliq - @val_leyes_sociales_reliq - @valor_apv_mes_corr 
				select @sp_afecto_impto_total = @tot_tributable_reliq - @val_leyes_sociales_reliq - @valor_apv_mes_corr + 
                 @sp_afecto_impto_lq + @sp_afecto_impto_otros + @asignacion_zona_lq + @asignacion_zona_otros 
				
				exec spliq_cal_impuesto_reliq @mes_reliq,@ano_reliq,@empresa_proceso,@planta_proceso,
				  @sp_nro_trabajador,@sp_dv_trabajador,@cod_sucursal_mes,@cod_tipo_trabajador_mes,
				  @sp_afecto_impto_total,@sp_consolida_empresa,@sp_impto_reliq output,  @asignacion_zona_reliq output
              
              end
              
              
              select @asignacion_zona_reliq = @asignacion_zona_reliq - @asignacion_zona_lq - @asignacion_zona_otros
              if @asignacion_zona_reliq < 0 select @asignacion_zona_reliq = 0
              
              select @sp_afecto_impto_reliq = @sp_afecto_impto_reliq - @asignacion_zona_reliq
              if @sp_afecto_impto_reliq < 0 select @sp_afecto_impto_reliq = 0
            end 
          else
            select @sp_impto_reliq = 0 
                 

		 if @sp_afecto_impto_reliq is null 
			select @sp_afecto_impto_reliq = 0
                 
          if @sp_impto_reliq < 0 select @sp_impto_reliq = 0
          select @sp_impto_reliq = @sp_impto_reliq - @sp_impto_lq - @sp_impto_otros
          if @sp_impto_reliq < 0 select @sp_impto_reliq = 0
          
         
          select @dsctos_legales_reliq = @dsctos_legales_reliq + @sp_impto_reliq
          
          select @sp_impto_reliq_act = round((@sp_impto_reliq * @valor_utm_proceso)/ @valor_utm_mes , 0)
          select @sp_impto_reliq_act_tot = @sp_impto_reliq_act_tot + @sp_impto_reliq_act
           
          select @monto_cancel_impto = @monto_cancel_impto + @sp_impto_reliq_act        
          
          select @tot_dctos_legales  = @tot_dctos_legales  + @sp_impto_reliq_act
          select @val_total_desctos  = @val_total_desctos  + @sp_impto_reliq_act
          
          select @afecto_impto_corr = round((@sp_afecto_impto_reliq * @valor_utm_proceso)/ @valor_utm_mes , 0)
          select @afecto_impto = @afecto_impto + @afecto_impto_corr
          
																																
																															  
		  
																																
																															  
		  
          select @val_liquido_pago_reliq = @valor_mes  - @val_leyes_sociales_reliq - @valor_apv_mes_corr - @sp_impto_reliq_act
            
            
          if @afecto_impto is null select @afecto_impto = 0
          if @afecto_impto_corr is null select @afecto_impto_corr = 0
          if @monto_cancel_impto is null select @monto_cancel_impto = 0
          if @sp_impto_reliq_act is null select @sp_impto_reliq_act = 0
          if @sp_impto_reliq_act_tot is null select @sp_impto_reliq_act_tot = 0
          if @val_liquido_pago_reliq is null select @val_liquido_pago_reliq = 0
          if @mto_seg_cta_indidu_reliq is null select @mto_seg_cta_indidu_reliq = 0
          if @mto_seg_cta_fondos_reliq is null select @mto_seg_cta_fondos_reliq = 0
          if @mto_imp_aporte_afc_reliq is null select @mto_imp_aporte_afc_reliq = 0
          
          select @mto_seg_cta_indidu = @mto_seg_cta_indidu + @mto_seg_cta_indidu_reliq 
          select @mto_seg_cta_fondos = @mto_seg_cta_fondos + @mto_seg_cta_fondos_reliq 
          select @mto_imp_aporte_afc = @mto_imp_aporte_afc + @mto_imp_aporte_afc_reliq
          select @mto_aporte_sis     = @mto_aporte_sis     + @mto_aporte_sis_reliq 
          
          select @monto_impon_seguro = @monto_impon_seguro + @impon_seguro_reliq
          select @monto_seguro_des   = @monto_seguro_des   + @seguro_des_reliq 
         
          --
          select @mto_desahucio_reliq = round(@mto_desahucio_reliq, 0)
          select @mto_prevision_reliq = round(@mto_prevision_reliq, 0)
          select @monto_salud_reliq   = round(@monto_salud_reliq,0)
          select @mto_pagado_ccaf_reliq = round(@mto_pagado_ccaf_reliq,0)
          select @salud_voluntaria_reliq = round(@salud_voluntaria_reliq,0)
          select @seguro_des_reliq = round(@seguro_des_reliq,0)
          --   
               
          if @cod_instit_previsi_act = 0 or @cod_instit_previsi_act is null
            select @mto_aporte_sis_reliq = 0
          
          if @sp_ind_leyes_sociales = 'S'
            begin
              select @sp_aporte = 0
              select @sp_aporte_adic = 0
              exec spliq_aporte_mutual_reliq @mes_reliq, @ano_reliq, @empresa_proceso,
              @planta_proceso, @sp_nro_trabajador, @sp_dv_trabajador, @tipo_proceso,@sp_consolida_empresa,
              @afecto_mutual_reliq, @porc_mutual_base, @porc_mutual_adic,@sp_aporte output, @sp_aporte_adic output, @sp_aporte_sanna  output          
            end
          
          if @sp_aporte      is null select @sp_aporte      = 0
          if @sp_aporte_adic is null select @sp_aporte_adic = 0
          if @sp_aporte_sanna is null select @sp_aporte_sanna = 0
          
          select @aporte_patron_mutu_reliq = @sp_aporte + @sp_aporte_adic + @sp_aporte_sanna
          

          
          insert into hist_diferencias(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,ano_periodo,mes_periodo,
          cod_tipo_proceso,nro_contr_vig_proc,cod_haber,mes_proceso_liq,ano_proceso_liq,cod_sucursal,fec_ini_contr_vige,
          fec_fin_contr,nro_convenio,cod_cargo,cod_centro_costo,cod_tipo_trabajado,valor_total_habere,
          hab_no_imp_no_trib,tot_dctos_no_legal,tot_dctos_legales,tot_impon_sin_tope,tot_imponible,cod_instit_previsi,
          mto_cancela_previs,mto_prev_voluntari,mto_ahorro_volunta,cod_instit_salud,monto_aporte_sis,
          monto_salud,mto_salud_legal,val_volunt_isapre,mto_pagado_ccaf,caja_comp_antigua,
          mto_antig_previsio,pje_cotzado_caja,val_leyes_sociales,afecto_impto,asignacion_zona,monto_cancel_impto,
          tot_tributable,total_imponi_ley,afecto_impto_corr,monto_seguro_des,mto_seg_cta_indidu,
          mto_seg_cta_fondos,monto_impon_seguro,monto_impto_corr,cod_tipo_jornada,monto_ahorro_prev,
          monto_ahorro_prev_corr,afecto_cotizacion,val_liquido_pago,valor_haber_reliq,
          max_afecto_cotiz,max_imponi_ley,max_impon_seguro,aporte_patron_mutu,valor_desahucio, 
          max_afecto_mutu, afecto_mutual, afec_ley_sanna)
          values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@ano_reliq,@mes_reliq,
          @tipo_proceso,@nro_contr_vig,@cod_haber,@sp_mes_registro,@sp_ano_registro,@cod_sucursal_mes,@sp_fec_ini_contrat,
          @sp_fec_fin_contr_v,@convenio,@cod_cargo,@centro_costo,@cod_tipo_trabajador_mes,@valor_mes_corr,
          0,0,@dsctos_legales_reliq,@tot_impon_sin_tope_mes,@tot_imponible_mes,@cod_instit_previsi,
          @mto_cancela_previs_reliq,0,0,@cod_instit_salud,@mto_aporte_sis_reliq,@monto_salud_reliq,
          @mto_salud_legal_reliq,@salud_voluntaria_reliq,@mto_pagado_ccaf_reliq,@caja_comp_antigua,
          @mto_antig_previsio_reliq,@pje_cotzado_caja,@val_leyes_sociales_reliq,@sp_afecto_impto_reliq,@asignacion_zona_reliq,@sp_impto_reliq,
          @tot_tributable_reliq,@imponi_ley_reliq,@afecto_impto_corr,@seguro_des_reliq,@mto_seg_cta_indidu_reliq,
          @mto_seg_cta_fondos_reliq,@impon_seguro_reliq,@sp_impto_reliq_act,@cod_tipo_jornada,@valor_apv_mes,
          @valor_apv_mes_corr,@afecto_cotiza_reliq,@val_liquido_pago_reliq,@valor_haber_reliq,
          @max_afec_afp_res,@max_impon_inp_res,@max_afec_afc_res,@aporte_patron_mutu_reliq,@mto_desahucio_reliq, 
          @max_afecto_mutu_res, @afecto_mutual_reliq, @afecto_mutual_reliq)
          
          
            
          select @sp_aporte_mutu_base = @sp_aporte_mutu_base + @sp_aporte
          select @sp_aporte_mutu_adic = @sp_aporte_mutu_adic + @sp_aporte_adic
          select @sp_aporte_mutu_sanna = @sp_aporte_mutu_sanna + @sp_aporte_sanna
          
          if @mes_reliq = 12
            begin
              select @mes_reliq = 1
              select @ano_reliq = @ano_reliq + 1
            end
          else
            select @mes_reliq = @mes_reliq + 1
          
          select @mes_indice = @mes_indice + 1
          select @periodo_indice = @ano_reliq * 100 + @mes_reliq
        end
      
      --if @control_meses = 0
      --  begin
      --    delete from historico_liquidac 
      --    where cod_empresa      = @empresa_proceso   and
      --          cod_planta       = @planta_proceso    and
      --          cod_tipo_proceso = @tipo_proceso      and
      --          ano_periodo      = @sp_ano_registro   and
      --          mes_periodo      = @sp_mes_registro   and
      --           nro_trabajador   = @sp_nro_trabajador and
      --          dv_trabajador    = @sp_dv_trabajador
      --    fetch lectura_personal into
      --    @sp_nro_trabajador,@sp_dv_trabajador,@nro_contr_vig,
      --    @sp_ape_paterno, @sp_ape_materno, @sp_nombre
      --    continue
      --  end
      
      --  descuentos sin rebaja de tributacion
      select @valor_descuento = 0
      exec spliq_descuentos_reliq @mes_proceso, @ano_proceso, @empresa_proceso,
      @planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador, @tipo_proceso,
      @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@sp_ano_registro,
      @sp_mes_registro,@sp_ano_base, @sp_mes_base,@valor_descuento output
      
      select @val_total_desctos   = @val_total_desctos   + @valor_descuento
      select @tot_dctos_no_legal  = @tot_dctos_no_legal  + @valor_descuento
      
      select @val_leyes_sociales = round(@val_leyes_sociales, 0)
      select @val_total_desctos  = round(@val_total_desctos  , 0)
      select @tot_dctos_legales  = round(@tot_dctos_legales , 0)
      
      if @cod_instit_previsi_act = 0 or @cod_instit_previsi_act is null
        begin
          select @mto_cancela_previs_l = @mto_cancela_previs 
          select @mto_cancela_previs = 0
        end
      else
        select @mto_cancela_previs = round(@mto_cancela_previs, 0)
                                                 
        
      select @mto_aporte_sis       = round(@mto_aporte_sis    , 0)
      select @valor_desahucio      = round(@valor_desahucio, 0)
      select @mto_antig_previsio = round(@mto_antig_previsio, 0)
      select @mto_salud_legal    = round(@mto_salud_legal   , 0)
      select @monto_salud        = round(@monto_salud       , 0)
      select @mto_pagado_ccaf    = round(@mto_pagado_ccaf   , 0)
      select @monto_seguro_des   = round(@monto_seguro_des  , 0)
      select @monto_ahorro_prev  = round(@monto_ahorro_prev , 0)
      select @afecto_cotizacion  = round(@afecto_cotizacion , 0)
      select @afecto_cotizacion_sis =  round(@afecto_cotizacion_sis , 0)
      select @total_imponi_ley   = round(@total_imponi_ley  , 0)
      select @mto_seg_cta_indidu = round(@mto_seg_cta_indidu, 0)
      select @mto_seg_cta_fondos = round(@mto_seg_cta_fondos, 0)
      select @afecto_mutual = round(@afecto_mutual, 0)
      
      select @dscto_reliquida = dscto_reliquida
      from control_parametros
      where
      cod_empresa  = @empresa_proceso   and
      cod_planta   = @planta_proceso    and
      ano_control_proces = @sp_ano_base and
      mes_control_proces = @sp_mes_base
            
      if @dscto_reliquida is null select @dscto_reliquida = 511
      
       
      if @mto_seg_cta_indidu > 0
        insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
        mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
        cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
        values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@sp_aporte_cta_ind,@sp_ano_registro,
        @sp_mes_registro,@tipo_proceso,1,@mto_seg_cta_indidu,'$',@mto_seg_cta_indidu,0,
        @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@mto_seg_cta_indidu)
      if @mto_seg_cta_fondos > 0
        insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
        mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
        cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
        values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@sp_aporte_cta_fon,@sp_ano_registro,
        @sp_mes_registro,@tipo_proceso,1,@mto_seg_cta_fondos,'$',@mto_seg_cta_fondos,0,
        @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@mto_seg_cta_fondos)
      if @monto_seguro_des > 0
          insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
          mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
          valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
          cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
          aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
          values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,509,@sp_ano_registro,
          @sp_mes_registro,@tipo_proceso,1,@monto_seguro_des,'$',0,@monto_seguro_des,0,0,0,0,@cod_sucursal,@centro_costo,
          @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@monto_seguro_des,0,0)
      if @monto_cancel_impto > 0
        insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
        mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
        valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
        cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
        aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
        values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@dscto_reliquida,@sp_ano_registro,
        @sp_mes_registro,@tipo_proceso,1,@monto_cancel_impto,'$',0,@monto_cancel_impto,0,0,0,0,@cod_sucursal,@centro_costo,
        @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@monto_cancel_impto,0,0)
      
      select @b501 = 0
      select @b504 = 0
      select @b505 = 0
      select @b506 = 0
      select @b513 = 0
      
      select @flg_aporte_sis = flg_aporte_sis,
             @cal_hab_liq_sl = cal_hab_liq_sl
      from control_parametros
      where
      cod_empresa  = @empresa_proceso   and
      cod_planta   = @planta_proceso    and
      ano_control_proces = @sp_ano_base and
      mes_control_proces = @sp_mes_base
      if @flg_aporte_sis is null select @flg_aporte_sis = 0
      if @cal_hab_liq_sl is null select @cal_hab_liq_sl = 'N'
      
      select @cod_haber_sis = cod_haber
      from haber
      where
      cod_empresa  = @empresa_proceso and
      cod_planta   = @planta_proceso  and
      tipo_hab_contabili = 'H'
      if @cod_haber_sis is null select @cod_haber_sis = 0
            
      if @sp_ind_afp_mes = 'N'
        begin
          if @cod_instit_previsi_act > 0 and @cod_instit_salud_act > 1 
            begin
              select @b501 = 1
              select @b506 = 1
            end
          else if @cod_instit_previsi_act > 0 and @cod_instit_salud_act =1   
            begin
              select @b501 = 1
              select @b513 = 1
              select @b505 = 1
            end          
         else if @cod_instit_previsi_act > 0 and @cod_instit_salud_act = 0 
            begin
              select @b501 = 1
              select @b506 = 0
            end
          else if @caja_comp_antigua_act > 0 and @cod_instit_salud_act > 1     
            begin
              select @b504 = 1
              select @b506 = 1
            end
          else if @caja_comp_antigua_act > 0 and @cod_instit_salud_act = 1  
            begin
              select @b504 = 1
              select @b505 = 1
              select @b513 = 1
            end
          else if @caja_comp_antigua_act > 0 and @cod_instit_salud_act = 0  
            begin
              select @b504 = 1
              select @b505 = 0
              select @b513 = 0
            end
          else if @cod_instit_previsi_act = 0 and @cod_instit_salud_act = 1  
            begin
              select @b501 = -1
              select @b513 = 0
              select @b505 = 1
            end
          else if @cod_instit_previsi_act = 0 and @cod_instit_salud_act > 1  
            begin
              select @b501 = 0
              select @b504 = 0
              select @b506 = 1
            end
        end
      else
        begin
          if @cod_instit_previsi > 0 and @cod_instit_salud > 1 and @cod_instit_salud_act > 1
            begin
              select @b501 = 1
              select @b506 = 1
            end                 
         else if @cod_instit_previsi > 0 and @cod_instit_salud = 0 
            begin
              select @b501 = 1
              select @b506 = 0
            end
          else if @cod_instit_previsi > 0 and @cod_instit_salud > 1 and @cod_instit_salud_act = 1
            begin
              select @b501 = 1
              select @b513 = 1
              select @b505 = 1
            end
          else if @cod_instit_previsi > 0 and @cod_instit_salud =1 and @cod_instit_salud_act = 1
            begin
              select @b501 = 1
              select @b513 = 1
              select @b505 = 1
            end
          else if @cod_instit_previsi > 0 and @cod_instit_salud =1 and @cod_instit_salud_act > 1
            begin
              select @b501 = 1
              select @b506 = 1
            end
          else if @caja_comp_antigua > 0 and @cod_instit_salud > 1 and @cod_instit_salud_act > 1
            begin
              select @b504 = 1
              select @b506 = 1
            end
          else if @caja_comp_antigua > 0 and @cod_instit_salud > 1 and @cod_instit_salud_act = 1   
            begin
              select @b504 = 1
              select @b513 = 1
              select @b505 = 1
            end
          else if @caja_comp_antigua > 0 and @cod_instit_salud > 1 and @cod_instit_salud_act = 0   
            begin
              select @b504 = 1
              select @b513 = 0
              select @b505 = 0
            end
          else if @caja_comp_antigua > 0 and @cod_instit_salud = 1 and @cod_instit_salud_act = 1  
            begin
              select @b504 = 1
              select @b505 = 1
              select @b513 = 1
            end
          else if @caja_comp_antigua > 0 and @cod_instit_salud = 1 and @cod_instit_salud_act > 1     
            begin
              select @b504 = 1
              select @b506 = 1
            end
          else if @caja_comp_antigua > 0 and @cod_instit_salud = 1 and @cod_instit_salud_act > 0     
            begin
              select @b504 = 1
              select @b506 = 0
            end
          else if @caja_comp_antigua > 0 and @cod_instit_salud = 0 and @cod_instit_salud_act > 1     
            begin
              select @b504 = 1
              select @b506 = 1
            end
          else if @caja_comp_antigua > 0 and @cod_instit_salud = 0 and @cod_instit_salud_act = 0     
            begin
              select @b504 = 1
              select @b506 = 0
            end
          else if @cod_instit_previsi = 0 and @cod_instit_salud = 1 and @cod_instit_salud_act = 1  
            begin
              select @b501 = -1
              select @b513 = 1
              select @b505 = 1
            end
          else if @cod_instit_previsi = 0 and @cod_instit_salud = 1  and @cod_instit_salud_act > 1  
            begin
              select @b501 = -1
              select @b506 = 1
            end
          else if @cod_instit_previsi = 0 and @cod_instit_salud > 1  and @cod_instit_salud_act > 1   
            begin
              select @b501 = 0
              select @b504 = 0
              select @b506 = 1
            end
          else if @cod_instit_previsi = 0 and @cod_instit_salud > 1  and @cod_instit_salud_act = 1   
            begin
              select @b501 = 0
              select @b504 = 0
              select @b505 = 1
              select @b513 = 1
            end
        end
        
      --TIPS 26632
      if @val_liquido_retorna > 0
      begin
		select @mto_cancela_previs = @mto_cancela_previs + @val_liquido_retorna
	  end
	  

      
      if @b501 = 1 and @mto_cancela_previs > 0
        insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
        mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
        valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
        cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
        aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
        values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,501,@sp_ano_registro,
        @sp_mes_registro,@tipo_proceso,1,@mto_cancela_previs,'$',0,@mto_cancela_previs,0,0,0,0,@cod_sucursal,@centro_costo,
        @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@mto_cancela_previs,0,0)
      if @b504 = 1 and @mto_antig_previsio > 0
        begin
          if @mto_cancela_previs_l > 0 select @mto_antig_previsio = @mto_antig_previsio + @mto_cancela_previs_l
          insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
          mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
          valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
          cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
          aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
          values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,504,@sp_ano_registro,
          @sp_mes_registro,@tipo_proceso,1,@mto_antig_previsio,'$',0,@mto_antig_previsio,0,0,0,0,@cod_sucursal,@centro_costo,
          @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@mto_antig_previsio,0,0) 
        end  
      if @valor_desahucio > 0
          insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
          mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
          valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
          cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
          aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
          values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,140,@sp_ano_registro,
          @sp_mes_registro,@tipo_proceso,1,@valor_desahucio,'$',0,@valor_desahucio,0,0,0,0,@cod_sucursal,@centro_costo,
          @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@valor_desahucio,0,0) 
      if @b505 = 1 and @mto_pagado_ccaf > 0
          insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
          mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
          valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
          cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
          aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
          values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,505,@sp_ano_registro,
          @sp_mes_registro,@tipo_proceso,1,@mto_pagado_ccaf,'$',0,@mto_pagado_ccaf,0,0,0,0,@cod_sucursal,@centro_costo,
          @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@mto_pagado_ccaf,0,0)
      if @b506 = 1 and @monto_salud > 0
        insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
        mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
        valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
        cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
        aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
        values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,506,@sp_ano_registro,
        @sp_mes_registro,@tipo_proceso,1,@monto_salud,'$',0,@monto_salud,0,0,0,0,@cod_sucursal,@centro_costo,
        @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@monto_salud,0,0)
      if @b513 = 1 and @monto_salud > 0
        begin
          insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
          mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
          valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
          cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
          aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
          values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,513,@sp_ano_registro,
          @sp_mes_registro,@tipo_proceso,1,@monto_salud,'$',0,@monto_salud,0,0,0,0,@cod_sucursal,@centro_costo,
          @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@monto_salud,0,0) 
          select @b506 = 0
        end
      
      exec spliq_calc_anticip_reliq @mes_proceso, @ano_proceso, @empresa_proceso,
      @planta_proceso,@sp_nro_trabajador, @sp_dv_trabajador, @tipo_proceso
      
      if @sp_ind_dscto_cta_cte = 'S'
        begin
          exec spliq_rev_ctacte_reliq @mes_proceso, @ano_proceso, @empresa_proceso, @planta_proceso,
          @sp_nro_trabajador, @sp_dv_trabajador, @tipo_proceso
          
          exec spliq_calc_ctacte_reliq @mes_proceso,@ano_proceso,@empresa_proceso,@planta_proceso,
          @sp_nro_trabajador, @sp_dv_trabajador, @tipo_proceso
        end
      select @tot_desc_cta_cte = 0
      select @valor_anticipo   = 0
      select @tot_desc_cta_cte = sum(isnull(tot_desc_cta_cte,0)),
             @valor_anticipo   = sum(isnull(valor_anticipo,0))
      from historico_liquidac
      where
        cod_empresa      = @empresa_proceso   and
        cod_planta       = @planta_proceso    and
        cod_tipo_proceso = @tipo_proceso      and
        ano_periodo      = @sp_ano_registro   and
        mes_periodo      = @sp_mes_registro   and
        nro_trabajador   = @sp_nro_trabajador and
        dv_trabajador    = @sp_dv_trabajador
      
      select @val_total_desctos   = @val_total_desctos   + @tot_desc_cta_cte + @valor_anticipo
      select @tot_dctos_no_legal  = @tot_dctos_no_legal  + @tot_desc_cta_cte + @valor_anticipo
      
      if  @no_redondea_llss = 'S' 
        begin
          select @val_total_desctos = sum(valor_transac_peso) 
          from liquida_descuentos
          where           
          cod_empresa      = @empresa_proceso and
          cod_planta       = @planta_proceso  and
          cod_tipo_proceso = @tipo_proceso    and
          ano_periodo      = @sp_ano_registro     and
          mes_periodo      = @sp_mes_registro     and
          nro_trabajador   = @sp_nro_trabajador and
          dv_trabajador    = @sp_dv_trabajador
        end
       
      select @val_liquido_pago = @valor_total_habere - @val_total_desctos
      
      if @val_liquido_pago < 0
        begin
          select @sobregiros_mes   = @val_liquido_pago * (-1)
          select @val_liquido_pago = 0
          if @sp_cod_haber_sobreg > 0 and @sp_indic_genera_haber = 'S'
            insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
            mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
            cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
            values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@sp_cod_haber_sobreg,@sp_ano_registro,
            @sp_mes_registro,@tipo_proceso,1,@sobregiros_mes,'$',@sobregiros_mes,0,
            @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@sobregiros_mes)
          if @sp_indic_genera_dscto = 'S'
            begin
              if @sp_cod_dscto_sobreg > 0 and @sp_fec_apli_dscto is not null and @sp_cod_proceso_sobreg is not null and
               ltrim(rtrim(@sp_cod_proceso_sobreg)) != ''
                begin
                  delete from descuento_informad
                  where
                  cod_empresa      = @empresa_proceso and
                  cod_planta       = @planta_proceso  and
                  cod_tipo_proceso = @sp_cod_proceso_sobreg and
                  cod_descuento    = @sp_cod_dscto_sobreg and
                  nro_trabajador   = @sp_nro_trabajador and
                  dv_trabajador    = @sp_dv_trabajador
                  insert into descuento_informad(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,
                  cod_tipo_proceso,correlativo,fec_aplicacion,cod_unidad_moneda,nro_cuotas,cod_centro_costo,
                  fec_ingreso_decuen,nombre_usuario,valor_concepto)
                  values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@sp_cod_dscto_sobreg,
                  @sp_cod_proceso_sobreg,7887,@sp_fec_apli_dscto,'$',1,@centro_costo,
                  @sp_fec_apli_dscto,user_name(),@sobregiros_mes)  
                end            
            end
        end
      if @sp_aporte_mutu_base > 0
        insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
        mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
        cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
        values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@cod_mutu_base,@sp_ano_registro,
        @sp_mes_registro,@tipo_proceso,1,@sp_aporte_mutu_base,'$',@sp_aporte_mutu_base,0,
        @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@sp_aporte_mutu_base)
      if @sp_aporte_mutu_adic > 0 and @sp_aporte_mutu_adic > 0
        insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
        mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
        cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
        values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@cod_mutu_adic,@sp_ano_registro,
        @sp_mes_registro,@tipo_proceso,1,@sp_aporte_mutu_adic,'$',@sp_aporte_mutu_adic,0,
        @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@sp_aporte_mutu_adic)
      if @sp_aporte_mutu_sanna > 0 and @cod_mutu_sanna > 0
        insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
        mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
        cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
        values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@cod_mutu_sanna,@sp_ano_registro,
        @sp_mes_registro,@tipo_proceso,1,@sp_aporte_mutu_sanna,'$',@sp_aporte_mutu_sanna,0,
        @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@sp_aporte_mutu_sanna)
      if @flg_aporte_sis = 'S' and @cod_haber_sis > 0 and @mto_aporte_sis > 0 and @cod_instit_previsi_act > 0
        insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
        mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
        cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
        values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@cod_haber_sis,@sp_ano_registro,
        @sp_mes_registro,@tipo_proceso,1,@mto_aporte_sis,'$',@mto_aporte_sis,0,
        @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@mto_aporte_sis)
      else
        select @mto_aporte_sis = 0
      if @cod_hab_aporte > 0 and @valor_aporte > 0
        begin
          select @acum_historico = acumula_historico
          from haber 
          where
          cod_empresa = @empresa_proceso and
          cod_planta  = @planta_proceso  and
          cod_haber   = @cod_hab_aporte
          if      rtrim(ltrim(@acum_historico)) != ' ' and @acum_historico is not null 
              and rtrim(ltrim(@acum_historico)) != ''
            begin
              select @str_update = 'update historico_liquidac ' + 
              ' set ' + rtrim(ltrim(@acum_historico))+ ' = ' + convert(varchar,@valor_aporte) + 
              ' where cod_empresa = ' + convert(varchar,@empresa_proceso) + 
              ' and   cod_planta  = ' + convert(varchar,@planta_proceso)  +
              ' and   cod_tipo_proceso =  ''' + @tipo_proceso + '''' 
              select @str_update = @str_update + 
              ' and   ano_periodo = ' + convert(varchar,@sp_ano_registro) +
              ' and   mes_periodo = ' + convert(varchar,@sp_mes_registro) +
              ' and   nro_trabajador   = ' + convert(varchar,@sp_nro_trabajador) +
              ' and   dv_trabajador    = ''' + @sp_dv_trabajador+ '''' 
              exec (@str_update)
            end
        end  
           

       select @mto_tope_prev_uf = mto_tope_prev_uf
          from parametro
          where 
          cod_empresa = @empresa_proceso and
          cod_planta  = @planta_proceso  and
          ano         = @sp_ano_registro       and
          nro_mes     = @sp_mes_registro
           
      select @valor_tabla=val_moneda_unidad from valor_moneda 
                    where cod_unidad_cobro = 'UF' and fec_valor_moneda = @fec_final
      
      select  @valor_topado = round(@mto_tope_prev_uf * @valor_tabla,0)
       
      select @tot_imponible = @tot_impon_sin_tope
      if @tot_imponible > @valor_topado 
		select @tot_imponible = @valor_topado  
           
      update historico_liquidac
      set 
      valor_total_habere = @valor_total_habere,
      tot_tributable     = @tot_tributable,
      hab_no_imp_no_trib = @hab_no_imp_no_trib,
      ret_judic_resconta = @ret_judic_resconta,
      tot_dctos_no_legal = @tot_dctos_no_legal,
      tot_dctos_legales  = @tot_dctos_legales,
      val_total_desctos  = @val_total_desctos,
      val_liquido_pago   = @val_liquido_pago,
      sobregiros_mes     = @sobregiros_mes,
      tot_impon_sin_tope = @tot_impon_sin_tope,
      tot_imponible		 = @tot_imponible,
      mto_cancela_previs = @mto_cancela_previs,
      valor_desahucio    = @valor_desahucio,
      monto_aporte_sis   = @mto_aporte_sis,
      monto_salud        = @monto_salud,
      mto_salud_legal    = @mto_salud_legal,
      valor_pactado_isap = @valor_pactado_isap,
      val_volunt_isapre  = @val_volunt_isapre,
      mto_pagado_ccaf    = @mto_pagado_ccaf,
      mto_antig_previsio = @mto_antig_previsio,
      val_leyes_sociales = @val_leyes_sociales,
      afecto_impto       = @afecto_impto,
      asignacion_zona    = @asignacion_zona,
      monto_cancel_impto = @monto_cancel_impto,
      aporte_patron_ccaf = @aporte_patron_ccaf,
      aporte_patronal_1  = @aporte_patronal_1,
      aporte_patronal_2  = @aporte_patronal_2,
      tot_imp_no_prop    = @tot_imp_no_prop,
      mto_tope60_dfl44   = @mto_tope60_dfl44,
      mto_dfl44          = @mto_dfl44,
      afecto_cotizacion  = @afecto_cotizacion,
      val_tot_tope_impon = @afecto_cotizacion,
      total_imponi_ley   = @total_imponi_ley,
      adicional_isapre   = @adicional_isapre,
      mto_salud_real     = @mto_salud_real,
      monto_seguro_des   = @monto_seguro_des,
      monto_ahorro_prev  = @monto_ahorro_prev,
      mto_seg_cta_indidu = @mto_seg_cta_indidu,
      mto_seg_cta_fondos = @mto_seg_cta_fondos,
      monto_impon_seguro = @monto_impon_seguro,
      mto_trab_tr_pesado = @mto_trab_tr_pesado,
      mto_apor_tr_pesado = @mto_apor_tr_pesado,
      mto_imp_aporte_afc = @mto_imp_aporte_afc,
      cod_afp_afc        = @cod_afp_afc,
      pje_cotzado_caja   = @pje_cotzado_caja,
      pje_desahucio      = @pje_desahucio,
      pje_cotiz_previs   = @pje_cotiz_previs,
      pje_cotiz_salud    = @pje_cotiz_salud,
      por_mutual_base   = @porc_mutual_base,
      por_mutual_adic   = @porc_mutual_adic,
      por_mutual_sanna   = @porc_mutual_sanna,
      aporte_patron_mutu = @sp_aporte_mutu_base + @sp_aporte_mutu_adic + @sp_aporte_mutu_sanna,
      afecto_mto_sis	= @afecto_cotizacion_sis,
      afecto_mutual		= @afecto_mutual,
      afec_ley_sanna	= @afecto_mutual
      where
      cod_empresa      = @empresa_proceso and
      cod_planta       = @planta_proceso  and
      cod_tipo_proceso = @tipo_proceso    and
      ano_periodo      = @sp_ano_registro     and
      mes_periodo      = @sp_mes_registro     and
      nro_trabajador   = @sp_nro_trabajador and
      dv_trabajador    = @sp_dv_trabajador
      
         
      if @val_liquido_retorna > 0
      begin
		update historico_liquidac
		set	  tot_dctos_legales = tot_dctos_legales + @val_liquido_retorna,
			  val_leyes_sociales = val_leyes_sociales + @val_liquido_retorna,
			  val_total_desctos = val_total_desctos + @val_liquido_retorna,
			  val_liquido_pago = val_liquido_pago - @val_liquido_retorna
		where cod_empresa      = @empresa_proceso and
			  cod_planta       = @planta_proceso  and
			  cod_tipo_proceso = @tipo_proceso    and
			  ano_periodo      = @sp_ano_registro     and
			  mes_periodo      = @sp_mes_registro     and
			  nro_trabajador   = @sp_nro_trabajador and
			  dv_trabajador    = @sp_dv_trabajador and
			  val_liquido_pago > 0
	  end
          
          
    if @valor_prop_mes > 0
        update liquidacio_haberes 
        set
        valor_transac_peso = @valor_prop_mes
        where
        cod_empresa      = @empresa_proceso and
        cod_planta       = @planta_proceso  and
        cod_tipo_proceso = @tipo_proceso    and
        ano_periodo      = @sp_ano_registro     and
        mes_periodo      = @sp_mes_registro     and
        nro_trabajador   = @sp_nro_trabajador and
        dv_trabajador    = @sp_dv_trabajador  and
        cod_haber        = @cod_haber and 
		valor_transaccion > @valor_prop_mes
     
      if @valor_total_dias > 0
        update liquidacio_haberes 
        set
        valor_transac_peso = @valor_total_dias
        where
        cod_empresa      = @empresa_proceso and
        cod_planta       = @planta_proceso  and
        cod_tipo_proceso = @tipo_proceso    and
        ano_periodo      = @sp_ano_registro     and
        mes_periodo      = @sp_mes_registro     and
        nro_trabajador   = @sp_nro_trabajador and
        dv_trabajador    = @sp_dv_trabajador  and
        cod_haber        = @cod_haber and 
		valor_transaccion > @valor_total_dias
       
       
      exec spliq_calc_aporte_reliq @sp_mes_registro, @sp_ano_registro, @empresa_proceso, @planta_proceso,@sp_nro_trabajador,
      @sp_dv_trabajador,@tipo_proceso,@sp_cod_forma_pago,@sp_str_aportes
      
      if @sp_bitacora_reliq = 'S'
      begin
        exec spliq_bitacora @empresa_proceso,@planta_proceso,@tipo_proceso,@sp_nro_trabajador,
        @sp_dv_trabajador,@sp_ano_registro,@sp_mes_registro, @sp_usuario, 1
      end
      
      update personal set indic_liq_individu = 'P'
      where 
      cod_empresa    = @empresa_proceso   and
      cod_planta     = @planta_proceso    and
      nro_trabajador = @sp_nro_trabajador and
      dv_trabajador  = @sp_dv_trabajador
      
      
    fetch lectura_personal into
    @sp_nro_trabajador,@sp_dv_trabajador,@nro_contr_vig,
    @sp_ape_paterno, @sp_ape_materno, @sp_nombre, @sp_rut_trabajador
  end
close lectura_personal
deallocate  lectura_personal
return 0




GO
/****** Object:  StoredProcedure [dbo].[spliq_calc_reliq_fnqt]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO







CREATE procedure [dbo].[spliq_calc_reliq_fnqt]
(@mes_proceso int, @ano_proceso int, @empresa_proceso int, @planta_proceso int,
 @tipo_proceso char(4), @mes_inicio int, @ano_inicio int, @mes_termino int,
 @ano_termino int, @sp_usuario char(15) )
as
declare 
@sp_incluye_mes_inicio char(1),@sp_incluye_mes_final  char(1),@sp_bitacora_reliq  char(1),
@sp_ind_finiquitados   char(1),@sp_calc_ult_contrato  char(1),@nro_dias_enfermo int,
@sp_consolida_empresa  char(1),@sp_ajuste_sencillo    char(1),@nro_dias_asistidos int,
@sp_indic_genera_haber char(1),@sp_indic_genera_dscto char(1),@nro_dias_vacacione int,
@sp_sobregira_dsctos   char(1),@sp_ind_leyes_sociales char(1),@sp_ind_salud_pagada char(1),
@sp_ind_seg_desempleo  char(1),@sp_ind_impuesto       char(1),@dias_asistidos int,
@sp_ind_afp_mes        char(1),@sp_ind_cotiz_volunt   char(1),@nro_dias_ausente int,
@sp_ind_cotiz_apv      char(1),@sp_ind_dscto_retenci  char(1),
@sp_ind_dscto_cta_cte  char(1),@sp_prop_dist_haber    char(1),
@sp_dist_haber_meses   char(1),@sp_prop_total_dias    char(1),
@sp_prop_haber_mes     char(1),@sp_prop_lic_medica    char(1),
@sp_prop_feriados      char(1),@sp_prop_ausencias     char(1),
@sp_aporte_empresa     char(1),@sp_periodo_utm        char(1),
@sp_incluye_hist_difer char(1),@flg_tope_salud        char(1),
@sp_cod_haber_sobreg   int,@sp_cod_dscto_sobreg   int,
@sp_mes_base           int,@sp_ano_base           int,
@sp_mes_registro       int,@sp_ano_registro       int,
@sp_fec_apli_dscto     datetime,
@sp_cod_proceso_sobreg char(4),
@sp_str_aportes        char(200),
@sp_str_proc_diferenci char(200)
declare
@cod_instit_previsi int, @cod_instit_salud int,@caja_comp_antigua int,
@cod_instit_previsi_act int, @cod_instit_salud_act int,@caja_comp_antigua_act int,
@mto_antig_previsio numeric(38,10),@mto_antig_previsio_reliq numeric(38,10),@pje_cotzado_caja decimal(13,4),
@val_leyes_sociales numeric(38,10),@val_leyes_sociales_reliq numeric(38,10),@afecto_impto numeric(38,10),
@asignacion_zona numeric(38,10),@asignacion_zona_reliq numeric(38,10),@monto_cancel_impto numeric(38,10),
@aporte_patron_mutu int,@aporte_patron_mutu_reliq int, @tot_tributable numeric(38,10),@total_imponi_ley numeric(38,10),@afecto_cotizacion numeric(38,10),
@afecto_impto_corr numeric(38,10),@monto_seguro_des numeric(38,10),@monto_impon_seguro numeric(38,10),
@mto_seg_cta_indidu numeric(38,10),@mto_seg_cta_fondos numeric(38,10),@monto_impto_corr numeric(38,10),
@mto_seg_cta_indidu_reliq numeric(38,10),@mto_seg_cta_fondos_reliq numeric(38,10),
@sp_afecto_impto_lq numeric(38,10),@asignacion_zona_lq numeric(38,10),@adicional_isapre_lq numeric(38,10),@sp_afecto_impto_otros numeric(38,10),
@asignacion_zona_otros numeric(38,10),@sp_afecto_impto numeric(38,10),@sp_impto_lq numeric(38,10),@sp_impto_otros numeric(38,10),
@valor_pactado_isap_lq numeric(38,10),@monto_salud_lq numeric(38,10),@mto_salud_legal_lq numeric(38,10),@mto_salud_real_lq numeric(38,10),
@tot_tributable_reliq numeric(38,10), @control_meses int,@meses_efectivos int,@meses_reales int,@meses_reliq int,
@b501 int,@b504 int,@b505 int,@b506 int,@b513 int 
declare 
@sp_nro_trabajador    int,@centro_costo         int,
@cod_sucursal_mes     int,@cod_sucursal int,@cod_tipo_trabajador char(2), @meses_proceso        int,
@mes_indice           int,@mes_reliq            int,
@ano_reliq            int,@dias_proceso         int,
@cod_haber_l          int,@cod_hab_aporte       int, @sp_nro_dias_licencia int,@tot_imponible_mes int,
@convenio             int,@cod_sindicato        int,@dsctos_legales_reliq numeric(38,10),
@cod_cargo            int,@nro_contr_vig	int,@cod_haber	int,
@sp_porc_trab_pesad   numeric(5,2),@cod_tipo_jornada int,
@valor_haber          numeric(38,10),@valor_aporte numeric(38,10), @valor_exento numeric(38,10), @valor_mes            numeric(38,10),
@valor_mes_corr       numeric(38,10),@valor_prop_mes numeric(38,10),
@valor_mes_tribut     numeric(28,10),@valor_ultimo_mes     numeric(38,10),@valor_descuento numeric(38,10),
@hab_no_imp_no_trib   numeric(38,10),@tot_desc_cta_cte	   numeric(38,10),
@ret_judic_resconta   numeric(38,10),@tot_dctos_no_legal   numeric(38,10),
@tot_dctos_legales    numeric(38,10),@val_liquido_pago     numeric(38,10),
@sobregiros_mes       numeric(38,10),@tot_impon_sin_tope   numeric(38,10),
@tot_imponible        numeric(38,10),@mto_cancela_previs   numeric(38,10),@mto_cancela_previs_reliq numeric(38,10),
@monto_salud          numeric(38,10),@mto_salud_legal      numeric(38,10),
@monto_salud_reliq    numeric(38,10),@tope_salud_mes       numeric(28,10),
@valor_pactado_isap   numeric(38,10),@val_volunt_isapre    numeric(38,10),
@mto_pagado_ccaf      numeric(38,10),@mto_pagado_ccaf_reliq numeric(38,10),@aporte_patron_ccaf   numeric(38,10),
@pagado_ccaf_lq       numeric(38,10),@pagado_ccaf_total    numeric(38,10),
@aporte_patronal_1    numeric(38,10),@aporte_patronal_2    numeric(38,10),
@saldo_cta_cte        numeric(38,10),@val_total_desctos    numeric(38,10),
@valor_desahucio      numeric(38,10),@pje_desahucio        numeric(38,10),
@tot_imp_no_prop      numeric(38,10),@mto_tope60_dfl44     numeric(38,10),
@mto_dfl44            numeric(38,10),
@adicional_isapre     numeric(38,10),@pje_cotiz_previs     decimal(5,2),
@pje_cotiz_salud      decimal(5,2),@tot_impto_reliq        numeric(38,10),
@impto_voluntario     numeric(38,10),@mto_salud_real       numeric(38,10),
@aporte_convenido     numeric(38,10),@cod_unidad_adminis   int,
@monto_ahorro_prev    numeric(38,10),@mto_trab_tr_pesado   numeric(38,10),
@mto_apor_tr_pesado   numeric(38,10),@porc_apl_tr_pesado   decimal(5,2),
@cod_afp_afc          int,@mto_imp_aporte_afc              numeric(38,10),
@mto_imp_aporte_afc_reliq  numeric(38,10),
@monto_seg_des        decimal(38,10),@valor_total_habere numeric(38,10),
@valor_haber_reliq    numeric(38,10),@valor_utm_proceso    decimal(13,4),
@valor_utm_mes        decimal(13,4),
@sp_dv_trabajador     char(1),@sp_apli_seguro_des   char(1),
@cod_tipo_contra      char(1),@sp_cod_forma_pago    char(1),@cod_forma_pago char(1),
@sp_apl_trab_pesado   char(1),@condic_previsional   char(1),
@sp_flg_difer_tope    char(1),@sp_flg_revisa_hist   char(1),
@dif_seguro           int,@codigo_tipo_contra   char(1),
@aplica_seguro_des    char(1),
@cod_tipo_trabajador_mes      char(2),
@cod_escala_sueldo    char(4),
@sp_fec_ini_contrat   datetime,@sp_fec_fin_contr_v   datetime,
@sp_fec_ini_contrat_i datetime,@sp_fec_fin_contr_v_i datetime,
@sp_fec_ini_seguro    datetime,@sp_fec_mod_tip_con   datetime,
@sp_fec_nacimiento    datetime,@fec_aplicacion       datetime,
@fec_ini_seguro_des   datetime,@fec_inicio           datetime,
@fec_final            datetime,@fec_mod_tipo_contr   datetime
declare @mto_cancela_previs_l numeric(38,10)
declare @dscto_reliquida int


declare
@max_afecto_cotiz       numeric(38,10),@afecto_cotiza_reliq    numeric(38,10),@afecto_cotizacion_lq numeric(38,10),
@max_imponi_ley         numeric(38,10),@imponi_ley_reliq       numeric(38,10),@afecto_cotiza_total numeric(38,10),
@max_impon_seguro       numeric(38,10),@impon_seguro_reliq     numeric(38,10),@salud_legal_total numeric(38,10),
@max_afec_afp_res       numeric(38,10),@max_impon_inp_res      numeric(38,10),@max_afec_afp_res_act numeric(38,10),
@max_afec_afc_res       numeric(38,10),@max_salud_pagada_res   numeric(38,10),
@seguro_des_reliq       numeric(38,10),@mto_prevision_reliq    numeric(38,10),
@mto_salud_legal_reliq  numeric(38,10),@salud_voluntaria_reliq numeric(38,10),
@salud_adicional_reliq  numeric(38,10),@sp_afecto_impto_reliq  numeric(38,10),
@sp_afecto_impto_total  numeric(38,10),@mto_aportesis_reliq    numeric(28,10),
@sp_impto_reliq         numeric(38,10),@sp_impto_reliq_act     numeric(38,10),
@sp_impto_reliq_act_tot numeric(38,10),@mto_aporte_sis_reliq   numeric(28,10),@mto_aporte_sis numeric(28,10),
@flg_aporte_sis char(1),@cod_haber_sis int,
@monto_ahorro_prev_reliq numeric(38,10),@monto_ahorro_prev_reliq_corr numeric(38,10),
@valor_apv numeric(38,10),@valor_apv_reliq numeric(38,10), @valor_apv_mes numeric(38,10),
@valor_apv_ultimo_mes numeric(38,10),@valor_apv_mes_corr numeric(38,10),@valor_uf_mes decimal(12,2),
@val_liquido_pago_reliq numeric(38,10),@ano_proceso_i int, @mes_proceso_i int,
@periodo_inicio int, @periodo_termino int, @periodo_reliq int, @periodo_indice int,
@bSinMesInicio int, @bSinMesTermino int, @valor_anticipo int,
@sp_aporte_cta_ind int, @sp_aporte_cta_fon int,
@str_select varchar(8000),@condic_previs_act char(1)
declare @porc_mutual_base decimal(7,4), @porc_mutual_adic decimal(7,4)
declare @sp_aporte numeric(28,10), @sp_aporte_adic numeric(28,10),
@sp_aporte_mutu_base numeric(28,10), @sp_aporte_mutu_adic  numeric(28,10),
@cod_mutu_base int, @cod_mutu_adic int
declare @no_redondea_llss char(1)
declare @str_update varchar(8000)
declare @acum_historico char(18)
select @max_afec_afp_res     = 0
select @max_impon_inp_res    = 0
select @max_afec_afc_res     = 0
select @max_salud_pagada_res = 0
select @sp_aporte_cta_ind    = 0
select @sp_aporte_cta_fon    = 0
select @sp_nro_dias_licencia = 0
select @saldo_cta_cte        = 0
select @tot_desc_cta_cte     = 0
select @valor_anticipo       = 0

print @sp_nro_dias_licencia


select @sp_aporte_cta_ind = cod_haber
from haber
where
cod_empresa        = @empresa_proceso and
cod_planta         = @planta_proceso and
tipo_hab_contabili = 'F' and
prioridad          = 1

if @sp_aporte_cta_ind is null select @sp_aporte_cta_ind = 0
select @sp_aporte_cta_fon = cod_haber
from haber
where
cod_empresa        = @empresa_proceso and
cod_planta         = @planta_proceso and
tipo_hab_contabili = 'F' and
prioridad          = 2
if @sp_aporte_cta_fon is null select @sp_aporte_cta_fon = 0

select  @fec_inicio = fec_ini_info_perio,@fec_final =fec_fin_info_perio
from control_procesos
Where   cod_empresa =  @empresa_proceso and
        cod_planta = @planta_proceso    and
        cod_mes_proceso = @mes_proceso  and
        ano_proc_cont_proc = @ano_proceso

select @cod_mutu_base = cod_haber_base, 
       @cod_mutu_adic = cod_haber_adic
from planta
where
cod_empresa = @empresa_proceso and
cod_planta  = @planta_proceso
if @cod_mutu_base is null select @cod_mutu_base = 0
if @cod_mutu_adic is null select @cod_mutu_adic = 0

--seleccion parametros de reliquidacion
select 
@sp_prop_dist_haber    = prop_dist_haber,
@sp_dist_haber_meses   = dist_haber_meses,
@sp_prop_total_dias    = prop_total_dias,
@sp_prop_haber_mes     = prop_haber_mes,
@sp_incluye_mes_inicio = incluye_mes_inicio,
@sp_incluye_mes_final  = incluye_mes_final,
@sp_calc_ult_contrato  = calc_ult_contrato,
@sp_ind_finiquitados   = ind_finiquitados,
@sp_indic_genera_dscto = indic_genera_dscto,
@sp_cod_dscto_sobreg   = cod_dscto_sobreg,
@sp_cod_proceso_sobreg = cod_proceso_sobreg,
@sp_ind_impuesto       = ind_impuesto,
@sp_ind_leyes_sociales = ind_leyes_sociales,
@sp_ind_salud_pagada   = ind_salud_pagada,
@sp_ind_dscto_retenci  = ind_dscto_retenci,
@sp_ind_dscto_cta_cte  = ind_dscto_cta_cte,
@sp_indic_genera_haber = indic_genera_haber,
@sp_cod_haber_sobreg   = cod_haber_sobreg,
@sp_incluye_hist_difer = incluye_hist_difer,
@sp_aporte_empresa     = aporte_empresa,
@sp_str_proc_diferenci = str_proc_diferenci,
@sp_str_aportes        = str_aportes,
@sp_consolida_empresa  = consolida_empresa,
@sp_ind_afp_mes        = ind_afp_mes,
@sp_fec_apli_dscto     = fec_apli_dscto,
@sp_sobregira_dsctos   = sobregira_dsctos,
@sp_ano_registro       = ano_registro,
@sp_mes_registro       = mes_registro,
@sp_ano_base           = ano_base,
@sp_mes_base           = mes_base,
@sp_ajuste_sencillo    = ajuste_sencillo,
@sp_periodo_utm        = periodo_utm,
@sp_prop_lic_medica    = prop_lic_medica,
@sp_prop_feriados      = prop_feriados,
@sp_prop_ausencias     = prop_ausencias,
@sp_ind_seg_desempleo  = ind_seg_desempleo,
@flg_tope_salud        = flg_tope_salud,
@sp_bitacora_reliq     = flg_bitacora,
@no_redondea_llss      = no_redondeo_llss
from param_reliquida
where
cod_empresa      = @empresa_proceso and
cod_planta       = @planta_proceso and
ano_periodo      = @ano_proceso and
mes_periodo      = @mes_proceso and
cod_tipo_proceso = @tipo_proceso
if @no_redondea_llss is null or @no_redondea_llss = ' '
  select @no_redondea_llss = 'N'
if @flg_tope_salud is null or @flg_tope_salud = ' '
  select @flg_tope_salud = 'N'
if @sp_ind_impuesto is null or @sp_ind_impuesto = ' '
  select @sp_ind_impuesto = 'N'
if @sp_ind_leyes_sociales is null or @sp_ind_leyes_sociales = ' '
  select @sp_ind_leyes_sociales = 'N'
if @sp_ind_salud_pagada is null or @sp_ind_salud_pagada = ' '
  select @sp_ind_salud_pagada = 'N'
if @sp_ind_dscto_cta_cte is null or @sp_ind_dscto_cta_cte = ' '
  select @sp_ind_dscto_cta_cte = 'N'
if @sp_ind_seg_desempleo is null or @sp_ind_seg_desempleo = ' '
  select @sp_ind_seg_desempleo = 'N'
if @sp_bitacora_reliq is null or @sp_bitacora_reliq = ' ' or @sp_bitacora_reliq = ''
  select @sp_bitacora_reliq = 'N'
if @sp_prop_haber_mes is null or @sp_prop_haber_mes = ' ' or @sp_prop_haber_mes = ''
  select @sp_prop_haber_mes = 'N'
if @sp_prop_lic_medica is null or @sp_prop_lic_medica = ' ' or @sp_prop_lic_medica = ''
  select @sp_prop_lic_medica = 'N'
if @sp_prop_feriados is null or @sp_prop_feriados = ' ' or @sp_prop_feriados = ''
  select @sp_prop_feriados = 'N'
if @sp_prop_ausencias is null or @sp_prop_ausencias = ' ' or @sp_prop_ausencias = ''
  select @sp_prop_ausencias = 'N'
if @sp_consolida_empresa is null or @sp_consolida_empresa = ' ' or @sp_consolida_empresa = ''
  select @sp_consolida_empresa = 'N'

create table #max_afecto_cotiz (valor numeric(28,10) null)
create table #max_imponi_ley (valor numeric(28,10) null)
create table #max_impon_seguro (valor numeric(28,10) null)
create table #impto_pagado(afecto numeric(28,10) null,impuesto numeric(28,10) null,asignacion_zona numeric(28,10) null)
create table #salud_pagada(monto_salud numeric(28,10) null)
if @sp_str_proc_diferenci is not null and rtrim(ltrim(@sp_str_proc_diferenci)) != ' '
  select @sp_str_proc_diferenci = ' (''' + replace(@sp_str_proc_diferenci,'-',''',''') + ''') '

select @fec_aplicacion = fec_fin_info_perio
from control_procesos
where
cod_empresa        = @empresa_proceso and
cod_planta         = @planta_proceso and
ano_proc_cont_proc = @sp_ano_base and
cod_mes_proceso    = @sp_mes_base

if @sp_ind_finiquitados = 'S'
  declare lectura_personal cursor for
  select nro_trabajador,dv_trabajador,nro_contrato_vigen
  from personal
  where
  cod_empresa        = @empresa_proceso AND
  cod_planta         = @planta_proceso AND
  indic_liq_individu = 'R' and
  ( datepart(yy,fec_fin_contr_vige) * 100 + datepart(mm,fec_fin_contr_vige) <= @sp_ano_base * 100 + @sp_mes_base or
   (fec_fin_contr_vige is null and cod_vigen_trabajad='N') or 
    cod_vigen_trabajad = 'S' )
  order by ape_paterno_trabaj, ape_materno_trabaj, nombre
  for read only
else
declare lectura_personal cursor for
  select nro_trabajador,dv_trabajador,nro_contrato_vigen
  from personal
  where
  cod_empresa        = @empresa_proceso AND
  cod_planta         = @planta_proceso AND
  indic_liq_individu = 'R' and
  cod_vigen_trabajad = 'S'
  order by ape_paterno_trabaj, ape_materno_trabaj, nombre
  for read only

open lectura_personal
fetch lectura_personal into
      @sp_nro_trabajador,@sp_dv_trabajador,@nro_contr_vig
while @@FETCH_STATUS = 0
  begin       
    select @aporte_patron_mutu       = 0
    select @aporte_patron_mutu_reliq = 0
    select @sp_impto_reliq_act_tot = 0
    select @mto_imp_aporte_afc     = 0
    select @valor_total_habere     = 0
    select @tot_impon_sin_tope     = 0
    select @hab_no_imp_no_trib     = 0
    select @tot_tributable         = 0
    select @afecto_impto           = 0
    select @mto_cancela_previs     = 0
    select @mto_cancela_previs_l   = 0
    select @mto_aporte_sis         = 0
    select @mto_antig_previsio     = 0
    select @val_leyes_sociales     = 0
    select @val_total_desctos      = 0
    select @val_liquido_pago       = 0
    select @tot_dctos_legales      = 0
    select @tot_dctos_no_legal     = 0
    select @tot_desc_cta_cte       = 0
    select @valor_anticipo         = 0
    select @monto_cancel_impto     = 0
    select @asignacion_zona        = 0   
    select @sobregiros_mes         = 0  
    select @val_liquido_pago       = 0
    select @monto_salud            = 0
    select @mto_salud_legal        = 0
    select @mto_pagado_ccaf        = 0
    select @monto_seguro_des       = 0
    select @afecto_cotizacion      = 0
    select @total_imponi_ley       = 0   
    select @afecto_cotizacion      = 0   
    select @mto_seg_cta_indidu     = 0
    select @mto_seg_cta_fondos     = 0    
    select @monto_impon_seguro     = 0
    select @cod_afp_afc            = 0
    select @aporte_convenido       = 0

    --personal actual
    select @codigo_tipo_contra      = codigo_tipo_contra,
           @fec_mod_tipo_contr      = fec_mod_tipo_contr,
           @aplica_seguro_des       = aplica_seguro_des,
           @fec_ini_seguro_des      = fec_ini_seguro_des,
           @sp_fec_ini_contrat      = fec_ini_contrato,
           @sp_fec_fin_contr_v      = fec_fin_contr_vige,
           @centro_costo            = cod_centro_costo,
           @cod_sucursal            = cod_sucursal,
           @cod_tipo_trabajador     = cod_tipo_trabajado,
           @convenio                = convenio,
           @cod_escala_sueldo       = cod_escala_sueldo,
           @cod_sindicato           = cod_sindicato,
           @cod_cargo               = cod_cargo,
           @cod_instit_previsi_act  = cod_afp,
           @cod_instit_salud_act    = cod_isapre,
           @caja_comp_antigua_act   = cod_caja_prevision,
           @nro_contr_vig           = nro_contrato_vigen,
           @cod_unidad_adminis      = cod_unidad_adminis,
           @cod_forma_pago          = cod_forma_pago,
           @condic_previs_act       = condic_previsional,
           @cod_afp_afc             = cod_afp_afc
    from personal
    where
    cod_empresa      = @empresa_proceso   and
    cod_planta       = @planta_proceso    and
    nro_trabajador   = @sp_nro_trabajador and
    dv_trabajador    = @sp_dv_trabajador
    if @cod_instit_previsi_act > 0 and @cod_instit_previsi_act != 900 and  
       @cod_instit_previsi_act != 888
      select @cod_afp_afc = @cod_instit_previsi_act
    --determinacion de periodo de reliquidacion - meses proceso
    if @ano_inicio = @ano_termino
      select @meses_proceso = @mes_termino - @mes_inicio + 1
    else
      select @meses_proceso = 12 * @ano_termino - 12 * @ano_inicio + @mes_termino - @mes_inicio + 1 
    select @meses_reliq = @meses_proceso
    select @periodo_inicio  = @ano_inicio  * 100 + @mes_inicio
    select @periodo_termino = @ano_termino * 100 + @mes_termino 
    --meses efectivos
    select @meses_efectivos = 0
    select @bSinMesInicio  = 0
    select @bSinMesTermino = 0
    if datepart(yy,@sp_fec_ini_contrat) * 100 + datepart(mm,@sp_fec_ini_contrat) >= (@ano_inicio  * 100 + @mes_inicio) and
       datepart(yy,@sp_fec_ini_contrat) * 100 + datepart(mm,@sp_fec_ini_contrat) <= (@ano_termino * 100 + @mes_termino)
       if @sp_incluye_mes_inicio = 'N' or @sp_incluye_mes_inicio is null
        select bSinMesInicio = 1
    if datepart(yy,@sp_fec_fin_contr_v) * 100 + datepart(mm,@sp_fec_fin_contr_v) >= (@ano_inicio  * 100 + @mes_inicio) and
       datepart(yy,@sp_fec_fin_contr_v) * 100 + datepart(mm,@sp_fec_fin_contr_v) <= (@ano_termino * 100 + @mes_termino)
      if @sp_incluye_mes_final = 'N' or @sp_incluye_mes_final is null
        begin
          if datepart(yy,@sp_fec_fin_contr_v) = datepart(yy,@sp_fec_ini_contrat) and 
             datepart(mm,@sp_fec_fin_contr_v) = datepart(mm,@sp_fec_ini_contrat)
            if @bSinMesInicio = 0
              select @bSinMesTermino = 1
          else
            select @bSinMesTermino = 1
        end
    if @sp_consolida_empresa = 'N'
      select @meses_efectivos = count(*)
      from historico_liquidac
      where
      cod_empresa                      = @empresa_proceso                    and
      cod_planta                       = @planta_proceso                     and
      cod_tipo_proceso                 = 'LQ'                                and
      ano_periodo * 100 + mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
      ano_periodo * 100 + mes_periodo <= (@ano_termino * 100 + @mes_termino) and
      nro_trabajador                   = @sp_nro_trabajador                  and
      dv_trabajador                    = @sp_dv_trabajador                   and
      fec_ini_contr_vige               = @sp_fec_ini_contrat
    else
      select @meses_efectivos = count(distinct mes_periodo)
      from historico_liquidac
      where
      cod_empresa                      = @empresa_proceso                    and
      cod_tipo_proceso                 = 'LQ'                                and
      ano_periodo * 100 + mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
      ano_periodo * 100 + mes_periodo <= (@ano_termino * 100 + @mes_termino) and
      nro_trabajador                   = @sp_nro_trabajador                  and
      dv_trabajador                    = @sp_dv_trabajador                   and
      fec_ini_contr_vige               = @sp_fec_ini_contrat
    if @meses_efectivos is null select @meses_efectivos = 0
    select @meses_reales = @meses_efectivos
    if @meses_efectivos < @meses_proceso
      begin
        if @sp_consolida_empresa = 'N'
          select top 1 @mes_proceso_i = mes_periodo, @ano_proceso_i = ano_periodo
          from historico_liquidac
          where
          cod_empresa                      = @empresa_proceso                    and
          cod_planta                       = @planta_proceso                     and
          cod_tipo_proceso                 = 'LQ'                                and
          ano_periodo * 100 + mes_periodo <= (@ano_termino  * 100 + @mes_termino)  and
          nro_trabajador                   = @sp_nro_trabajador                  and
          dv_trabajador                    = @sp_dv_trabajador                   and
          fec_ini_contr_vige               = @sp_fec_ini_contrat
          order by (ano_periodo * 100 + mes_periodo ) desc
        else 
          select top 1 @mes_proceso_i = mes_periodo, @ano_proceso_i = ano_periodo
          from historico_liquidac
          where
          cod_empresa                      = @empresa_proceso                    and
          cod_tipo_proceso                 = 'LQ'                                and
          ano_periodo * 100 + mes_periodo <= (@ano_termino  * 100 + @mes_termino)  and
          nro_trabajador                   = @sp_nro_trabajador                  and
          dv_trabajador                    = @sp_dv_trabajador                   and
          fec_ini_contr_vige               = @sp_fec_ini_contrat
          order by (ano_periodo * 100 + mes_periodo ) desc
        
        select @periodo_termino = @ano_proceso_i * 100 + @mes_proceso_i 
         
        if @sp_consolida_empresa = 'N'
          select top 1 @mes_proceso_i = mes_periodo, @ano_proceso_i = ano_periodo
          from historico_liquidac
          where
          cod_empresa                      = @empresa_proceso                    and
          cod_planta                       = @planta_proceso                     and
          cod_tipo_proceso                 = 'LQ'                                and
          ano_periodo * 100 + mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
          nro_trabajador                   = @sp_nro_trabajador                  and
          dv_trabajador                    = @sp_dv_trabajador                   and
          fec_ini_contr_vige               = @sp_fec_ini_contrat
          order by ano_periodo * 100 + mes_periodo 
        else
          select top 1 @mes_proceso_i = mes_periodo, @ano_proceso_i = ano_periodo
          from historico_liquidac
          where
          cod_empresa                      = @empresa_proceso                    and
          cod_tipo_proceso                 = 'LQ'                                and
          ano_periodo * 100 + mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
          nro_trabajador                   = @sp_nro_trabajador                  and
          dv_trabajador                    = @sp_dv_trabajador                   and
          fec_ini_contr_vige               = @sp_fec_ini_contrat
          order by ano_periodo * 100 + mes_periodo 
        
        select @meses_proceso = @meses_efectivos

        if @bSinMesInicio = 1
          begin
            select @meses_proceso = @meses_proceso - 1
            if @mes_proceso_i = 12
              begin
                select @mes_proceso_i = 1
                select @ano_proceso_i = @ano_proceso_i + 1
              end
            else
              select @mes_proceso_i = @mes_proceso_i + 1
          end
        if @bSinMesTermino = 1
          begin
            select @meses_proceso = @meses_proceso - 1
            if @mes_termino = 1
              begin
                select @mes_termino = 12
                select @ano_termino = @ano_termino - 1
              end
            else
              select @mes_termino = @mes_termino -1
          end      
        
        select @mes_indice    = @mes_proceso_i 
        
        select @mes_reliq     = @mes_proceso_i 
        select @ano_reliq     = @ano_proceso_i 
        
        select @periodo_reliq  = @ano_reliq     * 100 + @mes_reliq
        select @periodo_indice = @ano_proceso_i * 100 + @mes_proceso_i
      end
    else
      begin
        if @bSinMesInicio = 1
          begin
            select @meses_proceso = @meses_proceso - 1
            if @mes_proceso_i = 12
              begin
                select @mes_proceso_i = 1
                select @ano_proceso_i = @ano_proceso_i + 1
              end
            else
              select @mes_proceso_i = @mes_proceso_i + 1
           end
        if @bSinMesTermino = 1
          begin
            select @meses_proceso = @meses_proceso - 1
            if @mes_termino = 1
              begin
                select @mes_termino = 12
                select @ano_termino = @ano_termino - 1
              end
            else
              select @mes_termino = @mes_termino -1
          end
        select @mes_indice     = 1
        select @mes_reliq      = @mes_inicio
        select @ano_reliq      = @ano_inicio
        select @periodo_reliq  = @ano_reliq * 100 + @mes_reliq
        select @periodo_indice = @ano_reliq * 100 + @mes_reliq
      end
    delete from hist_diferencias
    where 
    cod_empresa      = @empresa_proceso and
    cod_planta       = @planta_proceso and
    cod_tipo_proceso = @tipo_proceso and
    ano_proceso_liq  = @sp_ano_registro and
    mes_proceso_liq  = @sp_mes_registro and
    nro_trabajador   = @sp_nro_trabajador and
    dv_trabajador    = @sp_dv_trabajador
   -- delete from liquidacio_haberes
   -- where 
   -- cod_empresa      = @empresa_proceso and
   -- cod_planta       = @planta_proceso and
   -- cod_tipo_proceso = @tipo_proceso and
   -- ano_periodo      = @sp_ano_registro and
  --  mes_periodo      = @sp_mes_registro and
  --  nro_trabajador   = @sp_nro_trabajador and
   -- dv_trabajador    = @sp_dv_trabajador
  --  delete from liquida_descuentos
  --  where 
  --  cod_empresa      = @empresa_proceso and
 --   cod_planta       = @planta_proceso and
 --   cod_tipo_proceso = @tipo_proceso and
 --   ano_periodo      = @sp_ano_registro and
 --   mes_periodo      = @sp_mes_registro and
  --  nro_trabajador   = @sp_nro_trabajador and
 --   dv_trabajador    = @sp_dv_trabajador

 
    select @valor_haber = 0
    select @cod_haber   = 0
    select @valor_exento= 0
    if @sp_prop_dist_haber = 'N' and @meses_proceso > 0
      begin
        select @meses_reales = 0
        select @meses_reliq  = 0
      end
    exec spliq_haberes_reliq_fnqt @mes_proceso, @ano_proceso, @empresa_proceso,
         @planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador, @tipo_proceso,
         @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@sp_ano_registro,
         @sp_mes_registro,@sp_ano_base, @sp_mes_base, @meses_reales, @meses_reliq, @cod_haber output, 
         @valor_haber output, @valor_exento output, @cod_hab_aporte output, @valor_aporte output
    select @valor_apv = 0
    exec spliq_descuentos_apv_reliq @mes_proceso, @ano_proceso, @empresa_proceso,
         @planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador, @tipo_proceso,
         @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@sp_ano_registro,
         @sp_mes_registro,@sp_ano_base, @sp_mes_base, @valor_apv output  
    select @valor_haber = round(@valor_haber,0)
    select @valor_apv = round(@valor_apv,0)

    if @meses_proceso > 0
      select @valor_mes = round(@valor_haber / @meses_proceso,0)
    if @meses_proceso > 0
      select @valor_apv_mes = round(@valor_apv / @meses_proceso,0)
    
    select @valor_ultimo_mes     = @valor_haber - @valor_mes     * ( @meses_proceso - 1 )* 1.0
    select @valor_ultimo_mes     = round(@valor_ultimo_mes,0)
    select @valor_apv_ultimo_mes = @valor_apv   - @valor_apv_mes * ( @meses_proceso - 1 ) * 1.0
    select @valor_apv_ultimo_mes     = round(@valor_apv_ultimo_mes,0)   

    if @sp_periodo_utm = 'A' 
      select @valor_utm_proceso = val_moneda_unidad from valor_moneda
      where cod_unidad_cobro = 'UTM' and
      datepart(yy,fec_valor_moneda) = @ano_proceso and
      datepart(mm,fec_valor_moneda) = @mes_proceso
    else if @sp_periodo_utm = 'B' 
      select @valor_utm_proceso = val_moneda_unidad from valor_moneda
      where cod_unidad_cobro = 'UTM' and
      datepart(yy,fec_valor_moneda) = @sp_ano_base and
      datepart(mm,fec_valor_moneda) = @sp_mes_base
    else
      select @valor_utm_proceso = val_moneda_unidad from valor_moneda
      where cod_unidad_cobro = 'UTM' and
      datepart(yy,fec_valor_moneda) = @sp_ano_registro and
      datepart(mm,fec_valor_moneda) = @sp_mes_registro          
    
    select @hab_no_imp_no_trib = @hab_no_imp_no_trib + @valor_exento
    select @valor_total_habere = @valor_total_habere + @valor_exento
    select @control_meses = 0
    select @valor_prop_mes = 0
    select @sp_aporte_mutu_base = 0
    select @sp_aporte_mutu_adic = 0
    while @periodo_indice <= @periodo_termino and @valor_haber > 0
      begin
        --HERE
        --
        if @sp_consolida_empresa = 'N'
         begin
          if not exists(select cod_empresa from historico_liquidac 
                         where cod_empresa      = @empresa_proceso   and
                               cod_planta       = @planta_proceso    and
                               cod_tipo_proceso = 'LQ'               and
                               ano_periodo      = @ano_reliq         and
                               mes_periodo      = @mes_reliq         and
                               nro_trabajador   = @sp_nro_trabajador and
                               dv_trabajador    = @sp_dv_trabajador)
            begin
              if @mes_reliq = 12
                begin
                  select @mes_reliq = 1
                  select @ano_reliq = @ano_reliq + 1
                end
              else
                select @mes_reliq = @mes_reliq + 1
              select @mes_indice = @mes_indice + 1
              select @periodo_indice = @ano_reliq * 100 + @mes_reliq
              continue           
            end
         end
        else
         begin
          if not exists(select cod_empresa from historico_liquidac 
                         where cod_empresa      = @empresa_proceso   and
                               cod_tipo_proceso = 'LQ'               and
                               ano_periodo      = @ano_reliq         and
                               mes_periodo      = @mes_reliq         and
                               nro_trabajador   = @sp_nro_trabajador and
                               dv_trabajador    = @sp_dv_trabajador)
            begin
              if @mes_reliq = 12
                begin
                  select @mes_reliq = 1
                  select @ano_reliq = @ano_reliq + 1
                end
              else
                select @mes_reliq = @mes_reliq + 1
              select @mes_indice = @mes_indice + 1
              select @periodo_indice = @ano_reliq * 100 + @mes_reliq
              continue           
            end
         end
        select @control_meses = 1
        if @periodo_indice = @periodo_termino 
          begin
            select @valor_mes = @valor_ultimo_mes
            select @valor_apv_mes = @valor_apv_ultimo_mes
          end       
        
        select @valor_utm_mes = val_moneda_unidad from valor_moneda
        where cod_unidad_cobro = 'UTM' and
        datepart(yy,fec_valor_moneda) = @ano_reliq and
        datepart(mm,fec_valor_moneda) = @mes_reliq
        if @valor_utm_proceso > 0
          begin
            select @valor_mes_corr     = round((@valor_mes * @valor_utm_mes)/ @valor_utm_proceso, 0) 
            select @valor_apv_mes_corr = round((@valor_apv_mes * @valor_utm_mes)/ @valor_utm_proceso, 0) 
          end
        else
          begin
            select @valor_mes_corr     = round(@valor_mes, 0) 
            select @valor_apv_mes_corr = round(@valor_apv_mes, 0) 
          end
        
        --histórico de liquidación
         select @sp_afecto_impto_lq      = 0
         select @sp_impto_lq             = 0
         select @asignacion_zona_lq      = 0
        --
         select @max_afecto_cotiz        = 0
         select @max_imponi_ley          = 0
         select @max_impon_seguro        = 0
         select @cod_tipo_contra         = 0
         select @sp_fec_mod_tip_con      = 0
         select @sp_apli_seguro_des      = 0
         select @sp_fec_ini_seguro       = 0
         select @sp_fec_ini_contrat      = 0
         select @sp_fec_fin_contr_v      = 0
         select @centro_costo            = 0
         select @cod_sucursal_mes        = 0
         select @cod_tipo_trabajador_mes = 0
         select @convenio                = 0
         select @cod_escala_sueldo       = 0
         select @cod_sindicato           = 0
         select @cod_tipo_jornada        = 0
         select @cod_cargo               = 0
         select @tot_imponible_mes       = 0
         select @cod_instit_previsi      = 0
         select @cod_instit_salud        = 0
         select @caja_comp_antigua       = 0
         select @nro_contr_vig           = 0
         select @sp_afecto_impto_lq      = 0
         select @sp_impto_lq             = 0
         select @asignacion_zona_lq      = 0
         select @monto_salud_lq          = 0
         select @valor_pactado_isap_lq   = 0
         select @adicional_isapre_lq     = 0
         select @mto_salud_legal_lq      = 0
         select @mto_salud_real_lq       = 0
         select @afecto_cotizacion_lq    = 0
         select @pagado_ccaf_lq          = 0
         select @nro_dias_enfermo        = 0
         select @nro_dias_vacacione      = 0
         select @nro_dias_ausente        = 0
         select @dias_asistidos          = 0
         select @porc_mutual_base        = 0
         select @porc_mutual_adic        = 0
         select @aporte_patron_mutu_reliq = 0
        --
        if @sp_consolida_empresa = 'N'
          select @max_afecto_cotiz        = max_afecto_cotiz,
                 @max_imponi_ley          = max_imponi_ley,
                 @max_impon_seguro        = max_impon_seguro,
                 @cod_tipo_contra         = codigo_tipo_contra,
                 @sp_fec_mod_tip_con      = fec_mod_tipo_contr,
                 @sp_apli_seguro_des      = aplica_seguro_des,
                 @sp_fec_ini_seguro       = fec_ini_seguro_des,
                 @sp_fec_ini_contrat      = fec_ini_contr_vige,
                 @sp_fec_fin_contr_v      = fec_fin_contr,
                 @centro_costo            = cod_centro_costo,
                 @cod_sucursal_mes        = cod_sucursal,
                 @cod_tipo_trabajador_mes = cod_tipo_trabajado,
                 @convenio                = nro_convenio,
                 @cod_escala_sueldo       = cod_escala_sueldo,
                 @cod_sindicato           = cod_sindicato,
                 @cod_tipo_jornada        = cod_tipo_jornada,
                 @cod_cargo               = cod_cargo,
                 @tot_imponible_mes       = tot_imponible,
                 @cod_instit_previsi      = cod_instit_previsi,
                 @cod_instit_salud        = cod_instit_salud,
                 @caja_comp_antigua       = caja_comp_antigua,
                 @nro_contr_vig           = nro_contr_vig_proc,
                 @sp_afecto_impto_lq      = afecto_impto,
                 @sp_impto_lq             = monto_cancel_impto,
                 @asignacion_zona_lq      = asignacion_zona,
                 @monto_salud_lq          = monto_salud,
                 @valor_pactado_isap_lq   = valor_pactado_isap,
                 @adicional_isapre_lq     = adicional_isapre,
                 @mto_salud_legal_lq      = mto_salud_legal,
                 @mto_salud_real_lq       = mto_salud_real,
                 @afecto_cotizacion_lq    = afecto_cotizacion,
                 @pagado_ccaf_lq          = mto_pagado_ccaf,
                 @nro_dias_enfermo        = nro_dias_enfermo,
                 @nro_dias_vacacione      = nro_dias_vacacione,
                 @nro_dias_ausente        = nro_dias_ausente,
                 @dias_asistidos          = nro_dias_asistidos,
                 @porc_mutual_base        = por_mutual_base,
                 @porc_mutual_adic        = por_mutual_adic               
          from historico_liquidac
          where
          cod_empresa      = @empresa_proceso   and
          cod_planta       = @planta_proceso    and
          cod_tipo_proceso = 'LQ'               and
          ano_periodo      = @ano_reliq         and
          mes_periodo      = @mes_reliq         and
          nro_trabajador   = @sp_nro_trabajador and
          dv_trabajador    = @sp_dv_trabajador
        else
         begin
          select @max_afecto_cotiz        = max_afecto_cotiz,
                 @max_imponi_ley          = max_imponi_ley,
                 @max_impon_seguro        = max_impon_seguro,
                 @cod_tipo_contra         = codigo_tipo_contra,
                 @sp_fec_mod_tip_con      = fec_mod_tipo_contr,
                 @sp_apli_seguro_des      = aplica_seguro_des,
                 @sp_fec_ini_seguro       = fec_ini_seguro_des,
                 @sp_fec_ini_contrat      = fec_ini_contr_vige,
                 @sp_fec_fin_contr_v      = fec_fin_contr,
                 @centro_costo            = cod_centro_costo,
                 @cod_sucursal_mes        = cod_sucursal,
                 @cod_tipo_trabajador_mes = cod_tipo_trabajado,
                 @convenio                = nro_convenio,
                 @cod_escala_sueldo       = cod_escala_sueldo,
                 @cod_sindicato           = cod_sindicato,
                 @cod_tipo_jornada        = cod_tipo_jornada,
                 @cod_cargo               = cod_cargo,
                 @tot_imponible_mes       = tot_imponible,
                 @cod_instit_previsi      = cod_instit_previsi,
                 @cod_instit_salud        = cod_instit_salud,
                 @caja_comp_antigua       = caja_comp_antigua,
                 @nro_contr_vig           = nro_contr_vig_proc,
        --         @sp_afecto_impto_lq      = afecto_impto,
         --        @sp_impto_lq             = monto_cancel_impto,
          --       @asignacion_zona_lq      = asignacion_zona,
                 @monto_salud_lq          = monto_salud,
                 @valor_pactado_isap_lq   = valor_pactado_isap,
                 @adicional_isapre_lq     = adicional_isapre,
                 @mto_salud_legal_lq      = mto_salud_legal,
                 @mto_salud_real_lq       = mto_salud_real,
                 @afecto_cotizacion_lq    = afecto_cotizacion,
                 @pagado_ccaf_lq          = mto_pagado_ccaf,
                 @nro_dias_enfermo        = nro_dias_enfermo,
                 @nro_dias_vacacione      = nro_dias_vacacione,
                 @nro_dias_ausente        = nro_dias_ausente,
                 @dias_asistidos          = nro_dias_asistidos,
                 @porc_mutual_base        = por_mutual_base,
                 @porc_mutual_adic        = por_mutual_adic               
          from historico_liquidac
          where
          cod_empresa      = @empresa_proceso   and
          cod_tipo_proceso = 'LQ'               and
          ano_periodo      = @ano_reliq         and
          mes_periodo      = @mes_reliq         and
          nro_trabajador   = @sp_nro_trabajador and
          dv_trabajador    = @sp_dv_trabajador
          select 
                 @sp_afecto_impto_lq      = afecto_impto,
                 @sp_impto_lq             = monto_cancel_impto,
                 @asignacion_zona_lq      = asignacion_zona             
          from historico_liquidac
          where
          cod_empresa      = @empresa_proceso   and
          cod_planta       = @planta_proceso    and
          cod_tipo_proceso = 'LQ'               and
          ano_periodo      = @ano_reliq         and
          mes_periodo      = @mes_reliq         and
          nro_trabajador   = @sp_nro_trabajador and
          dv_trabajador    = @sp_dv_trabajador
         end
        if @porc_mutual_base is null select @porc_mutual_base = 0
        if @porc_mutual_adic is null select @porc_mutual_adic = 0
        
        select @valor_uf_mes = uf_mes from liquidacion
        where
        cod_empresa      = @empresa_proceso   and
        cod_planta       = @planta_proceso    and
        cod_tipo_proceso = 'LQ'               and
        ano_periodo      = @ano_reliq         and
        mes_periodo      = @mes_reliq         and
        nro_trabajador   = @sp_nro_trabajador and
        dv_trabajador    = @sp_dv_trabajador        
        --
        if @sp_prop_haber_mes = 'S'
          begin
            if @dias_asistidos > 30 select @dias_asistidos = 30
            if @sp_prop_lic_medica = 'S'
              select @dias_asistidos = @dias_asistidos + @nro_dias_enfermo
            if @sp_prop_feriados = 'S'
              select @dias_asistidos = @dias_asistidos + @nro_dias_vacacione
            if @sp_prop_ausencias = 'S'
              select @dias_asistidos = @dias_asistidos + @nro_dias_ausente
            select @valor_mes_corr = round(@dias_asistidos * ( @valor_mes_corr / 30 ),0) 
            select @valor_mes      = round(@dias_asistidos * ( @valor_mes      / 30 ),0)  
            select @valor_prop_mes = @valor_prop_mes + @valor_mes        
          end
        --        
        if @valor_uf_mes > 0
          if (@monto_ahorro_prev / @valor_uf_mes) + (@valor_apv_mes_corr / @valor_uf_mes) > 50
            begin
              select @valor_apv_mes_corr = 50 * @valor_uf_mes - @monto_ahorro_prev 
              if @valor_apv_mes_corr < 0 select @valor_apv_mes_corr = 0
              select @valor_apv_mes_corr = round(@valor_apv_mes_corr, 0 )
            end
        
        --
        select @dsctos_legales_reliq     = 0
        select @tot_imponible_mes        = 0
        select @mto_cancela_previs_reliq = 0
        select @mto_aporte_sis_reliq     = 0
        select @monto_salud_reliq        = 0
        select @mto_salud_legal_reliq    = 0
        select @salud_voluntaria_reliq   = 0
        select @mto_pagado_ccaf_reliq    = 0
        select @mto_antig_previsio_reliq = 0
        select @val_leyes_sociales_reliq = 0
        select @sp_afecto_impto_reliq    = 0
        select @asignacion_zona_reliq    = 0
        select @sp_impto_reliq           = 0
        select @tot_tributable_reliq     = 0
        select @imponi_ley_reliq         = 0
        select @afecto_impto_corr        = 0
        select @seguro_des_reliq         = 0
        select @mto_seg_cta_indidu_reliq = 0
        select @mto_seg_cta_fondos_reliq = 0
        select @impon_seguro_reliq       = 0
        select @sp_impto_reliq_act       = 0
        select @afecto_cotiza_reliq      = 0
        select @val_liquido_pago_reliq   = 0
        
        --
        select @tot_tributable_reliq     = @valor_mes_corr
        select @valor_haber_reliq        = 0        
                
        select @tot_tributable     = @tot_tributable     + @valor_mes
        select @tot_impon_sin_tope = @tot_impon_sin_tope + @valor_mes
        select @valor_total_habere = @valor_total_habere + @valor_mes
        select @valor_haber_reliq  = @valor_mes
        --maximos afectos en reliquidacion
        select @max_afec_afp_res = 0
        select @max_impon_inp_res = 0
        select @max_afec_afc_res = 0
        select @max_salud_pagada_res = 0
        select @sp_afecto_impto_otros = 0
        select @asignacion_zona_otros = 0
        select @sp_impto_otros = 0
        --
        select @max_afec_afp_res  = -1
        select @max_impon_inp_res = -1
        select @max_afec_afc_res  = -1
        --
        if @sp_incluye_hist_difer = 'S' and @sp_str_proc_diferenci is not null and
           ltrim(rtrim(@sp_str_proc_diferenci)) != ' '
          begin
            --AFP-ISAPRE            
            delete from #max_afecto_cotiz
            select @str_select = 'insert into #max_afecto_cotiz(valor) select min(max_afecto_cotiz) from hist_diferencias ' +
            ' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and cod_planta = ' + convert(char(10),@planta_proceso) + ' and
              ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq) + 
            ' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
            ' and cod_tipo_proceso in ' + @sp_str_proc_diferenci            
            exec (@str_select)
            select @max_afec_afp_res = valor from #max_afecto_cotiz
            --if @max_afec_afp_res is null select @max_afec_afp_res = 0
            --INP-FONASA
            delete from #max_imponi_ley
            select @str_select = 'insert into #max_imponi_ley(valor) select min(max_imponi_ley)  from hist_diferencias ' +
            ' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and cod_planta = ' + convert(char(10),@planta_proceso) + ' and
              ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq)  + 
            ' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
            ' and cod_tipo_proceso in ' + @sp_str_proc_diferenci            
            exec (@str_select)
            select @max_impon_inp_res = valor from #max_imponi_ley
            --if @max_impon_inp_res is null select @max_impon_inp_res = 0
            --AFC
            delete from #max_impon_seguro
            select @str_select = 'insert into #max_impon_seguro(valor) select min(max_impon_seguro) from hist_diferencias ' +
            ' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and cod_planta = ' + convert(char(10),@planta_proceso) + ' and
              ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq) +   
            ' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
            ' and cod_tipo_proceso in ' + @sp_str_proc_diferenci            
            exec (@str_select)
            select @max_afec_afc_res = valor from #max_impon_seguro
            --if @max_impon_inp_res is null select @max_impon_inp_res = 0
            --IMPUESTOS PAGADOS
            delete from #impto_pagado
            select @str_select = 'insert into #impto_pagado(afecto,impuesto,asignacion_zona) select sum(afecto_impto),sum(monto_cancel_impto),sum(asignacion_zona) from hist_diferencias ' +
            ' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and cod_planta = ' + convert(char(10),@planta_proceso) + ' and
              ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq)  + 
            ' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
            ' and cod_tipo_proceso in ' + @sp_str_proc_diferenci            
            exec (@str_select)
            select @sp_afecto_impto_otros = afecto,@sp_impto_otros=impuesto, @asignacion_zona_otros = asignacion_zona from #impto_pagado
            if @sp_afecto_impto_otros is null select @sp_afecto_impto_otros = 0
            if @sp_impto_otros is null select @sp_impto_otros = 0
            if @asignacion_zona_otros is null select @asignacion_zona_otros = 0   
            --SALUD PAGADA            
            delete from #salud_pagada
            select @str_select = 'insert into #salud_pagada(monto_salud) select sum(monto_salud) from hist_diferencias ' +
            ' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and cod_planta = ' + convert(char(10),@planta_proceso) + ' and
              ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq) + 
            ' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
            ' and cod_tipo_proceso in ' + @sp_str_proc_diferenci            
            exec (@str_select)
            select @max_salud_pagada_res = monto_salud from #salud_pagada
            if @max_salud_pagada_res is null select @max_salud_pagada_res = 0    
          end
        --
        --@afecto_cotiza_reliq: afecto cotizacion reliquidacion
        --@afecto_cotizacion_lq: afecto_cotizacion lq
        --@max_afec_afp_res: max afecto cotiz reliquidacion
        --@tot_imponible_mes: tope UF pesos del mes
        --afecto cotizacion total
        --
        --
        if @max_afec_afp_res  is null select @max_afec_afp_res  = -1
        if @max_impon_inp_res is null select @max_impon_inp_res = -1
        if @max_afec_afc_res  is null select @max_afec_afc_res  = -1
        
        if @max_afec_afp_res is null or @max_afec_afp_res < 0
          select @max_afec_afp_res_act = 0
        else
          select @max_afec_afp_res_act = @max_afec_afp_res
        if @max_afec_afp_res > 0
          begin
            if @max_afec_afp_res < @valor_mes_corr
              select @afecto_cotiza_reliq = @max_afec_afp_res
            else
              select @afecto_cotiza_reliq = @valor_mes_corr
            select @max_afec_afp_res = @max_afec_afp_res - @afecto_cotiza_reliq
            if @max_afec_afp_res is null or @max_afec_afp_res < 0
              select @max_afec_afp_res = 0
          end
        else if @max_afec_afp_res = -1
          begin
            if @max_afecto_cotiz < @valor_mes_corr
              select @afecto_cotiza_reliq = @max_afecto_cotiz
            else
              select @afecto_cotiza_reliq = @valor_mes_corr
            select @max_afec_afp_res = @max_afecto_cotiz - @afecto_cotiza_reliq
            if @max_afec_afp_res is null or @max_afec_afp_res < 0
              select @max_afec_afp_res = 0
          end
        else
          begin
            select @afecto_cotiza_reliq = 0
            select @max_afec_afp_res = 0
          end
        if @max_impon_inp_res > 0
          begin
            if @max_impon_inp_res < @valor_mes_corr
              select @imponi_ley_reliq = @max_impon_inp_res
            else
              select @imponi_ley_reliq = @valor_mes_corr
            select @max_impon_inp_res = @max_impon_inp_res - @imponi_ley_reliq
            if @max_impon_inp_res is null or @max_impon_inp_res < 0
              select @max_impon_inp_res = 0
          end
        else if @max_impon_inp_res = -1
          begin
            if @max_imponi_ley < @valor_mes_corr
              select @imponi_ley_reliq = @max_imponi_ley
            else
              select @imponi_ley_reliq = @valor_mes_corr
            select @max_impon_inp_res = @max_imponi_ley - @imponi_ley_reliq
            if @max_impon_inp_res is null or @max_impon_inp_res < 0
              select @max_impon_inp_res = 0
          end
        else
          begin
            select @imponi_ley_reliq = 0
            select @max_impon_inp_res = 0
          end
         
        if @max_afec_afc_res > 0
          begin
            if @max_afec_afc_res < @valor_mes_corr
              select @impon_seguro_reliq = @max_afec_afc_res
            else
              select @impon_seguro_reliq = @valor_mes_corr
            select @max_afec_afc_res = @max_afec_afc_res - @impon_seguro_reliq
            if @max_afec_afc_res is null or @max_afec_afc_res < 0
              select @max_afec_afc_res = 0
          end 
        else if @max_afec_afc_res = -1
          begin
            if @max_impon_seguro < @valor_mes_corr
              select @impon_seguro_reliq = @max_impon_seguro
            else
              select @impon_seguro_reliq = @valor_mes_corr
            select @max_afec_afc_res = @max_impon_seguro - @impon_seguro_reliq
            if @max_afec_afc_res is null or @max_afec_afc_res < 0
              select @max_afec_afc_res = 0
          end 
        else
          begin
            select @impon_seguro_reliq = 0
            select @max_afec_afc_res = 0
          end

        if @sp_ind_leyes_sociales = 'S'
          begin 
          --print '------------------------'
          --Print @sp_ind_leyes_sociales
          --print @sp_nro_dias_licencia
          --Print '------------------------'
          
            exec spliq_comp_llss_reliq @mes_reliq, @ano_reliq, @empresa_proceso, @planta_proceso,
                 @sp_nro_trabajador, @sp_dv_trabajador,@sp_ind_afp_mes,@sp_consolida_empresa,@afecto_cotiza_reliq,
                 @imponi_ley_reliq,@impon_seguro_reliq, @afecto_cotiza_reliq,@valor_desahucio output,
                 @mto_prevision_reliq output,@mto_salud_legal_reliq output,@mto_pagado_ccaf_reliq output,
                 @salud_voluntaria_reliq output,
                 @salud_adicional_reliq output,@seguro_des_reliq output, @mto_aportesis_reliq output ,@sp_nro_dias_licencia    
                    
            if @sp_ind_seg_desempleo = 'N' select @seguro_des_reliq = 0
            if @mto_aportesis_reliq is null select @mto_aportesis_reliq = 0
            if  @no_redondea_llss = 'N' or @no_redondea_llss = '' or @no_redondea_llss = ' '
              begin
                select @mto_prevision_reliq    = round(@mto_prevision_reliq, 0)
                select @mto_salud_legal_reliq  = round(@mto_salud_legal_reliq, 0)
                select @mto_pagado_ccaf_reliq  = round(@mto_pagado_ccaf_reliq, 0)
                select @salud_voluntaria_reliq = round(@salud_voluntaria_reliq, 0)
                select @salud_adicional_reliq  = round(@salud_adicional_reliq, 0)
                select @seguro_des_reliq       = round(@seguro_des_reliq, 0)
                select @mto_aportesis_reliq    = round(@mto_aportesis_reliq, 0)
              end
            if ( @cod_instit_previsi_act = 0 or 
                 @cod_instit_previsi_act = 888 or 
                 @cod_instit_previsi_act = 999 ) and ( @caja_comp_antigua_act = 0 or @caja_comp_antigua_act is null )
              select @mto_prevision_reliq = 0
            if @cod_instit_salud_act = 0
              begin
                select @mto_salud_legal_reliq = 0
                select @mto_pagado_ccaf_reliq = 0
                select @salud_voluntaria_reliq = 0
                select @salud_adicional_reliq = 0
              end
            if @aplica_seguro_des = 'N'
              select @seguro_des_reliq = 0
            --
            if @sp_ind_salud_pagada = 'S' and @cod_instit_salud_act > 1
              begin
                if @max_afec_afp_res_act > 0
                  select @afecto_cotiza_total = @afecto_cotiza_reliq + @tot_imponible_mes - @max_afec_afp_res
                else
                  select @afecto_cotiza_total = @afecto_cotizacion_lq + @afecto_cotiza_reliq
                select @pagado_ccaf_total = 0
                select @salud_legal_total = round(@afecto_cotiza_total * 0.07, 0)                
                if @monto_salud_lq > @salud_legal_total
                  begin
                    select @mto_salud_legal_reliq  = 0
                    select @mto_pagado_ccaf_reliq  = 0
                    select @salud_voluntaria_reliq = 0
                    select @salud_adicional_reliq  = 0
                  end
                else
                  begin                   
                    if @salud_legal_total - @monto_salud_lq < @mto_salud_legal_reliq
                      select @mto_salud_legal_reliq = @salud_legal_total - @monto_salud_lq
                    if @pagado_ccaf_total - @pagado_ccaf_lq < @mto_pagado_ccaf_reliq and @pagado_ccaf_total > 0
                      select @mto_pagado_ccaf_reliq = @pagado_ccaf_total - @pagado_ccaf_lq
                  end
              end
          end
        else
          begin
            select @mto_prevision_reliq = 0
            select @mto_salud_legal_reliq = 0
            select @mto_pagado_ccaf_reliq = 0
            select @salud_voluntaria_reliq = 0
            select @salud_adicional_reliq = 0
            select @seguro_des_reliq = 0
            select @mto_aportesis_reliq = 0
          end 
        select @tope_salud_mes = tope_salud_pesos
        from parametro
        where 
        cod_empresa = @empresa_proceso and
        cod_planta  = @planta_proceso  and
        ano         = @ano_reliq       and
        nro_mes     = @mes_reliq
        if @tope_salud_mes is null select @tope_salud_mes = 0
        --
        -- Verificación de pactados de isapre  
        --
        -- @max_salud_pagada_res : salud pagada en reliquidación
        -- @monto_salud_lq       : salud pagada en liquidación
        -- @tope_salud_mes       : tope de salud mes
        --
        --
        if @flg_tope_salud = 'S'
          begin
            if @monto_salud_lq + @max_salud_pagada_res + @mto_salud_legal_reliq > @tope_salud_mes
              select @mto_salud_legal_reliq = @tope_salud_mes - ( @monto_salud_lq + @max_salud_pagada_res )
            if @mto_salud_legal_reliq < 0 select @mto_salud_legal_reliq = 0
          end        
        --
        if @mto_prevision_reliq is null
          select @mto_prevision_reliq = 0
        if @mto_aportesis_reliq is null
          select @mto_aportesis_reliq = 0
        if @sp_ind_afp_mes = 'N'
          begin
            if @cod_instit_previsi_act > 0 and @cod_instit_salud_act > 1 
              begin
                select @mto_cancela_previs_reliq = @mto_prevision_reliq 
                select @mto_aporte_sis_reliq     = @mto_aportesis_reliq      
                select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq
                select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                select @monto_salud_reliq  = @mto_salud_legal_reliq
              end
            else if @cod_instit_previsi_act > 0 and @cod_instit_salud_act = 1
              begin    
                select @mto_cancela_previs_reliq = @mto_prevision_reliq
                select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                select @monto_salud_reliq  = @mto_salud_legal_reliq  
                select @mto_salud_legal_reliq = 0             
              end
            else if @caja_comp_antigua_act > 0 and @cod_instit_salud_act > 1   
              begin
                select @mto_antig_previsio_reliq = @mto_prevision_reliq
                select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq
                select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                select @monto_salud_reliq  = @mto_salud_legal_reliq
              end
            else if @caja_comp_antigua_act > 0 and @cod_instit_salud_act = 1 
              begin   
                select @mto_antig_previsio_reliq = @mto_prevision_reliq
                select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                select @monto_salud_reliq  = @mto_salud_legal_reliq
                select @mto_salud_legal_reliq = 0
              end
            else if @caja_comp_antigua_act > 0 and @cod_instit_salud_act = 0 
              begin   
                select @mto_antig_previsio_reliq = @mto_prevision_reliq
                select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                select @monto_salud        = 0
                select @monto_salud_reliq  = 0
                select @mto_pagado_ccaf_reliq = 0
                select @mto_salud_legal_reliq = 0
              end
            else if @caja_comp_antigua_act = 0 and @cod_instit_salud_act = 1 
              begin   
                select @mto_antig_previsio_reliq = @mto_prevision_reliq
                select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                select @monto_salud_reliq  = @mto_salud_legal_reliq
                select @mto_salud_legal_reliq = 0
              end
            else if @caja_comp_antigua_act = 0 and @cod_instit_salud_act > 1 
              begin   
                select @mto_antig_previsio_reliq = @mto_prevision_reliq
                select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                select @monto_salud_reliq  = @mto_salud_legal_reliq
                select @mto_salud_legal_reliq = 0
              end
          end
        else
          begin
            if @cod_instit_previsi > 0 and @cod_instit_salud > 1 
              if @cod_instit_salud_act = 1 
                begin
                  select @mto_cancela_previs_reliq = @mto_prevision_reliq
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                  select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                  select @monto_salud_reliq  = @mto_salud_legal_reliq
                  select @mto_salud_legal_reliq = 0
                end
              else
                begin
                  select @mto_cancela_previs_reliq = @mto_prevision_reliq
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                  select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq
                  select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                  select @monto_salud_reliq  = @mto_salud_legal_reliq
                end
            else if @cod_instit_previsi > 0 and @cod_instit_salud = 1   
              begin 
                select @mto_cancela_previs_reliq = @mto_prevision_reliq
                select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                if @cod_instit_salud_act > 1
                  begin
                    select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                    select @monto_salud        = @monto_salud        + @mto_pagado_ccaf_reliq
                    select @monto_salud_reliq  = @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                    select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                    select @mto_pagado_ccaf_reliq = 0
                    select @mto_salud_legal_reliq = @monto_salud_reliq
                  end
                else
                  begin
                    select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                    select @monto_salud_reliq  = @mto_salud_legal_reliq
                    select @mto_salud_legal_reliq = 0
                  end
              end
            else if @caja_comp_antigua > 0 and @cod_instit_salud > 1  
                   if @cod_instit_salud_act = 1 
                     begin
                       select @mto_antig_previsio_reliq = @mto_prevision_reliq
                       select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                       select @monto_salud_reliq  = @mto_salud_legal_reliq
                       select @mto_salud_legal_reliq = 0
                     end
                   else
                     begin
                       select @mto_antig_previsio_reliq = @mto_prevision_reliq
                       select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq
                       select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                       select @monto_salud_reliq  = @mto_salud_legal_reliq
                     end
            else if @caja_comp_antigua > 0 and @cod_instit_salud = 1 
              begin 
                select @mto_antig_previsio_reliq = @mto_prevision_reliq 
                if @cod_instit_salud_act > 1
                  begin
                    select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                    select @monto_salud        = @monto_salud        + @mto_pagado_ccaf_reliq
                    select @monto_salud_reliq  = @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                    select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                    select @mto_pagado_ccaf_reliq = 0
                    select @mto_salud_legal_reliq = @monto_salud_reliq
                  end
                else
                  begin
                    select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                    select @monto_salud_reliq  = @mto_salud_legal_reliq
                    select @mto_salud_legal_reliq = 0
                  end
              end      
            else if @caja_comp_antigua > 0 and @cod_instit_salud = 0 
              begin 
                select @mto_antig_previsio_reliq = @mto_prevision_reliq 
                if @cod_instit_salud_act > 1
                  begin
                    select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                    select @monto_salud        = @monto_salud        + @mto_pagado_ccaf_reliq
                    select @monto_salud_reliq  = @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                    select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                    select @mto_pagado_ccaf_reliq = 0
                    select @mto_salud_legal_reliq = @monto_salud_reliq
                  end
                else
                  begin
                    select @monto_salud        = 0
                    select @monto_salud_reliq  = 0
                    select @mto_pagado_ccaf_reliq = 0
                    select @mto_salud_legal_reliq = 0
                  end
              end        
            else if @caja_comp_antigua = 0 and @cod_instit_salud = 1     
              begin
                select @mto_antig_previsio_reliq = @mto_prevision_reliq
                if @cod_instit_salud_act > 1
                  begin
                    select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                    select @monto_salud        = @monto_salud        + @mto_pagado_ccaf_reliq
                    select @monto_salud_reliq  = @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                    select @mto_pagado_ccaf_reliq = 0
                    select @mto_salud_legal_reliq = @monto_salud_reliq
                  end
                else
                  begin
                    select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                    select @monto_salud_reliq  = @mto_salud_legal_reliq
                    select @mto_salud_legal_reliq = 0
                  end                
              end
            else if @caja_comp_antigua = 0 and @cod_instit_salud > 1     
              begin
                select @mto_antig_previsio_reliq = @mto_prevision_reliq
                select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                select @monto_salud_reliq  = @mto_salud_legal_reliq
                select @mto_salud_legal_reliq = 0
              end
          end
        select @afecto_cotizacion  = @afecto_cotizacion  + @afecto_cotiza_reliq
        select @total_imponi_ley   = @total_imponi_ley   + @imponi_ley_reliq
        select @mto_cancela_previs = @mto_cancela_previs + @mto_cancela_previs_reliq
        select @mto_aporte_sis     = @mto_aporte_sis     + @mto_aporte_sis_reliq  
        select @mto_antig_previsio = @mto_antig_previsio + @mto_antig_previsio_reliq
        select @mto_pagado_ccaf    = @mto_pagado_ccaf    + @mto_pagado_ccaf_reliq

        select @monto_impon_seguro = @monto_impon_seguro + @impon_seguro_reliq
        select @monto_seguro_des   = @monto_seguro_des   + @seguro_des_reliq
        
        select @monto_ahorro_prev       = @monto_ahorro_prev  + @valor_apv_mes
        select @monto_ahorro_prev_reliq = @valor_apv_mes_corr
        select @tot_dctos_no_legal      = @tot_dctos_no_legal + @valor_apv_mes
        select @val_total_desctos       = @val_total_desctos  + @valor_apv_mes
         
--      select @dsctos_legales_reliq = @mto_prevision_reliq + @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq + 
--                                     @salud_voluntaria_reliq + @seguro_des_reliq
        select @dsctos_legales_reliq = @mto_prevision_reliq + @monto_salud_reliq + 
                                       @salud_voluntaria_reliq + @seguro_des_reliq


        select @val_leyes_sociales_reliq = @mto_prevision_reliq + @monto_salud_reliq + @mto_pagado_ccaf_reliq + 
                                           @salud_voluntaria_reliq + @seguro_des_reliq

        select @val_leyes_sociales = @val_leyes_sociales + @val_leyes_sociales_reliq
        select @tot_dctos_legales  = @tot_dctos_legales  + @val_leyes_sociales_reliq
        select @val_total_desctos  = @val_total_desctos  + @val_leyes_sociales_reliq
        if @asignacion_zona_lq is null
          select @asignacion_zona_lq = 0
        if @asignacion_zona_otros is null
          select @asignacion_zona_otros = 0
        select @sp_afecto_impto_reliq = @tot_tributable_reliq - @val_leyes_sociales_reliq - @valor_apv_mes_corr 
        select @sp_afecto_impto_total = @tot_tributable_reliq - @val_leyes_sociales_reliq - @valor_apv_mes_corr + 
               @sp_afecto_impto_lq + @sp_afecto_impto_otros + @asignacion_zona_lq + @asignacion_zona_otros
        if @sp_ind_impuesto = 'S'
          begin
            exec spliq_cal_impuesto_reliq @mes_reliq,@ano_reliq,@empresa_proceso,@planta_proceso,
                 @sp_nro_trabajador,@sp_dv_trabajador,@cod_sucursal_mes,@cod_tipo_trabajador_mes,
                 @sp_afecto_impto_total,@sp_consolida_empresa, @sp_impto_reliq output,  @asignacion_zona_reliq output
            select @asignacion_zona_reliq = @asignacion_zona_reliq - @asignacion_zona_lq - @asignacion_zona_otros
            if @asignacion_zona_reliq < 0 select @asignacion_zona_reliq = 0
            select @sp_afecto_impto_reliq = @sp_afecto_impto_reliq - @asignacion_zona_reliq
            if @sp_afecto_impto_reliq < 0 select @sp_afecto_impto_reliq = 0
          end 
        else
          select @sp_impto_reliq = 0        
        if @sp_impto_reliq < 0 select @sp_impto_reliq = 0
        select @sp_impto_reliq = @sp_impto_reliq - @sp_impto_lq - @sp_impto_otros
        if @sp_impto_reliq < 0 select @sp_impto_reliq = 0
        select @dsctos_legales_reliq = @dsctos_legales_reliq + @sp_impto_reliq

        select @sp_impto_reliq_act = round((@sp_impto_reliq * @valor_utm_proceso)/ @valor_utm_mes , 0)
        select @sp_impto_reliq_act_tot = @sp_impto_reliq_act_tot + @sp_impto_reliq_act

        select @monto_cancel_impto = @monto_cancel_impto + @sp_impto_reliq_act        

        select @tot_dctos_legales  = @tot_dctos_legales  + @sp_impto_reliq_act
        select @val_total_desctos  = @val_total_desctos  + @sp_impto_reliq_act
        
        select @afecto_impto_corr = round((@sp_afecto_impto_reliq * @valor_utm_proceso)/ @valor_utm_mes , 0)
        select @afecto_impto = @afecto_impto + @sp_afecto_impto_reliq

        select @val_liquido_pago_reliq = @valor_mes  - @val_leyes_sociales_reliq - @valor_apv_mes_corr - @sp_impto_reliq_act

       
        if @sp_apl_trab_pesado='S'
          begin
            if @sp_porc_trab_pesad is null
              begin
                insert into errores_calculo(cod_empresa, cod_planta, nro_trabajador, dv_trabajador,
                nombre, cod_error_tabla, descripcion_codigo, masivo_informado,
                descripcion_error, tabla_del_error,cod_tipo_proceso,tipo_error)

                values(@empresa_proceso, @planta_proceso, @sp_nro_trabajador, @sp_dv_trabajador,
                convert(char(10),@sp_nro_trabajador), 15, 'Revisar porcentaje de Trabajo Pesado', 'C',
                'El trabajador tiene marcado Trabajo Pesado y no tiene asignado un porcentaje', 
                'Personal',@tipo_proceso,'E')
              end
            else
              begin
                exec spliq_trab_pesado_reliq @mes_reliq,@ano_reliq,@empresa_proceso,@planta_proceso,
                     @sp_nro_trabajador,@sp_dv_trabajador,@tipo_proceso,@sp_consolida_empresa,@sp_porc_trab_pesad,@fec_final,@dias_proceso,0
              end
          end
        select @mto_seg_cta_indidu_reliq = 0
        select @mto_seg_cta_fondos_reliq = 0
        select @mto_imp_aporte_afc_reliq = 0
        if @sp_ind_afp_mes = 'S'
          begin
            if @sp_apli_seguro_des ='S' and @sp_fec_ini_seguro <= @fec_final and @condic_previs_act != 'J' and @sp_ind_seg_desempleo = 'S'
              begin
                if @cod_instit_previsi_act > 0
                  select @cod_afp_afc = @cod_instit_previsi_act   
                select @dif_seguro = 0
                select @dif_seguro=convert(int,datediff(dd,@sp_fec_ini_seguro,@fec_final) / 365.25)
                if @dif_seguro <=11
                  exec spliq_aporte_segur_reliq @mes_reliq,@ano_reliq,@empresa_proceso,@planta_proceso,
                       @sp_nro_trabajador,@sp_dv_trabajador,@tipo_proceso,@sp_consolida_empresa,@sp_cod_forma_pago,@cod_tipo_contra,
                       @fec_final,@dias_proceso,@sp_fec_mod_tip_con,@fec_inicio,@impon_seguro_reliq,@mto_seg_cta_indidu_reliq output,
                       @mto_seg_cta_fondos_reliq output, @mto_imp_aporte_afc_reliq output
              end
            else
              begin
                select @mto_seg_cta_fondos_reliq = 0
                select @mto_imp_aporte_afc_reliq = 0
                select @mto_seg_cta_indidu_reliq = 0
              end
          end
        else   
          begin      
            if @aplica_seguro_des ='S' and @fec_ini_seguro_des <= @fec_final and @condic_previs_act != 'J' and @sp_ind_seg_desempleo = 'S'
              begin   
                if @cod_instit_previsi_act > 0
                  select @cod_afp_afc = @cod_instit_previsi_act   
                select @dif_seguro = 0 
                select @dif_seguro=convert(int,datediff(dd,@fec_ini_seguro_des,@fec_final) / 365.25)
                if @dif_seguro <=11
                  exec spliq_aporte_segur_reliq @mes_reliq,@ano_reliq,@empresa_proceso,@planta_proceso,
                       @sp_nro_trabajador,@sp_dv_trabajador,@tipo_proceso,@sp_consolida_empresa,@cod_forma_pago,@codigo_tipo_contra,
                       @fec_final,@dias_proceso,@fec_mod_tipo_contr,@fec_inicio,@impon_seguro_reliq,@mto_seg_cta_indidu_reliq output,
                       @mto_seg_cta_fondos_reliq output, @mto_imp_aporte_afc_reliq output
              end
            else
              begin
                select @mto_seg_cta_fondos_reliq = 0
                select @mto_imp_aporte_afc_reliq = 0
                select @mto_seg_cta_indidu_reliq = 0
              end
          end
        if @mto_seg_cta_indidu_reliq is null select @mto_seg_cta_indidu_reliq = 0
        if @mto_seg_cta_fondos_reliq is null select @mto_seg_cta_fondos_reliq = 0
        if @mto_imp_aporte_afc_reliq is null select @mto_imp_aporte_afc_reliq = 0
        select @mto_seg_cta_indidu = @mto_seg_cta_indidu + @mto_seg_cta_indidu_reliq 
        select @mto_seg_cta_fondos = @mto_seg_cta_fondos + @mto_seg_cta_fondos_reliq 
        select @mto_imp_aporte_afc = @mto_imp_aporte_afc + @mto_imp_aporte_afc_reliq
        --
        select @mto_prevision_reliq = round(@mto_prevision_reliq, 0)
        select @monto_salud_reliq   = round(@monto_salud_reliq,0)
        select @mto_pagado_ccaf_reliq = round(@mto_pagado_ccaf_reliq,0)
        select @salud_voluntaria_reliq = round(@salud_voluntaria_reliq,0)
        select @seguro_des_reliq = round(@seguro_des_reliq,0)
        --        
        if @cod_instit_previsi_act = 0 or @cod_instit_previsi_act is null
          select @mto_aporte_sis_reliq = 0
        
        if @sp_ind_leyes_sociales = 'S'
          begin
            select @sp_aporte = 0
            select @sp_aporte_adic = 0
            exec spliq_aporte_mutual_reliq @mes_reliq, @ano_reliq, @empresa_proceso,
            @planta_proceso, @sp_nro_trabajador, @sp_dv_trabajador, @tipo_proceso,@sp_consolida_empresa,
            @afecto_cotiza_reliq, @porc_mutual_base, @porc_mutual_adic,@sp_aporte output, @sp_aporte_adic output            
          end
        
        if @sp_aporte      is null select @sp_aporte      = 0
        if @sp_aporte_adic is null select @sp_aporte_adic = 0
        select @aporte_patron_mutu_reliq = @sp_aporte + @sp_aporte_adic
        insert into hist_diferencias(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,ano_periodo,mes_periodo,
        cod_tipo_proceso,nro_contr_vig_proc,cod_haber,mes_proceso_liq,ano_proceso_liq,cod_sucursal,fec_ini_contr_vige,
        fec_fin_contr,nro_convenio,cod_cargo,cod_centro_costo,cod_tipo_trabajado,valor_total_habere,
        hab_no_imp_no_trib,tot_dctos_no_legal,tot_dctos_legales,tot_impon_sin_tope,tot_imponible,cod_instit_previsi,
        mto_cancela_previs,mto_prev_voluntari,mto_ahorro_volunta,cod_instit_salud,monto_aporte_sis,
        monto_salud,mto_salud_legal,val_volunt_isapre,mto_pagado_ccaf,caja_comp_antigua,
        mto_antig_previsio,pje_cotzado_caja,val_leyes_sociales,afecto_impto,asignacion_zona,monto_cancel_impto,
        tot_tributable,total_imponi_ley,afecto_impto_corr,monto_seguro_des,mto_seg_cta_indidu,
        mto_seg_cta_fondos,monto_impon_seguro,monto_impto_corr,cod_tipo_jornada,monto_ahorro_prev,
        monto_ahorro_prev_corr,afecto_cotizacion,val_liquido_pago,valor_haber_reliq,
        max_afecto_cotiz,max_imponi_ley,max_impon_seguro,aporte_patron_mutu)
        values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@ano_reliq,@mes_reliq,
        @tipo_proceso,@nro_contr_vig,@cod_haber,@sp_mes_registro,@sp_ano_registro,@cod_sucursal_mes,@sp_fec_ini_contrat,
        @sp_fec_fin_contr_v,@convenio,@cod_cargo,@centro_costo,@cod_tipo_trabajador_mes,@valor_mes_corr,
        0,0,@dsctos_legales_reliq,@valor_mes_corr,@tot_imponible_mes,@cod_instit_previsi,
        @mto_cancela_previs_reliq,0,0,@cod_instit_salud,@mto_aporte_sis_reliq,@monto_salud_reliq,
        @mto_salud_legal_reliq,@salud_voluntaria_reliq,@mto_pagado_ccaf_reliq,@caja_comp_antigua,
        @mto_antig_previsio_reliq,@pje_cotzado_caja,@val_leyes_sociales_reliq,@sp_afecto_impto_reliq,@asignacion_zona_reliq,@sp_impto_reliq,
        @tot_tributable_reliq,@imponi_ley_reliq,@afecto_impto_corr,@seguro_des_reliq,@mto_seg_cta_indidu_reliq,
        @mto_seg_cta_fondos_reliq,@impon_seguro_reliq,@sp_impto_reliq_act,@cod_tipo_jornada,@valor_apv_mes,
        @valor_apv_mes_corr,@afecto_cotiza_reliq,@val_liquido_pago_reliq,@valor_haber_reliq,
        @max_afec_afp_res,@max_impon_inp_res,@max_afec_afc_res,@aporte_patron_mutu_reliq)
        

        select @sp_aporte_mutu_base = @sp_aporte_mutu_base + @sp_aporte
        select @sp_aporte_mutu_adic = @sp_aporte_mutu_adic + @sp_aporte_adic
        
        if @mes_reliq = 12
          begin
            select @mes_reliq = 1
            select @ano_reliq = @ano_reliq + 1
          end
        else
          select @mes_reliq = @mes_reliq + 1

        select @mes_indice = @mes_indice + 1
        select @periodo_indice = @ano_reliq * 100 + @mes_reliq
      end
      if @control_meses = 0
        begin
          --delete from historico_liquidac 
          --where cod_empresa      = @empresa_proceso   and
          --      cod_planta       = @planta_proceso    and
          --      cod_tipo_proceso = @tipo_proceso      and
          --      ano_periodo      = @sp_ano_registro   and
          --      mes_periodo      = @sp_mes_registro   and
          --      nro_trabajador   = @sp_nro_trabajador and
          --      dv_trabajador    = @sp_dv_trabajador
          fetch lectura_personal into
          @sp_nro_trabajador,@sp_dv_trabajador,@nro_contr_vig
          continue
        end
    
--  descuentos sin rebaja de tributacion
    select @valor_descuento = 0
    exec spliq_descuentos_reliq @mes_proceso, @ano_proceso, @empresa_proceso,
         @planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador, @tipo_proceso,
         @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@sp_ano_registro,
         @sp_mes_registro,@sp_ano_base, @sp_mes_base,@valor_descuento output
    select @val_total_desctos   = @val_total_desctos   + @valor_descuento
    select @tot_dctos_no_legal  = @tot_dctos_no_legal  + @valor_descuento

    select @val_leyes_sociales = round(@val_leyes_sociales, 0)
    select @val_total_desctos  = round(@val_total_desctos  , 0)
    select @tot_dctos_legales  = round(@tot_dctos_legales , 0)
    if @cod_instit_previsi_act = 0 or @cod_instit_previsi_act is null
     begin
      select @mto_cancela_previs_l = @mto_cancela_previs 
      select @mto_cancela_previs = 0
     end
    else
      select @mto_cancela_previs = round(@mto_cancela_previs, 0)
    select @mto_aporte_sis     = round(@mto_aporte_sis    , 0)
    select @mto_antig_previsio = round(@mto_antig_previsio, 0)
    select @mto_salud_legal    = round(@mto_salud_legal   , 0)
    select @monto_salud        = round(@monto_salud       , 0)
    select @mto_pagado_ccaf    = round(@mto_pagado_ccaf   , 0)
    select @monto_seguro_des   = round(@monto_seguro_des  , 0)
    select @monto_ahorro_prev  = round(@monto_ahorro_prev , 0)
    select @afecto_cotizacion  = round(@afecto_cotizacion , 0)
    select @total_imponi_ley   = round(@total_imponi_ley  , 0)
    select @mto_seg_cta_indidu = round(@mto_seg_cta_indidu, 0)
    select @mto_seg_cta_fondos = round(@mto_seg_cta_fondos, 0)
--
    if @mto_seg_cta_indidu > 0
      insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
      cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@sp_aporte_cta_ind,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@mto_seg_cta_indidu,'$',@mto_seg_cta_indidu,0,
      @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@mto_seg_cta_indidu)
    if @mto_seg_cta_fondos > 0
      insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
      cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@sp_aporte_cta_fon,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@mto_seg_cta_fondos,'$',@mto_seg_cta_fondos,0,
      @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@mto_seg_cta_fondos)
--  Descuento 509
    if @monto_seguro_des > 0
      begin
        insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
        mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
        valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
        cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
        aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
        values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,509,@sp_ano_registro,
        @sp_mes_registro,@tipo_proceso,1,@monto_seguro_des,'$',0,@monto_seguro_des,0,0,0,0,@cod_sucursal,@centro_costo,
        @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@monto_seguro_des,0,0)
      end
      
--  Descuento de reliquidación
--  
    select @dscto_reliquida = dscto_reliquida from control_parametros
    where
    cod_empresa        = @empresa_proceso and
    cod_planta         = @planta_proceso  and
    ano_control_proces = @sp_ano_base and
    mes_control_proces = @sp_mes_base
    if @dscto_reliquida is null select @dscto_reliquida = 0
    if @monto_cancel_impto > 0 and @dscto_reliquida > 0
      insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
      valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
      cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
      aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@dscto_reliquida,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@monto_cancel_impto,'$',0,@monto_cancel_impto,0,0,0,0,@cod_sucursal,@centro_costo,
      @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@monto_cancel_impto,0,0)
    
    select @b501 = 0
    select @b504 = 0
    select @b505 = 0
    select @b506 = 0
    select @b513 = 0

    select @flg_aporte_sis = flg_aporte_sis
    from control_parametros
    where
    cod_empresa  = @empresa_proceso   and
    cod_planta   = @planta_proceso    and
    ano_control_proces = @sp_ano_base and
    mes_control_proces = @sp_mes_base
    if @flg_aporte_sis is null select @flg_aporte_sis = 0

    select @cod_haber_sis = cod_haber
    from haber
    where
    cod_empresa  = @empresa_proceso and
    cod_planta   = @planta_proceso  and
    tipo_hab_contabili = 'H'
    if @cod_haber_sis is null select @cod_haber_sis = 0

    if @sp_ind_afp_mes = 'N'
      begin
        if @cod_instit_previsi_act > 0 and @cod_instit_salud_act > 1 
          begin
            select @b501 = 1
            select @b506 = 1
          end
        else if @cod_instit_previsi_act > 0 and @cod_instit_salud_act =1   
          begin
            select @b501 = 1
            select @b513 = 1
            select @b505 = 1
          end
        else if @caja_comp_antigua_act > 0 and @cod_instit_salud_act > 1     
          begin
            select @b504 = 1
            select @b506 = 1
          end
        else if @caja_comp_antigua_act > 0 and @cod_instit_salud_act = 1  
          begin
            select @b504 = 1
            select @b505 = 1
            select @b513 = 1
          end
        else if @caja_comp_antigua_act > 0 and @cod_instit_salud_act = 0  
          begin
            select @b504 = 1
            select @b505 = 0
            select @b513 = 0
          end
        else if @cod_instit_previsi_act = 0 and @cod_instit_salud_act = 1  
          begin
            select @b501 = -1
            select @b513 = 0
            select @b505 = 1
          end
        else if @cod_instit_previsi_act = 0 and @cod_instit_salud_act > 1  
          begin
            select @b501 = 0
            select @b504 = 0
            select @b506 = 1
          end
      end
    else
      begin
        if @cod_instit_previsi > 0 and @cod_instit_salud > 1 and @cod_instit_salud_act > 1
          begin
            select @b501 = 1
            select @b506 = 1
          end
        else if @cod_instit_previsi > 0 and @cod_instit_salud > 1 and @cod_instit_salud_act = 1
          begin
            select @b501 = 1
            select @b513 = 1
            select @b505 = 1
          end
        else if @cod_instit_previsi > 0 and @cod_instit_salud =1 and @cod_instit_salud_act = 1
          begin
            select @b501 = 1
            select @b513 = 1
            select @b505 = 1
          end
        else if @cod_instit_previsi > 0 and @cod_instit_salud =1 and @cod_instit_salud_act > 1
          begin
            select @b501 = 1
            select @b506 = 1
          end
        else if @caja_comp_antigua > 0 and @cod_instit_salud > 1 and @cod_instit_salud_act > 1
          begin
            select @b504 = 1
            select @b506 = 1
          end
        else if @caja_comp_antigua > 0 and @cod_instit_salud > 1 and @cod_instit_salud_act = 1   
          begin
            select @b504 = 1
            select @b513 = 1
            select @b505 = 1
          end
        else if @caja_comp_antigua > 0 and @cod_instit_salud > 1 and @cod_instit_salud_act = 0   
          begin
            select @b504 = 1
            select @b513 = 0
            select @b505 = 0
          end
        else if @caja_comp_antigua > 0 and @cod_instit_salud = 1 and @cod_instit_salud_act = 1  
          begin
            select @b504 = 1
            select @b505 = 1
            select @b513 = 1
          end
        else if @caja_comp_antigua > 0 and @cod_instit_salud = 1 and @cod_instit_salud_act > 1     
          begin
            select @b504 = 1
            select @b506 = 1
          end
        else if @caja_comp_antigua > 0 and @cod_instit_salud = 1 and @cod_instit_salud_act > 0     
          begin
            select @b504 = 1
            select @b506 = 0
          end
        else if @caja_comp_antigua > 0 and @cod_instit_salud = 0 and @cod_instit_salud_act > 1     
          begin
            select @b504 = 1
            select @b506 = 1
          end
        else if @caja_comp_antigua > 0 and @cod_instit_salud = 0 and @cod_instit_salud_act = 0     
          begin
            select @b504 = 1
            select @b506 = 0
          end
        else if @cod_instit_previsi = 0 and @cod_instit_salud = 1 and @cod_instit_salud_act = 1  
          begin
            select @b501 = -1
            select @b513 = 1
            select @b505 = 1
          end
        else if @cod_instit_previsi = 0 and @cod_instit_salud = 1  and @cod_instit_salud_act > 1  
          begin
            select @b501 = -1
            select @b506 = 1
          end
        else if @cod_instit_previsi = 0 and @cod_instit_salud > 1  and @cod_instit_salud_act > 1   
          begin
            select @b501 = 0
            select @b504 = 0
            select @b506 = 1
          end
        else if @cod_instit_previsi = 0 and @cod_instit_salud > 1  and @cod_instit_salud_act = 1   
          begin
            select @b501 = 0
            select @b504 = 0
            select @b505 = 1
            select @b513 = 1
          end
      end
     
    
    if @b501 = 1 and @mto_cancela_previs > 0
      insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
      valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
      cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
      aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,501,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@mto_cancela_previs,'$',0,@mto_cancela_previs,0,0,0,0,@cod_sucursal,@centro_costo,
      @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@mto_cancela_previs,0,0)
    if @b504 = 1 and @mto_antig_previsio > 0
     begin
      if @mto_cancela_previs_l > 0 select @mto_antig_previsio = @mto_antig_previsio + @mto_cancela_previs_l
      insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
      valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
      cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
      aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,504,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@mto_antig_previsio,'$',0,@mto_antig_previsio,0,0,0,0,@cod_sucursal,@centro_costo,
      @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@mto_antig_previsio,0,0) 
     end  
    if @b505 = 1 and @mto_pagado_ccaf > 0
      begin
        insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
        mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
        valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
        cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
        aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
        values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,505,@sp_ano_registro,
        @sp_mes_registro,@tipo_proceso,1,@mto_pagado_ccaf,'$',0,@mto_pagado_ccaf,0,0,0,0,@cod_sucursal,@centro_costo,
        @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@mto_pagado_ccaf,0,0)
      end    
    if @b506 = 1 and @monto_salud > 0
      insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
      valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
      cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
      aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,506,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@monto_salud,'$',0,@monto_salud,0,0,0,0,@cod_sucursal,@centro_costo,
      @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@monto_salud,0,0)
    if @b513 = 1 and @monto_salud > 0
      begin
        insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
        mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
        valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
        cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
        aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
        values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,513,@sp_ano_registro,
        @sp_mes_registro,@tipo_proceso,1,@monto_salud,'$',0,@monto_salud,0,0,0,0,@cod_sucursal,@centro_costo,
        @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@monto_salud,0,0) 
        select @b506 = 0
      end
      
      exec spliq_calc_anticip_reliq @mes_proceso, @ano_proceso, @empresa_proceso,
      @planta_proceso,@sp_nro_trabajador, @sp_dv_trabajador, @tipo_proceso
      
      if @sp_ind_dscto_cta_cte = 'S'
        begin
           exec spliq_rev_ctacte_reliq @mes_proceso, @ano_proceso, @empresa_proceso, @planta_proceso,
           @sp_nro_trabajador, @sp_dv_trabajador, @tipo_proceso
           exec spliq_calc_ctacte_reliq @mes_proceso,@ano_proceso,@empresa_proceso,@planta_proceso,
           @sp_nro_trabajador, @sp_dv_trabajador, @tipo_proceso
        end
    select @tot_desc_cta_cte = 0
    select @valor_anticipo   = 0
    select @tot_desc_cta_cte = sum(isnull(tot_desc_cta_cte,0)),
           @valor_anticipo   = sum(isnull(valor_anticipo,0))
    from historico_liquidac
    where
        cod_empresa      = @empresa_proceso   and
        cod_planta       = @planta_proceso    and
        cod_tipo_proceso = @tipo_proceso      and
        ano_periodo      = @sp_ano_registro   and
        mes_periodo      = @sp_mes_registro   and
        nro_trabajador   = @sp_nro_trabajador and
        dv_trabajador    = @sp_dv_trabajador
    select @val_total_desctos   = @val_total_desctos   + @tot_desc_cta_cte + @valor_anticipo
    select @tot_dctos_no_legal  = @tot_dctos_no_legal  + @tot_desc_cta_cte + @valor_anticipo
--  liquido a pago
    select @val_liquido_pago = @valor_total_habere - @val_total_desctos

    if @val_liquido_pago < 0
      begin
        select @sobregiros_mes   = @val_liquido_pago * (-1)
        select @val_liquido_pago = 0
        if @sp_cod_haber_sobreg > 0 and @sp_indic_genera_haber = 'S'
          insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
          mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
          cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
          values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@sp_cod_haber_sobreg,@sp_ano_registro,
          @sp_mes_registro,@tipo_proceso,1,@sobregiros_mes,'$',@sobregiros_mes,0,
          @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@sobregiros_mes)
        if @sp_indic_genera_dscto = 'S'
          begin
            if @sp_cod_dscto_sobreg > 0 and @sp_fec_apli_dscto is not null and @sp_cod_proceso_sobreg is not null and
               ltrim(rtrim(@sp_cod_proceso_sobreg)) != ''
              insert into descuento_informad(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,
              cod_tipo_proceso,correlativo,fec_aplicacion,cod_unidad_moneda,nro_cuotas,cod_centro_costo,
              fec_ingreso_decuen,nombre_usuario,valor_concepto)
              values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@sp_cod_dscto_sobreg,
              @sp_cod_proceso_sobreg,7887,@sp_fec_apli_dscto,'$',1,@centro_costo,
              @sp_fec_apli_dscto,user_name(),@sobregiros_mes)              
          end
      end
--    @sp_aporte_mutu_base
--    @sp_aporte_mutu_adic
    if @sp_aporte_mutu_base > 0
      insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
      cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@cod_mutu_base,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@sp_aporte_mutu_base,'$',@sp_aporte_mutu_base,0,
      @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@sp_aporte_mutu_base)
    if @sp_aporte_mutu_adic > 0
      insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
      cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@cod_mutu_adic,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@sp_aporte_mutu_adic,'$',@sp_aporte_mutu_adic,0,
      @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@sp_aporte_mutu_adic)
    if @flg_aporte_sis = 'S' and @cod_haber_sis > 0 and @mto_aporte_sis > 0 and @cod_instit_previsi_act > 0
      insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
      cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@cod_haber_sis,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@mto_aporte_sis,'$',@mto_aporte_sis,0,
      @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@mto_aporte_sis)
    else
      select @mto_aporte_sis = 0
    if @cod_hab_aporte > 0 and @valor_aporte > 0
      begin
        select @acum_historico = acumula_historico
        from haber 
        where
        cod_empresa = @empresa_proceso and
        cod_planta  = @planta_proceso  and
        cod_haber   = @cod_hab_aporte
        if      rtrim(ltrim(@acum_historico)) != ' ' and @acum_historico is not null 
            and rtrim(ltrim(@acum_historico)) != ''
          begin
            select @str_update = 'update historico_liquidac ' + 
            ' set ' + rtrim(ltrim(@acum_historico))+ ' = ' + convert(varchar,@valor_aporte) + 
            ' where cod_empresa = ' + convert(varchar,@empresa_proceso) + 
            ' and   cod_planta  = ' + convert(varchar,@planta_proceso)  +
            ' and   cod_tipo_proceso =  ''' + @tipo_proceso + '''' 
            select @str_update = @str_update + 
            ' and   ano_periodo = ' + convert(varchar,@sp_ano_registro) +
            ' and   mes_periodo = ' + convert(varchar,@sp_mes_registro) +
            ' and   nro_trabajador   = ' + convert(varchar,@sp_nro_trabajador) +
            ' and   dv_trabajador    = ''' + @sp_dv_trabajador+ '''' 
            exec (@str_update)
          end
      end     
    
    update historico_liquidac
    set valor_total_habere = isnull(valor_total_habere,0) + isnull(@valor_total_habere,0),
        tot_tributable     = isnull(tot_tributable,0) + isnull(@tot_tributable,0),
        hab_no_imp_no_trib = isnull(hab_no_imp_no_trib,0) + isnull(@hab_no_imp_no_trib,0),
        ret_judic_resconta = isnull(ret_judic_resconta,0) + isnull(@ret_judic_resconta,0),
        tot_dctos_no_legal = isnull(tot_dctos_no_legal,0) + isnull(@tot_dctos_no_legal,0),
        tot_dctos_legales  = isnull(tot_dctos_legales,0) + isnull(@tot_dctos_legales,0),
        val_total_desctos  = isnull(val_total_desctos,0) + isnull(@val_total_desctos,0),
        tot_impon_sin_tope = isnull(tot_impon_sin_tope,0) + isnull(@tot_impon_sin_tope,0),
        mto_cancela_previs = isnull(mto_cancela_previs,0) + isnull(@mto_cancela_previs,0),
        monto_aporte_sis   = isnull(monto_aporte_sis,0) + isnull(@mto_aporte_sis,0),
        monto_salud        = isnull(monto_salud,0) + isnull(@monto_salud,0),
        mto_salud_legal    = isnull(mto_salud_legal,0) + isnull(@mto_salud_legal,0),
        valor_pactado_isap = isnull(valor_pactado_isap,0) + isnull(@valor_pactado_isap,0),
        val_volunt_isapre  = isnull(val_volunt_isapre,0) + isnull(@val_volunt_isapre,0),
        mto_pagado_ccaf    = isnull(mto_pagado_ccaf,0) + isnull(@mto_pagado_ccaf,0),
        mto_antig_previsio = isnull(mto_antig_previsio,0) + isnull(@mto_antig_previsio,0),
        val_leyes_sociales = isnull(val_leyes_sociales,0) + isnull(@val_leyes_sociales,0),
        afecto_impto       = isnull(afecto_impto,0) + isnull(@afecto_impto,0),
        asignacion_zona    = isnull(asignacion_zona,0) + isnull(@asignacion_zona,0),
        monto_cancel_impto = isnull(monto_cancel_impto,0) + isnull(@monto_cancel_impto,0),
        aporte_patron_ccaf = isnull(aporte_patron_ccaf,0) + isnull(@aporte_patron_ccaf,0),
        aporte_patronal_1  = isnull(aporte_patronal_1,0) + isnull(@aporte_patronal_1,0),
        aporte_patronal_2  = isnull(aporte_patronal_2,0) + isnull(@aporte_patronal_2,0),
        valor_desahucio    = isnull(valor_desahucio,0) + isnull(@valor_desahucio,0),
        tot_imp_no_prop    = isnull(tot_imp_no_prop,0) + isnull(@tot_imp_no_prop,0),
        mto_tope60_dfl44   = isnull(mto_tope60_dfl44,0) + isnull(@mto_tope60_dfl44,0),
        mto_dfl44          = isnull(mto_dfl44,0) + isnull(@mto_dfl44,0),
        afecto_cotizacion  = isnull(afecto_cotizacion,0) + isnull(@afecto_cotizacion,0),
        val_tot_tope_impon = isnull(val_tot_tope_impon,0) + isnull(@afecto_cotizacion,0),
        total_imponi_ley   = isnull(total_imponi_ley,0) + isnull(@total_imponi_ley,0),
        adicional_isapre   = isnull(adicional_isapre,0) + isnull(@adicional_isapre,0),
        mto_salud_real     = isnull(mto_salud_real,0) + isnull(@mto_salud_real,0),
        monto_seguro_des   = isnull(monto_seguro_des,0) + isnull(@monto_seguro_des,0),
        monto_ahorro_prev  = isnull(monto_ahorro_prev,0) + isnull(@monto_ahorro_prev,0),
        mto_seg_cta_indidu = isnull(mto_seg_cta_indidu,0) + isnull(@mto_seg_cta_indidu,0),
        mto_seg_cta_fondos = isnull(mto_seg_cta_fondos,0) + isnull(@mto_seg_cta_fondos,0),
        monto_impon_seguro = isnull(monto_impon_seguro,0) + isnull(@monto_impon_seguro,0),
        mto_trab_tr_pesado = isnull(mto_trab_tr_pesado,0) + isnull(@mto_trab_tr_pesado,0),
        mto_apor_tr_pesado = isnull(mto_apor_tr_pesado,0) + isnull(@mto_apor_tr_pesado,0),
        mto_imp_aporte_afc = isnull(mto_imp_aporte_afc,0) + isnull(@mto_imp_aporte_afc,0),
        aporte_patron_mutu = isnull(aporte_patron_mutu,0) + isnull(@sp_aporte_mutu_base,0) + isnull(@sp_aporte_mutu_adic,0)
    where
    cod_empresa      = @empresa_proceso and
    cod_planta       = @planta_proceso  and
    cod_tipo_proceso = @tipo_proceso    and
    ano_periodo      = @sp_ano_registro     and
    mes_periodo      = @sp_mes_registro     and
    nro_trabajador   = @sp_nro_trabajador and
    dv_trabajador    = @sp_dv_trabajador

    
    if @valor_prop_mes > 0
      update liquidacio_haberes 
      set
      valor_transac_peso = @valor_prop_mes
      where
      cod_empresa      = @empresa_proceso and
      cod_planta       = @planta_proceso  and
      cod_tipo_proceso = @tipo_proceso    and
      ano_periodo      = @sp_ano_registro     and
      mes_periodo      = @sp_mes_registro     and
      nro_trabajador   = @sp_nro_trabajador and
      dv_trabajador    = @sp_dv_trabajador  and
      cod_haber        = @cod_haber
       
    exec spliq_calc_aporte_reliq @sp_mes_registro, @sp_ano_registro, @empresa_proceso, @planta_proceso,@sp_nro_trabajador,
         @sp_dv_trabajador,@tipo_proceso,@sp_cod_forma_pago,@sp_str_aportes

    if @sp_bitacora_reliq = 'S'
      exec spliq_bitacora @empresa_proceso,@planta_proceso,@tipo_proceso,@sp_nro_trabajador,
      @sp_dv_trabajador,@sp_ano_registro,@sp_mes_registro, @sp_usuario,1 

    update personal set indic_liq_individu = 'P'
    where 
    cod_empresa    = @empresa_proceso   and
    cod_planta     = @planta_proceso    and
    nro_trabajador = @sp_nro_trabajador and
    dv_trabajador  = @sp_dv_trabajador

    -- inicializacion
    select @valor_total_habere = 0
    select @tot_tributable     = 0
    select @hab_no_imp_no_trib = 0
    select @ret_judic_resconta = 0
    select @tot_dctos_no_legal = 0
    select @tot_dctos_legales = 0
    select @val_total_desctos = 0
    select @val_liquido_pago = 0
    select @sobregiros_mes = 0
    select @tot_impon_sin_tope = 0
    select @mto_cancela_previs = 0
    select @mto_aporte_sis = 0
    select @monto_salud = 0
    select @mto_salud_legal = 0
    select @valor_pactado_isap = 0
    select @val_volunt_isapre = 0
    select @mto_pagado_ccaf = 0
    select @mto_antig_previsio = 0
    select @val_leyes_sociales = 0
    select @afecto_impto = 0
    select @asignacion_zona = 0
    select @monto_cancel_impto = 0
    select @aporte_patron_ccaf = 0
    select @aporte_patronal_1 = 0
    select @aporte_patronal_2 = 0
    select @valor_desahucio = 0
    select @tot_imp_no_prop = 0
    select @mto_tope60_dfl44 = 0
    select @mto_dfl44 = 0
    select @afecto_cotizacion = 0
    select @total_imponi_ley = 0
    select @adicional_isapre = 0
    select @mto_salud_real = 0
    select @monto_seguro_des = 0
    select @monto_ahorro_prev = 0
    select @mto_seg_cta_indidu = 0
    select @mto_seg_cta_fondos = 0
    select @monto_impon_seguro = 0
    select @mto_trab_tr_pesado = 0
    select @mto_apor_tr_pesado = 0
    select @mto_imp_aporte_afc = 0
    select @cod_afp_afc = 0
    select @sp_aporte_mutu_base = 0
    select @sp_aporte_mutu_adic = 0
        
    fetch lectura_personal into
    @sp_nro_trabajador,@sp_dv_trabajador,@nro_contr_vig
  end
close lectura_personal
deallocate  lectura_personal
return 0








GO
/****** Object:  StoredProcedure [dbo].[spliq_calc_reliq_hl]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE procedure [dbo].[spliq_calc_reliq_hl]
(@mes_proceso int, @ano_proceso int, @empresa_proceso int, @planta_proceso int,
 @sp_nro_trabajador int,@sp_dv_trabajador char(1), @tipo_proceso char(4), 
 @mes_inicio int, @ano_inicio int, @mes_termino int,@ano_termino int, @sp_usuario char(15), @val_liquido_retorna numeric(38,10) output )
as
declare 
@sp_incluye_mes_inicio char(1),@sp_incluye_mes_final  char(1),@sp_bitacora_reliq  char(1),
@sp_ind_finiquitados   char(1),@sp_calc_ult_contrato  char(1),@nro_dias_enfermo int,
@sp_consolida_empresa  char(1),@sp_ajuste_sencillo    char(1),@nro_dias_asistidos int,
@sp_indic_genera_haber char(1),@sp_indic_genera_dscto char(1),@nro_dias_vacacione int,
@sp_sobregira_dsctos   char(1),@sp_ind_leyes_sociales char(1),@sp_ind_salud_pagada char(1),
@sp_ind_seg_desempleo  char(1),@sp_ind_impuesto       char(1),@dias_asistidos int,
@sp_ind_afp_mes        char(1),@sp_ind_cotiz_volunt   char(1),@nro_dias_ausente int,
@sp_ind_cotiz_apv      char(1),@sp_ind_dscto_retenci  char(1),
@sp_ind_dscto_cta_cte  char(1),@sp_prop_dist_haber    char(1),
@sp_dist_haber_meses   char(1),@sp_prop_total_dias    char(1),
@sp_prop_haber_mes     char(1),@sp_prop_lic_medica    char(1),
@sp_prop_feriados      char(1),@sp_prop_ausencias     char(1),
@sp_aporte_empresa     char(1),@sp_periodo_utm        char(1),
@sp_incluye_hist_difer char(1),@flg_tope_salud        char(1),
@sp_cod_haber_sobreg   int,@sp_cod_dscto_sobreg   int,
@sp_mes_base           int,@sp_ano_base           int,
@sp_mes_registro       int,@sp_ano_registro       int,
@sp_fec_apli_dscto     datetime,
@sp_cod_proceso_sobreg char(4),
@sp_str_aportes        char(200),
@sp_str_proc_diferenci char(200)
declare
@cod_instit_previsi int, @cod_instit_salud int,@caja_comp_antigua int,
@cod_instit_previsi_act int, @cod_instit_salud_act int,@caja_comp_antigua_act int,
@mto_antig_previsio numeric(38,10),@mto_antig_previsio_reliq numeric(38,10),@valor_desahucio_reliq numeric(38,10),@pje_cotzado_caja decimal(13,4),
@val_leyes_sociales numeric(38,10),@val_leyes_sociales_reliq numeric(38,10),@afecto_impto numeric(38,10),
@asignacion_zona numeric(38,10),@asignacion_zona_reliq numeric(38,10),@monto_cancel_impto numeric(38,10),
@aporte_patron_mutu numeric(38,10),@aporte_patron_mutu_reliq numeric(38,10), @tot_tributable numeric(38,10),@total_imponi_ley numeric(38,10),@afecto_cotizacion numeric(38,10),
@afecto_impto_corr numeric(38,10),@monto_seguro_des numeric(38,10),@monto_impon_seguro numeric(38,10),
@mto_seg_cta_indidu numeric(38,10),@mto_seg_cta_fondos numeric(38,10),@monto_impto_corr numeric(38,10),
@mto_seg_cta_indidu_reliq numeric(38,10),@mto_seg_cta_fondos_reliq numeric(38,10),
@sp_afecto_impto_lq numeric(38,10),@asignacion_zona_lq numeric(38,10),@adicional_isapre_lq numeric(38,10),@sp_afecto_impto_otros numeric(38,10),
@asignacion_zona_otros numeric(38,10),@sp_afecto_impto numeric(38,10),@sp_impto_lq numeric(38,10),@sp_impto_otros numeric(38,10),
@valor_pactado_isap_lq numeric(38,10),@monto_salud_lq numeric(38,10),@mto_salud_legal_lq numeric(38,10),@mto_salud_real_lq numeric(38,10),
@tot_tributable_reliq numeric(38,10), @control_meses int,@meses_efectivos int,@meses_reales int,@meses_reliq int,
@b501 int,@b504 int,@b505 int,@b506 int,@b513 int 
declare 
@centro_costo         int,@centro_costo_mes int,
@cod_sucursal_mes     int,@cod_sucursal int,@cod_tipo_trabajador char(2), @meses_proceso        int,
@mes_indice           int,@mes_reliq            int,
@ano_reliq            int,@dias_proceso         int,
@cod_haber_l          int,@cod_hab_aporte       int, @sp_nro_dias_licencia int,@tot_imponible_mes int,
@convenio             int,@cod_sindicato        int,@dsctos_legales_reliq numeric(38,10),
@cod_cargo            int,@nro_contr_vig	int,@cod_haber	int,
@sp_porc_trab_pesad   numeric(5,2),@cod_tipo_jornada int,
@valor_haber          numeric(38,10),@valor_aporte numeric(38,10), @valor_exento numeric(38,10), @valor_mes            numeric(38,10),
@valor_mes_corr       numeric(38,10),@valor_prop_mes numeric(38,10),@valor_dsctos_varios numeric(38,10),
@valor_mes_tribut     numeric(28,10),@valor_ultimo_mes     numeric(38,10),@valor_descuento numeric(38,10),
@hab_no_imp_no_trib   numeric(38,10),@tot_desc_cta_cte	   numeric(38,10),
@ret_judic_resconta   numeric(38,10),@tot_dctos_no_legal   numeric(38,10),
@tot_dctos_legales    numeric(38,10),@val_liquido_pago     numeric(38,10),
@sobregiros_mes       numeric(38,10),@tot_impon_sin_tope   numeric(38,10),@tot_impon_sin_tope_mes numeric(38,10),
@tot_imponible        numeric(38,10),@mto_cancela_previs   numeric(38,10),@mto_cancela_previs_reliq numeric(38,10),
@monto_salud          numeric(38,10),@mto_salud_legal      numeric(38,10),
@monto_salud_reliq    numeric(38,10),@tope_salud_mes       numeric(28,10),
@valor_pactado_isap   numeric(38,10),@val_volunt_isapre    numeric(38,10),
@mto_pagado_ccaf      numeric(38,10),@mto_pagado_ccaf_reliq numeric(38,10),@aporte_patron_ccaf   numeric(38,10),
@pagado_ccaf_lq       numeric(38,10),@pagado_ccaf_total    numeric(38,10),
@aporte_patronal_1    numeric(38,10),@aporte_patronal_2    numeric(38,10),
@saldo_cta_cte        numeric(38,10),@val_total_desctos    numeric(38,10),
@valor_desahucio      numeric(38,10),@pje_desahucio        numeric(38,10),
@tot_imp_no_prop      numeric(38,10),@mto_tope60_dfl44     numeric(38,10),
@mto_dfl44            numeric(38,10),@valor_apv_tributa    numeric(38,10),
@adicional_isapre     numeric(38,10),@pje_cotiz_previs     decimal(5,2),
@pje_cotiz_salud      decimal(5,2),@tot_impto_reliq        numeric(38,10),
@impto_voluntario     numeric(38,10),@mto_salud_real       numeric(38,10),
@aporte_convenido     numeric(38,10),@cod_unidad_adminis   int,
@monto_ahorro_prev    numeric(38,10),@mto_trab_tr_pesado   numeric(38,10),
@mto_apor_tr_pesado   numeric(38,10),@porc_apl_tr_pesado   decimal(5,2),
@cod_afp_afc          int,@mto_imp_aporte_afc              numeric(38,10),
@mto_imp_aporte_afc_reliq  numeric(38,10),@valor_alcance_liq numeric(38,10),
@monto_seg_des        decimal(38,10),@valor_total_habere numeric(38,10),
@valor_haber_reliq    numeric(38,10),@valor_utm_proceso    decimal(13,4),
@valor_utm_mes        decimal(13,4),
@sp_apli_seguro_des   char(1),
@cod_tipo_contra      char(1),@sp_cod_forma_pago    char(1),@cod_forma_pago char(1),
@sp_apl_trab_pesado   char(1),@condic_previsional   char(1),
@sp_flg_difer_tope    char(1),@sp_flg_revisa_hist   char(1),
@dif_seguro           int,@codigo_tipo_contra   char(1),
@aplica_seguro_des    char(1),
@cod_tipo_trabajador_mes      char(2),
@cod_escala_sueldo    char(4),
@sp_fec_ini_contrat   datetime,@sp_fec_fin_contr_v   datetime,
@sp_fec_ini_contrat_i datetime,@sp_fec_fin_contr_v_i datetime,
@sp_fec_ini_seguro    datetime,@sp_fec_mod_tip_con   datetime,
@sp_fec_nacimiento    datetime,@fec_aplicacion       datetime,
@fec_ini_seguro_des   datetime,@fec_inicio           datetime,
@fec_final            datetime,@fec_mod_tipo_contr   datetime
declare @mto_cancela_previs_l numeric(38,10)
declare @nombre_completo varchar(50),@sp_ape_paterno varchar(30),
@sp_ape_materno varchar(30), @sp_nombre varchar(30),@cal_hab_liq_sl char(1) 

declare @mes_max_imponi_ley			numeric(38,10)
declare @mes_max_afecto_cotiz		numeric(38,10)
declare @mes_max_impon_seguro		numeric(38,10)

declare @max_impon_sis				numeric(38,10)

/*33977*/
declare @afecto_mto_sis_lq 		  numeric(38,10)
declare @monto_impon_seguro_lq	  numeric(38,10)
declare @total_imponi_ley_lq	  numeric(38,10)
declare @mto_tope_afc_uf		 decimal(7,4)
declare @afecto_cotiza_sis_reliq	numeric(38,10)
declare @afecto_cotizacion_sis		numeric(38,10)
declare @sp_fec_inicio           datetime
declare @sp_fec_final            datetime

declare @mto_tope_prev_uf decimal(7,4),
@valor_topado decimal(28,10),
@valor_tabla decimal(9,3),
@ncantdias_reliq numeric(10),
@mes_termino_res int,
@ano_termino_res int, @dscto_reliquida int

declare @max_afecto_mutu numeric(38,10), 
	@afecto_mutual numeric(38,10), 
	@afecto_mutual_reliq    numeric(38,10),
	@max_afecto_mutu_res       numeric(38,10),
	@max_afecto_mutu_res_act   numeric(38,10),
	@mes_max_afecto_mutu		numeric(38,10)


declare
@max_afecto_cotiz       numeric(38,10),@afecto_cotiza_reliq    numeric(38,10),@afecto_cotizacion_lq numeric(38,10),
@max_imponi_ley         numeric(38,10),@imponi_ley_reliq       numeric(38,10),@afecto_cotiza_total numeric(38,10),
@max_impon_seguro       numeric(38,10),@impon_seguro_reliq     numeric(38,10),@salud_legal_total numeric(38,10),
@max_afec_afp_res       numeric(38,10),@max_impon_inp_res      numeric(38,10),@max_afec_afp_res_act numeric(38,10),
@max_afec_afc_res       numeric(38,10),@max_salud_pagada_res   numeric(38,10),
@seguro_des_reliq       numeric(38,10),@mto_prevision_reliq    numeric(38,10),@mto_desahucio_reliq numeric(38,10),
@mto_salud_legal_reliq  numeric(38,10),@salud_voluntaria_reliq numeric(38,10),
@salud_adicional_reliq  numeric(38,10),@sp_afecto_impto_reliq  numeric(38,10),
@sp_afecto_impto_total  numeric(38,10),@mto_aportesis_reliq    numeric(28,10),
@sp_impto_reliq         numeric(38,10),@sp_impto_reliq_act     numeric(38,10),
@sp_impto_reliq_act_tot numeric(38,10),@mto_aporte_sis_reliq   numeric(28,10),@mto_aporte_sis numeric(28,10),
@flg_aporte_sis char(1),@cod_haber_sis int,
@monto_ahorro_prev_reliq numeric(38,10),@monto_ahorro_prev_reliq_corr numeric(38,10),
@valor_apv numeric(38,10),@valor_apv_reliq numeric(38,10), @valor_apv_mes numeric(38,10),
@valor_apv_ultimo_mes numeric(38,10),@valor_apv_mes_corr numeric(38,10),@valor_uf_mes decimal(12,2),
@val_liquido_pago_reliq numeric(38,10),@ano_proceso_i int, @mes_proceso_i int,
@periodo_inicio int, @periodo_termino int, @periodo_reliq int, @periodo_indice int,
@bSinMesInicio int, @bSinMesTermino int, @valor_anticipo numeric(38,10),
@sp_aporte_cta_ind int, @sp_aporte_cta_fon int,
@str_select varchar(8000),@condic_previs_act char(1)
declare @porc_mutual_base decimal(7,4), @porc_mutual_adic decimal(7,4), @porc_mutual_sanna decimal(7,4)
declare @sp_aporte numeric(28,10), @sp_aporte_adic numeric(28,10), @sp_aporte_sanna numeric(28,10),
@sp_aporte_mutu_base numeric(28,10), @sp_aporte_mutu_adic  numeric(28,10), @sp_aporte_mutu_sanna  numeric(28,10),
@cod_mutu_base int, @cod_mutu_adic int, @cod_mutu_sanna int
declare @no_redondea_llss char(1)
declare @str_update varchar(8000)
declare @acum_historico char(18)
declare @cod_tipo_invalidez int

declare @valor_liquido_1 numeric(28,10),@valor_liquido_2 numeric(28,10),@pasa_1 int,
@suma_haber_imp int, @valor_liquido_a_llegar numeric(28,10),@valor_sobregiro_ini numeric(28,10),
@valor_sobregiro  numeric(28,10),@valor_haber_liq numeric(28,10),@cantidad_haberes_liquido int,
@un_ciclo_mas int, @valor_sobregiro_a_llegar numeric(28,10),@suma_haberes_liquido numeric(28,10),
@moneda_haber_liq char(4),@es_imponible char(1), @es_base_calculo char(1),@es_propdias char(1),
@valor_decimal numeric(28,10),@haber_liq_impo char(1),@haber_liquido_trib char(1),
@haber_propdias char(1), @centro_costo_hl int , @bTieneAsignacion int

declare @detenerloop int
SET DATEFORMAT dmy



select @es_base_calculo      = 'N'
select @max_afec_afp_res     = 0
select @max_impon_inp_res    = 0
select @max_afec_afc_res     = 0
select @max_salud_pagada_res = 0
select @sp_aporte_cta_ind    = 0
select @sp_aporte_cta_fon    = 0
select @sp_nro_dias_licencia = 0
select @saldo_cta_cte        = 0
select @tot_desc_cta_cte     = 0
select @valor_anticipo       = 0
select @centro_costo         = 0
select @centro_costo_mes     = 0
select @detenerloop			 = 0
select @val_liquido_retorna  = 0

select @mes_termino_res	= @mes_termino
select @ano_termino_res = @ano_termino

select @sp_aporte_cta_ind = cod_haber
from haber
where
cod_empresa        = @empresa_proceso and
cod_planta         = @planta_proceso and
tipo_hab_contabili = 'F' and
prioridad          = 1
if @sp_aporte_cta_ind is null select @sp_aporte_cta_ind = 0

select @sp_aporte_cta_fon = cod_haber
from haber
where
cod_empresa        = @empresa_proceso and
cod_planta         = @planta_proceso and
tipo_hab_contabili = 'F' and
prioridad          = 2
if @sp_aporte_cta_fon is null select @sp_aporte_cta_fon = 0

select  @fec_inicio = fec_ini_info_perio,@fec_final =fec_fin_info_perio
from control_procesos
Where   cod_empresa =  @empresa_proceso and
        cod_planta = @planta_proceso    and
        cod_mes_proceso = @mes_proceso  and
        ano_proc_cont_proc = @ano_proceso

select @cod_mutu_base = cod_haber_base, 
       @cod_mutu_adic = cod_haber_adic
from planta
where
cod_empresa = @empresa_proceso and
cod_planta  = @planta_proceso
if @cod_mutu_base is null select @cod_mutu_base = 0
if @cod_mutu_adic is null select @cod_mutu_adic = 0


select @cod_mutu_sanna = cod_haber
from haber
where
cod_empresa        = @empresa_proceso and
cod_planta         = @planta_proceso and
cod_unidad_moneda = '%ILS'

if @cod_mutu_sanna is null select @cod_mutu_sanna = 0

select 
@sp_prop_dist_haber    = prop_dist_haber,
@sp_dist_haber_meses   = dist_haber_meses,
@sp_prop_total_dias    = prop_total_dias,
@sp_prop_haber_mes     = prop_haber_mes,
@sp_incluye_mes_inicio = incluye_mes_inicio,
@sp_incluye_mes_final  = incluye_mes_final,
@sp_calc_ult_contrato  = calc_ult_contrato,
@sp_ind_finiquitados   = ind_finiquitados,
@sp_indic_genera_dscto = indic_genera_dscto,
@sp_cod_dscto_sobreg   = cod_dscto_sobreg,
@sp_cod_proceso_sobreg = cod_proceso_sobreg,
@sp_ind_impuesto       = ind_impuesto,
@sp_ind_leyes_sociales = ind_leyes_sociales,
@sp_ind_salud_pagada   = ind_salud_pagada,
@sp_ind_dscto_retenci  = ind_dscto_retenci,
@sp_ind_dscto_cta_cte  = ind_dscto_cta_cte,
@sp_indic_genera_haber = indic_genera_haber,
@sp_cod_haber_sobreg   = cod_haber_sobreg,
@sp_incluye_hist_difer = incluye_hist_difer,
@sp_aporte_empresa     = aporte_empresa,
@sp_str_proc_diferenci = str_proc_diferenci,
@sp_str_aportes        = str_aportes,
@sp_consolida_empresa  = consolida_empresa,
@sp_ind_afp_mes        = ind_afp_mes,
@sp_fec_apli_dscto     = fec_apli_dscto,
@sp_sobregira_dsctos   = sobregira_dsctos,
@sp_ano_registro       = ano_registro,
@sp_mes_registro       = mes_registro,
@sp_ano_base           = ano_base,
@sp_mes_base           = mes_base,
@sp_ajuste_sencillo    = ajuste_sencillo,
@sp_periodo_utm        = periodo_utm,
@sp_prop_lic_medica    = prop_lic_medica,
@sp_prop_feriados      = prop_feriados,
@sp_prop_ausencias     = prop_ausencias,
@sp_ind_seg_desempleo  = ind_seg_desempleo,
@flg_tope_salud        = flg_tope_salud,
@sp_bitacora_reliq     = flg_bitacora,
@no_redondea_llss      = no_redondeo_llss,
@cal_hab_liq_sl 		= cal_hab_liq_sl

from param_reliquida
where
cod_empresa      = @empresa_proceso and
cod_planta       = @planta_proceso and
ano_periodo      = @ano_proceso and
mes_periodo      = @mes_proceso and
cod_tipo_proceso = @tipo_proceso
if @no_redondea_llss is null or @no_redondea_llss = ' '
  select @no_redondea_llss = 'N'
if @flg_tope_salud is null or @flg_tope_salud = ' '
  select @flg_tope_salud = 'N'
if @sp_ind_impuesto is null or @sp_ind_impuesto = ' '
  select @sp_ind_impuesto = 'N'
if @sp_ind_leyes_sociales is null or @sp_ind_leyes_sociales = ' '
  select @sp_ind_leyes_sociales = 'N'
if @sp_ind_salud_pagada is null or @sp_ind_salud_pagada = ' '
  select @sp_ind_salud_pagada = 'N'
if @sp_ind_dscto_cta_cte is null or @sp_ind_dscto_cta_cte = ' '
  select @sp_ind_dscto_cta_cte = 'N'
if @sp_ind_seg_desempleo is null or @sp_ind_seg_desempleo = ' '
  select @sp_ind_seg_desempleo = 'N'
if @sp_bitacora_reliq is null or @sp_bitacora_reliq = ' ' or @sp_bitacora_reliq = ''
  select @sp_bitacora_reliq = 'N'
if @sp_prop_haber_mes is null or @sp_prop_haber_mes = ' ' or @sp_prop_haber_mes = ''
  select @sp_prop_haber_mes = 'N'
if @sp_prop_lic_medica is null or @sp_prop_lic_medica = ' ' or @sp_prop_lic_medica = ''
  select @sp_prop_lic_medica = 'N'
if @sp_prop_feriados is null or @sp_prop_feriados = ' ' or @sp_prop_feriados = ''
  select @sp_prop_feriados = 'N'
if @sp_prop_ausencias is null or @sp_prop_ausencias = ' ' or @sp_prop_ausencias = ''
  select @sp_prop_ausencias = 'N'
if @sp_consolida_empresa is null or @sp_consolida_empresa = ' ' or @sp_consolida_empresa = ''
  select @sp_consolida_empresa = 'N'
if @sp_calc_ult_contrato is null or @sp_calc_ult_contrato = ' ' or @sp_calc_ult_contrato = ''
  select @sp_calc_ult_contrato = 'N' 
  

create table #max_afecto_cotiz (valor numeric(28,10))
create table #max_afecto_mutual (valor numeric(28,10))
create table #max_imponi_ley (valor numeric(28,10))
create table #max_impon_seguro (valor numeric(28,10))
create table #impto_pagado(afecto numeric(28,10),impuesto numeric(28,10),asignacion_zona numeric(28,10))
create table #salud_pagada(monto_salud numeric(28,10))
if @sp_str_proc_diferenci is not null and rtrim(ltrim(@sp_str_proc_diferenci)) != ' '
  select @sp_str_proc_diferenci = ' (''' + replace(@sp_str_proc_diferenci,'-',''',''') + ''') '

select @fec_aplicacion = fec_fin_info_perio
from control_procesos
where
cod_empresa        = @empresa_proceso and
cod_planta         = @planta_proceso and
ano_proc_cont_proc = @sp_ano_base and
cod_mes_proceso    = @sp_mes_base

select @valor_liquido_1 = 1
select @valor_liquido_2 = 0
select @pasa_1 = 1
select @suma_haber_imp = 0
select @valor_liquido_a_llegar = 0
select @valor_sobregiro_a_llegar = 0
select @valor_sobregiro_ini = 0
select @valor_sobregiro = 0
select @valor_haber_liq = 0

while ( @valor_liquido_2 <= @valor_liquido_1 or @un_ciclo_mas = 1 ) --and @valor_liquido_2+@valor_liquido_1 > 0
begin  
  
  

	select @mes_termino	= @mes_termino_res
	select @ano_termino = @ano_termino_res
	
    select @nombre_completo          = rtrim(ltrim(@sp_ape_paterno)) + ' ' + ltrim(rtrim(@sp_ape_materno)) + ' ' + ltrim(rtrim(@sp_nombre))
    select @aporte_patron_mutu       = 0
    select @aporte_patron_mutu_reliq = 0
    select @sp_impto_reliq_act_tot = 0
    select @mto_imp_aporte_afc     = 0
    select @valor_total_habere     = 0
    select @tot_impon_sin_tope     = 0
    select @hab_no_imp_no_trib     = 0
    select @tot_tributable         = 0
    select @afecto_impto           = 0
    select @mto_cancela_previs     = 0
    select @valor_desahucio        = 0
    select @mto_cancela_previs_l   = 0
    select @mto_aporte_sis         = 0
    select @mto_antig_previsio     = 0
    select @val_leyes_sociales     = 0 
    select @val_total_desctos      = 0
    select @val_liquido_pago       = 0
    select @tot_dctos_legales      = 0
    select @tot_dctos_no_legal     = 0
    select @tot_desc_cta_cte       = 0
    select @valor_anticipo         = 0
    select @monto_cancel_impto     = 0
    select @asignacion_zona        = 0   
    select @sobregiros_mes         = 0  
    select @val_liquido_pago       = 0
    select @monto_salud            = 0
    select @mto_salud_legal        = 0
    select @mto_pagado_ccaf        = 0
    select @monto_seguro_des       = 0
    select @afecto_cotizacion      = 0
    select @afecto_cotizacion_sis  = 0
    select @total_imponi_ley       = 0   
    select @afecto_cotizacion      = 0   
    select @mto_seg_cta_indidu     = 0
    select @mto_seg_cta_fondos     = 0    
    select @monto_impon_seguro     = 0
    select @cod_afp_afc            = 0
    select @aporte_convenido       = 0
    select @pje_cotzado_caja       = 0
    select @pje_desahucio          = 0
    select @pje_cotiz_previs       = 0
    select @pje_cotiz_salud        = 0
    select @porc_mutual_base       = 0
    select @porc_mutual_adic       = 0
    select @porc_mutual_sanna	   = 0
    select @monto_ahorro_prev      = 0
    select @afecto_mutual			= 0
    
     
    --personal actual
    select 
    @codigo_tipo_contra      = codigo_tipo_contra,
    @fec_mod_tipo_contr      = fec_mod_tipo_contr,
    @aplica_seguro_des       = aplica_seguro_des,
    @fec_ini_seguro_des      = fec_ini_seguro_des,
    @sp_fec_ini_contrat      = fec_ini_contrato,
    @sp_fec_fin_contr_v      = fec_fin_contr_vige,
    @centro_costo            = cod_centro_costo,
    @cod_sucursal            = cod_sucursal,
    @cod_tipo_trabajador     = cod_tipo_trabajado,
    @convenio                = convenio,
    @cod_escala_sueldo       = cod_escala_sueldo,
    @cod_sindicato           = cod_sindicato,
    @cod_cargo               = cod_cargo,
    @cod_instit_previsi_act  = cod_afp,
    @cod_instit_salud_act    = cod_isapre,
    @caja_comp_antigua_act   = cod_caja_prevision,
    @nro_contr_vig           = nro_contrato_vigen,
    @cod_unidad_adminis      = cod_unidad_adminis,
    @cod_forma_pago          = cod_forma_pago,
    @condic_previs_act       = condic_previsional,
    @cod_afp_afc             = cod_afp_afc,
    @cod_tipo_invalidez		= cod_tipo_invalidez
    from personal
    where
    cod_empresa      = @empresa_proceso   and
    cod_planta       = @planta_proceso    and
    nro_trabajador   = @sp_nro_trabajador and
    dv_trabajador    = @sp_dv_trabajador

    if @nro_contr_vig is null
    begin
		select @nro_contr_vig = 0
    end
    
    if @cod_instit_previsi_act > 0 and @cod_instit_previsi_act != 900 and  
           @cod_instit_previsi_act != 888
      select @cod_afp_afc = @cod_instit_previsi_act
    --determinacion de periodo de reliquidacion - meses proceso
    if @ano_inicio = @ano_termino
      select @meses_proceso = @mes_termino - @mes_inicio + 1
    else
      select @meses_proceso = 12 * @ano_termino - 12 * @ano_inicio + @mes_termino - @mes_inicio + 1 
    select @meses_reliq = @meses_proceso
    select @periodo_inicio  = @ano_inicio  * 100 + @mes_inicio
    select @periodo_termino = @ano_termino * 100 + @mes_termino 
    
    if @sp_prop_total_dias = 'S'
	  begin	  
		
		select @ncantdias_reliq = @meses_proceso * 30
	
	  end
    
    if datepart(yy,@sp_fec_fin_contr_v) * 100 + datepart(mm,@sp_fec_fin_contr_v) <= (@ano_termino * 100 + @mes_termino)   
      begin
        select @ano_termino = datepart(yyyy,@sp_fec_fin_contr_v)
        select @mes_termino = datepart(mm,@sp_fec_fin_contr_v)
		select @periodo_termino = @ano_termino * 100 + @mes_termino 
		
		if @ano_inicio = @ano_termino
			select @meses_proceso = @mes_termino - @mes_inicio + 1
		else
			select @meses_proceso = 12 * @ano_termino - 12 * @ano_inicio + @mes_termino - @mes_inicio + 1 
			
	    if @sp_prop_dist_haber = 'N'
			begin
				select @meses_reliq = @meses_proceso
	    end
      end
    
    
    
    --meses efectivos
    select @meses_efectivos = 0
    select @bSinMesInicio  = 0
    select @bSinMesTermino = 0
    if datepart(yy,@sp_fec_ini_contrat) * 100 + datepart(mm,@sp_fec_ini_contrat) >= (@ano_inicio  * 100 + @mes_inicio) and
       datepart(yy,@sp_fec_ini_contrat) * 100 + datepart(mm,@sp_fec_ini_contrat) <= (@ano_termino * 100 + @mes_termino)
      if @sp_incluye_mes_inicio = 'N' or @sp_incluye_mes_inicio is null
        select bSinMesInicio = 1
    if datepart(yy,@sp_fec_fin_contr_v) * 100 + datepart(mm,@sp_fec_fin_contr_v) >= (@ano_inicio  * 100 + @mes_inicio) and
       datepart(yy,@sp_fec_fin_contr_v) * 100 + datepart(mm,@sp_fec_fin_contr_v) <= (@ano_termino * 100 + @mes_termino)
      if @sp_incluye_mes_final = 'N' or @sp_incluye_mes_final is null
        begin
          if datepart(yy,@sp_fec_fin_contr_v) = datepart(yy,@sp_fec_ini_contrat) and 
             datepart(mm,@sp_fec_fin_contr_v) = datepart(mm,@sp_fec_ini_contrat)
            if @bSinMesInicio = 0
              select @bSinMesTermino = 1
            else
              select @bSinMesTermino = 1
        end
     
    if @sp_consolida_empresa = 'N'
      begin
        if @sp_calc_ult_contrato = 'S'
          select @meses_efectivos = count(*)
          from historico_liquidac
          where
          cod_empresa                      = @empresa_proceso                    and
          cod_planta                       = @planta_proceso                     and
          cod_tipo_proceso                 = 'LQ'                                and
          ano_periodo * 100 + mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
          ano_periodo * 100 + mes_periodo <= (@ano_termino * 100 + @mes_termino) and
          nro_trabajador                   = @sp_nro_trabajador                  and
          dv_trabajador                    = @sp_dv_trabajador                   and
          fec_ini_contr_vige     = @sp_fec_ini_contrat
        else
          select @meses_efectivos = count(*)
          from historico_liquidac
          where
          cod_empresa                      = @empresa_proceso                    and
          cod_planta                       = @planta_proceso                     and
          cod_tipo_proceso                 = 'LQ'                                and
          ano_periodo * 100 + mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
          ano_periodo * 100 + mes_periodo <= (@ano_termino * 100 + @mes_termino) and
          nro_trabajador                   = @sp_nro_trabajador                  and
          dv_trabajador                    = @sp_dv_trabajador  
      end
    else
      begin
        if @sp_calc_ult_contrato = 'S'
          select @meses_efectivos = count(distinct mes_periodo)
          from historico_liquidac
          where
          cod_empresa                      = @empresa_proceso                    and
          cod_tipo_proceso                 = 'LQ'                                and
          ano_periodo * 100 + mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
          ano_periodo * 100 + mes_periodo <= (@ano_termino * 100 + @mes_termino) and
          nro_trabajador                   = @sp_nro_trabajador                  and
          dv_trabajador                    = @sp_dv_trabajador                   and
          fec_ini_contr_vige               = @sp_fec_ini_contrat
        else
          select @meses_efectivos = count(distinct mes_periodo)
          from historico_liquidac
          where
          cod_empresa                      = @empresa_proceso                    and
          cod_tipo_proceso                 = 'LQ'                                and
          ano_periodo * 100 + mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
          ano_periodo * 100 + mes_periodo <= (@ano_termino * 100 + @mes_termino) and
          nro_trabajador                   = @sp_nro_trabajador                  and
          dv_trabajador                    = @sp_dv_trabajador 
      end
     
    if @meses_efectivos is null select @meses_efectivos = 0
      select @meses_reales = @meses_efectivos
    if @meses_efectivos < @meses_proceso
      begin
        if @sp_consolida_empresa = 'N'
          begin
            if @sp_calc_ult_contrato = 'S'
              select top 1 @mes_proceso_i = mes_periodo, @ano_proceso_i = ano_periodo
              from historico_liquidac
              where
              cod_empresa                      = @empresa_proceso               and
              cod_planta                       = @planta_proceso                and
              cod_tipo_proceso                 = 'LQ'                           and
              ano_periodo * 100 + mes_periodo <= (@ano_termino  * 100 + @mes_termino)  and
              nro_trabajador                   = @sp_nro_trabajador             and
              dv_trabajador                    = @sp_dv_trabajador              and
              fec_ini_contr_vige               = @sp_fec_ini_contrat
              order by (ano_periodo * 100 + mes_periodo ) desc
            else
              select top 1 @mes_proceso_i = mes_periodo, @ano_proceso_i = ano_periodo
              from historico_liquidac
              where
              cod_empresa                      = @empresa_proceso                    and
              cod_planta                       = @planta_proceso                     and
              cod_tipo_proceso                 = 'LQ'                                and
              ano_periodo * 100 + mes_periodo <= (@ano_termino  * 100 + @mes_termino)  and
              nro_trabajador                   = @sp_nro_trabajador                  and
              dv_trabajador                    = @sp_dv_trabajador                   
              order by (ano_periodo * 100 + mes_periodo ) desc
          end
        else 
          begin
            if @sp_calc_ult_contrato = 'S'
              select top 1 @mes_proceso_i = mes_periodo, @ano_proceso_i = ano_periodo
              from historico_liquidac
              where
              cod_empresa                      = @empresa_proceso                    and
              cod_tipo_proceso                 = 'LQ'                                and
              ano_periodo * 100 + mes_periodo <= (@ano_termino  * 100 + @mes_termino)  and
              nro_trabajador                   = @sp_nro_trabajador                  and
              dv_trabajador                    = @sp_dv_trabajador                   and
              fec_ini_contr_vige     = @sp_fec_ini_contrat
              order by (ano_periodo * 100 + mes_periodo ) desc
            else
              select top 1 @mes_proceso_i = mes_periodo, @ano_proceso_i = ano_periodo
              from historico_liquidac
              where
              cod_empresa                      = @empresa_proceso                    and
              cod_tipo_proceso                 = 'LQ'                                and
              ano_periodo * 100 + mes_periodo <= (@ano_termino  * 100 + @mes_termino)  and
              nro_trabajador                   = @sp_nro_trabajador                  and
              dv_trabajador                    = @sp_dv_trabajador                   
              order by (ano_periodo * 100 + mes_periodo ) desc
          end
        select @periodo_termino = @ano_proceso_i * 100 + @mes_proceso_i 
        if @sp_consolida_empresa = 'N'
          begin
            if @sp_calc_ult_contrato = 'S'
              select top 1 @mes_proceso_i = mes_periodo, @ano_proceso_i = ano_periodo
              from historico_liquidac
              where
              cod_empresa                      = @empresa_proceso                    and
              cod_planta                       = @planta_proceso                     and
              cod_tipo_proceso                 = 'LQ'                                and
              ano_periodo * 100 + mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
              nro_trabajador                   = @sp_nro_trabajador                  and
              dv_trabajador                    = @sp_dv_trabajador                   and
               fec_ini_contr_vige    = @sp_fec_ini_contrat
              order by ano_periodo * 100 + mes_periodo 
            else
              select top 1 @mes_proceso_i = mes_periodo, @ano_proceso_i = ano_periodo
              from historico_liquidac
              where
              cod_empresa                      = @empresa_proceso                    and
              cod_planta                       = @planta_proceso                     and
              cod_tipo_proceso                 = 'LQ'                                and
              ano_periodo * 100 + mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
              nro_trabajador                   = @sp_nro_trabajador                  and
              dv_trabajador                    = @sp_dv_trabajador                   
              order by ano_periodo * 100 + mes_periodo 
          end
        else
          begin
            if @sp_calc_ult_contrato = 'S'
              select top 1 @mes_proceso_i = mes_periodo, @ano_proceso_i = ano_periodo
              from historico_liquidac
              where
              cod_empresa                      = @empresa_proceso                    and
              cod_tipo_proceso                 = 'LQ'                                and
              ano_periodo * 100 + mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
              nro_trabajador                   = @sp_nro_trabajador                  and
              dv_trabajador                    = @sp_dv_trabajador                   and
			  fec_ini_contr_vige     = @sp_fec_ini_contrat
              order by ano_periodo * 100 + mes_periodo 
            else
              select top 1 @mes_proceso_i = mes_periodo, @ano_proceso_i = ano_periodo
              from historico_liquidac
              where
              cod_empresa                      = @empresa_proceso                    and
              cod_tipo_proceso                 = 'LQ'                                and
              ano_periodo * 100 + mes_periodo >= (@ano_inicio  * 100 + @mes_inicio)  and
              nro_trabajador                   = @sp_nro_trabajador                  and
              dv_trabajador                    = @sp_dv_trabajador                 
              order by ano_periodo * 100 + mes_periodo 
          end
        select @meses_proceso = @meses_efectivos
        if @bSinMesInicio = 1
          begin
            select @meses_proceso = @meses_proceso - 1
            if @mes_proceso_i = 12
              begin
                select @mes_proceso_i = 1
                select @ano_proceso_i = @ano_proceso_i + 1
              end
            else
              select @mes_proceso_i = @mes_proceso_i + 1
          end
        if @bSinMesTermino = 1
          begin
            select @meses_proceso = @meses_proceso - 1
            if @mes_termino = 1
              begin
                select @mes_termino = 12
                select @ano_termino = @ano_termino - 1
              end
            else
              select @mes_termino = @mes_termino -1
          end      
        select @mes_indice    = @mes_proceso_i 
        select @mes_reliq     = @mes_proceso_i 
        select @ano_reliq     = @ano_proceso_i 
        
        select @periodo_reliq  = @ano_reliq     * 100 + @mes_reliq
        select @periodo_indice = @ano_proceso_i * 100 + @mes_proceso_i
      end
    else
      begin
        if @bSinMesInicio = 1
          begin
            select @meses_proceso = @meses_proceso - 1
            if @mes_proceso_i = 12
              begin
                select @mes_proceso_i = 1
                select @ano_proceso_i = @ano_proceso_i + 1
              end
            else
              select @mes_proceso_i = @mes_proceso_i + 1
          end
        if @bSinMesTermino = 1
          begin
            select @meses_proceso = @meses_proceso - 1
            if @mes_termino = 1
              begin
                select @mes_termino = 12
                select @ano_termino = @ano_termino - 1
              end
            else
              select @mes_termino = @mes_termino -1
          end
        select @mes_indice     = 1
        select @mes_reliq      = @mes_inicio
        select @ano_reliq      = @ano_inicio
        select @periodo_reliq  = @ano_reliq * 100 + @mes_reliq
        select @periodo_indice = @ano_reliq * 100 + @mes_reliq
      end
          
    exec spliq_borro_indivi_reliq @sp_mes_registro, @sp_ano_registro,@empresa_proceso,
    @planta_proceso, @sp_nro_trabajador,@sp_dv_trabajador, @tipo_proceso
    
    select @valor_haber = 0
    select @cod_haber   = 0
    select @valor_exento= 0
    
    if @sp_prop_dist_haber = 'N' and @meses_proceso > 0
      begin
        select @meses_reales = 0
        select @meses_reliq  = 0
      end
     
    exec spliq_haberes_reliq @mes_proceso, @ano_proceso, @empresa_proceso,
    @planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador, @tipo_proceso,@cod_sucursal,
    @centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@sp_ano_registro,@sp_mes_registro,
    @sp_ano_base, @sp_mes_base, @meses_reales, @meses_reliq, @cod_haber output, 
    @valor_haber output, @valor_exento output, @cod_hab_aporte output,@valor_aporte output,
    @bTieneAsignacion output
    
    if @valor_haber = 0 and @bTieneAsignacion = 1
      begin
        insert into errores_calculo(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,
        nombre,cod_tipo_proceso,cod_error_tabla,descripcion_codigo,masivo_informado,
        descripcion_error,tabla_del_error, tipo_error) 
        values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,
        @nombre_completo,@tipo_proceso,100,'Valor informado','C',
        'El valor informado del haber es cero','haber_informado','E')
      end
      
    select @valor_apv = 0
    
    exec spliq_descuentos_apv_reliq @mes_proceso, @ano_proceso, @empresa_proceso,
    @planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador, @tipo_proceso,
    @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@sp_ano_registro,
    @sp_mes_registro,@sp_ano_base, @sp_mes_base, @valor_apv output  
    
    select @valor_haber = round(@valor_haber,0)
    select @valor_apv   = round(@valor_apv  ,0)
    
    if @meses_proceso > 0
      select @valor_mes = round(@valor_haber / @meses_proceso,0)
    if @meses_proceso > 0
      select @valor_apv_mes = round(@valor_apv / @meses_proceso,0)
    
    select @valor_ultimo_mes     = @valor_haber - @valor_mes * ( @meses_proceso - 1 )* 1.0
    select @valor_ultimo_mes     = round(@valor_ultimo_mes,0)
    select @valor_apv_ultimo_mes = @valor_apv - @valor_apv_mes * ( @meses_proceso - 1 ) * 1.0
    select @valor_apv_ultimo_mes = round(@valor_apv_ultimo_mes,0)
    
    insert into historico_liquidac(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,
    ano_periodo,mes_periodo,cod_tipo_proceso,nro_contr_vig_proc,cod_sucursal,
    fec_ini_contr_vige,fec_fin_contr,nro_convenio,cod_cargo,cod_centro_costo,
    cod_tipo_trabajado,cod_tipo_jornada,valor_total_habere,hab_no_imp_no_trib,
    tot_desc_cta_cte,ret_judic_resconta,tot_dctos_no_legal,tot_dctos_legales,
    val_liquido_pago,sobregiros_mes,tot_impon_sin_tope,tot_imponible,cod_instit_previsi,
    mto_cancela_previs,cod_instit_salud,monto_salud,mto_salud_legal,valor_pactado_isap,
    val_volunt_isapre,mto_pagado_ccaf,caja_comp_antigua,mto_antig_previsio,pje_cotzado_caja,
    val_leyes_sociales,afecto_impto,asignacion_zona,monto_cancel_impto,aporte_patron_mutu,
    aporte_patron_ccaf,aporte_patronal_1,aporte_patronal_2,saldo_cta_cte,tot_tributable,
    val_total_desctos,valor_desahucio,pje_desahucio,tot_imp_no_prop,mto_tope60_dfl44,
    mto_dfl44,afecto_cotizacion,total_imponi_ley,adicional_isapre,pje_cotiz_previs,
    pje_cotiz_salud,tot_impto_reliq,impto_voluntario,mto_salud_real,aporte_convenido,
    cod_unidad_adminis,cod_sindicato,monto_seguro_des,monto_ahorro_prev,mto_seg_cta_indidu,
    mto_seg_cta_fondos,monto_impon_seguro,mto_trab_tr_pesado,mto_apor_tr_pesado,
    porc_apl_tr_pesado,cod_afp_afc,mto_imp_aporte_afc,codigo_tipo_contra,
    fec_mod_tipo_contr,aplica_seguro_des,fec_ini_seguro_des,valor_anticipo,monto_aporte_sis,
    asignacion_familia,asig_famil_retroac,val_tot_tope_impon, afecto_mutual)
    values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,
    @sp_ano_registro,@sp_mes_registro,@tipo_proceso,@nro_contr_vig,@cod_sucursal,
    @sp_fec_ini_contrat,@sp_fec_fin_contr_v,@convenio,@cod_cargo,@centro_costo,
    @cod_tipo_trabajador,@cod_tipo_jornada,@valor_total_habere,@hab_no_imp_no_trib,
    @tot_desc_cta_cte,@ret_judic_resconta,@tot_dctos_no_legal,@tot_dctos_legales,
    @val_liquido_pago,@sobregiros_mes,@tot_impon_sin_tope,@tot_imponible,@cod_instit_previsi_act,
    @mto_cancela_previs,@cod_instit_salud_act,@monto_salud,@mto_salud_legal,@valor_pactado_isap,
    @val_volunt_isapre,@mto_pagado_ccaf,@caja_comp_antigua_act,@mto_antig_previsio,@pje_cotzado_caja,
    @val_leyes_sociales,@afecto_impto,@asignacion_zona,0,@aporte_patron_mutu,
    @aporte_patron_ccaf,@aporte_patronal_1,@aporte_patronal_2,@saldo_cta_cte,@tot_tributable,
    @val_total_desctos,@valor_desahucio,@pje_desahucio,@tot_imp_no_prop,@mto_tope60_dfl44,
    @mto_dfl44,@afecto_cotizacion,@total_imponi_ley,@adicional_isapre,@pje_cotiz_previs,
    @pje_cotiz_salud,@tot_impto_reliq,@impto_voluntario,@mto_salud_real,@aporte_convenido,
    @cod_unidad_adminis,@cod_sindicato,@monto_seguro_des,@monto_ahorro_prev,@mto_seg_cta_indidu,
    @mto_seg_cta_fondos,@monto_impon_seguro,@mto_trab_tr_pesado,@mto_apor_tr_pesado,
    @porc_apl_tr_pesado,@cod_afp_afc,@mto_imp_aporte_afc,@codigo_tipo_contra,
    @fec_mod_tipo_contr,@aplica_seguro_des,@fec_ini_seguro_des,@valor_anticipo,@mto_aporte_sis,
    0,0,@afecto_cotizacion, @afecto_mutual)
    
    if @sp_periodo_utm = 'A' 
      select @valor_utm_proceso = val_moneda_unidad from valor_moneda
      where 
      cod_unidad_cobro = 'UTM' and
      datepart(yy,fec_valor_moneda) = @ano_proceso and
      datepart(mm,fec_valor_moneda) = @mes_proceso
    else if @sp_periodo_utm = 'B' 
      select @valor_utm_proceso = val_moneda_unidad from valor_moneda
      where 
      cod_unidad_cobro = 'UTM' and
      datepart(yy,fec_valor_moneda) = @sp_ano_base and
      datepart(mm,fec_valor_moneda) = @sp_mes_base
    else
      select @valor_utm_proceso = val_moneda_unidad from valor_moneda
      where cod_unidad_cobro = 'UTM' and
      datepart(yy,fec_valor_moneda) = @sp_ano_registro and
      datepart(mm,fec_valor_moneda) = @sp_mes_registro
    
    select @hab_no_imp_no_trib = @hab_no_imp_no_trib + @valor_exento
    select @valor_total_habere = @valor_total_habere + @valor_exento
    select @control_meses = 0
    select @valor_prop_mes = 0
    select @sp_aporte_mutu_base = 0
    select @sp_aporte_mutu_adic = 0
    select @sp_aporte_mutu_sanna = 0
    -- loop de reliquidación
    while @periodo_indice <= @periodo_termino and @valor_haber > 0
      begin
      

	if @meses_proceso > 0
	     select @valor_mes = round(@valor_haber / @meses_proceso,0)

        if @sp_consolida_empresa = 'N'
          begin
            if not exists(select cod_empresa from historico_liquidac 
                          where cod_empresa      = @empresa_proceso   and
                          cod_planta       = @planta_proceso    and
                          cod_tipo_proceso = 'LQ'               and
                          ano_periodo      = @ano_reliq         and
                          mes_periodo      = @mes_reliq         and
                          nro_trabajador   = @sp_nro_trabajador and
                          dv_trabajador    = @sp_dv_trabajador)
              begin
                if @mes_reliq = 12
                  begin
                    select @mes_reliq = 1
                    select @ano_reliq = @ano_reliq + 1
                  end
                else
                  select @mes_reliq = @mes_reliq + 1
                select @mes_indice = @mes_indice + 1
                select @periodo_indice = @ano_reliq * 100 + @mes_reliq
                continue           
              end
          end
        else
          begin
            if not exists(select cod_empresa from historico_liquidac 
                          where cod_empresa      = @empresa_proceso   and
                          cod_tipo_proceso = 'LQ'               and
                          ano_periodo      = @ano_reliq         and
                          mes_periodo      = @mes_reliq         and
                          nro_trabajador   = @sp_nro_trabajador and
                          dv_trabajador    = @sp_dv_trabajador)
            
              begin
                if @mes_reliq = 12
                  begin
                    select @mes_reliq = 1
                    select @ano_reliq = @ano_reliq + 1
                  end
                else
                  select @mes_reliq = @mes_reliq + 1
                select @mes_indice = @mes_indice + 1
                select @periodo_indice = @ano_reliq * 100 + @mes_reliq
                continue           
              end
          end
        select @control_meses = 1
        if @periodo_indice = @periodo_termino 
          begin
            select @valor_mes = @valor_ultimo_mes
            select @valor_apv_mes = @valor_apv_ultimo_mes
          end
               
        select @valor_utm_mes = val_moneda_unidad from valor_moneda
        where 
        cod_unidad_cobro = 'UTM' and
        datepart(yy,fec_valor_moneda) = @ano_reliq and
        datepart(mm,fec_valor_moneda) = @mes_reliq
        if @valor_utm_proceso > 0
          begin
            select @valor_mes_corr     = round((@valor_mes * @valor_utm_mes)/ @valor_utm_proceso, 0) 
            select @valor_apv_mes_corr = round((@valor_apv_mes * @valor_utm_mes)/ @valor_utm_proceso, 0) 
          end
        else
          begin
            select @valor_mes_corr     = round(@valor_mes, 0) 
            select @valor_apv_mes_corr = round(@valor_apv_mes, 0) 
          end
        --histórico de liquidación
        select @sp_afecto_impto_lq      = 0
        select @sp_impto_lq             = 0
        select @asignacion_zona_lq      = 0
        select @max_afecto_cotiz        = 0
        select @max_afecto_mutu		  = 0
        select @max_imponi_ley          = 0
        select @max_impon_seguro        = 0
        select @cod_tipo_contra         = 0
        select @sp_fec_mod_tip_con      = 0
        select @sp_apli_seguro_des      = 0
        select @sp_fec_ini_seguro       = 0
        select @sp_fec_ini_contrat      = 0
        select @sp_fec_fin_contr_v      = 0
        select @cod_sucursal_mes        = 0
        select @cod_tipo_trabajador_mes = 0
        select @convenio                = 0
        select @cod_escala_sueldo       = 0
        select @cod_sindicato           = 0
        select @cod_tipo_jornada        = 0
        select @cod_cargo               = 0
        select @tot_imponible_mes       = 0
        select @cod_instit_previsi      = 0
        select @cod_instit_salud        = 0
        select @caja_comp_antigua       = 0
        select @nro_contr_vig           = 0
        select @sp_afecto_impto_lq      = 0
        select @sp_impto_lq             = 0
        select @asignacion_zona_lq      = 0
        select @monto_salud_lq          = 0
        select @valor_pactado_isap_lq   = 0
        select @adicional_isapre_lq     = 0
        select @mto_salud_legal_lq      = 0
        select @mto_salud_real_lq       = 0
        select @afecto_cotizacion_lq    = 0
        select @pagado_ccaf_lq          = 0
        select @nro_dias_enfermo        = 0
        select @nro_dias_vacacione      = 0
        select @nro_dias_ausente        = 0
        select @dias_asistidos          = 0
        select @porc_mutual_base        = 0
        select @porc_mutual_adic        = 0
        select @porc_mutual_sanna		= 0
        select @pje_cotiz_previs        = 0
        select @pje_cotiz_salud         = 0
        select @aporte_patron_mutu_reliq = 0
            
        if @sp_consolida_empresa = 'N'
          select 
          @max_afecto_cotiz        = max_afecto_cotiz,
          @max_afecto_mutu		    = max_afecto_mutu,
          @max_imponi_ley          = max_imponi_ley,
          @max_impon_seguro        = max_impon_seguro,
          @cod_tipo_contra         = codigo_tipo_contra,
          @sp_fec_mod_tip_con      = fec_mod_tipo_contr,
          @sp_apli_seguro_des      = aplica_seguro_des,
          @sp_fec_ini_seguro       = fec_ini_seguro_des,
          @sp_fec_ini_contrat      = fec_ini_contr_vige,
          @sp_fec_fin_contr_v      = fec_fin_contr,
          @centro_costo_mes        = cod_centro_costo,
          @cod_sucursal_mes        = cod_sucursal,
          @cod_tipo_trabajador_mes = cod_tipo_trabajado,
          @convenio                = nro_convenio,
          @cod_escala_sueldo       = cod_escala_sueldo,
          @cod_sindicato           = cod_sindicato,
          @cod_tipo_jornada        = cod_tipo_jornada,
          @cod_cargo               = cod_cargo,
          @tot_imponible_mes       = tot_imponible,
          @cod_instit_previsi      = cod_instit_previsi,
          @cod_instit_salud        = cod_instit_salud,
          @caja_comp_antigua       = caja_comp_antigua,
          @nro_contr_vig           = nro_contr_vig_proc,
          @sp_afecto_impto_lq      = afecto_impto,
          @sp_impto_lq             = monto_cancel_impto,
          @asignacion_zona_lq      = asignacion_zona,
          @monto_salud_lq          = monto_salud  - val_volunt_isapre,
          @valor_pactado_isap_lq   = valor_pactado_isap,
          @adicional_isapre_lq     = adicional_isapre,
          @mto_salud_legal_lq      = mto_salud_legal,
          @mto_salud_real_lq       = mto_salud_real,
          @afecto_cotizacion_lq    = afecto_cotizacion,
          @pagado_ccaf_lq          = mto_pagado_ccaf,
          @nro_dias_enfermo        = nro_dias_enfermo,
          @nro_dias_vacacione      = nro_dias_vacacione,
          @nro_dias_ausente        = nro_dias_ausente,
          @dias_asistidos          = nro_dias_asistidos,
          @porc_mutual_base        = por_mutual_base,
          @porc_mutual_adic        = por_mutual_adic,
          @porc_mutual_sanna	   = por_mutual_sanna,
          @afecto_mto_sis_lq 	   = afecto_mto_sis,
          @monto_impon_seguro_lq   = monto_impon_seguro,
          @total_imponi_ley_lq	   = total_imponi_ley
          from historico_liquidac
          where
          cod_empresa      = @empresa_proceso   and
          cod_planta       = @planta_proceso    and
          cod_tipo_proceso = 'LQ'               and
          ano_periodo      = @ano_reliq         and
          mes_periodo      = @mes_reliq         and
          nro_trabajador   = @sp_nro_trabajador and
          dv_trabajador    = @sp_dv_trabajador
        else
          begin
            select 
            @max_afecto_cotiz        = max_afecto_cotiz,
            @max_afecto_mutu		    = max_afecto_mutu,
            @max_imponi_ley          = max_imponi_ley,
            @max_impon_seguro        = max_impon_seguro,
            @cod_tipo_contra         = codigo_tipo_contra,
            @sp_fec_mod_tip_con      = fec_mod_tipo_contr,
            @sp_apli_seguro_des      = aplica_seguro_des,
            @sp_fec_ini_seguro       = fec_ini_seguro_des,
            @sp_fec_ini_contrat      = fec_ini_contr_vige,
            @sp_fec_fin_contr_v      = fec_fin_contr,
            @centro_costo_mes        = cod_centro_costo,
            @cod_sucursal_mes        = cod_sucursal,
            @cod_tipo_trabajador_mes = cod_tipo_trabajado,
            @convenio                = nro_convenio,
            @cod_escala_sueldo       = cod_escala_sueldo,
            @cod_sindicato           = cod_sindicato,
            @cod_tipo_jornada        = cod_tipo_jornada,
            @cod_cargo               = cod_cargo,
            @tot_imponible_mes       = tot_imponible,
            @cod_instit_previsi      = cod_instit_previsi,
            @cod_instit_salud        = cod_instit_salud,
            @caja_comp_antigua       = caja_comp_antigua,
            @nro_contr_vig           = nro_contr_vig_proc,
            @monto_salud_lq          = monto_salud  - val_volunt_isapre,
            @valor_pactado_isap_lq   = valor_pactado_isap,
            @adicional_isapre_lq     = adicional_isapre,
            @mto_salud_legal_lq      = mto_salud_legal,
            @mto_salud_real_lq       = mto_salud_real,
            @afecto_cotizacion_lq    = afecto_cotizacion,
            @pagado_ccaf_lq          = mto_pagado_ccaf,
            @nro_dias_enfermo        = nro_dias_enfermo,
            @nro_dias_vacacione      = nro_dias_vacacione,
            @nro_dias_ausente        = nro_dias_ausente,
            @dias_asistidos          = nro_dias_asistidos,
            @porc_mutual_base        = por_mutual_base,
            @porc_mutual_adic        = por_mutual_adic,
            @porc_mutual_sanna		 = por_mutual_sanna,
                     @afecto_mto_sis_lq 	  = afecto_mto_sis,
                     @monto_impon_seguro_lq	  = monto_impon_seguro,
                     @total_imponi_ley_lq	  = total_imponi_ley           
            from historico_liquidac
            where
            cod_empresa      = @empresa_proceso   and
            cod_tipo_proceso = 'LQ'               and
            ano_periodo      = @ano_reliq         and
            mes_periodo      = @mes_reliq         and
            nro_trabajador   = @sp_nro_trabajador and
            dv_trabajador    = @sp_dv_trabajador
            
            select 
            @sp_afecto_impto_lq      = sum(isnull(afecto_impto,0)),
            @sp_impto_lq             = sum(isnull(monto_cancel_impto,0)),
            @asignacion_zona_lq      = sum(isnull(asignacion_zona,0))
            from historico_liquidac
            where
            cod_empresa      = @empresa_proceso   and
            cod_tipo_proceso = 'LQ'               and
            ano_periodo      = @ano_reliq         and
            mes_periodo      = @mes_reliq         and
            nro_trabajador   = @sp_nro_trabajador and
            dv_trabajador    = @sp_dv_trabajador
          end
          
         /* valida topes en cero o nulo tips 33977 @max_imponi_ley y impon SIS*/
              
              if @max_imponi_ley  is null select @max_imponi_ley  = 0
              if @max_afecto_cotiz is null select @max_afecto_cotiz = 0
              if @max_impon_seguro  is null select @max_impon_seguro  = 0  
              if @max_afecto_mutu is null   select @max_afecto_mutu  = 0                
              
              select @mto_tope_prev_uf = mto_tope_prev_uf,
				     @mto_tope_afc_uf  = mto_tope_afc_uf
			  from parametro
			  where 
			  cod_empresa = @empresa_proceso and
			  cod_planta  = @planta_proceso  and
			  ano         = @ano_reliq       and
			  nro_mes     = @mes_reliq
           
                   
              select @valor_uf_mes = uf_mes from liquidacion
			  where
			  cod_empresa      = @empresa_proceso   and
			  cod_planta       = @planta_proceso    and
			  cod_tipo_proceso = 'LQ'               and
			  ano_periodo      = @ano_reliq         and
			  mes_periodo      = @mes_reliq         and
			  nro_trabajador   = @sp_nro_trabajador and
			  dv_trabajador    = @sp_dv_trabajador        
                    
                    
             /*  comentado a solicitud de b.Villalobos.
                        
              if @max_imponi_ley = 0 and @total_imponi_ley_lq != 0
              begin
					 select  @valor_topado = round(@mto_tope_prev_uf * @valor_uf_mes,0)
					 select  @valor_topado = ( @valor_topado - @total_imponi_ley_lq )
					 
					 if @max_imponi_ley != @valor_topado
						select @max_imponi_ley = @valor_topado
              end
              
              if @max_afecto_cotiz = 0 and @afecto_cotizacion_lq != 0
              begin
					 select  @valor_topado = round(@mto_tope_prev_uf * @valor_uf_mes,0)
					 select  @valor_topado = ( @valor_topado - @afecto_cotizacion_lq )
					 
					 if @max_afecto_cotiz != @valor_topado
						select @max_afecto_cotiz = @valor_topado
              end
              
              if @max_impon_seguro = 0 and @monto_impon_seguro_lq != 0
              begin
					 select  @valor_topado = round(@mto_tope_afc_uf * @valor_uf_mes,0)
					 select  @valor_topado = ( @valor_topado - @monto_impon_seguro_lq )
					 
					 if @max_impon_seguro != @valor_topado
						select @max_impon_seguro = @valor_topado
              end


              
              if @afecto_mto_sis_lq != 0
              begin
				  select  @valor_topado = round(@mto_tope_prev_uf * @valor_uf_mes,0)
				  select  @max_impon_sis = ( @valor_topado - @afecto_mto_sis_lq )
			  end
			  else
			  begin
					select  @max_impon_sis = 0
			  end
*/
			select @max_impon_sis = @max_imponi_ley
				

  			 if @max_impon_seguro < 0
			  begin
				select @max_impon_seguro = 0
			 end
			  
              /* fin valida topes en cero  */
              
              select @mes_max_imponi_ley	= @max_imponi_ley
              select @mes_max_afecto_cotiz	= @max_afecto_cotiz
              select @mes_max_impon_seguro	= @max_impon_seguro
              select @mes_max_afecto_mutu		= @max_afecto_mutu            

          
        if @cod_instit_previsi != @cod_instit_previsi_act
          insert into errores_calculo(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,
          nombre,cod_tipo_proceso,cod_error_tabla,descripcion_codigo,masivo_informado,
          descripcion_error,tabla_del_error, tipo_error) values(@empresa_proceso,
          @planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@nombre_completo,
          @tipo_proceso,200,'Inst.Previsión','C','Previsión actual distinta a periodo mensual:'+ 
          convert(char(2),@mes_reliq)+'-'+convert(char(4),@ano_reliq),'historico_liquidac','A')
          
        if @cod_instit_salud != @cod_instit_salud_act
          insert into errores_calculo(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,
          nombre,cod_tipo_proceso,cod_error_tabla,descripcion_codigo,masivo_informado,
          descripcion_error,tabla_del_error, tipo_error) values(@empresa_proceso,
          @planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@nombre_completo,
          @tipo_proceso,300,'Inst.Salud','C','Salud actual distinta a periodo mensual:'+ 
          convert(char(2),@mes_reliq)+'-'+convert(char(4),@ano_reliq),'historico_liquidac','A')
        
        if @porc_mutual_base is null select @porc_mutual_base = 0
        if @porc_mutual_adic is null select @porc_mutual_adic = 0
        if @porc_mutual_sanna is null select @porc_mutual_sanna = 0
        
        select @valor_uf_mes = uf_mes from liquidacion
        where
        cod_empresa      = @empresa_proceso   and
        cod_planta       = @planta_proceso    and
        cod_tipo_proceso = 'LQ'               and
        ano_periodo      = @ano_reliq         and
        mes_periodo      = @mes_reliq         and
        nro_trabajador   = @sp_nro_trabajador and
        dv_trabajador    = @sp_dv_trabajador
        
        if @sp_prop_haber_mes = 'S'
          begin
           if @mes_reliq = 2
	       begin
                if @dias_asistidos > 27
                      select @dias_asistidos = 30
                if @nro_dias_enfermo > 27
                      select @nro_dias_enfermo = 30
                if @nro_dias_vacacione > 27
                      select @nro_dias_vacacione = 30
                if @nro_dias_ausente > 27
                      select @nro_dias_ausente = 30
           end
            
            if @sp_prop_lic_medica = 'S'
              select @dias_asistidos = @dias_asistidos + @nro_dias_enfermo
            if @sp_prop_feriados = 'S'
              select @dias_asistidos = @dias_asistidos + @nro_dias_vacacione
            if @sp_prop_ausencias = 'S'
              select @dias_asistidos = @dias_asistidos + @nro_dias_ausente

	    if @dias_asistidos > 30 
              select @dias_asistidos = 30            

            select @valor_mes_corr = round(@dias_asistidos * ( @valor_mes_corr / 30 ),0) 
            select @valor_mes      = round(@dias_asistidos * ( @valor_mes      / 30 ),0)  
            select @valor_prop_mes = @valor_prop_mes + @valor_mes        
          end
          
          
      /*   if @valor_uf_mes > 0
          if (@monto_ahorro_prev / @valor_uf_mes) + (@valor_apv_mes_corr / @valor_uf_mes) > 50
            begin
              select @valor_apv_mes_corr = 50 * @valor_uf_mes - @monto_ahorro_prev 
              if @valor_apv_mes_corr < 0 select @valor_apv_mes_corr = 0
              select @valor_apv_mes_corr = round(@valor_apv_mes_corr, 0 )
            end */
            
          if @valor_uf_mes > 0
			  if (@valor_apv_mes_corr / @valor_uf_mes) > 50
				begin
				  select @valor_apv_mes_corr = 50 * @valor_uf_mes  
				  if @valor_apv_mes_corr < 0 select @valor_apv_mes_corr = 0
				  select @valor_apv_mes_corr = round(@valor_apv_mes_corr, 0 )
				end
                
		                
        select @dsctos_legales_reliq     = 0
        select @mto_cancela_previs_reliq = 0
        select @mto_aporte_sis_reliq     = 0
        select @monto_salud_reliq        = 0
        select @mto_salud_legal_reliq    = 0
        select @salud_voluntaria_reliq   = 0
        select @mto_pagado_ccaf_reliq    = 0
        select @mto_antig_previsio_reliq = 0
        select @mto_desahucio_reliq      = 0
        select @val_leyes_sociales_reliq = 0
        select @sp_afecto_impto_reliq    = 0
        select @asignacion_zona_reliq    = 0
        select @sp_impto_reliq           = 0
        select @tot_tributable_reliq     = 0
        select @imponi_ley_reliq         = 0
        select @afecto_impto_corr        = 0
        select @seguro_des_reliq         = 0
        select @mto_seg_cta_indidu_reliq = 0
        select @mto_seg_cta_fondos_reliq = 0
        select @impon_seguro_reliq       = 0
        select @sp_impto_reliq_act       = 0
        select @afecto_cotiza_reliq      = 0
        select @val_liquido_pago_reliq   = 0            
        select @tot_tributable_reliq     = @valor_mes_corr
        select @valor_haber_reliq        = 0        
        select @tot_tributable           = @tot_tributable     + @valor_mes            
        if @sp_ind_leyes_sociales = 'S' 
          begin
            select @tot_impon_sin_tope = @tot_impon_sin_tope + @valor_mes_corr
            select @tot_impon_sin_tope_mes = @valor_mes_corr
          end
        else
          begin
            select @tot_impon_sin_tope = @tot_impon_sin_tope + 0
            select @tot_impon_sin_tope_mes = 0
          end

        select @valor_total_habere = @valor_total_habere + @valor_mes
        select @valor_haber_reliq  = @valor_mes
            
        select @max_afec_afp_res  = 0
        select @max_impon_inp_res = 0
        select @max_afec_afc_res  = 0
        select @max_salud_pagada_res = 0
        select @sp_afecto_impto_otros = 0
        select @asignacion_zona_otros = 0
        select @sp_impto_otros = 0
          select @afecto_mutual_reliq      = 0
           
        select @max_afec_afp_res  = -1
        select @max_impon_inp_res = -1
        select @max_afec_afc_res  = -1
          select @max_afecto_mutu_res  = -1
            
        if @sp_incluye_hist_difer = 'S' and @sp_str_proc_diferenci is not null and
           ltrim(rtrim(@sp_str_proc_diferenci)) != ' '
          begin
          
			if @sp_consolida_empresa = 'N'
			  begin
					--AFP-ISAPRE
					delete from #max_afecto_cotiz
					select @str_select = 'insert into #max_afecto_cotiz(valor) select sum(afecto_cotizacion) from hist_diferencias ' +
					' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and cod_planta = ' + convert(char(10),@planta_proceso) + ' and
					ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq) + 
					' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
					' and cod_tipo_proceso in ' + @sp_str_proc_diferenci
		            
					exec (@str_select)
		            
					select @max_afec_afp_res = valor from #max_afecto_cotiz
					select @max_afec_afp_res = @max_afecto_cotiz - @max_afec_afp_res
		            
					--MUTUAL      
					delete from #max_afecto_mutual
					select @str_select = 'insert into #max_afecto_mutual(valor) select sum(afecto_mutual) from hist_diferencias ' +
					  ' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and cod_planta = ' + convert(char(10),@planta_proceso) + ' and
					  ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq) + 
					  ' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
					  ' and cod_tipo_proceso in ' + @sp_str_proc_diferenci            
					exec (@str_select)
					select @max_afecto_mutu_res = valor from #max_afecto_mutual
					select @max_afecto_mutu_res = @max_afecto_mutu - @max_afecto_mutu_res
		              
					--if @max_afec_afp_res is null select @max_afec_afp_res = 0
					--INP-FONASA
					delete from #max_imponi_ley
					select @str_select = 'insert into #max_imponi_ley(valor) select sum(total_imponi_ley)  from hist_diferencias ' +
					' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and cod_planta = ' + convert(char(10),@planta_proceso) + ' and
					ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq)  + 
					' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
					' and cod_tipo_proceso in ' + @sp_str_proc_diferenci
		            
					exec (@str_select)
		            
					select @max_impon_inp_res = valor from #max_imponi_ley
					select @max_impon_inp_res = @max_imponi_ley - @max_impon_inp_res
		              
					--if @max_impon_inp_res is null select @max_impon_inp_res = 0
					--AFC
					delete from #max_impon_seguro
					select @str_select = 'insert into #max_impon_seguro(valor) select sum(monto_impon_seguro) from hist_diferencias ' +
					' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and cod_planta = ' + convert(char(10),@planta_proceso) + ' and
					ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq) +   
					' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
					' and cod_tipo_proceso in ' + @sp_str_proc_diferenci
		            
					exec (@str_select)
		            
		            
					select @max_afec_afc_res = valor from #max_impon_seguro
					select @max_afec_afc_res = @max_impon_seguro - @max_afec_afc_res
		            
					--if @max_impon_inp_res is null select @max_impon_inp_res = 0
					--IMPUESTOS PAGADOS
					delete from #impto_pagado
					select @str_select = 'insert into #impto_pagado(afecto,impuesto,asignacion_zona) select sum(afecto_impto),sum(monto_cancel_impto),sum(asignacion_zona) from hist_diferencias ' +
					' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and cod_planta = ' + convert(char(10),@planta_proceso) + ' and
					ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq)  + 
					' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
					' and cod_tipo_proceso in ' + @sp_str_proc_diferenci
		             
					exec (@str_select)
		            
					select 
					@sp_afecto_impto_otros = afecto,
					@sp_impto_otros        = impuesto, 
					@asignacion_zona_otros = asignacion_zona 
					from #impto_pagado
		            
					if @sp_afecto_impto_otros is null select @sp_afecto_impto_otros = 0
					if @sp_impto_otros is null select @sp_impto_otros = 0
					if @asignacion_zona_otros is null select @asignacion_zona_otros = 0   
		            
					--SALUD PAGADA            
					delete from #salud_pagada
					select @str_select = 'insert into #salud_pagada(monto_salud) select sum(monto_salud) from hist_diferencias ' +
					' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and cod_planta = ' + convert(char(10),@planta_proceso) + ' and
					ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq) + 
					' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
					' and cod_tipo_proceso in ' + @sp_str_proc_diferenci            
		             
					exec (@str_select)
		            
					select @max_salud_pagada_res = monto_salud from #salud_pagada
					if @max_salud_pagada_res is null select @max_salud_pagada_res = 0    
				 end
			  else
			  begin
				--AFP-ISAPRE            
				  delete from #max_afecto_cotiz
				  select @str_select = 'insert into #max_afecto_cotiz(valor) select sum(afecto_cotizacion) from hist_diferencias ' +
				  ' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and
				  ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq) + 
				  ' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
				  ' and cod_tipo_proceso in ' + @sp_str_proc_diferenci            
				  exec (@str_select)
				  select @max_afec_afp_res = valor from #max_afecto_cotiz
				  select @max_afec_afp_res = @max_afecto_cotiz - @max_afec_afp_res
	              
				  --MUTUAL      
				  delete from #max_afecto_mutual
				  select @str_select = 'insert into #max_afecto_mutual(valor) select sum(afecto_mutual) from hist_diferencias ' +
				  ' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and
				  ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq) + 
				  ' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
				  ' and cod_tipo_proceso in ' + @sp_str_proc_diferenci            
				  exec (@str_select)
				  select @max_afecto_mutu_res = valor from #max_afecto_mutual
				  select @max_afecto_mutu_res = @max_afecto_mutu - @max_afecto_mutu_res
	              
	              
				  --if @max_afec_afp_res is null select @max_afec_afp_res = 0
				  --INP-FONASA
				  delete from #max_imponi_ley
				  select @str_select = 'insert into #max_imponi_ley(valor) select sum(total_imponi_ley)  from hist_diferencias ' +
				  ' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and
				  ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq)  + 
				  ' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
				  ' and cod_tipo_proceso in ' + @sp_str_proc_diferenci 
				  exec (@str_select)
				  select @max_impon_inp_res = valor from #max_imponi_ley
				  select @max_impon_inp_res = @max_imponi_ley - @max_impon_inp_res
	              
	              
				  --if @max_impon_inp_res is null select @max_impon_inp_res = 0
				  --AFC
				  delete from #max_impon_seguro
				  select @str_select = 'insert into #max_impon_seguro(valor) select sum(monto_impon_seguro) from hist_diferencias ' +
				  ' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and
				  ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq) +   
				  ' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
				  ' and cod_tipo_proceso in ' + @sp_str_proc_diferenci            
				  exec (@str_select)
				  select @max_afec_afc_res = valor from #max_impon_seguro
				  select @max_afec_afc_res = @max_impon_seguro - @max_afec_afc_res

				  --if @max_impon_inp_res is null select @max_impon_inp_res = 0
				  --IMPUESTOS PAGADOS
				  delete from #impto_pagado
				  select @str_select = 'insert into #impto_pagado(afecto,impuesto,asignacion_zona) select sum(afecto_impto),sum(monto_cancel_impto),sum(asignacion_zona) from hist_diferencias ' +
				  ' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and
				  ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq)  + 
				  ' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
				  ' and cod_tipo_proceso in ' + @sp_str_proc_diferenci            
				  exec (@str_select)
				  select @sp_afecto_impto_otros = afecto,@sp_impto_otros=impuesto, @asignacion_zona_otros = asignacion_zona from #impto_pagado
				  if @sp_afecto_impto_otros is null select @sp_afecto_impto_otros = 0
				  if @sp_impto_otros is null select @sp_impto_otros = 0
				  if @asignacion_zona_otros is null select @asignacion_zona_otros = 0  
	               
	       
				  --SALUD PAGADA            
				  delete from #salud_pagada
				  select @str_select = 'insert into #salud_pagada(monto_salud) select sum(monto_salud) from hist_diferencias ' +
				  ' where cod_empresa = ' + convert(char(10),@empresa_proceso) + ' and
				  ano_periodo= ' + convert(char(10),@ano_reliq) + ' and mes_periodo= ' + convert(char(10),@mes_reliq) + 
				  ' and nro_trabajador = ' + convert(char(10),@sp_nro_trabajador) + ' and dv_trabajador = ' + '''' + @sp_dv_trabajador + '''' +
				  ' and cod_tipo_proceso in ' + @sp_str_proc_diferenci            
				  exec (@str_select)
				  select @max_salud_pagada_res = monto_salud from #salud_pagada
				  if @max_salud_pagada_res is null select @max_salud_pagada_res = 0   
			  
			  end	
					
					
          end
            
        if @sp_ind_leyes_sociales = 'S'
          begin
            if @max_afec_afp_res  is null select @max_afec_afp_res  = -1
            if @max_impon_inp_res is null select @max_impon_inp_res = -1
            if @max_afec_afc_res  is null select @max_afec_afc_res  = -1 
            if @max_afecto_mutu_res is null select @max_afecto_mutu_res  = -1     
          
            if @max_afec_afp_res  is null or @max_afec_afp_res < 0
              select @max_afec_afp_res_act = 0
            else
              select @max_afec_afp_res_act = @max_afec_afp_res
            
               if @max_afecto_mutu_res  is null or @max_afecto_mutu_res < 0
                select @max_afecto_mutu_res_act = 0
              else
                select @max_afecto_mutu_res_act = @max_afecto_mutu_res        
              
            
            
            /*33977  */
				  
              if @max_afec_afp_res > 0
                begin
                  if @max_afec_afp_res < @valor_mes
                  begin
                    select @afecto_cotiza_reliq = @max_afec_afp_res
                    select @afecto_cotiza_sis_reliq = @max_afec_afp_res
                  end
                  else
                  begin
                    select @afecto_cotiza_reliq = @valor_mes
                    select @afecto_cotiza_sis_reliq = @valor_mes
                  end
                    
                  select @max_afec_afp_res = @max_afec_afp_res - @afecto_cotiza_reliq
                  if @max_afec_afp_res is null or @max_afec_afp_res < 0
                    select @max_afec_afp_res = 0
                end
              else if @max_afec_afp_res = -1
                begin
				     if @max_afecto_cotiz < @valor_mes
				     begin
						select @afecto_cotiza_reliq = @max_afecto_cotiz
						select @afecto_cotiza_sis_reliq = @max_impon_sis
					 end
					 else
					 begin
					    select @afecto_cotiza_reliq = @valor_mes
					    select @afecto_cotiza_sis_reliq = @valor_mes
					 end
						
                  select @max_afec_afp_res = @max_afecto_cotiz - @afecto_cotiza_reliq
                  if @max_afec_afp_res is null or @max_afec_afp_res < 0
                    select @max_afec_afp_res = 0
                end
              else
                begin
                  select @afecto_cotiza_reliq = 0
                  select @max_afec_afp_res = 0
                  select @afecto_cotiza_sis_reliq = 0
                end
                
                
              if @max_afecto_mutu_res > 0
                begin
                  if @max_afecto_mutu_res < @valor_mes
                  begin
                    select @afecto_mutual_reliq = @max_afecto_mutu_res
                  end
                  else
                  begin
                    select @afecto_mutual_reliq = @valor_mes
                  end
                    
                  select @max_afecto_mutu_res = @max_afecto_mutu_res - @afecto_mutual_reliq
                  
                  if @max_afecto_mutu_res is null or @max_afecto_mutu_res < 0
                    select @max_afecto_mutu_res = 0
                end
              else if @max_afecto_mutu_res = -1
                begin
				     if @max_afecto_mutu < @valor_mes
				     begin
						select @afecto_mutual_reliq = @max_afecto_mutu
					 end
					 else
					 begin
					    select @afecto_mutual_reliq = @valor_mes
					 end
						
                   select @max_afecto_mutu_res = @max_afecto_mutu - @afecto_mutual_reliq

                  
                  if @max_afecto_mutu_res is null or @max_afecto_mutu_res < 0
                    select @max_afecto_mutu_res = 0
                end
              else
                begin
                  select @afecto_mutual_reliq = 0
                  select @max_afecto_mutu_res = 0
                end
              
              if @max_impon_inp_res > 0
              begin
                if @max_impon_inp_res < @valor_mes
                  select @imponi_ley_reliq = @max_impon_inp_res
                else
                  select @imponi_ley_reliq = @valor_mes
                select @max_impon_inp_res = @max_impon_inp_res - @imponi_ley_reliq
                if @max_impon_inp_res is null or @max_impon_inp_res < 0
                  select @max_impon_inp_res = 0
              end
            else if @max_impon_inp_res = -1
              begin
                 if @max_imponi_ley > 0
                  begin
					  if @max_imponi_ley < @valor_mes
						select @imponi_ley_reliq = @max_imponi_ley
					  else
						select @imponi_ley_reliq = @valor_mes					  
				  end
				  else
				  begin
						select @imponi_ley_reliq = @valor_mes
				  end
				  select @max_impon_inp_res = @max_imponi_ley - @imponi_ley_reliq
                  if @max_impon_inp_res is null or @max_impon_inp_res < 0
                    select @max_impon_inp_res = 0
                end
            else
              begin
                select @imponi_ley_reliq = 0
                select @max_impon_inp_res = 0
              end
           
          end
        else
          begin
			 select @afecto_cotiza_reliq = 0
              select @imponi_ley_reliq = 0
              select @afecto_cotiza_sis_reliq = 0
              select @max_afec_afp_res    = @max_afecto_cotiz
              select @max_impon_inp_res   = @max_imponi_ley
              select @afecto_mutual_reliq = 0
              select @max_afecto_mutu_res = @max_afecto_mutu
          end
        
        if @sp_ind_seg_desempleo = 'S'
		begin
			        
              if @max_afec_afc_res  is null select @max_afec_afc_res  = -1     
              
              if @max_afec_afc_res > 0
                begin
                  if @max_afec_afc_res < @valor_mes
                    select @impon_seguro_reliq = @max_afec_afc_res
                  else
                    select @impon_seguro_reliq = @valor_mes
                  select @max_afec_afc_res = @max_afec_afc_res - @impon_seguro_reliq
                  if @max_afec_afc_res is null or @max_afec_afc_res < 0
                    select @max_afec_afc_res = 0
                end 
              else if @max_afec_afc_res = -1
                begin
                  if @max_impon_seguro < @valor_mes
                    select @impon_seguro_reliq = @max_impon_seguro
                  else
                    select @impon_seguro_reliq = @valor_mes
                  select @max_afec_afc_res = @max_impon_seguro - @impon_seguro_reliq
                  if @max_afec_afc_res is null or @max_afec_afc_res < 0
                    select @max_afec_afc_res = 0
                end 
              else
                begin
                  select @impon_seguro_reliq = 0
                  select @max_afec_afc_res = 0
                end		
		end
		else
            begin
              select @impon_seguro_reliq = 0
              select @max_afec_afc_res    = @max_impon_seguro              
            end
            
       	  if @condic_previsional is null
		set @condic_previsional = ''

        if @sp_ind_leyes_sociales = 'S' or  @sp_ind_seg_desempleo = 'S'
          begin  
            exec spliq_comp_llss_reliq @mes_reliq, @ano_reliq, @empresa_proceso, @planta_proceso,
            @sp_nro_trabajador, @sp_dv_trabajador,@sp_ind_afp_mes,@sp_consolida_empresa,@afecto_cotiza_reliq,@imponi_ley_reliq,@impon_seguro_reliq,@afecto_cotiza_sis_reliq,
            @mto_desahucio_reliq output,@mto_prevision_reliq output,@mto_salud_legal_reliq output,@mto_pagado_ccaf_reliq output,@salud_voluntaria_reliq output,
            @salud_adicional_reliq output,@seguro_des_reliq output, @mto_aportesis_reliq output, @sp_nro_dias_licencia               
            
            if @sp_ind_leyes_sociales = 'N'
              begin
				  select @mto_desahucio_reliq = 0
				  select @mto_prevision_reliq = 0
				  select @mto_salud_legal_reliq = 0
				  select @mto_pagado_ccaf_reliq = 0
				  select @salud_voluntaria_reliq = 0
				  select @salud_adicional_reliq = 0
				  select @mto_aportesis_reliq = 0	              
              end     
              
			if @mes_max_afecto_cotiz = 0 or @mes_max_afecto_cotiz is null
              begin
					select @mto_prevision_reliq = 0
					select @afecto_cotiza_reliq = 0
					if @cod_instit_salud > 1 and @cod_instit_previsi > 0 and @condic_previsional != 'J'
					begin
						select @mto_salud_legal_reliq = 0
						select @salud_voluntaria_reliq = 0
						select @salud_adicional_reliq = 0 
					end
              end
              
              if @mes_max_afecto_mutu = 0 or @mes_max_afecto_mutu is null
              begin	
				    select @afecto_mutual_reliq = 0
              end
                            
            if @mes_max_imponi_ley = 0 or @mes_max_imponi_ley is null
              begin
					select @mto_pagado_ccaf_reliq = 0
					select @imponi_ley_reliq = 0
					if @cod_instit_salud = 1
					begin
						select @mto_salud_legal_reliq = 0
						select @salud_voluntaria_reliq = 0
						select @salud_adicional_reliq = 0 
					end
              end 
              
              if @mes_max_impon_seguro = 0 or @mes_max_impon_seguro is null
              begin	
				    select @seguro_des_reliq = 0
					select @impon_seguro_reliq = 0
              end

			if @cod_instit_salud = 0
              begin
				  if ( @max_impon_sis = 0 or @max_impon_sis is null ) and @afecto_cotiza_sis_reliq = 0
				  begin
						select @mto_aportesis_reliq = 0
				  end
			  end
			  else
			  begin
				if ( @max_impon_sis = 0 or @max_impon_sis is null )
				  begin
						select @mto_aportesis_reliq = 0
				  end			  
			  end

              
            if @sp_ind_seg_desempleo = 'N' select @seguro_des_reliq = 0
            if @mto_aportesis_reliq is null select @mto_aportesis_reliq = 0
            if  @no_redondea_llss = 'N' or @no_redondea_llss = '' or @no_redondea_llss = ' '
              begin
                select @mto_desahucio_reliq    = round(@mto_desahucio_reliq, 0)
                select @mto_prevision_reliq    = round(@mto_prevision_reliq, 0)
                select @mto_salud_legal_reliq  = round(@mto_salud_legal_reliq, 0)
                select @mto_pagado_ccaf_reliq  = round(@mto_pagado_ccaf_reliq, 0)
                select @salud_voluntaria_reliq = round(@salud_voluntaria_reliq, 0)
                select @salud_adicional_reliq  = round(@salud_adicional_reliq, 0)
                select @seguro_des_reliq       = round(@seguro_des_reliq, 0)
                select @mto_aportesis_reliq    = round(@mto_aportesis_reliq, 0)
              end
            if ( @cod_instit_previsi_act = 0 or @cod_instit_previsi_act = 888 or 
                 @cod_instit_previsi_act = 999 ) and ( @caja_comp_antigua_act = 0 or 
                 @caja_comp_antigua_act is null )
              begin
                select @mto_prevision_reliq = 0
                select @mto_desahucio_reliq = 0
              end
            if @cod_instit_salud_act = 0
              begin
                select @mto_salud_legal_reliq = 0
                select @mto_pagado_ccaf_reliq = 0
                select @salud_voluntaria_reliq = 0
                select @salud_adicional_reliq = 0
              end
            
            if @aplica_seguro_des = 'N'
			  begin
					  select @seguro_des_reliq = 0
					  select @impon_seguro_reliq = 0
					  select @max_afec_afc_res = 0
			end
            
            if @sp_ind_salud_pagada = 'S' and @cod_instit_salud_act > 1  and @condic_previsional != 'J'
              begin
                if @max_afec_afp_res_act > 0
                  select @afecto_cotiza_total =  @tot_imponible_mes -  @max_afec_afp_res 
                else
                  select @afecto_cotiza_total = @afecto_cotizacion_lq + @afecto_cotiza_reliq
                select @pagado_ccaf_total = 0
                select @salud_legal_total = round(@afecto_cotiza_total * 0.07, 0) 
                 
                if @monto_salud_lq  > @salud_legal_total
                    begin
                      select @mto_salud_legal_reliq  = 0
                      select @mto_pagado_ccaf_reliq  = 0
                      select @salud_voluntaria_reliq = 0
                      select @salud_adicional_reliq  = 0
                    end
                  else
                    begin  
                      if @salud_legal_total - @monto_salud_lq < @mto_salud_legal_reliq
                        select @mto_salud_legal_reliq = @salud_legal_total - @monto_salud_lq
                     /* if @salud_legal_total > @monto_salud_lq + @mto_salud_legal_reliq + @max_salud_pagada_res
                        select @mto_salud_legal_reliq = @salud_legal_total - @monto_salud_lq*/
                      if @pagado_ccaf_total - @pagado_ccaf_lq < @mto_pagado_ccaf_reliq and @pagado_ccaf_total > 0
                        select @mto_pagado_ccaf_reliq = @pagado_ccaf_total - @pagado_ccaf_lq
                    end
              end
          end
        else
          begin
            select @mto_desahucio_reliq = 0
            select @mto_prevision_reliq = 0
            select @mto_salud_legal_reliq = 0
            select @mto_pagado_ccaf_reliq = 0
            select @salud_voluntaria_reliq = 0
            select @salud_adicional_reliq = 0
            select @seguro_des_reliq = 0
            select @mto_aportesis_reliq = 0
          end 
                    
        select @tope_salud_mes = tope_salud_pesos
        from parametro
        where 
        cod_empresa = @empresa_proceso and
        cod_planta  = @planta_proceso  and
        ano         = @ano_reliq       and
        nro_mes     = @mes_reliq
        
        if @tope_salud_mes is null select @tope_salud_mes = 0
        
        if @flg_tope_salud = 'S'
          begin
			--tip 46757 
				if @cod_instit_salud_act <= 1 and @mto_salud_legal_lq > 0 and @monto_salud_lq > @mto_salud_legal_lq
				begin
					set @monto_salud_lq = @mto_salud_legal_lq		
				end
			--fin tip 46757 
          
          
            if @monto_salud_lq + @max_salud_pagada_res + @mto_salud_legal_reliq > @tope_salud_mes
              select @mto_salud_legal_reliq = @tope_salud_mes - ( @monto_salud_lq + @max_salud_pagada_res )
            if @mto_salud_legal_reliq < 0 select @mto_salud_legal_reliq = 0
          end
        
        if @mto_prevision_reliq is null
          select @mto_prevision_reliq = 0
        if @mto_desahucio_reliq is null
          select @mto_desahucio_reliq = 0
        if @mto_aportesis_reliq is null
          select @mto_aportesis_reliq = 0
           
         
        if @sp_ind_afp_mes = 'N'
           begin
              if @cod_instit_previsi_act > 0 and @cod_instit_salud_act > 1 
                begin
                  select @mto_desahucio_reliq = 0 
                  select @mto_cancela_previs_reliq = @mto_prevision_reliq 
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq      
                  select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq
                  select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                  select @monto_salud_reliq  = @mto_salud_legal_reliq
                end
              else if @cod_instit_previsi_act > 0 and @cod_instit_salud_act = 1
                begin    
                  select @mto_desahucio_reliq = 0 
                  select @mto_cancela_previs_reliq = @mto_prevision_reliq
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                  select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                  select @monto_salud_reliq  = @mto_salud_legal_reliq  
                  select @mto_salud_legal_reliq = 0             
                end              
              else if @cod_instit_previsi_act > 0 and @cod_instit_salud_act = 0
                begin    
                  select @mto_desahucio_reliq = 0 
                  select @mto_cancela_previs_reliq = @mto_prevision_reliq
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                  select @monto_salud        = 0
                  select @monto_salud_reliq  = 0  
                  select @mto_salud_legal_reliq = 0             
                end
              else if @caja_comp_antigua_act > 0 and @cod_instit_salud_act > 1   
                begin
                  select @mto_desahucio_reliq = @mto_desahucio_reliq 
                  select @mto_antig_previsio_reliq = @mto_prevision_reliq
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                  select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq
                  select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                  select @monto_salud_reliq  = @mto_salud_legal_reliq
                end
              else if @caja_comp_antigua_act > 0 and @cod_instit_salud_act = 1 
                begin   
                  select @mto_desahucio_reliq = @mto_desahucio_reliq 
                  select @mto_antig_previsio_reliq = @mto_prevision_reliq
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                  select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                  select @monto_salud_reliq  = @mto_salud_legal_reliq
                  select @mto_salud_legal_reliq = 0
                end
              else if @caja_comp_antigua_act > 0 and @cod_instit_salud_act = 0 
                begin   
                  select @mto_desahucio_reliq = @mto_desahucio_reliq 
                  select @mto_antig_previsio_reliq = @mto_prevision_reliq
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                  select @monto_salud        = 0
                  select @monto_salud_reliq  = 0
                  select @mto_pagado_ccaf_reliq = 0 
                  select @mto_salud_legal_reliq = 0
                end
              else if @caja_comp_antigua_act = 0 and @cod_instit_salud_act = 1 
                begin   
                  select @mto_desahucio_reliq = @mto_desahucio_reliq 
                  select @mto_antig_previsio_reliq = @mto_prevision_reliq
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                  select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                  select @monto_salud_reliq  = @mto_salud_legal_reliq
                  select @mto_salud_legal_reliq = 0
                end
              else if @caja_comp_antigua_act = 0 and @cod_instit_salud_act > 1 
                begin   
                  select @mto_desahucio_reliq = @mto_desahucio_reliq 
                  select @mto_antig_previsio_reliq = @mto_prevision_reliq
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                  select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                  select @monto_salud_reliq  = @mto_salud_legal_reliq
                  select @mto_salud_legal_reliq = 0
                end
            end
          else
            begin              
              if @cod_instit_previsi > 0 and @cod_instit_salud > 1 
                if @cod_instit_salud_act = 1 
                  begin
                    select @mto_desahucio_reliq = 0 
                    select @mto_cancela_previs_reliq = @mto_prevision_reliq
                    select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                    select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                    select @monto_salud_reliq  = @mto_salud_legal_reliq
                    select @mto_salud_legal_reliq = 0
                  end
                else
                  begin
                    select @mto_desahucio_reliq = 0 
                    select @mto_cancela_previs_reliq = @mto_prevision_reliq
                    select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                    select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq
                    select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                    select @monto_salud_reliq  = @mto_salud_legal_reliq
                  end
              else if @cod_instit_previsi > 0 and @cod_instit_salud = 1   
                begin 
                  select @mto_desahucio_reliq = 0 
                  select @mto_cancela_previs_reliq = @mto_prevision_reliq
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                  if @cod_instit_salud_act > 1
                    begin
                      select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                      select @monto_salud_reliq  = @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                      select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                      select @mto_pagado_ccaf_reliq = 0
                      select @mto_salud_legal_reliq = @monto_salud_reliq
                    end
                  else
                    begin
                      select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                      select @monto_salud_reliq  = @mto_salud_legal_reliq
                      select @mto_salud_legal_reliq = 0
                    end
                end
               else if @cod_instit_previsi > 0 and @cod_instit_salud = 0
                begin 
                  select @mto_desahucio_reliq = 0 
                  select @mto_cancela_previs_reliq = @mto_prevision_reliq
                  select @mto_aporte_sis_reliq     = @mto_aportesis_reliq  
                  
                  select @mto_salud_legal    = 0
                  select @monto_salud        = 0
                  select @monto_salud_reliq  = 0
                    
                end
              else if @caja_comp_antigua > 0 and @cod_instit_salud > 1  
                if @cod_instit_salud_act = 1 
                  begin
                    select @mto_desahucio_reliq = @mto_desahucio_reliq 
                    select @mto_antig_previsio_reliq = @mto_prevision_reliq
                    select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                    select @monto_salud_reliq  = @mto_salud_legal_reliq
                    select @mto_salud_legal_reliq = 0
                  end
                else
                  begin
                    select @mto_desahucio_reliq = @mto_desahucio_reliq 
                    select @mto_antig_previsio_reliq = @mto_prevision_reliq
                    select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq
                    select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                    select @monto_salud_reliq  = @mto_salud_legal_reliq
                  end
              else if @caja_comp_antigua > 0 and @cod_instit_salud = 1 
                begin 
                  select @mto_desahucio_reliq = @mto_desahucio_reliq 
                  select @mto_antig_previsio_reliq = @mto_prevision_reliq 
                  if @cod_instit_salud_act > 1
                    begin
                      select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                      select @monto_salud        = @monto_salud        + @mto_pagado_ccaf_reliq
                      select @monto_salud_reliq  = @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                      select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                      select @mto_pagado_ccaf_reliq = 0 
                      select @mto_salud_legal_reliq = @monto_salud_reliq
                    end
                  else
                    begin
                      select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                      select @monto_salud_reliq  = @mto_salud_legal_reliq
                      select @mto_salud_legal_reliq = 0
                    end
                end      
              else if @caja_comp_antigua > 0 and @cod_instit_salud = 0 
                begin 
                  select @mto_desahucio_reliq = @mto_desahucio_reliq 
                  select @mto_antig_previsio_reliq = @mto_prevision_reliq 
                  if @cod_instit_salud_act > 1
                    begin
                      select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                      select @monto_salud        = @monto_salud        + @mto_pagado_ccaf_reliq
                      select @monto_salud_reliq  = @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                      select @mto_salud_legal    = @mto_salud_legal    + @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                      select @mto_pagado_ccaf_reliq = 0 
                      select @mto_salud_legal_reliq = @monto_salud_reliq
                    end
                  else
                    begin
                      select @monto_salud        = 0
                      select @monto_salud_reliq  = 0
                      select @mto_pagado_ccaf_reliq = 0 
                      select @mto_salud_legal_reliq = 0
                    end
                end        
              else if @caja_comp_antigua = 0 and @cod_instit_salud = 1     
                begin
                  select @mto_desahucio_reliq = @mto_desahucio_reliq 
                  select @mto_antig_previsio_reliq = @mto_prevision_reliq
                  if @cod_instit_salud_act > 1
                    begin
                      select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                      select @monto_salud        = @monto_salud        + @mto_pagado_ccaf_reliq
                      select @monto_salud_reliq  = @mto_salud_legal_reliq + @mto_pagado_ccaf_reliq
                      select @mto_pagado_ccaf_reliq = 0 
                      select @mto_salud_legal_reliq = @monto_salud_reliq
                    end
                  else
                    begin
                      select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                      select @monto_salud_reliq  = @mto_salud_legal_reliq
                      select @mto_salud_legal_reliq = 0
                    end                
                end
              else if @caja_comp_antigua = 0 and @cod_instit_salud > 1     
                begin
                  select @mto_desahucio_reliq = 0 
                  select @mto_antig_previsio_reliq = @mto_prevision_reliq
                  select @monto_salud        = @monto_salud        + @mto_salud_legal_reliq
                  select @monto_salud_reliq  = @mto_salud_legal_reliq
                  select @mto_salud_legal_reliq = 0
                end
            end 
		  
        select @afecto_mutual = @afecto_mutual + @afecto_mutual_reliq
        select @afecto_cotizacion  = @afecto_cotizacion  + @afecto_cotiza_reliq
        select @afecto_cotizacion_sis  = @afecto_cotizacion_sis  + @afecto_cotiza_sis_reliq
        select @total_imponi_ley   = @total_imponi_ley   + @imponi_ley_reliq
		select @mto_cancela_previs = @mto_cancela_previs + @mto_cancela_previs_reliq
          
        select @valor_desahucio    = @valor_desahucio    + @mto_desahucio_reliq 
        select @mto_antig_previsio = @mto_antig_previsio + @mto_antig_previsio_reliq
        select @mto_pagado_ccaf    = @mto_pagado_ccaf    + @mto_pagado_ccaf_reliq
        
         
        select @monto_ahorro_prev       = @monto_ahorro_prev  + @valor_apv_mes
        select @monto_ahorro_prev_reliq = @valor_apv_mes_corr
        select @tot_dctos_no_legal      = @tot_dctos_no_legal + @valor_apv_mes
        select @val_total_desctos       = @val_total_desctos  + @valor_apv_mes
        
                    
        
        if @sp_apl_trab_pesado = 'S'
          begin
            if @sp_porc_trab_pesad is null
              begin
                insert into errores_calculo(cod_empresa, cod_planta, nro_trabajador, dv_trabajador,
                nombre, cod_error_tabla, descripcion_codigo, masivo_informado,
                descripcion_error, tabla_del_error,cod_tipo_proceso,tipo_error)
                values(@empresa_proceso, @planta_proceso, @sp_nro_trabajador, @sp_dv_trabajador,
                convert(char(10),@sp_nro_trabajador), 15, 'Revisar porcentaje de Trabajo Pesado', 'C',
                'El trabajador tiene marcado Trabajo Pesado y no tiene asignado un porcentaje', 
                'Personal',@tipo_proceso,'E')
              end
            else
              begin
                exec spliq_trab_pesado_reliq @mes_reliq,@ano_reliq,@empresa_proceso,@planta_proceso,
                @sp_nro_trabajador,@sp_dv_trabajador,@tipo_proceso,@sp_consolida_empresa,@sp_porc_trab_pesad,@fec_final,@dias_proceso,0
              end
          end
        
        select @mto_seg_cta_indidu_reliq = 0
        select @mto_seg_cta_fondos_reliq = 0
        select @mto_imp_aporte_afc_reliq = 0
            
		begin
			select  @sp_fec_inicio = fec_ini_info_perio,@sp_fec_final =fec_fin_info_perio
			from control_procesos
			Where   cod_empresa =  @empresa_proceso and
					cod_planta = @planta_proceso    and
					cod_mes_proceso = @mes_reliq  and
					ano_proc_cont_proc = @ano_reliq
        
            if @aplica_seguro_des ='S' and @fec_ini_seguro_des <= @sp_fec_final and @sp_ind_seg_desempleo = 'S'
              begin
              
				if @condic_previs_act = 'J' and (  @cod_tipo_invalidez = 2 or @cod_tipo_invalidez is null )
				 begin
					 select @mto_seg_cta_fondos_reliq = 0
					  select @mto_imp_aporte_afc_reliq = 0
					  select @mto_seg_cta_indidu_reliq = 0
					  select @seguro_des_reliq	       = 0
				 end
				 else
				 begin   
              
              
					if @cod_instit_previsi_act > 0
					  select @cod_afp_afc = @cod_instit_previsi_act   
					select @dif_seguro = 0
					
					--select @dif_seguro=convert(int,datediff(dd,@sp_fec_ini_seguro,@sp_fec_final) / 365.25)
					--select @dif_seguro=convert(int,datediff(dd,@sp_fec_ini_seguro,@fec_final) / 365.25)
	                  
					  select @dif_seguro=convert(int,datediff(dd,@fec_ini_seguro_des,@sp_fec_final) / 365.25)
	                  
				   exec spliq_aporte_segur_reliq @mes_reliq,@ano_reliq,@empresa_proceso,@planta_proceso,
							@sp_nro_trabajador,@sp_dv_trabajador,@tipo_proceso,@sp_consolida_empresa,@sp_cod_forma_pago,@cod_tipo_contra,
							@sp_fec_final,@dias_proceso,@sp_fec_mod_tip_con,@sp_fec_inicio,@impon_seguro_reliq,@mto_seg_cta_indidu_reliq output,
							@mto_seg_cta_fondos_reliq output, @mto_imp_aporte_afc_reliq output
							
					  if @dif_seguro >=11
					  begin
							select @mto_seg_cta_indidu_reliq = 0
							select @seguro_des_reliq	     = 0
					  end
					  end
					end
            else
              begin
                select @mto_seg_cta_fondos_reliq = 0
                select @mto_imp_aporte_afc_reliq = 0
                select @mto_seg_cta_indidu_reliq = 0
				  select @seguro_des_reliq	     = 0
              end
        end
        
        
        select @dsctos_legales_reliq = @mto_prevision_reliq + @monto_salud_reliq + 
                                       @salud_voluntaria_reliq + @seguro_des_reliq + @mto_desahucio_reliq
         
                  
        select @val_leyes_sociales_reliq = @mto_prevision_reliq + @monto_salud_reliq + @mto_pagado_ccaf_reliq + 
                                           @salud_voluntaria_reliq + @seguro_des_reliq + @mto_desahucio_reliq
        
            
        select @val_leyes_sociales = @val_leyes_sociales + @val_leyes_sociales_reliq
        select @tot_dctos_legales  = @tot_dctos_legales  + @val_leyes_sociales_reliq
        select @val_total_desctos  = @val_total_desctos  + @val_leyes_sociales_reliq
            
        if @asignacion_zona_lq is null select @asignacion_zona_lq = 0
        if @asignacion_zona_otros is null select @asignacion_zona_otros = 0
            
        select @sp_afecto_impto_reliq = @tot_tributable_reliq - @val_leyes_sociales_reliq - @valor_apv_mes_corr 
        select @sp_afecto_impto_total = @tot_tributable_reliq - @val_leyes_sociales_reliq - @valor_apv_mes_corr + 
                                        @sp_afecto_impto_lq + @sp_afecto_impto_otros + @asignacion_zona_lq + @asignacion_zona_otros
                                        
                                        
	if @sp_ind_impuesto = 'S'
		  begin
		    exec spliq_cal_impuesto_reliq 
		    @mes_reliq,@ano_reliq,@empresa_proceso,@planta_proceso,
		    @sp_nro_trabajador,@sp_dv_trabajador,@cod_sucursal_mes,@cod_tipo_trabajador_mes,
		    @sp_afecto_impto_total, @sp_consolida_empresa, 
		    @sp_impto_reliq output,  @asignacion_zona_reliq output  

		    select @asignacion_zona_reliq = @asignacion_zona_reliq - @asignacion_zona_lq - @asignacion_zona_otros

		    if @asignacion_zona_reliq < 0 select @asignacion_zona_reliq = 0

		    select @sp_afecto_impto_reliq = @sp_afecto_impto_reliq - @asignacion_zona_reliq
		    if @sp_afecto_impto_reliq < 0 select @sp_afecto_impto_reliq = 0
		  end 
		else
		  select @sp_impto_reliq = 0


	if @sp_impto_reliq < 0 select @sp_impto_reliq = 0

	select @sp_impto_reliq = @sp_impto_reliq - @sp_impto_lq - @sp_impto_otros
	if @sp_impto_reliq < 0 select @sp_impto_reliq = 0

	select @dsctos_legales_reliq = @dsctos_legales_reliq + @sp_impto_reliq

	select @sp_impto_reliq_act = round((@sp_impto_reliq * @valor_utm_proceso)/ @valor_utm_mes , 0)
	select @sp_impto_reliq_act_tot = @sp_impto_reliq_act_tot + @sp_impto_reliq_act
					            
 


        select @monto_cancel_impto = @monto_cancel_impto + @sp_impto_reliq_act
            
        select @tot_dctos_legales  = @tot_dctos_legales  + @sp_impto_reliq_act
        select @val_total_desctos  = @val_total_desctos  + @sp_impto_reliq_act
            
        select @afecto_impto_corr = round((@sp_afecto_impto_reliq * @valor_utm_proceso)/ @valor_utm_mes , 0)
        select @afecto_impto = @afecto_impto + @afecto_impto_corr
           
        select @val_liquido_pago_reliq = @valor_mes  - @val_leyes_sociales_reliq - @valor_apv_mes_corr - @sp_impto_reliq_act
           
              
        if @mto_seg_cta_indidu_reliq is null select @mto_seg_cta_indidu_reliq = 0
        if @mto_seg_cta_fondos_reliq is null select @mto_seg_cta_fondos_reliq = 0
        if @mto_imp_aporte_afc_reliq is null select @mto_imp_aporte_afc_reliq = 0
             
        select @mto_seg_cta_indidu = @mto_seg_cta_indidu + @mto_seg_cta_indidu_reliq 
        select @mto_seg_cta_fondos = @mto_seg_cta_fondos + @mto_seg_cta_fondos_reliq 
        select @mto_imp_aporte_afc = @mto_imp_aporte_afc + @mto_imp_aporte_afc_reliq
        select @mto_aporte_sis     = @mto_aporte_sis     + @mto_aporte_sis_reliq 
        select @monto_impon_seguro = @monto_impon_seguro + @impon_seguro_reliq
        select @monto_seguro_des   = @monto_seguro_des   + @seguro_des_reliq
          
        select @valor_desahucio        = round(@valor_desahucio, 0)
        select @mto_prevision_reliq    = round(@mto_prevision_reliq, 0)
        select @monto_salud_reliq      = round(@monto_salud_reliq,0)
        select @mto_pagado_ccaf_reliq  = round(@mto_pagado_ccaf_reliq,0)
        select @salud_voluntaria_reliq = round(@salud_voluntaria_reliq,0)
        select @seguro_des_reliq       = round(@seguro_des_reliq,0)
            
        if @cod_instit_previsi_act = 0 or @cod_instit_previsi_act is null
          select @mto_aporte_sis_reliq = 0
            
        if @sp_ind_leyes_sociales = 'S'
          begin
            select @sp_aporte = 0
            select @sp_aporte_adic = 0
            select @sp_aporte_sanna = 0
            exec spliq_aporte_mutual_reliq @mes_reliq, @ano_reliq, @empresa_proceso,
            @planta_proceso, @sp_nro_trabajador, @sp_dv_trabajador, @tipo_proceso,@sp_consolida_empresa,
            @afecto_mutual_reliq, @porc_mutual_base, @porc_mutual_adic,@sp_aporte output, @sp_aporte_adic output, @sp_aporte_sanna output
          end
              
        if @sp_aporte      is null select @sp_aporte      = 0
        if @sp_aporte_adic is null select @sp_aporte_adic = 0
        if @sp_aporte_sanna is null select @sp_aporte_sanna = 0
          
        select @aporte_patron_mutu_reliq = @sp_aporte + @sp_aporte_adic + @sp_aporte_sanna
            
        insert into hist_diferencias(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,ano_periodo,mes_periodo,
        cod_tipo_proceso,nro_contr_vig_proc,cod_haber,mes_proceso_liq,ano_proceso_liq,cod_sucursal,fec_ini_contr_vige,
        fec_fin_contr,nro_convenio,cod_cargo,cod_centro_costo,cod_tipo_trabajado,valor_total_habere,
        hab_no_imp_no_trib,tot_dctos_no_legal,tot_dctos_legales,tot_impon_sin_tope,tot_imponible,cod_instit_previsi,
        mto_cancela_previs,mto_prev_voluntari,mto_ahorro_volunta,cod_instit_salud,monto_aporte_sis,
        monto_salud,mto_salud_legal,val_volunt_isapre,mto_pagado_ccaf,caja_comp_antigua,
        mto_antig_previsio,pje_cotzado_caja,val_leyes_sociales,afecto_impto,asignacion_zona,monto_cancel_impto,
        tot_tributable,total_imponi_ley,afecto_impto_corr,monto_seguro_des,mto_seg_cta_indidu,
        mto_seg_cta_fondos,monto_impon_seguro,monto_impto_corr,cod_tipo_jornada,monto_ahorro_prev,
        monto_ahorro_prev_corr,afecto_cotizacion,val_liquido_pago,valor_haber_reliq,
        max_afecto_cotiz,max_imponi_ley,max_impon_seguro,aporte_patron_mutu,valor_desahucio, 
          max_afecto_mutu, afecto_mutual)
        values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@ano_reliq,@mes_reliq,
        @tipo_proceso,@nro_contr_vig,@cod_haber,@sp_mes_registro,@sp_ano_registro,@cod_sucursal_mes,@sp_fec_ini_contrat,
        @sp_fec_fin_contr_v,@convenio,@cod_cargo,@centro_costo,@cod_tipo_trabajador_mes,@valor_mes_corr,
        0,0,@dsctos_legales_reliq,@tot_impon_sin_tope_mes,@tot_imponible_mes,@cod_instit_previsi,
        @mto_cancela_previs_reliq,0,0,@cod_instit_salud,@mto_aporte_sis_reliq,@monto_salud_reliq,
        @mto_salud_legal_reliq,@salud_voluntaria_reliq,@mto_pagado_ccaf_reliq,@caja_comp_antigua,
        @mto_antig_previsio_reliq,@pje_cotzado_caja,@val_leyes_sociales_reliq,@sp_afecto_impto_reliq,@asignacion_zona_reliq,@sp_impto_reliq,
        @tot_tributable_reliq,@imponi_ley_reliq,@afecto_impto_corr,@seguro_des_reliq,@mto_seg_cta_indidu_reliq,
        @mto_seg_cta_fondos_reliq,@impon_seguro_reliq,@sp_impto_reliq_act,@cod_tipo_jornada,@valor_apv_mes,
        @valor_apv_mes_corr,@afecto_cotiza_reliq,@val_liquido_pago_reliq,@valor_haber_reliq,
        @max_afec_afp_res,@max_impon_inp_res,@max_afec_afc_res,@aporte_patron_mutu_reliq,@mto_desahucio_reliq, 
          @max_afecto_mutu_res, @afecto_mutual_reliq)
           
        select @sp_aporte_mutu_base = @sp_aporte_mutu_base + @sp_aporte
        select @sp_aporte_mutu_adic = @sp_aporte_mutu_adic + @sp_aporte_adic
        select @sp_aporte_mutu_sanna = @sp_aporte_mutu_sanna + @sp_aporte_sanna
          
        if @mes_reliq = 12
          begin
            select @mes_reliq = 1
            select @ano_reliq = @ano_reliq + 1
          end
        else
          select @mes_reliq = @mes_reliq + 1
        
        select @mes_indice = @mes_indice + 1
        select @periodo_indice = @ano_reliq * 100 + @mes_reliq
      end -- fin loop de reliquidación
        
    --if @control_meses = 0
    --  begin
    --   delete from historico_liquidac 
    --    where cod_empresa      = @empresa_proceso   and
    --         cod_planta       = @planta_proceso    and
    --         cod_tipo_proceso = @tipo_proceso      and
    --         ano_periodo      = @sp_ano_registro   and
    --         mes_periodo      = @sp_mes_registro   and
    --          nro_trabajador   = @sp_nro_trabajador and
    --          dv_trabajador    = @sp_dv_trabajador
    --    fetch lectura_personal into
    --    @sp_nro_trabajador,@sp_dv_trabajador,@nro_contr_vig,
    --    @sp_ape_paterno, @sp_ape_materno, @sp_nombre
    --    continue
    --   end
      
    --  descuentos sin rebaja de tributacion
    select @valor_descuento = 0
    
    exec spliq_descuentos_reliq @mes_proceso, @ano_proceso, @empresa_proceso,
    @planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador, @tipo_proceso,
    @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@sp_ano_registro,
    @sp_mes_registro,@sp_ano_base, @sp_mes_base,@valor_descuento output
    
    select @val_total_desctos   = @val_total_desctos   + @valor_descuento        
    select @tot_dctos_no_legal  = @tot_dctos_no_legal  + @valor_descuento        
    select @val_leyes_sociales = round(@val_leyes_sociales, 0)
    select @val_total_desctos  = round(@val_total_desctos  , 0)
    select @tot_dctos_legales  = round(@tot_dctos_legales , 0)
       
    if @cod_instit_previsi_act = 0 or @cod_instit_previsi_act is null
      begin
        select @mto_cancela_previs_l = @mto_cancela_previs 
        select @mto_cancela_previs = 0
      end
    else
      select @mto_cancela_previs = round(@mto_cancela_previs, 0)
    
      
    select @mto_aporte_sis     = round(@mto_aporte_sis    , 0)
    select @mto_antig_previsio = round(@mto_antig_previsio, 0)
    select @mto_salud_legal    = round(@mto_salud_legal   , 0)
    select @monto_salud        = round(@monto_salud       , 0)
    select @mto_pagado_ccaf    = round(@mto_pagado_ccaf   , 0)
    select @monto_seguro_des   = round(@monto_seguro_des  , 0)
    select @monto_ahorro_prev  = round(@monto_ahorro_prev , 0)
    select @afecto_cotizacion  = round(@afecto_cotizacion , 0)
      select @afecto_cotizacion_sis =  round(@afecto_cotizacion_sis , 0)
    select @total_imponi_ley   = round(@total_imponi_ley  , 0)
    select @mto_seg_cta_indidu = round(@mto_seg_cta_indidu, 0)
    select @mto_seg_cta_fondos = round(@mto_seg_cta_fondos, 0)
      select @afecto_mutual = round(@afecto_mutual, 0)
    
    select @dscto_reliquida = dscto_reliquida
      from control_parametros
      where
      cod_empresa  = @empresa_proceso   and
      cod_planta   = @planta_proceso    and
      ano_control_proces = @sp_ano_base and
      mes_control_proces = @sp_mes_base
            
    if @dscto_reliquida is null select @dscto_reliquida = 511
        
    if @mto_seg_cta_indidu > 0
      insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
      cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@sp_aporte_cta_ind,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@mto_seg_cta_indidu,'$',@mto_seg_cta_indidu,0,
      @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@mto_seg_cta_indidu)
     
    if @mto_seg_cta_fondos > 0
      insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
      cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@sp_aporte_cta_fon,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@mto_seg_cta_fondos,'$',@mto_seg_cta_fondos,0,
      @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@mto_seg_cta_fondos)
      
    if @monto_seguro_des > 0
      insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
      valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
      cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
      aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,509,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@monto_seguro_des,'$',0,@monto_seguro_des,0,0,0,0,@cod_sucursal,@centro_costo,
      @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@monto_seguro_des,0,0)
    if @monto_cancel_impto > 0
      insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
      valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
      cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
      aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@dscto_reliquida,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@monto_cancel_impto,'$',0,@monto_cancel_impto,0,0,0,0,@cod_sucursal,@centro_costo,
      @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@monto_cancel_impto,0,0)
    
    select @b501 = 0
    select @b504 = 0
    select @b505 = 0
    select @b506 = 0
    select @b513 = 0
        
    select 
    @flg_aporte_sis = flg_aporte_sis
    from control_parametros
    where
    cod_empresa  = @empresa_proceso   and
    cod_planta   = @planta_proceso    and
    ano_control_proces = @sp_ano_base and
    mes_control_proces = @sp_mes_base
    
    if @flg_aporte_sis is null select @flg_aporte_sis = 'N'
    if @cal_hab_liq_sl is null select @cal_hab_liq_sl = 'N'
        
    select @cod_haber_sis = cod_haber
    from haber
    where
    cod_empresa  = @empresa_proceso and
    cod_planta   = @planta_proceso  and
    tipo_hab_contabili = 'H'
     
    if @cod_haber_sis is null select @cod_haber_sis = 0
        
    if @sp_ind_afp_mes = 'N'
      begin
        if @cod_instit_previsi_act > 0 and @cod_instit_salud_act > 1 
          begin
            select @b501 = 1
            select @b506 = 1
          end
        else if @cod_instit_previsi_act > 0 and @cod_instit_salud_act =1   
          begin
            select @b501 = 1
            select @b513 = 1
            select @b505 = 1
          end
         else if @cod_instit_previsi_act > 0 and @cod_instit_salud_act = 0 
            begin
              select @b501 = 1
              select @b506 = 0
            end
        else if @caja_comp_antigua_act > 0 and @cod_instit_salud_act > 1
          begin
            select @b504 = 1
            select @b506 = 1
          end
        else if @caja_comp_antigua_act > 0 and @cod_instit_salud_act = 1 
          begin
            select @b504 = 1
            select @b505 = 1
            select @b513 = 1
          end
        else if @caja_comp_antigua_act > 0 and @cod_instit_salud_act = 0
          begin
            select @b504 = 1
            select @b505 = 0
            select @b513 = 0
          end
        else if @cod_instit_previsi_act = 0 and @cod_instit_salud_act = 1  
          begin
            select @b501 = -1
            select @b513 = 0
            select @b505 = 1
          end
        else if @cod_instit_previsi_act = 0 and @cod_instit_salud_act > 1
          begin
            select @b501 = 0
            select @b504 = 0
            select @b506 = 1
          end
      end
    else
      begin
        if @cod_instit_previsi > 0 and @cod_instit_salud > 1 and @cod_instit_salud_act > 1
          begin
            select @b501 = 1
            select @b506 = 1
          end         
       else if @cod_instit_previsi > 0 and @cod_instit_salud = 0 
            begin
              select @b501 = 1
              select @b506 = 0
            end
        else if @cod_instit_previsi > 0 and @cod_instit_salud > 1 and @cod_instit_salud_act = 1
          begin
            select @b501 = 1
            select @b513 = 1
            select @b505 = 1
          end
        else if @cod_instit_previsi > 0 and @cod_instit_salud =1 and @cod_instit_salud_act = 1
          begin
            select @b501 = 1
            select @b513 = 1
            select @b505 = 1
          end
        else if @cod_instit_previsi > 0 and @cod_instit_salud =1 and @cod_instit_salud_act > 1
          begin
            select @b501 = 1
            select @b506 = 1
          end
        else if @caja_comp_antigua > 0 and @cod_instit_salud > 1 and @cod_instit_salud_act > 1
          begin
            select @b504 = 1
            select @b506 = 1
          end
        else if @caja_comp_antigua > 0 and @cod_instit_salud > 1 and @cod_instit_salud_act = 1   
          begin
            select @b504 = 1
            select @b513 = 1
            select @b505 = 1
          end
        else if @caja_comp_antigua > 0 and @cod_instit_salud > 1 and @cod_instit_salud_act = 0   
          begin
            select @b504 = 1
            select @b513 = 0
            select @b505 = 0
          end
        else if @caja_comp_antigua > 0 and @cod_instit_salud = 1 and @cod_instit_salud_act = 1  
          begin
            select @b504 = 1
            select @b505 = 1
            select @b513 = 1
          end
        else if @caja_comp_antigua > 0 and @cod_instit_salud = 1 and @cod_instit_salud_act > 1     
          begin
            select @b504 = 1
            select @b506 = 1
          end
        else if @caja_comp_antigua > 0 and @cod_instit_salud = 1 and @cod_instit_salud_act > 0     
          begin
            select @b504 = 1
            select @b506 = 0
          end
        else if @caja_comp_antigua > 0 and @cod_instit_salud = 0 and @cod_instit_salud_act > 1     
          begin
            select @b504 = 1
            select @b506 = 1
          end
        else if @caja_comp_antigua > 0 and @cod_instit_salud = 0 and @cod_instit_salud_act = 0     
          begin
            select @b504 = 1
            select @b506 = 0
          end
        else if @cod_instit_previsi = 0 and @cod_instit_salud = 1 and @cod_instit_salud_act = 1  
          begin
            select @b501 = -1
            select @b513 = 1
            select @b505 = 1
          end
        else if @cod_instit_previsi = 0 and @cod_instit_salud = 1  and @cod_instit_salud_act > 1  
          begin
            select @b501 = -1
            select @b506 = 1
          end
        else if @cod_instit_previsi = 0 and @cod_instit_salud > 1  and @cod_instit_salud_act > 1   
          begin
            select @b501 = 0
            select @b504 = 0
            select @b506 = 1
          end
        else if @cod_instit_previsi = 0 and @cod_instit_salud > 1  and @cod_instit_salud_act = 1   
          begin
            select @b501 = 0
            select @b504 = 0
            select @b505 = 1
            select @b513 = 1
          end
      end
        
    if @b501 = 1 and @mto_cancela_previs > 0
	 begin
      insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
      valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
      cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
      aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,501,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@mto_cancela_previs,'$',0,@mto_cancela_previs,0,0,0,0,@cod_sucursal,@centro_costo,
      @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@mto_cancela_previs,0,0)
      end
    if @b504 = 1 and @mto_antig_previsio > 0
      begin
        if @mto_cancela_previs_l > 0 
          select @mto_antig_previsio = @mto_antig_previsio + @mto_cancela_previs_l
          insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
          mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
          valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
          cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
          aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
          values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,504,@sp_ano_registro,
          @sp_mes_registro,@tipo_proceso,1,@mto_antig_previsio,'$',0,@mto_antig_previsio,0,0,0,0,@cod_sucursal,@centro_costo,
          @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@mto_antig_previsio,0,0) 
      end  
    if @valor_desahucio > 0
      insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
      valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
      cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
      aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,140,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@valor_desahucio,'$',0,@valor_desahucio,0,0,0,0,@cod_sucursal,@centro_costo,
      @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@valor_desahucio,0,0) 
    if @b505 = 1 and @mto_pagado_ccaf > 0
      insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
      valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
      cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
      aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,505,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@mto_pagado_ccaf,'$',0,@mto_pagado_ccaf,0,0,0,0,@cod_sucursal,@centro_costo,
      @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@mto_pagado_ccaf,0,0)
    if @b506 = 1 and @monto_salud > 0
      insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
      valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
      cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
      aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,506,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@monto_salud,'$',0,@monto_salud,0,0,0,0,@cod_sucursal,@centro_costo,
      @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@monto_salud,0,0)
    if @b513 = 1 and @monto_salud > 0
      begin
        insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
        mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,mto_no_descon_orig,
        valor_transac_peso,mto_no_descon_peso,num_doc_cta_cte,numero_cuota,nro_sobre_pago,cod_sucursal,cod_centro_costo,
        cod_tip_trabajador,cod_instit_legal,sigla,nro_contr_vig_proc,nro_secue_papeleta,unidad_tope,prioridad,total_tope,
        aplica_ctacte,val_pesos_no_prop,mto_no_rebajado,rut_tercero)
        values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,513,@sp_ano_registro,
        @sp_mes_registro,@tipo_proceso,1,@monto_salud,'$',0,@monto_salud,0,0,0,0,@cod_sucursal,@centro_costo,
        @cod_tipo_trabajador,0,'',@nro_contr_vig,100,'',1,0,'N',@monto_salud,0,0) 
        select @b506 = 0
      end
       
    exec spliq_calc_anticip_reliq @mes_proceso, @ano_proceso, @empresa_proceso,
    @planta_proceso,@sp_nro_trabajador, @sp_dv_trabajador, @tipo_proceso
    
    if @sp_ind_dscto_cta_cte = 'S'
      begin
        exec spliq_rev_ctacte_reliq @mes_proceso, @ano_proceso, @empresa_proceso, @planta_proceso,
        @sp_nro_trabajador, @sp_dv_trabajador, @tipo_proceso
            
        exec spliq_calc_ctacte_reliq @mes_proceso,@ano_proceso,@empresa_proceso,@planta_proceso,
        @sp_nro_trabajador, @sp_dv_trabajador, @tipo_proceso
      end
    select @tot_desc_cta_cte = 0
    select @valor_anticipo   = 0
    
    select 
    @tot_desc_cta_cte = sum(isnull(tot_desc_cta_cte,0)),
    @valor_anticipo   = sum(isnull(valor_anticipo,0))
    from historico_liquidac
    where
    cod_empresa      = @empresa_proceso   and
    cod_planta       = @planta_proceso    and
    cod_tipo_proceso = @tipo_proceso      and
    ano_periodo      = @sp_ano_registro   and
    mes_periodo      = @sp_mes_registro   and
    nro_trabajador   = @sp_nro_trabajador and
    dv_trabajador    = @sp_dv_trabajador
        
    select @val_total_desctos   = @val_total_desctos   + @tot_desc_cta_cte + @valor_anticipo
    select @tot_dctos_no_legal  = @tot_dctos_no_legal  + @tot_desc_cta_cte + @valor_anticipo
       
    select @val_liquido_pago = @valor_total_habere - @val_total_desctos
           
      
    if @val_liquido_pago < 0
      begin
        select @sobregiros_mes   = @val_liquido_pago * (-1)
        select @val_liquido_pago = 0
        if @sp_cod_haber_sobreg > 0 and @sp_indic_genera_haber = 'S'
          insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
          mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
          cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
          values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@sp_cod_haber_sobreg,@sp_ano_registro,
          @sp_mes_registro,@tipo_proceso,1,@sobregiros_mes,'$',@sobregiros_mes,0,
          @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@sobregiros_mes)
        if @sp_indic_genera_dscto = 'S'
          begin
            if @sp_cod_dscto_sobreg > 0 and @sp_fec_apli_dscto is not null and @sp_cod_proceso_sobreg is not null and
               ltrim(rtrim(@sp_cod_proceso_sobreg)) != ''
              begin
                delete from descuento_informad
                where
                cod_empresa      = @empresa_proceso and
                cod_planta       = @planta_proceso  and
                cod_tipo_proceso = @sp_cod_proceso_sobreg and
                cod_descuento    = @sp_cod_dscto_sobreg and
                nro_trabajador   = @sp_nro_trabajador and
                dv_trabajador    = @sp_dv_trabajador
                
                insert into descuento_informad(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,
                cod_tipo_proceso,correlativo,fec_aplicacion,cod_unidad_moneda,nro_cuotas,cod_centro_costo,
                fec_ingreso_decuen,nombre_usuario,valor_concepto)
                values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@sp_cod_dscto_sobreg,
                @sp_cod_proceso_sobreg,7887,@sp_fec_apli_dscto,'$',1,@centro_costo,
                @sp_fec_apli_dscto,user_name(),@sobregiros_mes)  
              end
          end
      end
    
    if @sp_aporte_mutu_base > 0
      insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
      cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@cod_mutu_base,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@sp_aporte_mutu_base,'$',@sp_aporte_mutu_base,0,
      @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@sp_aporte_mutu_base)
    if @sp_aporte_mutu_adic > 0 and @cod_mutu_adic > 0
      insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
      cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@cod_mutu_adic,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@sp_aporte_mutu_adic,'$',@sp_aporte_mutu_adic,0,
      @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@sp_aporte_mutu_adic)
    if @sp_aporte_mutu_sanna > 0 and @cod_mutu_sanna > 0
      insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
      cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@cod_mutu_sanna,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@sp_aporte_mutu_sanna,'$',@sp_aporte_mutu_sanna,0,
      @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@sp_aporte_mutu_sanna)
    if @flg_aporte_sis = 'S' and @cod_haber_sis > 0 and @mto_aporte_sis > 0 and @cod_instit_previsi_act > 0
      insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
      mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
      cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
      values(@empresa_proceso,@planta_proceso,@sp_nro_trabajador,@sp_dv_trabajador,@cod_haber_sis,@sp_ano_registro,
      @sp_mes_registro,@tipo_proceso,1,@mto_aporte_sis,'$',@mto_aporte_sis,0,
      @cod_sucursal,@centro_costo,@cod_tipo_trabajador,@nro_contr_vig,@mto_aporte_sis)
    else
      select @mto_aporte_sis = 0
    
    if @cod_hab_aporte > 0 and @valor_aporte > 0
      begin
        select @acum_historico = acumula_historico
        from haber 
        where
        cod_empresa = @empresa_proceso and
        cod_planta  = @planta_proceso  and
        cod_haber   = @cod_hab_aporte
            
        if rtrim(ltrim(@acum_historico)) != ' ' and @acum_historico is not null and 
           rtrim(ltrim(@acum_historico)) != ''
          begin
            
            select @str_update = 'update historico_liquidac ' + 
            ' set ' + rtrim(ltrim(@acum_historico))+ ' = ' + convert(varchar,@valor_aporte) + 
            ' where cod_empresa = ' + convert(varchar,@empresa_proceso) + 
            ' and   cod_planta  = ' + convert(varchar,@planta_proceso)  +
            ' and   cod_tipo_proceso =  ''' + @tipo_proceso + '''' 
            
            select @str_update = @str_update + 
            ' and   ano_periodo = ' + convert(varchar,@sp_ano_registro) +
            ' and   mes_periodo = ' + convert(varchar,@sp_mes_registro) +
            ' and   nro_trabajador   = ' + convert(varchar,@sp_nro_trabajador) +
            ' and   dv_trabajador    = ''' + @sp_dv_trabajador+ '''' 
            
            exec (@str_update)
          
          end
      end  
        
    select @mto_tope_prev_uf = mto_tope_prev_uf
          from parametro
          where 
          cod_empresa = @empresa_proceso and
          cod_planta  = @planta_proceso  and
          ano         = @sp_ano_registro       and
          nro_mes     = @sp_mes_registro
           
      select @valor_tabla=val_moneda_unidad from valor_moneda 
                    where cod_unidad_cobro = 'UF' and fec_valor_moneda = @fec_final
      
      select  @valor_topado = round(@mto_tope_prev_uf * @valor_tabla,0)
       
      select @tot_imponible = @tot_impon_sin_tope
      if @tot_imponible > @valor_topado 
		select @tot_imponible = @valor_topado  
       
    update historico_liquidac
    set 
    valor_total_habere = @valor_total_habere,
    tot_tributable     = @tot_tributable,
    hab_no_imp_no_trib = @hab_no_imp_no_trib,
    ret_judic_resconta = @ret_judic_resconta,
    tot_dctos_no_legal = @tot_dctos_no_legal,
    tot_dctos_legales  = @tot_dctos_legales,
    val_total_desctos  = @val_total_desctos,
    val_liquido_pago   = @val_liquido_pago,
    sobregiros_mes     = @sobregiros_mes,
    tot_impon_sin_tope = @tot_impon_sin_tope,
    tot_imponible		 = @tot_imponible,
    mto_cancela_previs = @mto_cancela_previs,
    monto_aporte_sis   = @mto_aporte_sis,
    monto_salud        = @monto_salud,
    mto_salud_legal    = @mto_salud_legal,
    valor_pactado_isap = @valor_pactado_isap,
    val_volunt_isapre  = @val_volunt_isapre,
    mto_pagado_ccaf    = @mto_pagado_ccaf,
    mto_antig_previsio = @mto_antig_previsio,
    valor_desahucio    = @valor_desahucio,
    pje_cotzado_caja   = @pje_cotzado_caja,
    pje_desahucio      = @pje_desahucio,
    val_leyes_sociales = @val_leyes_sociales,
    afecto_impto       = @afecto_impto,
    asignacion_zona    = @asignacion_zona,
    monto_cancel_impto = @monto_cancel_impto,
    aporte_patron_ccaf = @aporte_patron_ccaf,
    aporte_patronal_1  = @aporte_patronal_1,
    aporte_patronal_2  = @aporte_patronal_2,
    tot_imp_no_prop    = @tot_imp_no_prop,
    mto_tope60_dfl44   = @mto_tope60_dfl44,
    mto_dfl44          = @mto_dfl44,
    afecto_cotizacion  = @afecto_cotizacion,
    val_tot_tope_impon = @afecto_cotizacion,
    total_imponi_ley   = @total_imponi_ley,
    adicional_isapre   = @adicional_isapre,
    mto_salud_real     = @mto_salud_real,
    monto_seguro_des   = @monto_seguro_des,
    monto_ahorro_prev  = @monto_ahorro_prev,
    mto_seg_cta_indidu = @mto_seg_cta_indidu,
    mto_seg_cta_fondos = @mto_seg_cta_fondos,
    monto_impon_seguro = @monto_impon_seguro,
    mto_trab_tr_pesado = @mto_trab_tr_pesado,
    mto_apor_tr_pesado = @mto_apor_tr_pesado,
    mto_imp_aporte_afc = @mto_imp_aporte_afc,
    cod_afp_afc        = @cod_afp_afc,
    aporte_patron_mutu = @sp_aporte_mutu_base + @sp_aporte_mutu_adic + @sp_aporte_mutu_sanna,
      afecto_mto_sis	= @afecto_cotizacion_sis,
     afecto_mutual = @afecto_mutual
    where
    cod_empresa      = @empresa_proceso and
    cod_planta       = @planta_proceso  and
    cod_tipo_proceso = @tipo_proceso    and
    ano_periodo      = @sp_ano_registro     and
    mes_periodo      = @sp_mes_registro     and
    nro_trabajador   = @sp_nro_trabajador and
    dv_trabajador    = @sp_dv_trabajador
          
    if @valor_prop_mes > 0
      update liquidacio_haberes 
      set
      valor_transac_peso = @valor_prop_mes
      where
      cod_empresa      = @empresa_proceso and
      cod_planta       = @planta_proceso  and
      cod_tipo_proceso = @tipo_proceso    and
      ano_periodo      = @sp_ano_registro     and
      mes_periodo      = @sp_mes_registro     and
      nro_trabajador   = @sp_nro_trabajador and
      dv_trabajador    = @sp_dv_trabajador  and
      cod_haber        = @cod_haber
          
    exec spliq_calc_aporte_reliq @sp_mes_registro, @sp_ano_registro, @empresa_proceso, @planta_proceso,@sp_nro_trabajador,
    @sp_dv_trabajador,@tipo_proceso,@sp_cod_forma_pago,@sp_str_aportes
         



         
    --update personal set indic_liq_individu = 'P'
    --where 
    --cod_empresa    = @empresa_proceso   and
    --cod_planta     = @planta_proceso    and
    --nro_trabajador = @sp_nro_trabajador and
    --dv_trabajador  = @sp_dv_trabajador
    --HABERES LIQUIDOS
    
    if @un_ciclo_mas = 1 break
        
    select @suma_haberes_liquido = 0
    select @valor_sobregiro = 0
       
    select @suma_haberes_liquido = sum(isnull(valor_concepto,0))
    from haber_liquido, haber 
    where
    haber_liquido.cod_empresa= @empresa_proceso and
    haber_liquido.cod_planta = @planta_proceso and
    haber_liquido.cod_tipo_proceso = @tipo_proceso and
    year(haber_liquido.fec_aplicacion) = @ano_proceso and
    month(haber_liquido.fec_aplicacion) = @mes_proceso and
    haber_liquido.nro_trabajador=@sp_nro_trabajador and
    haber_liquido.dv_trabajador=@sp_dv_trabajador and
    haber_liquido.cod_empresa=haber.cod_empresa and
    haber_liquido.cod_planta=haber.cod_planta and 
    haber_liquido.cod_haber=haber.cod_haber and 
    haber_liquido.valor_concepto > 0 and 
    (haber.calc_liquido = 'S' or haber.haber_liquido_trib = 'S')
    
    
    if @suma_haberes_liquido is null select @suma_haberes_liquido = 0 
    
    if @suma_haberes_liquido = 0 or @suma_haberes_liquido = 0
      begin 
        select @valor_liquido_2 = @valor_liquido_1 + 5
      end
    else
      if @suma_haberes_liquido > 0
        begin          
          select 
          @valor_liquido_1 = isnull(val_liquido_pago,0),
          @valor_sobregiro = isnull(sobregiros_mes,0),
          @valor_alcance_liq = isnull(val_alcance_liquid,0)
          from historico_liquidac 
          where
          historico_liquidac.cod_empresa      =  @empresa_proceso and
          historico_liquidac.cod_planta       =  @planta_proceso and 
          historico_liquidac.ano_periodo      =  @ano_proceso and
          historico_liquidac.mes_periodo      =  @mes_proceso and
          historico_liquidac.nro_trabajador   =  @sp_nro_trabajador and
          historico_liquidac.dv_trabajador    =  @sp_dv_trabajador and
          historico_liquidac.cod_tipo_proceso =  @tipo_proceso  
          
        
          if @valor_apv_tributa is null select @valor_apv_tributa = 0
             
          if @valor_dsctos_varios is null select @valor_dsctos_varios = 0
            
          if @valor_liquido_1    is null  select @valor_liquido_1 = 0
          if @valor_sobregiro    is null  select @valor_sobregiro = 0
          if @valor_alcance_liq  is null  select @valor_alcance_liq = 0
             
          select @un_ciclo_mas = 0
          select @valor_haber_liq = 0
          select top 1 
          @valor_haber_liq    = haber_liquido.valor_concepto,
          @cod_haber          = haber_liquido.cod_haber,
          @moneda_haber_liq   = haber_liquido.cod_unidad_moneda,
          @es_imponible       = haber.concepto_imponible,
          @es_propdias        = haber.proporcional_dias,
          @haber_liquido_trib = haber.haber_liquido_trib,
          @centro_costo_hl    = haber_liquido.cod_centro_costo
          from haber_liquido, haber 
          where
          haber_liquido.cod_empresa           = @empresa_proceso and
          haber_liquido.cod_planta            = @planta_proceso and 
          haber_liquido.cod_tipo_proceso      = @tipo_proceso and 
          year(haber_liquido.fec_aplicacion)  = @ano_proceso and 
          month(haber_liquido.fec_aplicacion) = @mes_proceso and 
          haber_liquido.nro_trabajador        = @sp_nro_trabajador and 
          haber_liquido.dv_trabajador         = @sp_dv_trabajador and 
          haber_liquido.nro_licencia          = 0 and 
          haber_liquido.cod_empresa           = haber.cod_empresa and 
          haber_liquido.cod_planta            = haber.cod_planta and 
          haber_liquido.cod_haber             = haber.cod_haber and 
          haber_liquido.valor_concepto > 0 and 
          (haber.calc_liquido = 'S' or haber.haber_liquido_trib = 'S' )
          order by haber.prioridad            
                       
          if @moneda_haber_liq != '$'
            begin
              exec  spliq_valores_mon @mes_proceso, @ano_proceso,@empresa_proceso, @planta_proceso,
              @sp_nro_trabajador, @sp_dv_trabajador, 'LQ',@valor_haber_liq, @moneda_haber_liq , 1,
              @fec_final, '', 'N','N', @valor_decimal output
              select @valor_haber_liq = round(@valor_decimal,0)
            end
 
          if @pasa_1 = 1
            begin 
              select @valor_sobregiro_ini = @valor_sobregiro  
              if @valor_sobregiro > 0 
                if @valor_sobregiro >= @valor_haber_liq   
                  begin
                    if @cal_hab_liq_sl = 'S'  -- OK
                      begin
                        select @valor_sobregiro_a_llegar = @valor_sobregiro - @valor_haber_liq       
                        select @valor_liquido_a_llegar = @valor_alcance_liq                            
                      end
                    else
                      begin
                        select @valor_sobregiro_a_llegar = @valor_sobregiro - @valor_haber_liq       
                        select @valor_liquido_a_llegar = @valor_alcance_liq    
                      end
                  end
                else
                  begin
                    if @cal_hab_liq_sl = 'S'  -- OK
                      begin 
                     --   select @valor_liquido_a_llegar = @valor_liquido_1 + @valor_haber_liq - @valor_apv_tributa    
                        select @valor_liquido_a_llegar = @valor_liquido_1 + @valor_haber_liq - @valor_sobregiro - @valor_apv_tributa     
                        select @valor_sobregiro_a_llegar = 0  
                      end
                    else
                      begin
                    --   select @valor_liquido_a_llegar = @valor_liquido_1 + @valor_haber_liq  - @valor_sobregiro 
                       select @valor_liquido_a_llegar = @valor_liquido_1 + @valor_haber_liq     
                        select @valor_sobregiro_a_llegar = 0 
                      end
                  end  
              else
                begin
                  if @cal_hab_liq_sl = 'S'  
                    begin
                      select @valor_liquido_a_llegar = @valor_liquido_1 + @valor_haber_liq - @valor_apv_tributa - @valor_dsctos_varios
                      select @valor_sobregiro_a_llegar = 0 
                      if  @valor_liquido_a_llegar < 0
                        begin
                          select @valor_liquido_a_llegar = 0
                          select @valor_sobregiro_a_llegar = @valor_liquido_a_llegar * -1.0 
                        end                                               
                    end
                  else
                    begin
                      select @valor_liquido_a_llegar = @valor_liquido_1 + @valor_haber_liq - @valor_sobregiro
                      select @valor_sobregiro_a_llegar = 0
                    end
                end
  
              
              select @pasa_1 = 0 
              select @haber_liq_impo = @es_imponible  
              select @haber_propdias = @es_propdias    
              if @haber_liquido_trib = 'S'
                begin
                  update haber set concepto_imponible = 'N' where
                  cod_empresa=@empresa_proceso and
                  cod_planta=@planta_proceso and
                  cod_haber=@cod_haber
                end
              if @haber_propdias = 'S'
                begin
                  update haber set proporcional_dias = 'N' where
                  cod_empresa=@empresa_proceso and
                  cod_planta=@planta_proceso and
                  cod_haber=@cod_haber
                end                  
            end  
          else -- not @pasa_1 = 1
            begin   
	               
              if ( @valor_liquido_a_llegar >  @valor_liquido_1) or @valor_sobregiro_a_llegar < @valor_sobregiro
                begin                   
                
                  delete from haber_informado
                  where 
                  cod_empresa      = @empresa_proceso and 
                  cod_planta       = @planta_proceso  and
                  cod_tipo_proceso = @tipo_proceso    and 
                  nro_trabajador   = @sp_nro_trabajador and
                  cod_haber        = @cod_haber
                       
                  if @valor_sobregiro > 0
                    select @suma_haber_imp = @suma_haber_imp + ( @valor_sobregiro + @valor_liquido_1 - @valor_sobregiro_a_llegar )    
                  else  
                    select @suma_haber_imp = @suma_haber_imp + ( @valor_liquido_a_llegar - @valor_liquido_1 )   
                    
                  insert into haber_informado(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,
                  cod_tipo_proceso,correlativo,fec_ingreso_habere,cod_unidad_moneda,nro_cuotas,cod_centro_costo,
                  fec_aplicacion,fec_actualiz_hab,nombre_usuario,valor_concepto,nro_licencia,nro_cuotas_total)
                  values (@empresa_proceso, @planta_proceso, @sp_nro_trabajador, @sp_dv_trabajador, @cod_haber, 
                  @tipo_proceso,9999,@fec_final,'$',1,@centro_costo_hl,@fec_final,@fec_final,'admwinpe',@suma_haber_imp,0,1)
                  
                end
              else if @valor_liquido_a_llegar <  @valor_liquido_1 and @detenerloop = 0
                begin                                      
                  delete from haber_informado
                  where 
                  cod_empresa      = @empresa_proceso and 
                  cod_planta       = @planta_proceso  and
                  cod_tipo_proceso = @tipo_proceso    and 
                  nro_trabajador   = @sp_nro_trabajador and
                  cod_haber        = @cod_haber
                     
                    
                  if @valor_sobregiro > 0
                    select @suma_haber_imp =  ( @suma_haber_imp - ( @valor_sobregiro + @valor_liquido_1 - @valor_sobregiro_a_llegar  ) )    
                  else                  
                    select @suma_haber_imp =  ( @suma_haber_imp - ( @valor_liquido_1 - @valor_liquido_a_llegar  )  ) 

                  select @val_liquido_retorna = @valor_liquido_1 - @valor_liquido_a_llegar
                     
                  insert into haber_informado(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,
                  cod_tipo_proceso,correlativo,fec_ingreso_habere,cod_unidad_moneda,nro_cuotas,cod_centro_costo,
                  fec_aplicacion,fec_actualiz_hab,nombre_usuario,valor_concepto,nro_licencia,nro_cuotas_total)
                  values (@empresa_proceso, @planta_proceso, @sp_nro_trabajador, @sp_dv_trabajador, @cod_haber, 
                  @tipo_proceso,9999,@fec_final,'$',1,@centro_costo_hl,@fec_final,@fec_final,'admwinpe',@suma_haber_imp,0,1) 
                  
                  select @detenerloop = 1
                end
              else
                begin
                  select  @cantidad_haberes_liquido =  @cantidad_haberes_liquido - 1 
                  if @cantidad_haberes_liquido > 0
                    begin
                      update haber_liquido set 
                      nro_licencia = 1
                      where  
                      cod_empresa      = @empresa_proceso and 
                      cod_planta       = @planta_proceso  and
                      cod_tipo_proceso = @tipo_proceso and 
                      nro_trabajador   = @sp_nro_trabajador and
                      cod_haber        = @cod_haber and 
                      nro_licencia     = 0                           
                      select @pasa_1 = 1 
                      select @suma_haber_imp = 0
                    end
                  else
                    begin                                                                        
                      select @valor_liquido_2 = @valor_liquido_1 + 5 
                      update haber_liquido set 
                      nro_licencia = 1
                      where  
                      cod_empresa      = @empresa_proceso   and 
                      cod_planta       = @planta_proceso    and
                      cod_tipo_proceso = @tipo_proceso      and 
                      nro_trabajador   = @sp_nro_trabajador and
                      cod_haber        = @cod_haber         and 
                       
                      nro_licencia = 0
                                                 
                      select @un_ciclo_mas = 0
                         
                      if @haber_propdias = 'S'                    
                        update haber set proporcional_dias = @haber_propdias 
                        where
                        cod_empresa = @empresa_proceso and
                        cod_planta  = @planta_proceso and
                        cod_haber   = @cod_haber
                                            
                      if @haber_liquido_trib = 'S'
                        begin 
                          select @un_ciclo_mas = 1                     
                          
                          update haber set concepto_imponible = @haber_liq_impo 
                          where
                          cod_empresa = @empresa_proceso and
                          cod_planta  = @planta_proceso and
                          cod_haber   = @cod_haber    
                        end   
                    end
                end
            end 
        end   
  end   --fin ciclo haberes líquidos
  
  /*
  if @sp_bitacora_reliq = 'S'
  begin
      exec spliq_bitacora @empresa_proceso,@planta_proceso,@tipo_proceso,@sp_nro_trabajador,
      @sp_dv_trabajador,@sp_ano_registro,@sp_mes_registro, @sp_usuario
  end*/
	  
return 0


















GO
/****** Object:  StoredProcedure [dbo].[spliq_comp_llss_reliq]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[spliq_comp_llss_reliq]
(@sp_mes_proceso int,@sp_ano_proceso int,@sp_empresa int,@sp_planta int,
@sp_nro_trabajador int,@sp_dv_trabajador char(1),@base_cada_mes char(1),
@sp_consolida_empresa char(1),@valor_afecto_cotiza numeric(28,10),
@valor_afecto_cotiza_ley numeric(28,10),@val_afecto_cotiza_seg numeric(28,10),@valor_afecto_sis numeric(28,10),
@mto_desahucio numeric(28,10) output,@mto_prevision numeric(28,10) output,
@mto_salud_legal numeric(28,10) output,@mto_pagado_ccaf numeric(28,10) output,@salud_voluntaria numeric(28,10) output,
@salud_adicional numeric(28,10) output,@valor_seguro_des numeric(28,10) output, @monto_aporte_sis numeric(28,10) output, @dias_licencia int)
as
declare @pje_salud_legal decimal(5,2),@mto_tope_prev_peso numeric(28,10),
        @tope_salud_pesos numeric(28,10),@pje_fonasa decimal(5,2),@pje_cotiz_salud decimal(5,2),
@pje_ccaf decimal(5,2),@pje_cotzado_caja decimal(5,2),@pje_cotzado_caja_his decimal(5,2),@pje_cotiz_salud_his decimal(5,2)
declare @pje_aporte_trab_a decimal(5,2), @pje_aporte_trab_j decimal(5,2)
declare @cod_afp int,@cod_isapre int,@cod_caja_prevision int,@cod_instit_previsi int,@cod_instit_salud int,
@caja_comp_antigua int,@aplica_seguro_his char(1),@cod_tipo_cont_his char(1) 
declare @pje_cotiz_previsio decimal(5,2),@pje_cotiz_prev_his decimal(5,2),@pje_aporte_sis_his decimal(5,2),@pje_salud decimal(5,2),@pje_pension_seguro decimal(5,2),
@pje_desahucio decimal(5,2),@pje_desahucio_his decimal(5,2)
declare @mto_pactado_isapre numeric(28,10), @valor_pactado_isapre numeric(28,10)
declare @adicional_isapre numeric(28,10), @val_volunt_isapre numeric(28,10)
declare @unid_cob_mto_pacta char(4), @mone_val_adic_salu char(4)
declare @sfecha_moneda char(10),@aplica_seguro_des char(1),@cod_tipo_contra char(1)
declare @fecha_moneda datetime, @sp_flg_aporte_sis char(1)
declare @condic_previsional char(1), @exento_seguro  char(1),
        @exento_fondo char(1), @cod_cancela_isapre char(1),
        @sp_nro_dias_asisti int,@sp_nro_dias_vacacio int, @sp_nro_dias_enfermo int ,@sp_nro_dias_ausente_i int,@sp_nro_dias_ausente_f int,
        @sp_flg_ause_i char(1), @sp_flg_ause_f char(1), @dias_prop_isapre int, @dias_prop_isap_ause int
declare @pje_aporte_emp_j decimal(5,2), @pje_aporte_emp_a  decimal(5,2)
declare @fecha_nacimiento datetime, @dif_fecha int, @cod_sexo char(1)
declare @val_afecto_cotiza_seg2 numeric(28,10)
declare @cod_tipo_invalidez int
declare @flg_no_reb_jub char(1), @sp_fec_mod_tip_con datetime, @sp_fec_mod_tip_his datetime, @PeriodoF int, @PeriodoP int, @sp_rut_trabajador int
    
select @dif_fecha             = 0
select @monto_aporte_sis      = 0
select @dias_prop_isap_ause   = 0
select @dias_prop_isapre      = 0
select @sp_nro_dias_ausente_i = 0
select @sp_nro_dias_ausente_f = 0
select @salud_adicional       = 0
select @salud_voluntaria      = 0
select @val_volunt_isapre     = 0
select @pje_salud_legal       = 0
select @mto_tope_prev_peso    = 0
select @tope_salud_pesos      = 0
select @pje_fonasa            = 0
select @pje_ccaf              = 0
select @mto_prevision         = 0
select @mto_desahucio         = 0
select @mto_salud_legal       = 0
select @sp_flg_ause_i         = ''
select @sp_flg_ause_f         = ''
select @sp_fec_mod_tip_con   = null
select @sp_fec_mod_tip_his   = null

select @fecha_moneda=fec_fin_info_perio
from control_procesos
where
cod_empresa        = @sp_empresa     and
cod_planta         = @sp_planta      and
ano_proc_cont_proc = @sp_ano_proceso and
cod_mes_proceso    = @sp_mes_proceso

select @sfecha_moneda= ltrim(rtrim(convert(char(10),@fecha_moneda,103)))

select @pje_salud_legal    = pje_salud_legal,
       @mto_tope_prev_peso = mto_tope_prev_peso,
       @tope_salud_pesos   = tope_salud_pesos,
       @pje_fonasa         = pje_fonasa,
       @pje_ccaf           = isnull(pje_ccaf,0)
from parametro
where
cod_empresa = @sp_empresa     and
cod_planta  = @sp_planta      and
ano         = @sp_ano_proceso and
nro_mes     = @sp_mes_proceso

select @sp_flg_ause_i     = prop_isap_ingreso,
       @sp_flg_ause_f     = prop_isap_egreso,
       @sp_flg_aporte_sis = flg_aporte_sis
from control_parametros
where
cod_empresa        = @sp_empresa and
cod_planta         = @sp_planta and
ano_control_proces = @sp_ano_proceso and
mes_control_proces = @sp_mes_proceso

if @sp_flg_ause_i     is null select @sp_flg_ause_i     = 'S'
if @sp_flg_ause_f     is null select @sp_flg_ause_f     = 'S'
if @sp_flg_aporte_sis is null select @sp_flg_aporte_sis = 'N'

select @sp_rut_trabajador = rut_trabajador
from personal
where
cod_empresa        = @sp_empresa        and
cod_planta         = @sp_planta         and
nro_trabajador     = @sp_nro_trabajador and
dv_trabajador      = @sp_dv_trabajador

if @sp_consolida_empresa = 'N'
  begin
    select   @sp_nro_dias_ausente_i = ausente_contrato_i,
             @sp_nro_dias_ausente_f = ausente_contrato_f
    from liquidacion
    where 
    cod_empresa      = @sp_empresa        and
    cod_planta       = @sp_planta         and
    cod_tipo_proceso = 'LQ'               and
    ano_periodo      = @sp_ano_proceso    and
    mes_periodo      = @sp_mes_proceso    and
    nro_trabajador   = @sp_nro_trabajador and
    dv_trabajador    = @sp_dv_trabajador
    select @sp_nro_dias_asisti   = nro_dias_asistidos,
           @sp_nro_dias_vacacio  = nro_dias_vacacione,
           @sp_nro_dias_enfermo  = nro_dias_enfermo,
           @aplica_seguro_his    = aplica_seguro_des,
           @cod_tipo_cont_his    = codigo_tipo_contra,
           @pje_cotiz_prev_his   = pje_cotiz_previs,
           @pje_aporte_sis_his   = pje_aporte_sis,
           @pje_cotiz_salud_his  = pje_cotiz_salud,
           @pje_cotzado_caja_his = pje_cotzado_caja,
           @pje_desahucio_his    = pje_desahucio ,
           @sp_fec_mod_tip_his	=  fec_mod_tipo_contr 
    from historico_liquidac
    where
    cod_empresa      = @sp_empresa        and
    cod_planta       = @sp_planta         and
    cod_tipo_proceso = 'LQ'               and
    ano_periodo      = @sp_ano_proceso    and
    mes_periodo      = @sp_mes_proceso    and
    nro_trabajador   = @sp_nro_trabajador and
    dv_trabajador    = @sp_dv_trabajador
  end
else
  begin
    select   @sp_nro_dias_ausente_i = a.ausente_contrato_i,
             @sp_nro_dias_ausente_f = a.ausente_contrato_f
    from liquidacion a, personal b
    where 
    a.cod_empresa      = @sp_empresa        and
    a.cod_tipo_proceso = 'LQ'               and
    a.ano_periodo      = @sp_ano_proceso    and
    a.mes_periodo      = @sp_mes_proceso    and
	a.cod_empresa      = b.cod_empresa      and
	a.cod_planta       = b.cod_planta       and
	a.nro_trabajador   = b.nro_trabajador   and
	a.dv_trabajador    = b.dv_trabajador    and
	b.rut_trabajador   = @sp_rut_trabajador

    select @sp_nro_dias_asisti   = a.nro_dias_asistidos,
           @sp_nro_dias_vacacio  = a.nro_dias_vacacione,
           @sp_nro_dias_enfermo  = a.nro_dias_enfermo,
           @aplica_seguro_his    = a.aplica_seguro_des,
           @cod_tipo_cont_his    = a.codigo_tipo_contra,
           @pje_cotiz_prev_his   = a.pje_cotiz_previs,
           @pje_aporte_sis_his   = a.pje_aporte_sis,
           @pje_cotiz_salud_his  = a.pje_cotiz_salud,
           @pje_cotzado_caja_his = a.pje_cotzado_caja,
           @pje_desahucio_his    = a.pje_desahucio ,
           @sp_fec_mod_tip_his	=  a.fec_mod_tipo_contr 
    from historico_liquidac a, personal b
    where
    a.cod_empresa      = @sp_empresa        and
    a.cod_tipo_proceso = 'LQ'               and
    ano_periodo      = @sp_ano_proceso    and
    a.mes_periodo      = @sp_mes_proceso    and
	a.cod_empresa      = b.cod_empresa      and
	a.cod_planta       = b.cod_planta       and
	a.nro_trabajador   = b.nro_trabajador   and
	a.dv_trabajador    = b.dv_trabajador    and
	b.rut_trabajador   = @sp_rut_trabajador
  end


select @cod_afp            = isnull(cod_afp,0),
       @cod_isapre         = isnull(cod_isapre,0),
       @cod_caja_prevision = isnull(cod_caja_prevision,0),
       @mto_pactado_isapre = isnull(mto_pactado_isapre,0),
       @unid_cob_mto_pacta = unid_cob_mto_pacta,
       @adicional_isapre   = adicional_isapre,
       @mone_val_adic_salu = mone_val_adic_salu,
       @aplica_seguro_des  = aplica_seguro_des,
       @cod_tipo_contra    = codigo_tipo_contra, 
       @cod_cancela_isapre = cod_cancela_isapre,
       @fecha_nacimiento   = fec_nacimiento,
       @cod_sexo           = cod_sexo,
       @condic_previsional = condic_previsional,
       @exento_seguro      = exento_seguro,
       @exento_fondo       = exento_fondo,
       @cod_tipo_invalidez	= cod_tipo_invalidez, 
	   @flg_no_reb_jub      =  flg_no_reb_jub,
       @sp_fec_mod_tip_con	=  fec_mod_tipo_contr
from personal
where
cod_empresa    = @sp_empresa and
cod_planta     = @sp_planta and
nro_trabajador = @sp_nro_trabajador and
dv_trabajador  = @sp_dv_trabajador

   
if @flg_no_reb_jub is null or @flg_no_reb_jub = '' or @flg_no_reb_jub = ' '
		select @flg_no_reb_jub = 'N'

if @base_cada_mes = 'N'
  begin
    if @cod_afp > 0
      begin
        if @condic_previsional='J'
          begin
            if @exento_seguro='S'
              begin
                select @pje_cotiz_previsio = pje_ex_seg_invalid,
                       @pje_aporte_trab_j  = pje_aporte_trab_j,
                       @pje_aporte_emp_j   = pje_aporte_emp_j 
                from afp 
                where cod_afp = @cod_afp
                
                if @sp_flg_aporte_sis = 'S'
                  begin
                    select @mto_prevision  = round((@valor_afecto_cotiza * @pje_aporte_trab_j) / 100,4)
                    select @monto_aporte_sis = round((@valor_afecto_sis * @pje_aporte_emp_j) / 100,4)                
                  end
                else  
                  select @mto_prevision  = round((@valor_afecto_cotiza * @pje_cotiz_previsio) / 100,4)                
                
              end
            if @exento_fondo = 'S'
              begin
                select @pje_cotiz_previsio = 0
                select @mto_prevision      = 0
                select @monto_aporte_sis   = 0
              end
          end
        else
          begin

            select @dif_fecha = convert(int,datediff(dd,@fecha_nacimiento,@fecha_moneda) / 365.25)

            if ( ( @dif_fecha >= 60 and @cod_sexo = 'F' ) OR ( @dif_fecha >= 65 and @cod_sexo = 'M' ) ) and @flg_no_reb_jub = 'N'
              begin
              
                select @pje_cotiz_previsio =pje_ex_seg_invalid,
                @pje_aporte_trab_j  = pje_aporte_trab_j ,
                @pje_aporte_emp_j = pje_aporte_emp_j
                from afp where cod_afp=@cod_afp
                
                if @dif_fecha >= 65
                begin
					select @monto_aporte_sis = 0
					select @mto_prevision  = 0
                end
                else    
                begin            
					if @sp_flg_aporte_sis = 'S'
					  begin                  
						select @monto_aporte_sis = round((@valor_afecto_sis * @pje_aporte_emp_j) / 100,4)   
						select @mto_prevision  = 0
					  end
					else
					  select @mto_prevision  = 0
                end
              end              
            else
              begin
               
                select @pje_cotiz_previsio = pje_cotiz_previsio,
                @pje_aporte_trab_a  = pje_aporte_trab_a,
                @pje_aporte_emp_a   = pje_aporte_emp_a from afp where cod_afp = @cod_afp
                if @sp_flg_aporte_sis = 'S'
                  begin
                  
                   if @dif_fecha >= 65
					begin
						select @monto_aporte_sis = 0
					end
					else
					begin
						select @monto_aporte_sis = round((@valor_afecto_sis * @pje_aporte_emp_a) / 100,4)     
					end
                    select @mto_prevision  = round((@valor_afecto_cotiza * @pje_aporte_trab_a) / 100,4)
                    
                  end
                else
                  select @mto_prevision  = round((@valor_afecto_cotiza * @pje_cotiz_previsio) / 100,4)                  
              end
            
          end
      end
      
             
    if @cod_caja_prevision > 0 and @cod_isapre <= 1
      begin
        select @pje_ccaf           = isnull(pje_ccaf,0),
               @pje_salud          = isnull(pje_salud,0),
               @pje_pension_seguro = isnull(pje_pension_seguro,0),
               @pje_desahucio      = isnull(pje_desahucio,0)
        from caja_prevision where cod_caja_prevision = @cod_caja_prevision
        select @mto_desahucio   = round((@valor_afecto_cotiza_ley * @pje_desahucio ) / 100,4)
        select @mto_prevision   = round((@valor_afecto_cotiza_ley * @pje_pension_seguro) / 100,4)
      end
    else if @cod_caja_prevision > 0 and @cod_isapre > 1
      begin
        select @pje_ccaf           = isnull(pje_ccaf,0),
               @pje_salud          = isnull(pje_salud,0),
               @pje_pension_seguro = isnull(pje_pension_seguro,0),
               @pje_desahucio      = isnull(pje_desahucio,0)
        from caja_prevision where cod_caja_prevision = @cod_caja_prevision
        select @mto_desahucio   = round((@valor_afecto_cotiza_ley * @pje_desahucio ) / 100,4)
        select @mto_prevision   = round((@valor_afecto_cotiza_ley * @pje_pension_seguro) / 100 ,4)
      end
      
      
    
    if @cod_isapre > 1
      begin
		 if @cod_afp > 0 and @valor_afecto_cotiza != 0 and @condic_previsional != 'J'
			 select @mto_salud_legal = round((@valor_afecto_cotiza * @pje_salud_legal) / 100,4)
		else		
			 select @mto_salud_legal = round((@valor_afecto_cotiza_ley * @pje_salud_legal) / 100,4)
		
        select @mto_pagado_ccaf = 0
      end
    else
      begin
        select @mto_salud_legal = round((@valor_afecto_cotiza_ley * @pje_fonasa) / 100,4)
        select @mto_pagado_ccaf = round((@valor_afecto_cotiza_ley * @pje_ccaf) / 100,4)
      end
  end
else
  begin
    if @cod_afp > 0
	  
	  select @pje_aporte_emp_j   = pje_aporte_emp_j 
      from	afp 
      where cod_afp = @cod_afp
                
      begin
        if @condic_previsional='J'
          begin
            if @exento_seguro='S' 
              begin
                select @mto_prevision    = round((@valor_afecto_cotiza * @pje_cotiz_prev_his) / 100,4)
                
                select @dif_fecha=convert(int,datediff(dd,@fecha_nacimiento,@fecha_moneda) / 365.25)
				if ( @dif_fecha >= 65 and @cod_sexo = 'F' ) OR ( @dif_fecha >= 65 and @cod_sexo = 'M' )
				  begin
               		select @monto_aporte_sis = round((@valor_afecto_sis * @pje_aporte_emp_j) / 100,4)
				  end
				else
				begin
					select @monto_aporte_sis = round((@valor_afecto_sis * @pje_aporte_sis_his) / 100,4)
				end
			
              end           
            if @exento_fondo='S'
              begin
                select @pje_cotiz_previsio = 0
                select @mto_prevision      = 0
                select @monto_aporte_sis   = 0
              end
          end
        else
          begin 
            select @mto_prevision    = round((@valor_afecto_cotiza * @pje_cotiz_prev_his) / 100,4)
            
            select @dif_fecha=convert(int,datediff(dd,@fecha_nacimiento,@fecha_moneda) / 365.25)
            if ( @dif_fecha >= 65 and @cod_sexo = 'F' ) OR ( @dif_fecha >= 65 and @cod_sexo = 'M' )
              begin
               	select @monto_aporte_sis = round((@valor_afecto_sis * @pje_aporte_emp_j) / 100,4)
			  end
			else
			begin
				select @monto_aporte_sis = round((@valor_afecto_sis * @pje_aporte_sis_his) / 100,4)
			end
          end
      end
      
    if @cod_caja_prevision > 0 and @cod_isapre <= 1
      begin
        select @pje_ccaf           = isnull(pje_ccaf,0),
               @pje_salud          = isnull(pje_salud,0),
               @pje_pension_seguro = isnull(pje_pension_seguro,0),
               @pje_desahucio      = isnull(pje_desahucio,0)
        from caja_prevision where cod_caja_prevision = @cod_caja_prevision
        select @mto_desahucio   = round((@valor_afecto_cotiza_ley * @pje_desahucio_his ) / 100,4)
        select @mto_prevision   = round((@valor_afecto_cotiza_ley * @pje_cotiz_prev_his) / 100,4)
      end
    else if @cod_caja_prevision > 0 and @cod_isapre > 1
      begin
        select @pje_ccaf           = isnull(pje_ccaf,0),
               @pje_salud          = isnull(pje_salud,0),
               @pje_pension_seguro = isnull(pje_pension_seguro,0),
               @pje_desahucio      = isnull(pje_desahucio,0)
        from caja_prevision where cod_caja_prevision = @cod_caja_prevision
        select @mto_desahucio   = round((@valor_afecto_cotiza_ley * @pje_desahucio_his) / 100,4)
        select @mto_prevision   = round((@valor_afecto_cotiza_ley * @pje_cotiz_prev_his) / 100 ,4)
      end
    if @cod_isapre > 1
      begin
		if @cod_afp > 0 and @valor_afecto_cotiza != 0 and @condic_previsional != 'J'
			 select @mto_salud_legal = round((@valor_afecto_cotiza * @pje_salud_legal) / 100,4)
		else
			 select @mto_salud_legal = round((@valor_afecto_cotiza_ley * @pje_salud_legal) / 100,4)	
		
        select @mto_pagado_ccaf = 0
      end
    else if @cod_isapre = 1
      begin
        select @mto_salud_legal = round((@valor_afecto_cotiza_ley * @pje_fonasa) / 100,4)
        select @mto_pagado_ccaf = round((@valor_afecto_cotiza_ley * @pje_ccaf) / 100,4)
      end
    else
      begin
        select @mto_salud_legal = 0
        select @mto_pagado_ccaf = 0
      end
      
  end
--verif si tiene que cotizar por el pactado o s¢lo 7%
select @mto_pactado_isapre = 0
select @adicional_isapre = 0

if @mto_pactado_isapre > 0 and not ( @mto_pactado_isapre = @pje_salud_legal and rtrim(ltrim(@unid_cob_mto_pacta)) = '%IM' )
  begin
    exec spliq_valores_mon_reliq @sp_mes_proceso, @sp_ano_proceso, @sp_empresa, @sp_planta,
         @sp_nro_trabajador, @sp_dv_trabajador, 'LQ', @mto_pactado_isapre,
         @unid_cob_mto_pacta,506,@sfecha_moneda,'','N','N',@valor_pactado_isapre output
    select @valor_pactado_isapre = round(@valor_pactado_isapre,0)
  end
if @valor_pactado_isapre is null select @valor_pactado_isapre = 0

if @adicional_isapre > 0 and @adicional_isapre < 100
  begin
    exec spliq_valores_mon_reliq @sp_mes_proceso, @sp_ano_proceso, @sp_empresa, @sp_planta,
         @sp_nro_trabajador, @sp_dv_trabajador, 'LQ', @adicional_isapre,'UF',506,
         @sfecha_moneda,'','N','N',@val_volunt_isapre output
    select @val_volunt_isapre = round(@val_volunt_isapre,0)
    if @val_volunt_isapre is null select @val_volunt_isapre = 0
  end

if @adicional_isapre > 0 and @adicional_isapre >= 100
  select @val_volunt_isapre = @adicional_isapre 
if @valor_pactado_isapre = 0
  select @valor_pactado_isapre = @mto_salud_legal 
if (@valor_pactado_isapre + @val_volunt_isapre) <= @mto_salud_legal
  select @valor_pactado_isapre = @mto_salud_legal - @val_volunt_isapre

select @valor_pactado_isapre = @valor_pactado_isapre + @val_volunt_isapre

if @sp_flg_ause_i = 'S'
  select @dias_prop_isapre = @sp_nro_dias_ausente_i
if @sp_flg_ause_f = 'S'
  select @dias_prop_isapre = @dias_prop_isapre + @sp_nro_dias_ausente_f

if @sp_consolida_empresa = 'N'
  select @dias_prop_isap_ause = sum(cantidad) 
  from movimiento_ausenci a,ausencia b
  where
  a.cod_empresa       = @sp_empresa and
  a.cod_planta        = @sp_planta and
  a.cod_empresa       = b.cod_empresa and
  a.cod_planta        = b.cod_planta and
  a.cod_ausencia      = b.cod_ausencia and
  a.nro_trabajador    = @sp_nro_trabajador and
  a.dv_trabajador     = @sp_dv_trabajador and
  b.prop_pactado_isap = 'S'
else
  select @dias_prop_isap_ause = sum(a.cantidad) 
  from movimiento_ausenci a,ausencia b, personal c
  where
  a.cod_empresa       = @sp_empresa and
  a.cod_empresa       = b.cod_empresa and
  a.cod_planta        = b.cod_planta and
  a.cod_ausencia      = b.cod_ausencia and
  a.cod_empresa       = c.cod_empresa and
  a.cod_planta        = c.cod_planta  and
  a.nro_trabajador    = c.nro_trabajador and
  a.dv_trabajador     = c.dv_trabajador and
  c.rut_trabajador    = @sp_rut_trabajador and
  b.prop_pactado_isap = 'S'

if @dias_prop_isap_ause is null select @dias_prop_isap_ause = 0
select @dias_prop_isapre = @dias_prop_isapre + @dias_prop_isap_ause

if @dias_licencia > 0
  begin
    if @condic_previsional='J'
      begin
        if @cod_cancela_isapre='N'
          begin
            select @mto_salud_legal = 0
            select @salud_adicional = 0
          end
        else if @cod_cancela_isapre='M'
          begin
            select @mto_salud_legal = @valor_pactado_isapre
            select @salud_adicional = 0
          end
        else
          begin
            if @mto_pactado_isapre > 0 and @valor_pactado_isapre > @tope_salud_pesos and
               not ( @mto_pactado_isapre = @pje_salud_legal and rtrim(ltrim(@unid_cob_mto_pacta)) = '%IM' )
              begin
                select @valor_pactado_isapre = round((@valor_pactado_isapre / 30 *( 30 - @dias_prop_isapre ))  + round((@val_volunt_isapre/30)*( 30 - @dias_prop_isapre ),0),0)
                select @salud_adicional = @valor_pactado_isapre - ( @tope_salud_pesos) / 30 *(30 - @sp_nro_dias_enfermo)
                select @mto_salud_legal = round(@tope_salud_pesos / 30 *(30 - @sp_nro_dias_enfermo),0)
              end
            else
              if @mto_pactado_isapre > 0 and  @valor_pactado_isapre <= @tope_salud_pesos and
                 @valor_pactado_isapre < (round(@valor_afecto_cotiza * @pje_salud_legal/100,0)) and
                 not ( @mto_pactado_isapre = @pje_salud_legal and rtrim(ltrim(@unid_cob_mto_pacta)) = '%IM' )
                begin
                  select @salud_adicional = 0
                  select @mto_salud_legal = round(@valor_afecto_cotiza * @pje_salud_legal/100,0)
                end
              else
                if @mto_pactado_isapre > 0 and  @valor_pactado_isapre <= @tope_salud_pesos and
                   @valor_pactado_isapre > (round(@valor_afecto_cotiza*@pje_salud_legal/100,0)) and 
                   not ( @mto_pactado_isapre = @pje_salud_legal and rtrim(ltrim(@unid_cob_mto_pacta)) = '%IM' )
                  begin
                    select @salud_adicional = 0
                    select @mto_salud_legal = round(@valor_pactado_isapre / 30 *( 30 - @dias_prop_isapre ),0)
                  end
          end
      end
    else
      begin
        if @mto_pactado_isapre > 0 and @valor_pactado_isapre > @tope_salud_pesos and
           not ( @mto_pactado_isapre = @pje_salud_legal and rtrim(ltrim(@unid_cob_mto_pacta)) = '%IM' )
          begin
            select @valor_pactado_isapre = round((@valor_pactado_isapre / 30 * ( 30 - @dias_prop_isapre ))  + (@val_volunt_isapre / 30 *( 30 - @dias_prop_isapre )),0)
            select @salud_adicional = @valor_pactado_isapre - ( @tope_salud_pesos) / 30 *((@sp_nro_dias_asisti+@sp_nro_dias_vacacio))
            select @mto_salud_legal = round(@tope_salud_pesos / 30 *(30-@sp_nro_dias_enfermo),0)
          end
        else
          if @mto_pactado_isapre > 0 and  @valor_pactado_isapre <= @tope_salud_pesos and
             (@valor_pactado_isapre/30*(30-@dias_licencia)) < (round(@valor_afecto_cotiza*@pje_salud_legal/100,0)) and
             not ( @mto_pactado_isapre = @pje_salud_legal and rtrim(ltrim(@unid_cob_mto_pacta)) = '%IM' )
            begin
              select @salud_adicional = 0
              select @mto_salud_legal = round(@valor_afecto_cotiza*@pje_salud_legal/100,0)
            end
          else
            if @mto_pactado_isapre > 0 and  @valor_pactado_isapre <= @tope_salud_pesos and
               @valor_pactado_isapre > (round(@valor_afecto_cotiza*@pje_salud_legal/100,0)) and
               not ( @mto_pactado_isapre = @pje_salud_legal and rtrim(ltrim(@unid_cob_mto_pacta)) = '%IM' )
              begin
                select @salud_adicional = 0
                select @mto_salud_legal = @valor_pactado_isapre / 30 *( 30 - @dias_prop_isapre )
              end
            else
              if @valor_pactado_isapre <= @tope_salud_pesos and
                 @valor_pactado_isapre  > (round(@valor_afecto_cotiza*@pje_salud_legal/100,0)) and
                 not ( @mto_pactado_isapre = @pje_salud_legal and rtrim(ltrim(@unid_cob_mto_pacta)) = '%IM' )
                begin
                  select @salud_adicional = 0
                  select @mto_salud_legal = @valor_pactado_isapre
                end
      end
  end
else
  begin
    if @condic_previsional='J'
      begin
        if @cod_cancela_isapre='N'
          begin
            select @mto_salud_legal = 0
            select @salud_adicional = 0
          end
        else if @cod_cancela_isapre='M'
          begin
            select @mto_salud_legal = @valor_pactado_isapre
            select @salud_adicional = 0
          end
        else
          begin
            if @mto_pactado_isapre > 0 and @valor_pactado_isapre > @tope_salud_pesos and
               not ( @mto_pactado_isapre = @pje_salud_legal and rtrim(ltrim(@unid_cob_mto_pacta)) = '%IM' )
              begin
                select @salud_adicional = @valor_pactado_isapre - @tope_salud_pesos
                select @mto_salud_legal = @tope_salud_pesos 
              end
            else
              if @mto_pactado_isapre > 0 and  @valor_pactado_isapre <= @tope_salud_pesos and
                 @valor_pactado_isapre  < (round(@valor_afecto_cotiza*@pje_salud_legal/100,0)) and
                 not ( @mto_pactado_isapre = @pje_salud_legal and rtrim(ltrim(@unid_cob_mto_pacta)) = '%IM' )
                begin
                  select @salud_adicional = 0
                  select @mto_salud_legal = round(@valor_afecto_cotiza*@pje_salud_legal/100,0)
                end
              else
                if @mto_pactado_isapre > 0 and  @valor_pactado_isapre <= @tope_salud_pesos and
                   @valor_pactado_isapre > (round(@valor_afecto_cotiza*@pje_salud_legal/100,0)) and
                   not ( @mto_pactado_isapre = @pje_salud_legal and rtrim(ltrim(@unid_cob_mto_pacta)) = '%IM' )
                  begin
                    select @salud_adicional = 0
                    select @mto_salud_legal = @valor_pactado_isapre
                  end
                else
                  if @valor_pactado_isapre <= @tope_salud_pesos and
                     @valor_pactado_isapre  > (round(@valor_afecto_cotiza*@pje_salud_legal/100,0)) and
                     not ( @mto_pactado_isapre = @pje_salud_legal and rtrim(ltrim(@unid_cob_mto_pacta)) = '%IM' )
                    begin
                      select @salud_adicional = 0
                      select @mto_salud_legal = @valor_pactado_isapre
                    end
          end
      end
    else
      begin
        if @valor_pactado_isapre <= @tope_salud_pesos and
           not ( @mto_pactado_isapre = @pje_salud_legal and rtrim(ltrim(@unid_cob_mto_pacta)) = '%IM' )
          begin
            select @salud_adicional = 0
            select @mto_salud_legal = @valor_pactado_isapre 
          end
        else
          if @mto_pactado_isapre > 0 and @valor_pactado_isapre > @tope_salud_pesos and
             not ( @mto_pactado_isapre = @pje_salud_legal and rtrim(ltrim(@unid_cob_mto_pacta)) = '%IM' )
            begin
              select @salud_adicional = @valor_pactado_isapre - @tope_salud_pesos
              select @mto_salud_legal = @tope_salud_pesos 
            end
          else
            if @valor_pactado_isapre > @tope_salud_pesos and
              not ( @mto_pactado_isapre = @pje_salud_legal and rtrim(ltrim(@unid_cob_mto_pacta)) = '%IM' )
              begin
                select @salud_adicional = @valor_pactado_isapre - @tope_salud_pesos
                select @mto_salud_legal = @tope_salud_pesos 
              end
            else
              if @mto_pactado_isapre > 0 and  @valor_pactado_isapre <= @tope_salud_pesos and
                 @valor_pactado_isapre  < (round(@valor_afecto_cotiza*@pje_salud_legal/100,0)) and
                 not ( @mto_pactado_isapre = @pje_salud_legal and rtrim(ltrim(@unid_cob_mto_pacta)) = '%IM' )
                begin
                  select @salud_adicional = 0
                  select @mto_salud_legal = round(@valor_afecto_cotiza*@pje_salud_legal/100,0)
                end
              else
                if @mto_pactado_isapre > 0 and  @valor_pactado_isapre <= @tope_salud_pesos and
                   @valor_pactado_isapre  < (round(@valor_afecto_cotiza*@pje_salud_legal/100,0)) and
                   not ( @mto_pactado_isapre = @pje_salud_legal and rtrim(ltrim(@unid_cob_mto_pacta)) = '%IM' )
                  begin
                    select @salud_adicional = 0
                    select @mto_salud_legal = @valor_pactado_isapre
                  end
                else
                  if @valor_pactado_isapre <= @tope_salud_pesos and
                     @valor_pactado_isapre  > (round(@valor_afecto_cotiza*@pje_salud_legal/100,0)) and
                     not ( @mto_pactado_isapre = @pje_salud_legal and rtrim(ltrim(@unid_cob_mto_pacta)) = '%IM' )
                    begin
                      select @salud_adicional = 0
                      select @mto_salud_legal = @valor_pactado_isapre
                    end
                  else
                    if @mto_pactado_isapre > 0 and  @valor_pactado_isapre <= @tope_salud_pesos and
                       @valor_pactado_isapre > (round(@valor_afecto_cotiza*@pje_salud_legal/100,0)) and
                       not ( @mto_pactado_isapre = @pje_salud_legal and rtrim(ltrim(@unid_cob_mto_pacta)) = '%IM' )
                      begin
                        select @salud_adicional = 0
                        select @mto_salud_legal = @valor_pactado_isapre
                      end
      end
  end

if @base_cada_mes = 'N' or @base_cada_mes is null
  if @aplica_seguro_des = 'S' and @cod_tipo_contra ='P'
    select @valor_seguro_des = round((@val_afecto_cotiza_seg * 6) /1000 , 4)
  else
    select @valor_seguro_des = 0
else
  set @sp_fec_mod_tip_con = @sp_fec_mod_tip_his
  if @aplica_seguro_his = 'S' and @cod_tipo_cont_his ='P'
    select @valor_seguro_des = round((@val_afecto_cotiza_seg * 6) /1000 , 4)
  else
    select @valor_seguro_des = 0


if ( @sp_fec_mod_tip_con is not null )
   begin
		set @PeriodoF = YEAR(@sp_fec_mod_tip_con)*100+MONTH(@sp_fec_mod_tip_con)
		set @PeriodoP = @sp_ano_proceso*100+@sp_mes_proceso	
		if ( @PeriodoP < @PeriodoF )
			select @valor_seguro_des = 0
	end
		 
		

if @condic_previsional='J'
	select @monto_aporte_sis = 0
    
if ( @cod_tipo_invalidez = 2 or @cod_tipo_invalidez is null )
begin
	if @condic_previsional='J'
	  select @valor_seguro_des= 0
end

return









GO
/****** Object:  StoredProcedure [dbo].[spliq_desc_ctacte_reliq]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO









create Procedure [dbo].[spliq_desc_ctacte_reliq](@sp_mes_proceso int,@sp_ano_proceso int,
@sp_empresa int,@sp_planta int,@sp_nro_trabajador int,@sp_dv_trabajador char(1),
@sp_tipo_proceso char(4),@descuento_grabo int,@cantidad decimal(12,2),@moneda char(4),
@valor_pesos int,@centro_costo int,@cod_institucion int,@sigla_inst char(10),
@sp_cod_centro_cost int,@sp_cod_tipo_trabaj char(2),@sp_cod_sucursal int,@docto_cta int,
@cuota int )

as

declare @sp_nTotDscto int, @aplica_cta_c_l char(1), @ultimo_correla int, @tope_uf_l int, 
@prioridad_descue_l int, @cod_unidad_to_l char(4)

select	@aplica_cta_c_l     = aplica_cta_cte,
        @cod_unidad_to_l    = cod_unidad_tope,
        @tope_uf_l          = tope_uf,
        @prioridad_descue_l = prioridad_descuent
from descuento 
where 
cod_empresa   = @sp_empresa and 
cod_planta    = @sp_planta  and 
cod_descuento = @descuento_grabo

if @valor_pesos != 0 or @descuento_grabo = 510
  begin
    if exists(select 1 from liquida_descuentos 
              where 
              cod_empresa    =    @sp_empresa        and
              cod_planta     =    @sp_planta         and
              nro_trabajador =    @sp_nro_trabajador and
              dv_trabajador  =    @sp_dv_trabajador  and
              cod_descuento  =	  @descuento_grabo   and
              ano_periodo    =    @sp_ano_proceso    and 
              mes_periodo    =    @sp_mes_proceso    and
              cod_tipo_proceso =  @sp_tipo_proceso)
      begin
        select @ultimo_correla = max(correlativo) from liquida_descuentos
        where 
        cod_empresa    = @sp_empresa        and
        cod_planta     = @sp_planta         and
        nro_trabajador = @sp_nro_trabajador and
        dv_trabajador  = @sp_dv_trabajador  and
        cod_descuento  = @descuento_grabo   and
        ano_periodo    = @sp_ano_proceso    and
        mes_periodo    = @sp_mes_proceso    and
        cod_tipo_proceso = @sp_tipo_proceso
        select @ultimo_correla = @ultimo_correla + 1
      end
    else
      begin
        select @ultimo_correla = 1
      end
    if @centro_costo = 0
      begin
        select @centro_costo = @sp_cod_centro_cost
      end
    
    INSERT INTO liquida_descuentos
    (cod_empresa, nro_trabajador, dv_trabajador, cod_descuento,
    correlativo, valor_transaccion, cod_unidad_moneda, valor_transac_peso,
    mto_no_descon_orig, mto_no_descon_peso, num_doc_cta_cte, numero_cuota,
    nro_sobre_pago, cod_planta, cod_sucursal, cod_centro_costo, cod_tip_trabajador,
    cod_instit_legal, ano_periodo, mes_periodo, cod_tipo_proceso, sigla, nro_secue_papeleta,
    aplica_ctacte, unidad_tope, total_tope, prioridad,mto_no_rebajado)
    VALUES(@sp_empresa, @sp_nro_trabajador, @sp_dv_trabajador, @descuento_grabo,
    @ultimo_correla,  @cantidad, @moneda, @valor_pesos,
    0, 0, @docto_cta, @cuota,
    0, @sp_planta, @sp_cod_sucursal, @centro_costo, @sp_cod_tipo_trabaj,
    @cod_institucion, @sp_ano_proceso, @sp_mes_proceso, @sp_tipo_proceso, @sigla_inst, 0,
    @aplica_cta_c_l, @cod_unidad_to_l, @tope_uf_l, @prioridad_descue_l,0)

update historico_liquidac
set 
val_total_desctos = val_total_desctos + @valor_pesos
where cod_empresa	= @sp_empresa	and
      cod_planta	= @sp_planta	and
      mes_periodo	= @sp_mes_proceso and
      ano_periodo	= @sp_ano_proceso and
      cod_tipo_proceso	= @sp_tipo_proceso and
      nro_trabajador	= @sp_nro_trabajador and
      dv_trabajador     = @sp_dv_trabajador
end
return










GO
/****** Object:  StoredProcedure [dbo].[spliq_descuentos_apv_reliq]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO







create procedure [dbo].[spliq_descuentos_apv_reliq]
(@sp_mes_proceso int,@sp_ano_proceso int,@sp_empresa int,@sp_planta int,@sp_nro_trabajador int,
 @sp_dv_trabajador char(1),@sp_tipo_proceso char(4),@cod_sucursal int,@cod_centro_costo int,
 @cod_tip_trabajador char(2),@nro_contr_vig_proc int,@ano_registro int, @mes_registro int,
 @ano_aplica int, @mes_aplica int,@valor_retorno numeric(28,10) output)
as
declare @monto_apv numeric(28,10),@moneda_descuento char(4),@centro_costo int,@valor_apv numeric(28,10),
        @fec_aplicacion datetime, @correlativo int, @prioridad_descuent int, @cod_descuento int,
        @rut_tercero int

select @rut_tercero = 0
select @fec_aplicacion = fec_fin_info_perio  from 
control_procesos where
cod_empresa = @sp_empresa and
cod_planta  = @sp_planta and
ano_proc_cont_proc = @ano_aplica and
cod_mes_proceso = @mes_aplica

select @valor_apv   = 0
select @valor_retorno = 0

declare descuentos_inf cursor for
select a.cod_descuento, sum(a.valor_concepto), a.cod_unidad_moneda, a.cod_centro_costo, b.prioridad_descuent 
from descuento_informad a, descuento b
where
a.cod_empresa      = @sp_empresa        and
a.cod_planta       = @sp_planta         and
a.cod_tipo_proceso = @sp_tipo_proceso   and
a.nro_trabajador   = @sp_nro_trabajador and
a.dv_trabajador    = @sp_dv_trabajador  and
datepart(yy,a.fec_aplicacion) = @ano_aplica and 
datepart(mm,a.fec_aplicacion) = @mes_aplica and
a.cod_empresa      = b.cod_empresa      and
a.cod_planta       = b.cod_planta       and
a.cod_descuento    = b.cod_descuento    and
b.reb_tributacion  = 'S'
group by a.cod_descuento,a.cod_unidad_moneda,a.cod_centro_costo,b.prioridad_descuent
order by b.prioridad_descuent

open descuentos_inf
fetch descuentos_inf into @cod_descuento,@monto_apv,@moneda_descuento,@centro_costo,@prioridad_descuent
while @@FETCH_STATUS = 0
-- procesamiento de descuentos de apv para reliquidacion
  begin    
    exec spliq_valores_mon @mes_aplica,@ano_aplica,@sp_empresa,@sp_planta,
         @sp_nro_trabajador,@sp_dv_trabajador,@sp_tipo_proceso,@monto_apv,@moneda_descuento,
         @cod_descuento,@fec_aplicacion,'','N','N',@valor_apv output
    select @rut_tercero = rut_tercero
    from descuento 
    where
    cod_empresa = @sp_empresa and
    cod_planta  = @sp_planta  and
    cod_descuento = @cod_descuento
    if @valor_apv is null select @valor_apv = 0
    if @valor_apv > 0
      begin
        if exists(select cod_empresa from liquida_descuentos 
                  where cod_empresa      = @sp_empresa        and 
                        cod_planta       = @sp_planta         and 
                        cod_tipo_proceso = @sp_tipo_proceso   and
                        ano_periodo      = @ano_registro      and 
                        mes_periodo      = @mes_registro      and
                        nro_trabajador   = @sp_nro_trabajador and 
                        dv_trabajador    = @sp_dv_trabajador  and 
                        cod_descuento    = @cod_descuento)
        
          begin
            select @correlativo = max(correlativo)
            from liquida_descuentos where cod_empresa      = @sp_empresa        and
                                          cod_planta       = @sp_planta         and
                                          cod_tipo_proceso = @sp_tipo_proceso   and
                                          ano_periodo      = @ano_registro      and 
                                          mes_periodo      = @mes_registro      and 
                                          nro_trabajador   = @sp_nro_trabajador and
                                          dv_trabajador    = @sp_dv_trabajador  and
                                          cod_descuento    = @cod_descuento
            select @correlativo = @correlativo + 1
          end
        else
          select @correlativo = 1
  
        insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
        mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
        cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop,rut_tercero )
        values(@sp_empresa,@sp_planta,@sp_nro_trabajador,@sp_dv_trabajador,@cod_descuento,@ano_registro,
        @mes_registro,@sp_tipo_proceso,@correlativo,@monto_apv,@moneda_descuento,@valor_apv,0,
        @cod_sucursal,@cod_centro_costo,@cod_tip_trabajador,@nro_contr_vig_proc,@valor_apv,@rut_tercero)
      end
      
    select @valor_retorno = @valor_retorno + @valor_apv
   
    fetch descuentos_inf into @cod_descuento,@monto_apv,@moneda_descuento,@centro_costo,@prioridad_descuent
  end
close descuentos_inf
deallocate  descuentos_inf
return @valor_retorno








GO
/****** Object:  StoredProcedure [dbo].[spliq_descuentos_reliq]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO





CREATE procedure [dbo].[spliq_descuentos_reliq]
(@sp_mes_proceso int,@sp_ano_proceso int,@sp_empresa int,@sp_planta int,@sp_nro_trabajador int,
 @sp_dv_trabajador char(1),@sp_tipo_proceso char(4),@cod_sucursal int,@cod_centro_costo int,
 @cod_tip_trabajador char(2),@nro_contr_vig_proc int,@ano_registro int, @mes_registro int,
 @ano_aplica int, @mes_aplica int,@valor_retorno numeric(28,10) output)
as
declare @monto_descuento numeric(28,10),@moneda_descuento char(4),@centro_costo int,@valor_descuento numeric(28,10),
        @fec_aplicacion datetime, @correlativo int, @prioridad_descuent int, @cod_descuento int,@acumula_historico varchar(100),@str_update varchar(800)

select @fec_aplicacion = fec_fin_info_perio  from 
control_procesos where
cod_empresa = @sp_empresa and
cod_planta  = @sp_planta and
ano_proc_cont_proc = @ano_aplica and
cod_mes_proceso = @mes_aplica

select @valor_descuento   = 0
select @valor_retorno = 0

declare descuentos_inf cursor for
select a.cod_descuento, sum(a.valor_concepto), a.cod_unidad_moneda, a.cod_centro_costo, b.prioridad_descuent, b.acumula_historico  
from descuento_informad a, descuento b
where
a.cod_empresa      = @sp_empresa        and
a.cod_planta       = @sp_planta         and
a.cod_tipo_proceso = @sp_tipo_proceso   and
a.nro_trabajador   = @sp_nro_trabajador and
a.dv_trabajador    = @sp_dv_trabajador  and
datepart(yy,a.fec_aplicacion) = @ano_aplica and 
datepart(mm,a.fec_aplicacion) = @mes_aplica and
a.cod_empresa      = b.cod_empresa      and
a.cod_planta       = b.cod_planta       and
a.cod_descuento    = b.cod_descuento    and
( b.reb_tributacion='N' or b.reb_tributacion is null )
group by a.cod_descuento,a.cod_unidad_moneda,a.cod_centro_costo,b.prioridad_descuent, b.acumula_historico 
order by b.prioridad_descuent

open descuentos_inf
fetch descuentos_inf into @cod_descuento,@monto_descuento,@moneda_descuento,@centro_costo,@prioridad_descuent,@acumula_historico
while @@FETCH_STATUS = 0
-- procesamiento de descuentos para reliquidacion
  begin    
    exec spliq_valores_mon_reliq @mes_aplica,@ano_aplica,@sp_empresa,@sp_planta,
         @sp_nro_trabajador,@sp_dv_trabajador,@sp_tipo_proceso,@monto_descuento,@moneda_descuento,
         @cod_descuento,@fec_aplicacion,'','N','N',@valor_descuento output
    if @valor_descuento is null select @valor_descuento = 0
    if @valor_descuento > 0
      begin
        if exists(select cod_empresa from liquida_descuentos 
                  where cod_empresa      = @sp_empresa        and 
                        cod_planta       = @sp_planta         and 
                        cod_tipo_proceso = @sp_tipo_proceso   and
                        ano_periodo      = @ano_registro      and 
                        mes_periodo      = @mes_registro      and
                        nro_trabajador   = @sp_nro_trabajador and 
                        dv_trabajador    = @sp_dv_trabajador  and 
                        cod_descuento    = @cod_descuento)
        
          begin
            select @correlativo = max(correlativo)
            from liquida_descuentos where cod_empresa      = @sp_empresa        and
                                          cod_planta       = @sp_planta         and
                                          cod_tipo_proceso = @sp_tipo_proceso   and
                                          ano_periodo      = @ano_registro      and 
                                          mes_periodo      = @mes_registro      and 
                                          nro_trabajador   = @sp_nro_trabajador and
                                          dv_trabajador    = @sp_dv_trabajador  and
                                          cod_descuento    = @cod_descuento
            select @correlativo = @correlativo + 1
          end
        else
          select @correlativo = 1
  
        insert into liquida_descuentos(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_descuento,ano_periodo,
        mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
        cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
        values(@sp_empresa,@sp_planta,@sp_nro_trabajador,@sp_dv_trabajador,@cod_descuento,@ano_registro,
        @mes_registro,@sp_tipo_proceso,@correlativo,@monto_descuento,@moneda_descuento,@valor_descuento,0,
        @cod_sucursal,@cod_centro_costo,@cod_tip_trabajador,@nro_contr_vig_proc,@valor_descuento)
        
        if  rtrim(ltrim(@acumula_historico)) != ' ' and @acumula_historico is not null and rtrim(ltrim(@acumula_historico)) != ''
            begin
              select @str_update = 'update historico_liquidac ' + 
              ' set ' + rtrim(ltrim(@acumula_historico))+ ' = ' + convert(varchar,@valor_descuento) + 
              ' where cod_empresa = ' + convert(varchar,@sp_empresa) + 
              ' and   cod_planta  = ' + convert(varchar,@sp_planta)  +
              ' and   cod_tipo_proceso =  ''' + @sp_tipo_proceso + '''' 
              select @str_update = @str_update + 
              ' and   ano_periodo = ' + convert(varchar,@ano_registro) +
              ' and   mes_periodo = ' + convert(varchar,@mes_registro) +
              ' and   nro_trabajador   = ' + convert(varchar,@sp_nro_trabajador) +
              ' and   dv_trabajador    = ''' + @sp_dv_trabajador+ '''' 
              exec (@str_update)
            end 
      end
      
    select @valor_retorno = @valor_retorno + @valor_descuento
   
    fetch descuentos_inf into @cod_descuento,@monto_descuento,@moneda_descuento,@centro_costo,@prioridad_descuent,@acumula_historico
  end
close descuentos_inf
deallocate  descuentos_inf
return 






GO
/****** Object:  StoredProcedure [dbo].[spliq_haberes_reliq]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO









CREATE procedure [dbo].[spliq_haberes_reliq]
(@sp_mes_proceso int,@sp_ano_proceso int,@sp_empresa int,@sp_planta int,@sp_nro_trabajador int,
 @sp_dv_trabajador char(1),@sp_tipo_proceso char(4),@cod_sucursal int,@cod_centro_costo int,
 @cod_tip_trabajador char(2),@nro_contr_vig_proc int,@ano_registro int, @mes_registro int,
 @ano_aplica int, @mes_aplica int,@meses_reales int, @meses_reliq int, @cod_haber int output,@valor_retorno numeric(38,10) output,
 @valor_exento numeric(38,10) output, @cod_hab_aporte int output, @valor_aporte numeric(38,10) output,
 @bTieneAsignacion int output)
as
declare @monto_haber numeric(38,10),@moneda_haber char(4),@centro_costo int,@valor_haber numeric(38,10),
        @valor_haber_no_prop numeric(38,10),
        @fec_aplicacion datetime, @correlativo int, @concepto_imponible char(1),
        @concepto_tributable char(1)
declare @tipo_aporte char(1),@cod_haber_l int
declare @rutina char(100), @unidad_moneda_ll char(4)

select @concepto_imponible = 'S'
select @concepto_tributable = 'S'
select @bTieneAsignacion = 0
select @fec_aplicacion = fec_fin_info_perio  from 
control_procesos where
cod_empresa = @sp_empresa and
cod_planta  = @sp_planta and
ano_proc_cont_proc = @ano_aplica and
cod_mes_proceso = @mes_aplica

select @valor_haber   = 0
select @valor_exento  = 0
select @valor_aporte  = 0
select @valor_retorno = 0
select @cod_hab_aporte = 0

declare haberes_inf cursor for
select a.cod_haber, sum(a.valor_concepto), a.cod_unidad_moneda, 
a.cod_centro_costo, b.rutina
from haber_informado a, haber b
where
a.cod_empresa      = @sp_empresa and
a.cod_planta       = @sp_planta and
a.cod_tipo_proceso = @sp_tipo_proceso and
a.nro_trabajador   = @sp_nro_trabajador and
a.dv_trabajador    = @sp_dv_trabajador and
datepart(yy,a.fec_aplicacion)   = @ano_aplica and 
datepart(mm,a.fec_aplicacion)   = @mes_aplica and
a.cod_empresa      = b.cod_empresa and
a.cod_planta       = b.cod_planta  and
a.cod_haber        = b.cod_haber
group by a.cod_haber,a.cod_unidad_moneda,a.cod_centro_costo, b.rutina

open haberes_inf
fetch haberes_inf into @cod_haber_l,@monto_haber,@moneda_haber,
@centro_costo,@rutina
while @@FETCH_STATUS = 0
-- procesamiento de haberes de reliquidacion
  begin
    select @bTieneAsignacion = 1
    select @concepto_imponible = concepto_imponible,
           @concepto_tributable = tributable,
           @tipo_aporte        = tipo_hab_contabili from 
    haber 
    where 
    cod_empresa = @sp_empresa and
    cod_planta  = @sp_planta  and
    cod_haber   = @cod_haber_l
    if  @concepto_imponible is null select @concepto_imponible = 'N'
    if  @concepto_tributable is null select @concepto_tributable = 'N'
    select @rutina = rtrim(ltrim(@rutina))
    if @rutina is not null and @rutina != ' '
     begin
      exec spliq_externo_h @sp_mes_proceso,@sp_ano_proceso,
      @sp_empresa,@sp_planta,@sp_nro_trabajador,@sp_dv_trabajador,
      @sp_tipo_proceso,@cod_haber_l,@monto_haber,
      @moneda_haber,@cod_centro_costo,@cod_tip_trabajador,
      @cod_sucursal,@valor_haber output,@valor_haber_no_prop output,
      @monto_haber output,@unidad_moneda_ll output
      end
    else
    begin
      exec spliq_valores_mon_reliq @mes_aplica,@ano_aplica,@sp_empresa,@sp_planta,
      @sp_nro_trabajador,@sp_dv_trabajador,@sp_tipo_proceso,@monto_haber,@moneda_haber,
      @cod_haber_l,@fec_aplicacion,'','N','N',@valor_haber output
    end
    if @valor_haber is null select @valor_haber = 0
    if @meses_reales > 0 and @meses_reliq > 0
      select @valor_haber = round( ( @valor_haber * @meses_reales ) / @meses_reliq , 0) 
    if @valor_haber > 0
      begin
        if exists(select cod_empresa from liquidacio_haberes 
                  where cod_empresa      = @sp_empresa        and 
                        cod_planta       = @sp_planta         and 
                        cod_tipo_proceso = @sp_tipo_proceso   and
                        ano_periodo      = @ano_registro      and 
                        mes_periodo      = @mes_registro      and
                        nro_trabajador   = @sp_nro_trabajador and 
                        dv_trabajador    = @sp_dv_trabajador  and 
                        cod_haber        = @cod_haber_l)
        
          begin
            select @correlativo = max(correlativo)
            from liquidacio_haberes where cod_empresa      = @sp_empresa        and
                                          cod_planta       = @sp_planta         and
                                          cod_tipo_proceso = @sp_tipo_proceso   and
                                          ano_periodo      = @ano_registro      and 
                                          mes_periodo      = @mes_registro      and 
                                          nro_trabajador   = @sp_nro_trabajador and
                                          dv_trabajador    = @sp_dv_trabajador  and
                                          cod_haber        = @cod_haber_l
            select @correlativo = @correlativo + 1
          end
        else
          select @correlativo = 1
  
        insert into liquidacio_haberes(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,cod_haber,ano_periodo,
        mes_periodo,cod_tipo_proceso,correlativo,valor_transaccion,cod_unidad_moneda,valor_transac_peso,nro_sobre_pago,
        cod_sucursal,cod_centro_costo,cod_tip_trabajador,nro_contr_vig_proc,val_pesos_no_prop)
        values(@sp_empresa,@sp_planta,@sp_nro_trabajador,@sp_dv_trabajador,@cod_haber_l,@ano_registro,
        @mes_registro,@sp_tipo_proceso,@correlativo,@monto_haber,@moneda_haber,@valor_haber,0,
        @cod_sucursal,@cod_centro_costo,@cod_tip_trabajador,@nro_contr_vig_proc,@valor_haber)
      end
    if @concepto_imponible = 'S' or @concepto_tributable = 'S'
      begin
        select @valor_retorno = @valor_retorno + @valor_haber
        select @cod_haber = @cod_haber_l
      end
    else if rtrim(ltrim(@tipo_aporte)) = '' or rtrim(ltrim(@tipo_aporte)) = ' '
      select @valor_exento = @valor_exento   + @valor_haber
    else
      begin
        select @valor_aporte = @valor_aporte   + @valor_haber
        select @cod_hab_aporte = @cod_haber_l
      end
    fetch haberes_inf into @cod_haber_l,@monto_haber,@moneda_haber,
    @centro_costo,@rutina
  end
close haberes_inf
deallocate  haberes_inf
return









GO
/****** Object:  StoredProcedure [dbo].[spliq_haberes_reliq_fnqt]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO







create procedure [dbo].[spliq_haberes_reliq_fnqt]
(@sp_mes_proceso int,@sp_ano_proceso int,@sp_empresa int,@sp_planta int,@sp_nro_trabajador int,
 @sp_dv_trabajador char(1),@sp_tipo_proceso char(4),@cod_sucursal int,@cod_centro_costo int,
 @cod_tip_trabajador char(2),@nro_contr_vig_proc int,@ano_registro int, @mes_registro int,
 @ano_aplica int, @mes_aplica int,@meses_reales int, @meses_reliq int, @cod_haber int output,@valor_retorno numeric(38,10) output,
 @valor_exento numeric(38,10) output, @cod_hab_aporte int output, @valor_aporte numeric(38,10) output)
as
declare @monto_haber numeric(38,10),@moneda_haber char(4),@centro_costo int,@valor_haber numeric(38,10),
        @valor_haber_no_prop numeric(38,10),
        @fec_aplicacion datetime, @correlativo int, @concepto_imponible char(1),
        @concepto_tributable char(1)
declare @tipo_aporte char(1),@cod_haber_l int
declare @rutina char(100), @unidad_moneda_ll char(4)

select @concepto_imponible = 'S'
select @concepto_tributable = 'S'

select @fec_aplicacion = fec_fin_info_perio  from 
control_procesos where
cod_empresa = @sp_empresa and
cod_planta  = @sp_planta and
ano_proc_cont_proc = @ano_aplica and
cod_mes_proceso = @mes_aplica

select @valor_haber   = 0
select @valor_exento  = 0
select @valor_aporte  = 0
select @valor_retorno = 0
select @cod_hab_aporte = 0

declare haberes_inf cursor for
select a.cod_haber, sum(a.valor_concepto), a.cod_unidad_moneda, 
a.cod_centro_costo, b.rutina
from haber_informado a, haber b
where
a.cod_empresa      = @sp_empresa and
a.cod_planta       = @sp_planta and
a.cod_tipo_proceso = @sp_tipo_proceso and
a.nro_trabajador   = @sp_nro_trabajador and
a.dv_trabajador    = @sp_dv_trabajador and
datepart(yy,a.fec_aplicacion)   = @ano_aplica and 
datepart(mm,a.fec_aplicacion)   = @mes_aplica and
a.cod_empresa      = b.cod_empresa and
a.cod_planta       = b.cod_planta  and
a.cod_haber        = b.cod_haber   and
(b.concepto_imponible = 'S' or b.tributable = 'S' )
group by a.cod_haber,a.cod_unidad_moneda,a.cod_centro_costo,b.rutina

open haberes_inf
fetch haberes_inf into @cod_haber_l,@monto_haber,@moneda_haber,
@centro_costo,@rutina
while @@FETCH_STATUS = 0
-- procesamiento de haberes de reliquidacion
  begin
    select @concepto_imponible = concepto_imponible,
           @concepto_tributable = tributable,
           @tipo_aporte        = tipo_hab_contabili from 
    haber 
    where 
    cod_empresa = @sp_empresa and
    cod_planta  = @sp_planta  and
    cod_haber   = @cod_haber_l
    if  @concepto_imponible is null select @concepto_imponible = 'N'
    if  @concepto_tributable is null select @concepto_tributable = 'N'
    select @rutina = rtrim(ltrim(@rutina))
    if @rutina is not null and @rutina != ' '
      exec spliq_externo_h @sp_mes_proceso,@sp_ano_proceso,
      @sp_empresa,@sp_planta,@sp_nro_trabajador,@sp_dv_trabajador,
      @sp_tipo_proceso,@cod_haber_l,@monto_haber,
      @moneda_haber,@cod_centro_costo,@cod_tip_trabajador,
      @cod_sucursal,@valor_haber output,@valor_haber_no_prop output,
      @monto_haber output,@unidad_moneda_ll output
    else
      exec spliq_valores_mon_reliq @mes_aplica,@ano_aplica,@sp_empresa,@sp_planta,
      @sp_nro_trabajador,@sp_dv_trabajador,@sp_tipo_proceso,@monto_haber,@moneda_haber,
      @cod_haber_l,@fec_aplicacion,'','N','N',@valor_haber output
    if @valor_haber is null select @valor_haber = 0
    if @meses_reales > 0 and @meses_reliq > 0
      select @valor_haber = round( ( @valor_haber * @meses_reales ) / @meses_reliq , 0) 
    
    if @concepto_imponible = 'S' or @concepto_tributable = 'S'
      begin
        select @valor_retorno = @valor_retorno + @valor_haber
        select @cod_haber = @cod_haber_l
      end
    else if rtrim(ltrim(@tipo_aporte)) = '' or rtrim(ltrim(@tipo_aporte)) = ' '
      select @valor_exento = @valor_exento   + @valor_haber
    else
      begin
        select @valor_aporte = @valor_aporte   + @valor_haber
        select @cod_hab_aporte = @cod_haber_l
      end
    fetch haberes_inf into @cod_haber_l,@monto_haber,
    @moneda_haber,@centro_costo,@rutina
  end
close haberes_inf
deallocate  haberes_inf
return 








GO
/****** Object:  StoredProcedure [dbo].[spliq_ini_legales_reliq]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO









CREATE procedure [dbo].[spliq_ini_legales_reliq](@sp_mes_proceso int, @sp_ano_proceso int,
@sp_empresa int, @sp_planta int, @sp_nro_trabajador int, @sp_dv_trabajador char(1),
@sp_tipo_proceso char(4),@sp_flg_revisa_hist char(1), @dias_proceso decimal(4,2),
@sp_flg_difer_tope char(1))
as
declare @sp_nombre char(50)
declare @sp_sueldo_ganado_m int, @sp_valor_adic_gana int, @sp_tot_imponible int,
@sp_cod_instit_prev int, @sp_cod_instit_salu int,@sp_caja_comp_antig int,
@valor_entero int,@centro_costo int,@sucursal int,@trabajador char(2),
@sp_tot_impon_sin_t numeric(38,15),@sp_nAfecImpo numeric(38,15),@sp_Toctimp numeric(38,15),
@sp_unid_cobro_cta char(4),@sp_mto_dcto_cta_ah int,@sigla_afp_l char(20),
@sp_mto_ahorro_volu int,@valor_decimal decimal(11,2),@sp_fin_informacio datetime,
@sp_I900 int,@dias_enfermo int,@nTotImpCont int,@sp_monto_inp_i900 int,@sp_monto_afp_I900 int,
@nTotImpCont_prop int,@sp_monto_prev_I900 int
declare @tot_impon_otros numeric(38,15),
@monto_tope numeric(38,15)

select 
@sp_cod_instit_prev = cod_instit_previsi,
@sp_cod_instit_salu = cod_instit_salud,
@dias_enfermo       = nro_dias_enfermo,
@sp_caja_comp_antig = caja_comp_antigua,
@sp_tot_imponible   = tot_imponible,
@sp_tot_impon_sin_t = tot_impon_sin_tope,
@sp_sueldo_ganado_m = sueldo_ganado_mes,
@sp_valor_adic_gana = valor_adic_ganado,
@sp_Toctimp         = val_tot_tope_impon,
@centro_costo       = cod_centro_costo,
@sucursal           = cod_sucursal,
@trabajador         = cod_tipo_trabajado
from historico_liquidac
where 
cod_empresa      = @sp_empresa and
cod_planta       = @sp_planta and
mes_periodo      = @sp_mes_proceso And
ano_periodo      = @sp_ano_proceso And
cod_tipo_proceso = @sp_tipo_proceso And
nro_trabajador   = @sp_nro_trabajador and
dv_trabajador    = @sp_dv_trabajador

select @sp_nombre=nombre, @sp_nAfecImpo=afecto_imponible,
       @sp_fin_informacio=fec_final,@sp_I900=i900,
       @sp_monto_afp_I900=monto_afp_i900,
       @sp_monto_inp_i900=monto_inp_i900
from liquidacion
where 
cod_empresa = @sp_empresa and
cod_planta = @sp_planta and
mes_periodo = @sp_mes_proceso and
ano_periodo = @sp_ano_proceso and
cod_tipo_proceso = @sp_tipo_proceso and
nro_trabajador =  @sp_nro_trabajador and
dv_trabajador = @sp_dv_trabajador

if ( @sp_I900 = 1 or @dias_enfermo > 0 ) --and @sp_flg_difer_tope ='S'
  begin
    select @nTotImpCont=sum( valor_transac_peso )
    from haberes_contractua, haber
    where
    haberes_contractua.cod_empresa =@sp_empresa and
    haberes_contractua.cod_planta  = @sp_planta  and
    haberes_contractua.ano_periodo = @sp_ano_proceso and
    haberes_contractua.mes_periodo = @sp_mes_proceso and
    cod_tipo_proceso = @sp_tipo_proceso and
    haberes_contractua.nro_trabajador = @sp_nro_trabajador and
    haberes_contractua.dv_trabajador = @sp_dv_trabajador  and
    haberes_contractua.cod_empresa = haber.cod_empresa and
    haberes_contractua.cod_planta = haber.cod_planta and
    haberes_contractua.cod_haber = haber.cod_haber and
    haber.concepto_imponible = 'S' and
    haber.flg_subsidio_isap = 'S'
    
    select @nTotImpCont_prop = round(@nTotImpCont * ( (@dias_enfermo * 1.00 )/@dias_proceso ),0)
    if @sp_cod_instit_prev > 0
      select @sp_monto_prev_I900 = @sp_monto_afp_I900
    else
      select @sp_monto_prev_I900 = @sp_monto_inp_i900
    if @nTotImpCont >  @sp_tot_imponible
      begin
        select @sp_I900 = 1
      end
    else
      begin
        if (( @sp_tot_impon_sin_t + @nTotImpCont_prop ) >  @sp_monto_prev_I900 )
          begin
            if @sp_tot_impon_sin_t > (@sp_tot_imponible - @nTotImpCont_prop)
              begin
                select @sp_tot_impon_sin_t = @sp_tot_imponible - @nTotImpCont_prop
              end
            select @sp_I900 = 0
          end
      end
  end

select @valor_entero = 0
select @valor_entero = @sp_sueldo_ganado_m + @sp_valor_adic_gana

if @valor_entero != 0 OR @sp_tot_impon_sin_t != 0
  begin
    if @sp_tot_impon_sin_t > @sp_tot_imponible
      begin
        select @sp_nAfecImpo = @sp_tot_imponible
      end
    else
      begin
        select @sp_nAfecImpo = @sp_tot_impon_sin_t
      end
    if @sp_flg_revisa_hist = 'E' or @sp_flg_revisa_hist = 'C'
      begin
        exec spliq_revisa_his @sp_empresa,@sp_planta,@sp_ano_proceso,
             @sp_mes_proceso,@sp_nro_trabajador,@sp_dv_trabajador, @sp_tipo_proceso,
             @sp_flg_revisa_hist, @tot_impon_otros output
        if @tot_impon_otros > 0
          begin
            if @sp_I900 = 1
              select @monto_tope = @sp_monto_afp_I900
            else
              select @monto_tope = @sp_tot_imponible
            if @tot_impon_otros > @monto_tope
              begin
                select @sp_nAfecImpo = 0
              end
            else
              begin
                if ( @tot_impon_otros + @sp_nAfecImpo) > @monto_tope
                  begin
                    select @sp_nAfecImpo = @monto_tope - @tot_impon_otros
                  end
              end
          end
      end
    select @sp_Toctimp = @sp_nAfecImpo
    
    update historico_liquidac
    set val_tot_tope_impon = @sp_Toctimp
    where
    cod_empresa = @sp_empresa and
    cod_planta = @sp_planta and
    mes_periodo = @sp_mes_proceso and
    ano_periodo = @sp_ano_proceso and
    cod_tipo_proceso = @sp_tipo_proceso and
    nro_trabajador =  @sp_nro_trabajador and
    dv_trabajador = @sp_dv_trabajador
    
    update liquidacion
    set afecto_imponible = @sp_nAfecImpo,
        i900=@sp_I900
    where
    cod_empresa = @sp_empresa and
    cod_planta = @sp_planta and
    mes_periodo = @sp_mes_proceso and
    ano_periodo = @sp_ano_proceso and
    cod_tipo_proceso = @sp_tipo_proceso and
    nro_trabajador =  @sp_nro_trabajador and
    dv_trabajador = @sp_dv_trabajador
    
    if @sp_cod_instit_prev > 0 AND @sp_cod_instit_salu > 1
      begin
        exec spliq_calc_afp @sp_mes_proceso, @sp_ano_proceso, @sp_empresa, @sp_planta, @sp_nro_trabajador, @sp_dv_trabajador,
             @sp_tipo_proceso,@sp_flg_revisa_hist
        exec spliq_calc_isapre @sp_mes_proceso, @sp_ano_proceso, @sp_empresa, @sp_planta, @sp_nro_trabajador, @sp_dv_trabajador,
             @sp_tipo_proceso,@dias_proceso,@sp_flg_revisa_hist
      end
    else
      begin
        if @sp_cod_instit_prev > 0 AND @sp_cod_instit_salu <= 1
          begin
            exec spliq_calc_afp @sp_mes_proceso, @sp_ano_proceso, @sp_empresa, @sp_planta, @sp_nro_trabajador, @sp_dv_trabajador,
                 @sp_tipo_proceso,@sp_flg_revisa_hist
            exec spliq_caja_afp @sp_mes_proceso, @sp_ano_proceso, @sp_empresa, @sp_planta, @sp_nro_trabajador, @sp_dv_trabajador,
                 @sp_tipo_proceso, @sp_cod_instit_salu, @sp_cod_instit_prev, @sp_caja_comp_antig,@centro_costo
          end
        else
          begin
            if @sp_cod_instit_prev <= 0 AND @sp_caja_comp_antig > 0 AND @sp_cod_instit_salu > 1
              begin
                exec spliq_caja_isapre @sp_mes_proceso, @sp_ano_proceso, @sp_empresa, @sp_planta, @sp_nro_trabajador, @sp_dv_trabajador,
                     @sp_tipo_proceso, @sp_cod_instit_salu, @sp_cod_instit_prev, @sp_caja_comp_antig,@centro_costo
                exec spliq_calc_isapre @sp_mes_proceso, @sp_ano_proceso, @sp_empresa, @sp_planta, @sp_nro_trabajador, @sp_dv_trabajador,
                     @sp_tipo_proceso,@dias_proceso,@sp_flg_revisa_hist
              end
            else
              begin
                if @sp_cod_instit_prev <= 0 AND @sp_caja_comp_antig > 0 AND @sp_cod_instit_salu <= 1
                  begin
                    exec spliq_caja_previsi @sp_mes_proceso, @sp_ano_proceso, @sp_empresa, @sp_planta, @sp_nro_trabajador, @sp_dv_trabajador,
                         @sp_tipo_proceso, @sp_cod_instit_salu, @sp_cod_instit_prev, @sp_caja_comp_antig,@centro_costo
                  end
                else
                  begin
                    insert into errores_calculo(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,
                    nombre,cod_error_tabla,descripcion_codigo,masivo_informado,descripcion_error,tabla_del_error,cod_tipo_proceso)
                    values(@sp_empresa,@sp_planta,@sp_nro_trabajador,@sp_dv_trabajador,@sp_nombre,11,
                    'Revisar maestro personal','C','inconsistencia regimen previsional en personal',
                    'personal',@sp_tipo_proceso)
                  end
              end
          end
      end
  end
else
  begin
    select @sp_mto_dcto_cta_ah=mto_dcto_cta_ahorr, @sp_unid_cobro_cta=unid_cobro_cta_aho 
    from personal
    where
    cod_empresa = @sp_empresa and
    cod_planta = @sp_planta and
    nro_trabajador =@sp_nro_trabajador and
    dv_trabajador = @sp_dv_trabajador
    
    select @sigla_afp_l=sigla_afp from afp where cod_afp = @sp_cod_instit_prev
    select  @sp_mto_ahorro_volu = 0
    
    if @sp_mto_dcto_cta_ah > 0 AND @sp_unid_cobro_cta is not null
      begin
        select  @valor_decimal = 0 
      end
    if @sp_unid_cobro_cta = '$'
      begin
        select @valor_decimal = @sp_mto_dcto_cta_ah 
      end
    else
      begin
        exec spliq_valores_mon_reliq @sp_mes_proceso, @sp_ano_proceso, @sp_empresa, @sp_planta, @sp_nro_trabajador, @sp_dv_trabajador,
             @sp_tipo_proceso, @sp_mto_dcto_cta_ah, @sp_unid_cobro_cta, 523, @sp_fin_informacio, '', '','', @valor_decimal
      end
    select  @sp_mto_ahorro_volu = round(@valor_decimal, 0)
    if @sp_mto_ahorro_volu = 0
      begin
        insert into errores_calculo(cod_empresa,cod_planta,nro_trabajador,dv_trabajador,nombre,cod_error_tabla,
        descripcion_codigo, masivo_informado,descripcion_error, tabla_del_error,cod_tipo_proceso)
        values(@sp_empresa,@sp_planta,@sp_nro_trabajador,@sp_dv_trabajador,@sp_nombre, 14,
        'Revisar montos voluntarios', 'C','Ahorro voluntario en 0 en personal','personal',
        @sp_tipo_proceso)
        return
      end
    if @sp_mto_ahorro_volu is null
      begin
        select @sp_mto_ahorro_volu =0 
      end
    
    exec spliq_car_descuen @sp_mes_proceso, @sp_ano_proceso, @sp_empresa, @sp_planta, @sp_nro_trabajador, @sp_dv_trabajador,
                           @sp_tipo_proceso, @sp_mto_ahorro_volu, 523
    exec spliq_inserta_des @sp_mes_proceso, @sp_ano_proceso, @sp_empresa, @sp_planta, @sp_nro_trabajador, @sp_dv_trabajador,
                           @sp_tipo_proceso,523,@sp_mto_dcto_cta_ah, @sp_unid_cobro_cta, @sp_mto_ahorro_volu,
                           @centro_costo, @sp_cod_instit_prev, @sigla_afp_l, @centro_costo, @trabajador, @sucursal,0,0,'',null
    update historico_liquidac
    set tot_dctos_no_legal = tot_dctos_no_legal + @sp_mto_ahorro_volu,
        mto_ahorro_volunta = @sp_mto_ahorro_volu
    where
    cod_empresa = @sp_empresa and
    cod_planta = @sp_planta and
    mes_periodo = @sp_mes_proceso and
    ano_periodo = @sp_ano_proceso and
    cod_tipo_proceso = @sp_tipo_proceso and
    nro_trabajador = @sp_nro_trabajador and
    dv_trabajador = @sp_dv_trabajador
  end
return










GO
/****** Object:  StoredProcedure [dbo].[spliq_reb_ctacte_reliq]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO









create procedure [dbo].[spliq_reb_ctacte_reliq](@sp_mes_proceso int, @sp_ano_proceso int,
@sp_empresa int, @sp_planta int, @sp_nro_trabajador int, @sp_dv_trabajador char(1),
@sp_tipo_proceso char(4), @valor_trasac dec(12,2), @valor_pesos int, @numero_docto int,
@cuota int, @rebaja char(1))
as

declare @nFolio int, @cuota_uno int, @valor_abono int, @valor_total int, @saldo_docto int,
        @abono_manual int, @moneda char(4), @sp_fin_informacio datetime, @abono_liq char(1)

select @abono_manual = 0

select @abono_liq = abono_liquidacion
from control_parametros
where
cod_empresa = @sp_empresa and
cod_planta = @sp_planta and
mes_control_proces = @sp_mes_proceso and
ano_control_proces = @sp_ano_proceso

if @rebaja = 'S'
  begin
    if not exists(select abono_cta_cte.nro_doc_cta_cte from abono_cta_cte where abono_cta_cte.cod_empresa = @sp_empresa AND
              abono_cta_cte.cod_planta = @sp_planta AND abono_cta_cte.nro_doc_cta_cte = @numero_docto And
              abono_cta_cte.numero_cuota = @cuota And abono_cta_cte.cod_est_cargo_abon='P')
      update cta_cte_trabajador 
      set mon_orig_cta_proce = mon_orig_cta_proce - @valor_trasac
      where
      cta_cte_trabajador.cod_empresa = @sp_empresa  AND
      cta_cte_trabajador.cod_planta = @sp_planta AND
      cta_cte_trabajador.nro_trabajador = @sp_nro_trabajador And
      cta_cte_trabajador.dv_trabajador = @sp_dv_trabajador And
      cta_cte_trabajador.nro_doc_cta_cte = @numero_docto
    
    update estado_cuota 
    set saldo_cuota_proces = 0, estado_cuota = 'P'
    where
    estado_cuota.cod_empresa = @sp_empresa AND
    estado_cuota.cod_planta = @sp_planta AND
    estado_cuota.nro_doc_cta_cte = @numero_docto And
    estado_cuota.numero_cuota = @cuota And
    estado_cuota.ano_aplicacion = @sp_ano_proceso And
    estado_cuota.mes_aplic_prog_cuo =@sp_mes_proceso And
    estado_cuota.proceso_a_aplicar = @sp_tipo_proceso
    
    select @nFolio = nro_folio_cta_cte
    from folio_cta_cte
    where 
    cod_empresa = @sp_empresa AND
    cod_planta = @sp_planta AND
    cod_aplicaci_folio = 14
    
    if @abono_liq = 'S'
      begin
        if not exists(select abono_cta_cte.nro_doc_cta_cte from abono_cta_cte where abono_cta_cte.cod_empresa = @sp_empresa AND
              abono_cta_cte.cod_planta = @sp_planta AND abono_cta_cte.nro_doc_cta_cte = @numero_docto And
              abono_cta_cte.numero_cuota = @cuota And abono_cta_cte.cod_doc_cta_cte=105 and
              abono_cta_cte.tipo_proc_car_abon='AL' and abono_cta_cte.tipo_movimiento='A' and
              abono_cta_cte.cod_est_cargo_abon='P')
          INSERT INTO abono_cta_cte(cod_empresa, cod_planta, nro_doc_cta_cte, numero_cuota, 
          cod_doc_cta_cte,nro_doc_cargo_abon, mon_orig_carg_abon, mon_nac_carg_abono, tipo_proc_car_abon,
          tipo_movimiento, fec_aplic_car_abo, cod_est_cargo_abon)
          VALUES (@sp_empresa, @sp_planta, @numero_docto, @cuota, 105, @nFolio, @valor_trasac, @valor_pesos,
          'AL','A', getdate(),'P')
      end
    else
      begin
        if not exists(select abono_cta_cte.nro_doc_cta_cte from abono_cta_cte where abono_cta_cte.cod_empresa = @sp_empresa AND
              abono_cta_cte.cod_planta = @sp_planta AND abono_cta_cte.nro_doc_cta_cte = @numero_docto And
              abono_cta_cte.numero_cuota = @cuota And abono_cta_cte.cod_doc_cta_cte=105 and
              abono_cta_cte.tipo_proc_car_abon=@sp_tipo_proceso and abono_cta_cte.tipo_movimiento='A' and
              abono_cta_cte.cod_est_cargo_abon='P')
        INSERT INTO abono_cta_cte(cod_empresa, cod_planta, nro_doc_cta_cte, numero_cuota, 
        cod_doc_cta_cte, nro_doc_cargo_abon, mon_orig_carg_abon, mon_nac_carg_abono, tipo_proc_car_abon,
        tipo_movimiento, fec_aplic_car_abo, cod_est_cargo_abon)
        VALUES (@sp_empresa, @sp_planta, @numero_docto, @cuota, 105, @nFolio, @valor_trasac, @valor_pesos,
        @sp_tipo_proceso, 'A', getdate(),'P')      end
    
    UPDATE folio_cta_cte
    SET nro_folio_cta_cte = nro_folio_cta_cte + 1
    WHERE 
    cod_empresa = @sp_empresa AND
    cod_planta = @sp_planta AND
    cod_aplicaci_folio = 14
  end
else
  begin
    select @cuota_uno = @cuota + 1
    
    update cta_cte_trabajador
    set mon_orig_cta_proce = mon_orig_cta_proce - @valor_trasac
    where 
    cta_cte_trabajador.cod_empresa = @sp_empresa  AND
    cta_cte_trabajador.cod_planta = @sp_planta AND
    cta_cte_trabajador.nro_trabajador = @sp_nro_trabajador And
    cta_cte_trabajador.dv_trabajador = @sp_dv_trabajador And
    cta_cte_trabajador.nro_doc_cta_cte = @numero_docto
    
    update estado_cuota
    set saldo_cuota_proces = 0, estado_cuota = 'P'
    where 
    estado_cuota.cod_empresa = @sp_empresa AND
    estado_cuota.cod_planta = @sp_planta AND
    estado_cuota.nro_doc_cta_cte = @numero_docto And
    estado_cuota.numero_cuota = @cuota And
    estado_cuota.ano_aplicacion = @sp_ano_proceso And
    estado_cuota.mes_aplic_prog_cuo =@sp_mes_proceso And
    estado_cuota.proceso_a_aplicar = @sp_tipo_proceso
    
    if exists(select numero_cuota from estado_cuota where estado_cuota.cod_empresa = @sp_empresa AND
              estado_cuota.cod_planta = @sp_planta AND estado_cuota.nro_doc_cta_cte = @numero_docto And
              estado_cuota.numero_cuota = @cuota_uno And estado_cuota.proceso_a_aplicar = @sp_tipo_proceso)
      begin
        update estado_cuota 
        set saldo_cuota_proces = saldo_cuota_proces + @valor_trasac,
            valor_sobreg_cuota = valor_sobreg_cuota + @valor_trasac,
            estado_cuota = 'P'
        where 
        estado_cuota.cod_empresa = @sp_empresa AND
        estado_cuota.cod_planta = @sp_planta AND
        estado_cuota.nro_doc_cta_cte = @numero_docto And
        estado_cuota.numero_cuota = @cuota_uno And
        estado_cuota.ano_aplicacion = @sp_ano_proceso And
        estado_cuota.mes_aplic_prog_cuo = @sp_mes_proceso And
        estado_cuota.proceso_a_aplicar = @sp_tipo_proceso
      end
    else
      begin
        select @moneda=cod_unidad_cobro
        from estado_cuota
        where 
        estado_cuota.cod_empresa = @sp_empresa AND
        estado_cuota.cod_planta = @sp_planta AND
        estado_cuota.nro_doc_cta_cte = @numero_docto And
        estado_cuota.numero_cuota = @cuota And
        estado_cuota.ano_aplicacion = @sp_ano_proceso And
        estado_cuota.mes_aplic_prog_cuo =@sp_mes_proceso And
        estado_cuota.proceso_a_aplicar = @sp_tipo_proceso
        
        insert into estado_cuota(cod_empresa, cod_planta, nro_doc_cta_cte, numero_cuota, cod_unidad_cobro,
        mto_cuota_prestamo, sldo_cuota_prestam, saldo_cuota_proces, proceso_a_aplicar, mes_aplic_prog_cuo,
        ano_aplicacion, val_reajuste_cuota, valor_intere_cuota, valor_sobreg_cuota, estado_cuota)
        Values (@sp_empresa, @sp_planta, @numero_docto,@cuota_uno,@moneda, 0, @valor_trasac,
        @valor_trasac, @sp_tipo_proceso, @sp_mes_proceso, @sp_ano_proceso, 0, 0, @valor_trasac,'P')
      end
    
    SELECT @nFolio=nro_folio_cta_cte from folio_cta_cte
    WHERE cod_empresa = @sp_empresa AND cod_planta = @sp_planta AND cod_aplicaci_folio = 14
    
    if @abono_liq = 'S'
      begin
        if not exists(select abono_cta_cte.nro_doc_cta_cte from abono_cta_cte where abono_cta_cte.cod_empresa = @sp_empresa AND
              abono_cta_cte.cod_planta = @sp_planta AND abono_cta_cte.nro_doc_cta_cte = @numero_docto And
              abono_cta_cte.numero_cuota = @cuota And abono_cta_cte.cod_doc_cta_cte=105 and
              abono_cta_cte.tipo_proc_car_abon='AS' and abono_cta_cte.tipo_movimiento='A' and
              abono_cta_cte.cod_est_cargo_abon='P')        
          INSERT INTO abono_cta_cte(cod_empresa, cod_planta, nro_doc_cta_cte, numero_cuota, cod_doc_cta_cte,
          nro_doc_cargo_abon, mon_orig_carg_abon, mon_nac_carg_abono, tipo_proc_car_abon,
          tipo_movimiento, fec_aplic_car_abo, cod_est_cargo_abon)
          VALUES (@sp_empresa, @sp_planta, @numero_docto, @cuota, 105, @nFolio, @valor_trasac, @valor_pesos,
          'AS', 'A', getdate(),'P')
      end
    else
      begin
        if not exists(select abono_cta_cte.nro_doc_cta_cte from abono_cta_cte where abono_cta_cte.cod_empresa = @sp_empresa AND
              abono_cta_cte.cod_planta = @sp_planta AND abono_cta_cte.nro_doc_cta_cte = @numero_docto And
              abono_cta_cte.numero_cuota = @cuota And abono_cta_cte.cod_doc_cta_cte=105 and
              abono_cta_cte.tipo_proc_car_abon='AL' and abono_cta_cte.tipo_movimiento='A' and
              abono_cta_cte.cod_est_cargo_abon='P')  
        INSERT INTO abono_cta_cte(cod_empresa, cod_planta, nro_doc_cta_cte, numero_cuota, cod_doc_cta_cte,
        nro_doc_cargo_abon, mon_orig_carg_abon, mon_nac_carg_abono, tipo_proc_car_abon,tipo_movimiento,
        fec_aplic_car_abo, cod_est_cargo_abon)
        VALUES (@sp_empresa, @sp_planta, @numero_docto, @cuota, 105, @nFolio, @valor_trasac, @valor_pesos,
        'AL', 'A', getdate(),'P')
      end
    
    UPDATE folio_cta_cte SET nro_folio_cta_cte = nro_folio_cta_cte + 1
    WHERE cod_empresa = @sp_empresa AND cod_planta = @sp_planta AND cod_aplicaci_folio = 14
  end

select @sp_fin_informacio=fec_fin_info_perio from control_procesos
where   cod_empresa=@sp_empresa and cod_planta=@sp_planta and  ano_proc_cont_proc=@sp_ano_proceso and
        cod_mes_proceso=@sp_mes_proceso

select  @valor_total=val_mon_ori_ctacte, @moneda=cod_unidad_cobro
from  cta_cte_trabajador
where cta_cte_trabajador.cod_empresa = @sp_empresa  AND
      cta_cte_trabajador.cod_planta = @sp_planta AND
      cta_cte_trabajador.nro_trabajador = @sp_nro_trabajador And
      cta_cte_trabajador.dv_trabajador = @sp_dv_trabajador And
      cta_cte_trabajador.nro_doc_cta_cte = @numero_docto

if @valor_total is null
  begin
    select @valor_total = 0
  end

--PROCEDIMIENTO MONEDAS.SQL

exec spliq_valores_mon_reliq @sp_mes_proceso, @sp_ano_proceso, @sp_empresa, @sp_planta, @sp_nro_trabajador, 
     @sp_dv_trabajador,@sp_tipo_proceso, @valor_total, @moneda, 0, @sp_fin_informacio, '', 'N','N',@valor_total output

select @valor_total = round(@valor_total,0)

if @valor_total is null
  begin
    select @valor_total = 0
  end

select @valor_abono=sum(mon_nac_carg_abono)
from abono_cta_cte
where cod_empresa=@sp_empresa and
      cod_planta=@sp_planta and
      nro_doc_cta_cte=@numero_docto

if @valor_abono is null
  begin
    select @valor_abono = 0
  end

select @saldo_docto = @valor_total - @valor_abono

if @saldo_docto is null
  begin
    select @saldo_docto = 0
  end

--Se agrega en Update los abonos manuales

select @abono_manual=sum(mon_nac_carg_abono)
from abono_cta_cte
where cod_empresa=@sp_empresa and
      cod_planta=@sp_planta and
      nro_doc_cta_cte=@numero_docto and
      numero_cuota=@cuota and
       tipo_proc_car_abon = 'AM'

if @abono_manual is null
begin
   select @abono_manual = 0
end

update historico_liquidac set saldo_cta_cte = saldo_cta_cte + @saldo_docto,
                              tot_desc_cta_cte = tot_desc_cta_cte + @valor_pesos,
                              abonos_manuales = abonos_manuales + @abono_manual
where cod_empresa=@sp_empresa and cod_planta=@sp_planta and
      nro_trabajador = @sp_nro_trabajador and dv_trabajador = @sp_dv_trabajador and
      ano_periodo = @sp_ano_proceso and mes_periodo = @sp_mes_proceso and
      cod_tipo_proceso = @sp_tipo_proceso

return










GO
/****** Object:  StoredProcedure [dbo].[spliq_rev_ctacte_reliq]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO









create procedure [dbo].[spliq_rev_ctacte_reliq] @sp_mes_proceso int, @sp_ano_proceso int,
@sp_empresa int, @sp_planta int,@sp_nro_trabajador int,@sp_dv_trabajador char(1),
@sp_tipo_proceso char(4)
as
declare @numero_docto int, @cuota int, @monto_restar decimal(13,4), @saldo decimal(13,4)

declare cursor_cta_cte cursor for
select cta_cte_trabajador.nro_doc_cta_cte  FROM estado_cuota, cta_cte_trabajador
WHERE 
cta_cte_trabajador.cod_empresa = @sp_empresa AND  
cta_cte_trabajador.cod_planta = @sp_planta AND
nro_trabajador = @sp_nro_trabajador AND 
dv_trabajador = @sp_dv_trabajador and
cta_cte_trabajador.cod_empresa = estado_cuota.cod_empresa and 
cta_cte_trabajador.cod_planta = estado_cuota.cod_planta and
cta_cte_trabajador.nro_doc_cta_cte = estado_cuota.nro_doc_cta_cte And
ano_aplicacion = @sp_ano_proceso And
mes_aplic_prog_cuo = @sp_mes_proceso And 
proceso_a_aplicar = @sp_tipo_proceso And 
estado_cuota = 'P'
for read only

open cursor_cta_cte
fetch cursor_cta_cte into  @numero_docto
while @@FETCH_STATUS = 0
begin
   update cta_cte_trabajador Set mon_orig_cta_proce = sal_mon_orig_ctact
       where cta_cte_trabajador.cod_empresa = @sp_empresa  AND cta_cte_trabajador.cod_planta = @sp_planta AND
             cta_cte_trabajador.nro_trabajador = @sp_nro_trabajador And cta_cte_trabajador.dv_trabajador = @sp_dv_trabajador And
             cta_cte_trabajador.nro_doc_cta_cte = @numero_docto

   Declare cursor_monto_cta_cte cursor for
    Select mon_orig_carg_abon, numero_cuota
          FROM abono_cta_cte
            WHERE cod_empresa = @sp_empresa AND cod_planta = @sp_planta AND cod_est_cargo_abon = 'P' AND
                  nro_doc_cta_cte = @numero_docto And tipo_proc_car_abon = 'AS'
    for read only

	open cursor_monto_cta_cte
	fetch cursor_monto_cta_cte into @monto_restar,@cuota
	while @@FETCH_STATUS = 0
	begin
    select @cuota =@cuota + 1
    select @saldo = sldo_cuota_prestam  from estado_cuota
       where estado_cuota.cod_empresa = @sp_empresa AND estado_cuota.cod_planta = @sp_planta AND
             estado_cuota.nro_doc_cta_cte = @numero_docto And estado_cuota.ano_aplicacion = @sp_ano_proceso And
             estado_cuota.mes_aplic_prog_cuo =@sp_mes_proceso And estado_cuota.proceso_a_aplicar = @sp_tipo_proceso And
             estado_cuota.estado_cuota = 'P' And estado_cuota.numero_cuota =@cuota

    select @saldo = @saldo - @monto_restar
    if @saldo > 0
    begin
     update estado_cuota Set saldo_cuota_proces = sldo_cuota_prestam - @monto_restar, valor_sobreg_cuota = valor_sobreg_cuota - @monto_restar,
                           estado_cuota = ''
       where estado_cuota.cod_empresa = @sp_empresa AND  estado_cuota.cod_planta = @sp_planta AND
             estado_cuota.nro_doc_cta_cte = @numero_docto And estado_cuota.ano_aplicacion = @sp_ano_proceso And
             estado_cuota.mes_aplic_prog_cuo =@sp_mes_proceso And estado_cuota.proceso_a_aplicar = @sp_tipo_proceso And
             estado_cuota.estado_cuota = 'P' And estado_cuota.numero_cuota =@cuota
     end
     else
     begin
      delete from estado_cuota  where estado_cuota.cod_empresa = @sp_empresa AND estado_cuota.cod_planta = @sp_planta AND
             estado_cuota.nro_doc_cta_cte = @numero_docto And estado_cuota.ano_aplicacion = @sp_ano_proceso And
             estado_cuota.mes_aplic_prog_cuo =@sp_mes_proceso And estado_cuota.proceso_a_aplicar = @sp_tipo_proceso And
             estado_cuota.estado_cuota = 'P' And estado_cuota.numero_cuota =@cuota
     end    fetch cursor_monto_cta_cte into @monto_restar,@cuota
   end
   close cursor_monto_cta_cte
   deallocate  cursor_monto_cta_cte
   update estado_cuota Set saldo_cuota_proces = sldo_cuota_prestam, estado_cuota = ''
       where estado_cuota.cod_empresa = @sp_empresa AND  estado_cuota.cod_planta = @sp_planta AND
             estado_cuota.nro_doc_cta_cte = @numero_docto And estado_cuota.ano_aplicacion = @sp_ano_proceso And
             estado_cuota.mes_aplic_prog_cuo =@sp_mes_proceso And estado_cuota.proceso_a_aplicar = @sp_tipo_proceso And
             estado_cuota.estado_cuota = 'P'

   Delete FROM abono_cta_cte
            WHERE cod_empresa = @sp_empresa AND cod_planta = @sp_planta AND cod_est_cargo_abon = 'P' AND  nro_doc_cta_cte = @numero_docto And
                     ( tipo_proc_car_abon = @sp_tipo_proceso or tipo_proc_car_abon = 'AL' or  tipo_proc_car_abon = 'AS' )

fetch cursor_cta_cte into  @numero_docto
end
close cursor_cta_cte
deallocate  cursor_cta_cte
return










GO
/****** Object:  StoredProcedure [dbo].[spliq_rt_relgrat]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spliq_rt_relgrat]
(
@sp_empresa         int, 
@sp_planta          int,
@sp_nro_trabajador  int,
@sp_dv_trabajador   char(1),
@sp_ano_proceso     int,
@sp_mes_proceso     int,
@valor_retorno      int output) 
as
declare 
@ingreso_minimo_final decimal(13,4), @gratificacion_anual decimal(13,4), @gratificacion_mensual decimal(13,4), 
@indice_general_ene decimal(7,3), @indice_general_feb decimal(7,3), @indice_general_mar decimal(7,3), 
@indice_general_abr decimal(7,3), @indice_general_may decimal(7,3), @indice_general_jun decimal(7,3), 
@indice_general_jul decimal(7,3), @indice_general_ago decimal(7,3), @indice_general_sep decimal(7,3), 
@indice_general_oct decimal(7,3), @indice_general_nov decimal(7,3), 
@indice_general_nov_ant decimal(7,3), @indice_general_dic_ant decimal(7,3), @indice_general decimal(7,3),
@ano_indice int, @mes_indice int, @tot_impon_sin_tope decimal(18,4), @remu_actualizada decimal(18,4), @gratif_actualizada decimal(18,4),
@gratif_mes decimal(18,4), @gratif_total_act decimal(18,4),
@gratif_a_pago decimal(18,4), @factor_ene decimal(7,3), @factor_feb decimal(7,3), @factor_mar decimal(7,3), @factor_abr decimal(7,3),
@factor_may decimal(7,3), @factor_jun decimal(7,3), @factor_jul decimal(7,3), @factor_ago decimal(7,3), @factor_sep decimal(7,3),
@factor_oct decimal(7,3), @factor_nov decimal(7,3), @factor_dic decimal(7,3), @factor decimal(7,3), @dias_proporcional decimal(13,12)

set nocount on

select @valor_retorno = 0

--factores de actualizacion
select @factor_ene = 0
select @factor_feb = 0
select @factor_mar = 0
select @factor_abr = 0
select @factor_may = 0
select @factor_jun = 0
select @factor_jul = 0
select @factor_ago = 0
select @factor_sep = 0
select @factor_oct = 0
select @factor_nov = 0
select @factor_dic = 0

--seleccionar ipc
select @indice_general_nov_ant = 0
select @indice_general_dic_ant = 0 
select @indice_general_ene     = 0
select @indice_general_feb     = 0
select @indice_general_mar     = 0
select @indice_general_abr     = 0
select @indice_general_may     = 0
select @indice_general_jun     = 0
select @indice_general_jul     = 0
select @indice_general_ago     = 0
select @indice_general_sep     = 0
select @indice_general_oct     = 0
select @indice_general_nov     = 0

declare c_factores cursor for
select mes_tributacion, factor_tributacion
from factor_tributacion
where
ano_tributacion = @sp_ano_proceso - 1
order by mes_tributacion
open c_factores
fetch c_factores into @mes_indice, @factor
while @@FETCH_STATUS = 0
  begin
    if @mes_indice = 1
	  select @factor_ene = @factor
	else if @mes_indice = 2
	  select @factor_feb = @factor
	else if @mes_indice = 3
	  select @factor_mar = @factor
	else if @mes_indice = 4
	  select @factor_abr = @factor
	else if @mes_indice = 5
	  select @factor_may = @factor
	else if @mes_indice = 6
	  select @factor_jun = @factor
	else if @mes_indice = 7
	  select @factor_jul = @factor
	else if @mes_indice = 8
	  select @factor_ago = @factor
	else if @mes_indice = 9
	  select @factor_sep = @factor
	else if @mes_indice = 10
	  select @factor_oct = @factor
	else if @mes_indice = 11
	  select @factor_nov = @factor
	else if @mes_indice = 12
	  select @factor_dic = @factor
    fetch c_factores into @mes_indice, @factor
  end
close c_factores
deallocate c_factores

declare c_indice_ipc cursor for
select ano_periodo, mes_periodo, indice_general from indice_ipc 
where
ano_periodo * 100 + mes_periodo >= ( @sp_ano_proceso - 2 ) * 100 + 11 and
ano_periodo * 100 + mes_periodo <= ( @sp_ano_proceso - 1 ) * 100 + 11
order by ano_periodo, mes_periodo
open c_indice_ipc
fetch c_indice_ipc into @ano_indice, @mes_indice, @indice_general
while @@FETCH_STATUS = 0
  begin
    if @ano_indice = @sp_ano_proceso - 2 and @mes_indice = 11
	  select @indice_general_nov_ant = @indice_general
    else if @ano_indice = @sp_ano_proceso - 2 and @mes_indice = 12
	  select @indice_general_dic_ant = @indice_general
	else if @mes_indice = 1
	  select @indice_general_ene = @indice_general
	else if @mes_indice = 2
	  select @indice_general_feb = @indice_general
	else if @mes_indice = 3
	  select @indice_general_mar = @indice_general
	else if @mes_indice = 4
	  select @indice_general_abr = @indice_general
	else if @mes_indice = 5
	  select @indice_general_may = @indice_general
	else if @mes_indice = 6
	  select @indice_general_jun = @indice_general
	else if @mes_indice = 7
	  select @indice_general_jul = @indice_general
	else if @mes_indice = 8
	  select @indice_general_ago = @indice_general
	else if @mes_indice = 9
	  select @indice_general_sep = @indice_general
	else if @mes_indice = 10
	  select @indice_general_oct = @indice_general
	else if @mes_indice = 11
	  select @indice_general_nov = @indice_general
    fetch c_indice_ipc into @ano_indice, @mes_indice, @indice_general
  end
close c_indice_ipc
deallocate c_indice_ipc

select @ingreso_minimo_final = val_moneda_unidad 
from valor_moneda 
where cod_unidad_cobro = 'IMIN' and year(fec_valor_moneda) = @sp_ano_proceso - 1 and month( fec_valor_moneda ) = 12
if @ingreso_minimo_final is null select @ingreso_minimo_final = 0

--Gratificación mensual usando IMIN Diciembre @sp_ano_proceso
select @gratificacion_mensual = round( ( 4.75 * @ingreso_minimo_final ) / 12, 0 ) 


--
select @gratificacion_anual = 0
select @gratif_total_act    = 0
select @remu_actualizada    = 0

--Calcular la remuneración base de gratificación y aplicar % ipc
declare c_historico cursor for
select a.tot_impon_sin_tope-a.gratif_mens_antici, a.gratif_mens_antici, a.mes_periodo, b.dias_proporcional
from historico_liquidac a, liquidacion b
where
a.cod_empresa      = @sp_empresa        and
a.cod_planta       = @sp_planta         and
a.nro_trabajador   = @sp_nro_trabajador and
a.dv_trabajador    = @sp_dv_trabajador  and
a.cod_tipo_proceso = 'LQ'               and
a.ano_periodo      = @sp_ano_proceso - 1 and
a.cod_empresa      = b.cod_empresa      and
a.cod_planta       = b.cod_planta       and
a.nro_trabajador   = b.nro_trabajador   and
a.dv_trabajador    = b.dv_trabajador    and
a.cod_tipo_proceso = b.cod_tipo_proceso and
a.ano_periodo      = b.ano_periodo      and
a.mes_periodo      = b.mes_periodo 
order by a.mes_periodo
open c_historico
fetch c_historico into @tot_impon_sin_tope, @gratif_mes, @mes_indice, @dias_proporcional
while @@FETCH_STATUS = 0
  begin
    if @mes_indice = 1
	  begin
	    select @gratificacion_anual = @gratificacion_anual + round( @gratificacion_mensual * @dias_proporcional, 0 )
		select @gratif_total_act    = @gratif_total_act    + round( @gratif_mes * @factor_ene, 0 )
	    select @remu_actualizada    = @remu_actualizada    + @tot_impon_sin_tope + round( ( @tot_impon_sin_tope * round(( ( @indice_general_nov - @indice_general_nov_ant ) / @indice_general_nov_ant ) * 100, 1 ) ) / 100, 0 )
	  end
	else if @mes_indice = 2
	  begin
	    select @gratificacion_anual = @gratificacion_anual + round( @gratificacion_mensual * @dias_proporcional, 0 )
	    select @gratif_total_act    = @gratif_total_act    + round( @gratif_mes * @factor_feb, 0 )
	    select @remu_actualizada    = @remu_actualizada    + @tot_impon_sin_tope + round( ( @tot_impon_sin_tope * round(( ( @indice_general_nov - @indice_general_dic_ant ) / @indice_general_dic_ant ) * 100, 1 ) ) / 100, 0 )
	  end
	else if @mes_indice = 3
	  begin
	    select @gratificacion_anual = @gratificacion_anual + round( @gratificacion_mensual * @dias_proporcional, 0 )
	    select @gratif_total_act    = @gratif_total_act    + round( @gratif_mes * @factor_mar, 0 )
	    select @remu_actualizada    = @remu_actualizada    + @tot_impon_sin_tope + round( ( @tot_impon_sin_tope * round(( ( @indice_general_nov - @indice_general_ene ) / @indice_general_ene ) * 100, 1 ) ) / 100, 0 )
	  end
	else if @mes_indice = 4
	  begin
	    select @gratificacion_anual = @gratificacion_anual + round( @gratificacion_mensual * @dias_proporcional, 0 )
	    select @gratif_total_act    = @gratif_total_act    + round( @gratif_mes * @factor_abr, 0 )
		select @remu_actualizada    = @remu_actualizada    + @tot_impon_sin_tope + round( ( @tot_impon_sin_tope * round(( ( @indice_general_nov - @indice_general_feb ) / @indice_general_feb ) * 100, 1 ) ) / 100, 0 )
	  end
	else if @mes_indice = 5
	  begin
	    select @gratificacion_anual = @gratificacion_anual + round( @gratificacion_mensual * @dias_proporcional, 0 )
	    select @gratif_total_act    = @gratif_total_act    + round( @gratif_mes * @factor_may, 0 )
	    select @remu_actualizada    = @remu_actualizada    + @tot_impon_sin_tope + round( ( @tot_impon_sin_tope * round(( ( @indice_general_nov - @indice_general_mar ) / @indice_general_mar ) * 100, 1 ) ) / 100, 0 )
	  end
	else if @mes_indice = 6
	  begin
	    select @gratificacion_anual = @gratificacion_anual + round( @gratificacion_mensual * @dias_proporcional, 0 )
	    select @gratif_total_act    = @gratif_total_act    + round( @gratif_mes * @factor_jun, 0 )
		select @remu_actualizada    = @remu_actualizada    + @tot_impon_sin_tope + round( ( @tot_impon_sin_tope * round(( ( @indice_general_nov - @indice_general_abr ) / @indice_general_abr ) * 100, 1 ) ) / 100, 0 )
	  end
	else if @mes_indice = 7
	  begin
	    select @gratificacion_anual = @gratificacion_anual + round( @gratificacion_mensual * @dias_proporcional, 0 )
	    select @gratif_total_act    = @gratif_total_act    + round( @gratif_mes * @factor_jul, 0 )
		select @remu_actualizada    = @remu_actualizada    + @tot_impon_sin_tope + round( ( @tot_impon_sin_tope * round(( ( @indice_general_nov - @indice_general_may ) / @indice_general_may ) * 100, 1 ) ) / 100, 0 )
	  end
	else if @mes_indice = 8
	  begin
	    select @gratificacion_anual = @gratificacion_anual + round( @gratificacion_mensual * @dias_proporcional, 0 )
	    select @gratif_total_act    = @gratif_total_act    + round( @gratif_mes * @factor_ago, 0 )
		select @remu_actualizada    = @remu_actualizada    + @tot_impon_sin_tope + round( ( @tot_impon_sin_tope * round(( ( @indice_general_nov - @indice_general_jun ) / @indice_general_jun ) * 100, 1 ) ) / 100, 0 )
	  end
	else if @mes_indice = 9
	  begin
	    select @gratificacion_anual = @gratificacion_anual + round( @gratificacion_mensual * @dias_proporcional, 0 )
	    select @gratif_total_act    = @gratif_total_act    + round( @gratif_mes * @factor_sep, 0 )
		select @remu_actualizada    = @remu_actualizada    + @tot_impon_sin_tope + round( ( @tot_impon_sin_tope * round(( ( @indice_general_nov - @indice_general_jul ) / @indice_general_jul ) * 100, 1 ) ) / 100, 0 )
	  end
	else if @mes_indice = 10
	  begin
	    select @gratificacion_anual = @gratificacion_anual + round( @gratificacion_mensual * @dias_proporcional, 0 )
		select @gratif_total_act    = @gratif_total_act    + round( @gratif_mes * @factor_oct, 0 )
		select @remu_actualizada    = @remu_actualizada    + @tot_impon_sin_tope + round( ( @tot_impon_sin_tope * round(( ( @indice_general_nov - @indice_general_ago ) / @indice_general_ago ) * 100, 1 ) ) / 100, 0 )
	  end
	else if @mes_indice = 11
	  begin
	    select @gratificacion_anual = @gratificacion_anual + round( @gratificacion_mensual * @dias_proporcional, 0 )
	    select @gratif_total_act    = @gratif_total_act    + round( @gratif_mes * @factor_nov, 0 )
		select @remu_actualizada    = @remu_actualizada    + @tot_impon_sin_tope + round( ( @tot_impon_sin_tope * round(( ( @indice_general_nov - @indice_general_sep ) / @indice_general_sep ) * 100, 1 ) ) / 100, 0 )
	  end
	else if @mes_indice = 12
	  begin
	    select @gratificacion_anual = @gratificacion_anual + round( @gratificacion_mensual * @dias_proporcional, 0 )
		select @gratif_total_act    = @gratif_total_act    + round( @gratif_mes * @factor_dic, 0 )
		select @remu_actualizada    = @remu_actualizada    + @tot_impon_sin_tope + round( ( @tot_impon_sin_tope * round(( ( @indice_general_nov - @indice_general_oct ) / @indice_general_oct ) * 100, 1 ) ) / 100, 0 )
	  end
	fetch c_historico into @tot_impon_sin_tope, @gratif_mes, @mes_indice, @dias_proporcional
end
close c_historico
deallocate c_historico

select @gratif_actualizada = round( @remu_actualizada * .25, 0 )

if @gratif_actualizada > @gratificacion_anual
  select @gratif_a_pago = @gratificacion_anual
else
  select @gratif_a_pago = @gratif_actualizada

select @gratif_a_pago = @gratif_a_pago - @gratif_total_act

if @gratif_a_pago < 0 select @gratif_a_pago = 0

select @valor_retorno = @gratif_a_pago

return 




GO
/****** Object:  StoredProcedure [dbo].[spliq_trab_pesado_reliq]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE procedure [dbo].[spliq_trab_pesado_reliq]
(@sp_mes_proceso int,@sp_ano_proceso int,@sp_empresa int,@sp_planta int,@sp_nro_trabajador int,
@sp_dv_trabajador char(1),@sp_tipo_proceso char(4),@sp_consolida_empresa char(1),
@sp_porc_trab_pesad decimal(5,2),@sp_fin_informacio  datetime,@dias_proceso decimal(4,2),@inserta_des int) 
as

declare @sp_cod_centro_cost int
Declare @sp_cod_sucursal    int
Declare @sp_cod_tipo_trabaj char(2)
Declare @sp_tot_dctos_legal int
declare @sp_tot_dctos_no_le int
Declare @codigo_busco char(10), @codigo_busco_l char(10)
Declare @descuento_legal_l char(1), @mes_vigente_l char(1)
Declare @valor_decimal decimal(28,10), @monto_descuento_l decimal(28,10),
        @valor_tope_uf decimal(28,10), @valor_topado decimal(28,10),
        @valor_topado_tope decimal(28,10),@valor_topado_60 decimal(28,10)
Declare @tipo_convenio_l int,@tope_uf_l decimal(28,10),
        @centro_costo_l int,  @cod_descuento_l Int
Declare @unidad_moneda_l char(4), @moneda_tope_l char(4)
Declare @tip_trabajador_l char(2)
declare @tope_minimo_l decimal(28,10),
@unidad_tope_min_l char(4),
@valor_topado_min decimal(28,10),
@valor_sin_tope decimal(28,10),
@sp_nro_dias_enferm int,
@sp_busca_info datetime,
@nValorContract decimal(28,10),
@sp_tot_impon_calc decimal(28,10),
@cod_haber_l int,
@sp_porc_trab_pes_t decimal(5,2),
@factor_prop decimal(13,12),
@proporcional_l char(1),
@proporcional_h char(1),
@sp_dias_proporcion decimal(13,12),
@sp_dias_prophab decimal(13,12),
@cantidad_tope decimal(7,4),
@sp_rut_trabajador int

select @cantidad_tope = 0

select @sp_rut_trabajador = rut_trabajador
from personal
where
cod_empresa = @sp_empresa and
cod_planta  = @sp_planta and 
nro_trabajador = @sp_nro_trabajador and
dv_trabajador  = @sp_dv_trabajador

select @cantidad_tope = mto_tope_prev_uf from parametro
where
cod_empresa = @sp_empresa and
cod_planta  = @sp_planta and 
ano         = @sp_ano_proceso and
nro_mes     = @sp_mes_proceso

if @sp_consolida_empresa = 'N'
select @sp_dias_proporcion=dias_proporcional,
       @sp_dias_prophab=dias_prop_habil
from liquidacion
where cod_empresa = @sp_empresa and cod_planta = @sp_planta and
     mes_periodo = @sp_mes_proceso And ano_periodo = @sp_ano_proceso And
     cod_tipo_proceso = @sp_tipo_proceso And
     nro_trabajador =  @sp_nro_trabajador and 
     dv_trabajador = @sp_dv_trabajador
else
select @sp_dias_proporcion=a.dias_proporcional,
       @sp_dias_prophab=a.dias_prop_habil
from liquidacion a, personal b
where a.cod_empresa = @sp_empresa and 
     a.mes_periodo = @sp_mes_proceso And 
	 a.ano_periodo = @sp_ano_proceso And
     a.cod_tipo_proceso = @sp_tipo_proceso And
	 a.cod_empresa = b.cod_empresa and
	 a.cod_planta = b.cod_planta and
	 a.nro_trabajador = b.nro_trabajador and
	 a.dv_trabajador = b.dv_trabajador and
	 b.rut_trabajador = @sp_rut_trabajador


select @sp_tot_impon_calc=0
select @sp_tot_dctos_legal =0
select @sp_tot_dctos_no_le =0

if @sp_consolida_empresa = 'N'
select @sp_cod_sucursal=cod_sucursal,
       @sp_cod_centro_cost=cod_centro_costo,
       @sp_cod_tipo_trabaj=cod_tipo_trabajado,
       @sp_nro_dias_enferm=nro_dias_enfermo,
       @sp_tot_impon_calc=tot_impon_sin_tope
from historico_liquidac
where   cod_empresa = @sp_empresa and
        cod_planta = @sp_planta and
        mes_periodo = @sp_mes_proceso And
        ano_periodo = @sp_ano_proceso And
        cod_tipo_proceso = @sp_tipo_proceso And
        nro_trabajador =  @sp_nro_trabajador and
        dv_trabajador = @sp_dv_trabajador
else
select @sp_cod_sucursal=a.cod_sucursal,
       @sp_cod_centro_cost=a.cod_centro_costo,
       @sp_cod_tipo_trabaj=a.cod_tipo_trabajado,
       @sp_nro_dias_enferm=a.nro_dias_enfermo,
       @sp_tot_impon_calc=a.tot_impon_sin_tope
from historico_liquidac a, personal b
where   a.cod_empresa = @sp_empresa and
        a.mes_periodo = @sp_mes_proceso And
        a.ano_periodo = @sp_ano_proceso And
        a.cod_tipo_proceso = @sp_tipo_proceso And
	    a.cod_empresa = b.cod_empresa and
	    a.cod_planta = b.cod_planta and
	    a.nro_trabajador = b.nro_trabajador and
	    a.dv_trabajador = b.dv_trabajador and
	    b.rut_trabajador = @sp_rut_trabajador


select @valor_decimal = 0
select @valor_tope_uf = 0
select @valor_topado  = 0

select @cod_descuento_l=521

SELECT @tope_uf_l=tope_uf,
         @mes_vigente_l=cod_mes_vigente,
         @moneda_tope_l=cod_unidad_tope,
         @descuento_legal_l=descuento_legal,
           @tope_minimo_l=tope_minimo,
         @unidad_tope_min_l=unidad_tope_min,
         @monto_descuento_l=mto_descuento,
         @unidad_moneda_l=cod_unidad_moneda,
         @cod_haber_l=cod_haber,
         @proporcional_l=proporcional_dias,
         @proporcional_h=prop_dias_habiles
  from descuento
  WHERE cod_empresa = @sp_empresa  AND
        cod_planta = @sp_planta AND
        cod_descuento = @cod_descuento_l

 exec  spliq_valores_mon_reliq @sp_mes_proceso, @sp_ano_proceso, @sp_empresa,
                                    @sp_planta, @sp_nro_trabajador, @sp_dv_trabajador,
                                    @sp_tipo_proceso, @cantidad_tope,'UF',
                                    0, @sp_fin_informacio,
                                    '','','',
                                    @valor_topado_60 output

if @sp_tot_impon_calc > @valor_topado_60 
 select @sp_tot_impon_calc = @valor_topado_60 

if @tope_uf_l is null
select @tope_uf_l=0

if @tope_minimo_l is null
select @tope_minimo_l=0

  select @valor_decimal = 0
  select @valor_tope_uf = 0
  select @valor_topado  = 0
  select @codigo_busco = ''

select @sp_porc_trab_pes_t = @sp_porc_trab_pesad / 2.00

          if @unidad_moneda_l = '%IM' 
	      begin
             select @valor_decimal = round(@sp_tot_impon_calc *  ((@sp_porc_trab_pes_t) / 100.),0)
	      end
          else
          begin
              select @valor_decimal = 0
           end

            if @valor_decimal is null
                 select @valor_decimal=0


             if @tope_minimo_l != 0 and @unidad_tope_min_l  is not null 
             begin
                   	exec  spliq_valores_mon_reliq @sp_mes_proceso, @sp_ano_proceso, @sp_empresa,
                                    @sp_planta, @sp_nro_trabajador, @sp_dv_trabajador,
                                    @sp_tipo_proceso, @tope_minimo_l, @unidad_tope_min_l,
                                    0, @sp_fin_informacio,
                                    @codigo_busco_l,'','',
                                    @valor_topado_min output


                  if  @valor_decimal < @valor_topado_min
                  begin
                   	select 	  @valor_sin_tope=	@valor_decimal
               		select    @valor_decimal = @valor_topado_min
                  end
             end



             if @tope_uf_l != 0 and @moneda_tope_l  is not null 
             begin

                  	exec  spliq_valores_mon_reliq @sp_mes_proceso, @sp_ano_proceso, @sp_empresa,
                                    @sp_planta, @sp_nro_trabajador, @sp_dv_trabajador,
                                    @sp_tipo_proceso, @tope_uf_l, @moneda_tope_l,
                                    0, @sp_fin_informacio,
                                    @codigo_busco_l,'','',
                                    @valor_tope_uf output


                  if  @valor_decimal > @valor_tope_uf
                  begin
 					select 	  @valor_sin_tope=	@valor_decimal
                  	select    @valor_decimal = @valor_tope_uf

                  end

             end

             if @tope_minimo_l != 0 or @tope_uf_l != 0
             begin


             	   if  @valor_tope_uf !=0 and @inserta_des = 1
             	   begin
                    INSERT INTO descuentos_topados
        	       		   (cod_empresa, cod_planta, mes_periodo, ano_periodo, cod_tipo_proceso,
         	        		  nro_trabajador, dv_trabajador, cod_descuento, valor_total, valor_descontado)
          	    			 VALUES (@sp_empresa, @sp_planta, @sp_mes_proceso, @sp_ano_proceso, @sp_tipo_proceso,
           		      	      @sp_nro_trabajador, @sp_dv_trabajador, @cod_descuento_l, @valor_sin_tope,
             	     	     @valor_tope_uf)
             	   end
             	   else if @inserta_des = 1
             	   begin
             	     INSERT INTO descuentos_topados
        	       		   (cod_empresa, cod_planta, mes_periodo, ano_periodo, cod_tipo_proceso,
         	        		  nro_trabajador, dv_trabajador, cod_descuento, valor_total, valor_descontado)
          	    			 VALUES (@sp_empresa, @sp_planta, @sp_mes_proceso, @sp_ano_proceso, @sp_tipo_proceso,
           		      	      @sp_nro_trabajador, @sp_dv_trabajador, @cod_descuento_l, @valor_sin_tope,
             	     	     @tope_minimo_l)
            	   end
              end

    if @valor_decimal > 0
    begin
       select @valor_decimal = round(@valor_decimal, 0)

            if @descuento_legal_l = 'S'                select @sp_tot_dctos_legal = @valor_decimal
            else
               select @sp_tot_dctos_no_le =  @valor_decimal


             if @proporcional_l = 'S'
               select @valor_decimal = (@valor_decimal * @sp_dias_proporcion)

             if @proporcional_h = 'S'
               select @valor_decimal = (@valor_decimal * @sp_dias_prophab)
           
            if @inserta_des = 1
              begin
            exec  spliq_car_descuen @sp_mes_proceso, @sp_ano_proceso, @sp_empresa,
                       @sp_planta, @sp_nro_trabajador, @sp_dv_trabajador, @sp_tipo_proceso,
                       @valor_decimal,  @cod_descuento_l
            exec  spliq_inserta_des @sp_mes_proceso, @sp_ano_proceso,
                       @sp_empresa, @sp_planta, @sp_nro_trabajador, @sp_dv_trabajador,
                       @sp_tipo_proceso, @cod_descuento_l, @sp_porc_trab_pes_t, @unidad_moneda_l,
                       @valor_decimal, @sp_cod_centro_cost,0, '',
                       @sp_cod_centro_cost, @sp_cod_tipo_trabaj, @sp_cod_sucursal,1,1,'',null
              end
   end

if @valor_decimal > 0
begin

  if @cod_haber_l != 0
  begin
    INSERT INTO haber_descuento
       (cod_empresa, cod_planta, mes_periodo, ano_periodo, cod_tipo_proceso,
        nro_trabajador, dv_trabajador, cod_haber, cod_descuento,mto_descuento)
    VALUES (@sp_empresa, @sp_planta, @sp_mes_proceso, @sp_ano_proceso, @sp_tipo_proceso,
            @sp_nro_trabajador, @sp_dv_trabajador, @cod_haber_l, @cod_descuento_l,@valor_decimal)
  end

if @inserta_des = 1
Update historico_liquidac
Set tot_dctos_legales =  tot_dctos_legales + @sp_tot_dctos_legal ,
    tot_dctos_no_legal = tot_dctos_no_legal + @sp_tot_dctos_no_le,
    val_leyes_sociales = val_leyes_sociales + @valor_decimal,
 	mto_trab_tr_pesado=@valor_decimal,
    mto_apor_tr_pesado=@valor_decimal,
    porc_apl_tr_pesado=@sp_porc_trab_pesad
where cod_empresa = @sp_empresa and
      cod_planta = @sp_planta and
      mes_periodo = @sp_mes_proceso And
      ano_periodo = @sp_ano_proceso And
      cod_tipo_proceso = @sp_tipo_proceso And
      nro_trabajador =  @sp_nro_trabajador and
      dv_trabajador = @sp_dv_trabajador
end
else
begin
Update historico_liquidac
Set  porc_apl_tr_pesado=@sp_porc_trab_pesad
where cod_empresa = @sp_empresa and
      cod_planta = @sp_planta and
      mes_periodo = @sp_mes_proceso And
      ano_periodo = @sp_ano_proceso And
      cod_tipo_proceso = @sp_tipo_proceso And
      nro_trabajador =  @sp_nro_trabajador and
      dv_trabajador = @sp_dv_trabajador
end
return








GO
/****** Object:  StoredProcedure [dbo].[spliq_valores_mon_reliq]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO









create procedure [dbo].[spliq_valores_mon_reliq]
(@sp_mes_proceso int, @sp_ano_proceso int, @sp_empresa int, @sp_planta int,@sp_nro_trabajador int,
@sp_dv_trabajador char(1),@sp_tipo_proceso char(4),@cantidad numeric(38,10),@moneda char(4),
@codigo_hyd int,@fecha_busco datetime,@codigo_tabla char(10),@proporciona char(1),@prophab char(1),
@sp_retorno numeric(38,10) output)
as
declare @sp_nombre char(50), @sp_descuento  int, @sp_nro_dias_asisti int, @sp_nro_dias_enferm int,
@sp_nro_dias_vacaci int,@sp_dias_proporcion numeric(13,12), @sp_dias_prophab numeric(13,12),
@monto_hyd  numeric(38,10),@valor_tabla numeric(38,10),@valor_entero int, @sp_convenio_l int,
@sp_cargo_l int,@aplic_liquid char(1), @valoriza_l char(1), @tipo_moneda_l char(1),
@proporcion_l Char(1), @moneda_hyd char(4), @codigo_busco char(10),@retorno numeric(38,10),
@sMonFormula char(1),@sp_fecha_anterior datetime, @sFecha_busco char(10)
 
select @codigo_busco = ''
select @retorno = 0.000

select @moneda=ltrim(rtrim(@moneda))

if @moneda = '$'
  begin
    select @retorno = @cantidad
    if @proporciona = 'S'
      select @retorno = @retorno * @sp_dias_proporcion
    if @prophab = 'S'
      select @retorno = @retorno * @sp_dias_prophab
  end
else
  begin
    select @aplic_liquid  = aplic_liquid_sueld,
           @valoriza_l    = valorizado_tabla,
           @tipo_moneda_l = tipo_moneda,
           @sMonFormula   = cod_formula
    from unidad  where cod_unidad_cobro = @moneda
    if @sMonFormula='S'
      begin
        select @sFecha_busco= ltrim(rtrim(convert(char(10),@fecha_busco,103)))
        exec spliq_calc_formulp @moneda,@sp_empresa,@sp_planta,@sp_mes_proceso,@sp_ano_proceso,
        @sp_nro_trabajador,@sp_dv_trabajador,'LQ',@sFecha_busco,@sp_retorno output
        select @sp_retorno = @sp_retorno * @cantidad
        if @proporciona = 'S'
          select @sp_retorno = @sp_retorno * @sp_dias_proporcion
        if @prophab = 'S'
          select @sp_retorno = @sp_retorno * @sp_dias_prophab
        return 0
     end
    select @sFecha_busco= convert(char(10),@fecha_busco,112)
    if @valoriza_l = 'V' and @tipo_moneda_l = 'M'
      begin
        select @retorno = @cantidad
        if @proporciona = 'S'     	select @retorno = round((@retorno * @sp_dias_proporcion),3)
        if @prophab = 'S'           select @retorno = round((@retorno * @sp_dias_prophab),3)
      end
    else
      begin
        if @valoriza_l != 'V' and @tipo_moneda_l = 'M'
          begin
            if @valoriza_l = 'T'
              begin
                if exists(Select cod_unidad_cobro From valor_moneda 
                   where cod_unidad_cobro = @moneda And fec_valor_moneda =@fecha_busco)
                  begin
                    select @valor_tabla=val_moneda_unidad from valor_moneda 
                    where cod_unidad_cobro = @moneda and fec_valor_moneda = @fecha_busco
                    select @retorno = round((@cantidad * @valor_tabla),3)
                    if @proporciona = 'S'
                      select @retorno = round((@retorno * @sp_dias_proporcion),3)
                    if @prophab = 'S'
                      select @retorno = round((@retorno * @sp_dias_prophab),3)
                  end
                else
                  begin 
                    insert errores_calculo
                    (cod_empresa, cod_planta, nro_trabajador, dv_trabajador,
                    nombre, cod_error_tabla, descripcion_codigo, masivo_informado,
                    descripcion_error, tabla_del_error,cod_tipo_proceso)
                    values (@sp_empresa,@sp_planta, @sp_nro_trabajador, @sp_dv_trabajador,
                    @sp_nombre,2, 'No existe valor moneda tipo T '+ convert(char(12),@fecha_busco)+@moneda , 'C',
                    'No existe valor para fecha dada'+convert(char(5),@cantidad)+ ' ' +convert(char(6),@codigo_hyd) ,@sFecha_busco,@sp_tipo_proceso)
                    return 0
                  end
              end
            if @valoriza_l = 'S'
              begin
                if exists(select cod_unidad_cobro from valoriza_variable 
                  where convenio = @sp_convenio_l and cod_variable = @codigo_hyd and
                        cod_cargo = @sp_cargo_l and fec_valor_variable = @sFecha_busco)
                  begin
                    select @moneda_hyd=cod_unidad_cobro,@valor_tabla=valor  from valoriza_variable
                    where convenio = @sp_convenio_l and cod_cargo = @sp_cargo_l and cod_variable = @codigo_hyd and
                    fec_valor_variable = @sFecha_busco
                    exec spliq_valores_mon_reliq @sp_mes_proceso, @sp_ano_proceso, @sp_empresa, @sp_planta, @sp_nro_trabajador,
                    @sp_dv_trabajador, @sp_tipo_proceso, @valor_tabla,@moneda_hyd, @codigo_hyd, @sFecha_busco,
                    @codigo_tabla, @proporciona, @prophab, @retorno output
                  end
                else
                  begin
                    insert into errores_calculo
                    (cod_empresa, cod_planta, nro_trabajador, dv_trabajador,
                     nombre, cod_error_tabla, descripcion_codigo, masivo_informado,
                     descripcion_error, tabla_del_error,cod_tipo_proceso)
                     values (@sp_empresa, @sp_planta, @sp_nro_trabajador, @sp_dv_trabajador,
                     @sp_nombre, 2,  'No existe valor moneda valoriza moneda', 'C',
                     'No existe variable valorizada', 'valor_moneda',@sp_tipo_proceso)
                     return 0
                  end
              end
            if @valoriza_l = 'C' and @moneda='CF'
              begin
                if exists(select cod_unidad_cobro from valor_codigo  where 
                   cod_unidad_cobro = @moneda And cod_valor = @codigo_tabla)
                  begin
                    select @valor_entero=valor_codigo from valor_codigo
                    where cod_unidad_cobro = @moneda And cod_valor = @codigo_tabla
                    select @retorno = @cantidad * @valor_entero
                    if @proporciona = 'S'
                    select @retorno = round((@retorno * @sp_dias_proporcion),3)
                    if @prophab = 'S'
                      select @retorno = round((@retorno * @sp_dias_prophab),3)
                  end
                else
                  begin
                    INSERT INTO errores_calculo
                    (cod_empresa, cod_planta, nro_trabajador, dv_trabajador,
                     nombre, cod_error_tabla, descripcion_codigo, masivo_informado,
                     descripcion_error, tabla_del_error,cod_tipo_proceso)
                     VALUES (@sp_empresa, @sp_planta, @sp_nro_trabajador, @sp_dv_trabajador,
                     @sp_nombre, 3,  @codigo_tabla, 'C',
                     'No existe valor codigo', 'valor_codigo',@sp_tipo_proceso)
                     return 0
                  end
              end
            if @valoriza_l = 'C' and @moneda !='CF'
              begin
                exec spliq_buscacolpers @sp_empresa,@sp_planta,@sp_nro_trabajador,@sp_dv_trabajador,@moneda,@codigo_tabla output
                select @codigo_tabla= rtrim(ltrim(@codigo_tabla))
                if exists(select cod_unidad_cobro from valor_codigo
                     where cod_unidad_cobro = @moneda and cod_valor = @codigo_tabla)
                  begin
                    select @valor_entero=valor_codigo from valor_codigo
                    where cod_unidad_cobro = @moneda And cod_valor = @codigo_tabla
                    select @retorno = @cantidad * @valor_entero
                    if @proporciona = 'S'
                      select @retorno = round((@retorno * @sp_dias_proporcion),3)
                    if @prophab = 'S'
                      select @retorno = round((@retorno * @sp_dias_prophab),3)
                  end
                else
                  begin
                    INSERT INTO errores_calculo
                    (cod_empresa, cod_planta, nro_trabajador, dv_trabajador,
                    nombre, cod_error_tabla, descripcion_codigo, masivo_informado,
                    descripcion_error, tabla_del_error,cod_tipo_proceso)
                    VALUES (@sp_empresa, @sp_planta, @sp_nro_trabajador, @sp_dv_trabajador,
                    @sp_nombre, 3,  @codigo_tabla, 'C',
                    'No existe valor codigo', 'valor_codigo',@sp_tipo_proceso)
                    return 0
                  end
          end
        if @valoriza_l = 'H' OR @valoriza_l = 'D'
          exec spliq_valores_mhd @sp_mes_proceso, @sp_ano_proceso,
               @sp_empresa, @sp_planta, @sp_nro_trabajador, @sp_dv_trabajador,
               @sp_tipo_proceso, @cantidad, @moneda, @codigo_hyd, @sFecha_busco,
               @codigo_tabla, @proporciona, @prophab, @retorno output
      end
   else
      begin
        if @tipo_moneda_l = 'P'
          begin
            exec spliq_valores_monp_reliq @sp_mes_proceso, @sp_ano_proceso, @sp_empresa, @sp_planta,@sp_nro_trabajador,
                 @sp_dv_trabajador,@sp_tipo_proceso, @cantidad, @moneda, @codigo_hyd, @sFecha_busco,
                 @codigo_tabla,  @proporciona, @prophab, @retorno output
          end
      end
    end
  end

if @sp_descuento = 1 and @proporciona = 'S'
  begin
    select @sp_nro_dias_asisti=nro_dias_asistidos,@sp_nro_dias_enferm=nro_dias_enfermo,
           @sp_nro_dias_vacaci=nro_dias_vacacione
    from historico_liquidac
    where cod_empresa = @sp_empresa and cod_planta = @sp_planta and
          mes_periodo = @sp_mes_proceso And ano_periodo = @sp_ano_proceso And
          cod_tipo_proceso = @sp_tipo_proceso And
          nro_trabajador =  @sp_nro_trabajador and dv_trabajador = @sp_dv_trabajador
    select @retorno = @retorno * ((@sp_nro_dias_asisti + @sp_nro_dias_vacaci) / 30.00 )
    select @retorno = round(@retorno,0)
  end

select @sp_retorno= round(@retorno,0)
return










GO
/****** Object:  StoredProcedure [dbo].[spliq_valores_monp_reliq]    Script Date: 05/03/2019 15:05:36 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO






CREATE PROCEDURE [dbo].[spliq_valores_monp_reliq]
    (@sp_mes_proceso int, @sp_ano_proceso int,
     @sp_empresa int, @sp_planta int,
     @sp_nro_trabajador int, @sp_dv_trabajador char(1),
     @sp_tipo_proceso char(4), @cantidad numeric(28,10),
     @moneda char(4), @codigo_hyd int, @fecha_busco datetime,
     @codigo_tabla char(10), @proporciona char(1), @prophab char(1),
     @retorno numeric(28,10) output)

AS
declare
@sp_nombre          char(50),
@sp_descuento       int,
@sp_aporte_especial int,
@sp_tot_impon_stg   numeric(28,10),
@sp_tot_impon_sin_t numeric(28,10),
@sp_nAfecImpo       numeric(28,10),
@sp_vmaximo         numeric(28,10),
@sp_vminimo         numeric(28,10),
@sp_val_leyes_socia int,
@sp_monto_cancel_im int,
@sp_sueldo_ganado_m int,
@sp_gratif int,
@sp_valor_adic_gana int,
@sp_sdo_base_contra int,
@sp_sdos_adic_acumu int,
@sp_asignacion_fami int,
@sp_asig_famil_retr int,
@sp_nro_dias_asisti numeric(28,10),
@sp_nro_dias_enferm numeric(28,10),
@sp_nro_dias_vacaci numeric(28,10),
@sp_valor_especial  numeric(28,10),
@sp_dias_proporcion numeric(28,10),
@sp_dias_prophab numeric(28,10),
@monto_hyd  numeric(28,10),
@valor_tabla numeric(28,10),
@valor_entero int,
@sp_carga_normal int,
@sp_carga_materna int,
@sp_carga_duplo int,
@aplic_liquid char(1),
@valoriza_l char(1),
@tipo_moneda_l char(1),
@proporcion_l Char(1),
@moneda_hyd char(4),
@codigo_busco char(10),
@sp_tot_impto_reliq decimal (13,4),
@sp_nAfecCotizacion numeric(28,10),
@n_Valor_UTM numeric(28,10),
@sp_valor_total_habere int,
@val_alcance_liquido int,
@sp_afecto_sis numeric (13,4),
@ultimo_imponible numeric (13,4),
@ultimo_imponible_tope numeric (13,4),
@sp_afecto_leysanna numeric (13,4),
@valor_decimal numeric (13,4)

declare @val_afecto_mutual numeric(28,10)
----print   'spliq_valores_monp'
----print   @moneda

select @sp_valor_total_habere = 0
select @sp_afecto_leysanna = 0

select @codigo_busco = ''
select @retorno = 0
Select @sp_nombre=nombre, @sp_dias_proporcion=dias_proporcional,
       @sp_nAfecImpo=afecto_imponible, @sp_descuento=descuento,
       @sp_valor_especial=valor_especial,
       @sp_aporte_especial=aporte_especial, @sp_dias_prophab=dias_prop_habil
  From liquidacion
where cod_empresa = @sp_empresa and cod_planta = @sp_planta and
     mes_periodo = @sp_mes_proceso And ano_periodo = @sp_ano_proceso And
     cod_tipo_proceso = @sp_tipo_proceso And
     nro_trabajador =  @sp_nro_trabajador and dv_trabajador = @sp_dv_trabajador

Select @sp_vminimo=val_ingreso_minimo , @sp_vmaximo=val_ingreso_minimo
  From parametro
  Where cod_empresa = @sp_empresa and cod_planta = @sp_planta and
  nro_mes = @sp_mes_proceso and ano = @sp_ano_proceso

Select @sp_sdo_base_contra=sdo_base_contractu, @sp_sdos_adic_acumu=sdos_adic_acumulad,
     @sp_asignacion_fami=asignacion_familia, @sp_asig_famil_retr=asig_famil_retroac,
     @sp_nro_dias_asisti=nro_dias_asistidos, @sp_nro_dias_enferm=nro_dias_enfermo,
     @sp_nro_dias_vacaci=nro_dias_vacacione, @sp_sueldo_ganado_m=sueldo_ganado_mes,
     @sp_valor_adic_gana=valor_adic_ganado, @sp_monto_cancel_im=monto_cancel_impto,
     @sp_val_leyes_socia=val_leyes_sociales, @sp_tot_impon_stg=total_imponi_ley,
     @sp_tot_impon_sin_t=tot_impon_sin_tope, @sp_gratif=haberes_gratificac,
     @sp_carga_normal=nro_cargas_normale, @sp_carga_materna=nro_cargas_materna,
     @sp_carga_duplo=nro_cargas_duplo, @sp_tot_impto_reliq= tot_impto_reliq,
     @sp_nAfecCotizacion=afecto_cotizacion,
     @sp_valor_total_habere=valor_total_habere,
     @val_afecto_mutual=afecto_mutual,
	 @val_alcance_liquido = val_alcance_liquid,
	 @sp_afecto_sis = afecto_mto_sis
From historico_liquidac
where cod_empresa = @sp_empresa and cod_planta = @sp_planta and
     mes_periodo = @sp_mes_proceso And ano_periodo = @sp_ano_proceso And
     cod_tipo_proceso = @sp_tipo_proceso And
     nro_trabajador =  @sp_nro_trabajador and dv_trabajador = @sp_dv_trabajador

SELECT @aplic_liquid=aplic_liquid_sueld, @valoriza_l=valorizado_tabla,
       @tipo_moneda_l=tipo_moneda
     from unidad Where cod_unidad_cobro = @moneda

select top 1 @ultimo_imponible = val_tot_tope_impon,
					 @ultimo_imponible_tope = tot_imponible  
					from historico_liquidac  
					where   
					cod_empresa      = @sp_empresa and  
					cod_planta       = @sp_planta and  
					cod_tipo_proceso = @sp_tipo_proceso and  
					ano_periodo * 100 + mes_periodo < @sp_ano_proceso * 100 + @sp_mes_proceso and   
					nro_trabajador   = @sp_nro_trabajador and  
					dv_trabajador    = @sp_dv_trabajador and  
					nro_dias_enfermo = 0  
					order by ano_periodo desc, mes_periodo desc 
if @ultimo_imponible is null
	select @ultimo_imponible = 0
if @ultimo_imponible_tope is null
	select @ultimo_imponible_tope = 0

select @n_Valor_UTM=val_moneda_unidad from valor_moneda
where cod_unidad_cobro='UTM'
and fec_valor_moneda=@fecha_busco

select @moneda = rtrim(ltrim(@moneda))

     if @tipo_moneda_l = 'P'
      begin
          if @moneda = '%IM'
            begin
             if @sp_aporte_especial = 1
			     begin
					 select @retorno = round(@sp_nAfecCotizacion * (@cantidad / 100.),3)
				 end
			 if @sp_aporte_especial = 5
			     begin
					 select @retorno = round(@val_afecto_mutual * (@cantidad / 100.),3)
				 end
             else
	             begin
		             select @retorno = round(@sp_nAfecImpo  * (@cantidad / 100.),3)
	             end

             if @proporciona = 'S'
             begin
                   select @retorno = @retorno * @sp_dias_proporcion
             end

             if @prophab = 'S'
				begin
					select @retorno = @retorno * @sp_dias_prophab
				end
            end
            
          if @moneda = '%IMS'
            begin
              select @retorno = round(@sp_tot_impon_sin_t * (@cantidad / 100.),3)
              if @proporciona = 'S'  select @retorno = @retorno * @sp_dias_proporcion
              if @proporciona = 'S'  select @retorno = @retorno * @sp_dias_prophab
            end
          if @moneda = '%RET'
            begin
              select @retorno =round( (@sp_tot_impon_sin_t - @sp_val_leyes_socia
                                  - @sp_monto_cancel_im - @sp_tot_impto_reliq ) * (@cantidad / 100.),3)
              if @proporciona = 'S'  select @retorno = @retorno * @sp_dias_proporcion
              if @prophab = 'S'      select @retorno = @retorno * @sp_dias_prophab
            end
          if @moneda = '%SB'
            begin
               if @proporciona = 'S'
                   select @retorno =round( (@sp_sueldo_ganado_m + @sp_valor_adic_gana) *
                                     (@cantidad / 100.),3)
               else
                   select @retorno =round( (@sp_sdo_base_contra + @sp_sdos_adic_acumu) *
                                     (@cantidad / 100.),3)
            end

          if @moneda = '%SBG'
            begin
               if @proporciona = 'S'
                   select @retorno = round((@sp_sueldo_ganado_m + @sp_gratif) *
                                     (@cantidad / 100.),3)
               else
                   select @retorno = round((@sp_sdo_base_contra + @sp_gratif) *
                                     (@cantidad / 100.),3)
            end
          if @moneda = '%SBS'
            begin
               if @proporciona = 'S'
               begin
                   select @retorno = round(@sp_sueldo_ganado_m  * (@cantidad / 100.),3)
               end
               else
               begin

                   select @retorno = round(@sp_sdo_base_contra  * (@cantidad / 100.),3)
               end
            end

          if @moneda = '%ILS'
            begin

			if @sp_nro_dias_enferm > 0 and @sp_nro_dias_asisti = 0
				begin
					if @sp_afecto_sis > 0
						select @sp_afecto_leysanna = @sp_afecto_sis
					else if @sp_afecto_sis = 0 and @ultimo_imponible > 0
						begin
							select @sp_afecto_leysanna = round (@ultimo_imponible / 30,2) * @sp_nro_dias_enferm 
							select @sp_afecto_leysanna = @sp_afecto_leysanna + @sp_nAfecImpo
						--	select @sp_afecto_leysanna = round(@sp_afecto_leysanna * (@cantidad / 100.),3)
						end
					else 
						select @sp_afecto_leysanna = @sp_nAfecImpo
				end
			else if @sp_nro_dias_asisti > 0
				begin
				if @sp_afecto_sis > 0
					select @sp_afecto_leysanna = @sp_afecto_sis
				else if @sp_nAfecImpo > 0
					select @sp_afecto_leysanna = @sp_nAfecImpo
				else
					select @sp_afecto_leysanna = @ultimo_imponible
				end
			else if @sp_nro_dias_asisti = 0
				if @sp_afecto_sis > 0
					select @sp_afecto_leysanna = @sp_afecto_sis
				else if @sp_nAfecImpo > 0
					select @sp_afecto_leysanna = @sp_nAfecImpo



			select @valor_decimal = round(@sp_afecto_leysanna * (@cantidad / 100.),3)	


		
			 select @retorno = @valor_decimal
			
              if @proporciona = 'S'  
				select @retorno = @retorno * @sp_dias_proporcion
              if @proporciona = 'S'  
				select @retorno = @retorno * @sp_dias_prophab
            end
 

		 if @moneda = '%BIA'
            begin
			  select @sp_tot_impon_sin_t=@sp_tot_impon_sin_t-(@n_Valor_UTM*10)
              select @retorno = round(@sp_tot_impon_sin_t * (@cantidad / 100.),3)
              if @proporciona = 'S'  select @retorno = @retorno * @sp_dias_proporcion
              if @proporciona = 'S'  select @retorno = @retorno * @sp_dias_prophab
            end



		if @moneda = '%SBH'
		begin
				   select @retorno = round(( @sp_valor_total_habere - @sp_asignacion_fami - @sp_asig_famil_retr - @sp_val_leyes_socia - @sp_monto_cancel_im)  * (@cantidad / 100.),3)
		end      

          if @moneda = '%SBC'
            begin
               if @proporciona = 'S'
               begin
                   select @retorno = round((@sp_tot_impon_sin_t - @sp_val_leyes_socia
                                  - @sp_monto_cancel_im )  * (@cantidad / 100.),3)
               end
               else
               begin
                  select @retorno = round((@sp_tot_impon_sin_t - @sp_val_leyes_socia
                                  - @sp_monto_cancel_im )  * (@cantidad / 100.),3)
               end
            end


          if @moneda = '%CFA'
            begin
              select @retorno = (@sp_carga_normal + @sp_carga_materna
              							 + 2 * @sp_carga_duplo)
              exec spliq_valores_monp @sp_mes_proceso, @sp_ano_proceso,
                                 @sp_empresa, @sp_planta, @sp_nro_trabajador,
                                 @sp_dv_trabajador, @sp_tipo_proceso, @retorno,
                                 '%SB', @codigo_hyd, @fecha_busco,
                                 @codigo_tabla, 'N', 'N',  @retorno out
            end
          if @moneda = '%FA'
            begin
               select @retorno =round( (@sp_asignacion_fami + @sp_asig_famil_retr) *
                                 (@cantidad / 100),3)
               if @proporciona = 'S'  select @retorno = @retorno * @sp_dias_proporcion
               if @prophab = 'S'      select @retorno = @retorno * @sp_dias_prophab
            end
          if @moneda = '%LI'
            begin
               select @retorno = round((@sp_tot_impon_sin_t - @sp_val_leyes_socia
                                  - @sp_monto_cancel_im) * (@cantidad / 100.),3)
               if @proporciona = 'S'  select @retorno = @retorno * @sp_dias_proporcion
               if @prophab = 'S'      select @retorno = @retorno * @sp_dias_prophab
            end
          if @moneda = '%IMA'
            begin
              if @sp_nAfecImpo < @sp_vminimo
  begin
   select @retorno = round(@sp_vminimo * (@cantidad / 100.),3)
                   select @sp_valor_especial = @sp_vminimo
                end
              else
                begin
                  if @sp_nAfecImpo > @sp_vmaximo
                     begin
                        select @retorno = round(@sp_vmaximo * (@cantidad / 100.),3)
                        select @sp_valor_especial = @sp_vmaximo
                     end
                  else
                    begin
                      select @retorno = round(@sp_nAfecImpo * (@cantidad / 100.),3)
                      select @sp_valor_especial = @sp_nAfecImpo
                    end
                end

             if @proporciona = 'S'
                select @retorno = @retorno * @sp_dias_proporcion

             if @prophab = 'S'
                 select @retorno = @retorno * @sp_dias_prophab

            end
 
           if @moneda = '%AL'
            begin
			--------print   'aqui'
		--	------print   @val_alcance_liquido
              select @val_alcance_liquido =(@sp_valor_total_habere - (@sp_val_leyes_socia + @sp_monto_cancel_im ))
              select @retorno = round(@val_alcance_liquido * (@cantidad / 100.),3)
              if @proporciona = 'S'  select @retorno = @retorno * @sp_dias_proporcion
              if @proporciona = 'S'  select @retorno = @retorno * @sp_dias_prophab
            end
         end

if @retorno is null
begin
 select @retorno = 0
end
return
GO
