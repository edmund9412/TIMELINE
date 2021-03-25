/***************************************************************************************************
 ***************************************************************************************************  
 ****  PROCESO DE CREACION DE LAS TABLAS TERADATA												**** 
 ****  FECHA ACTUALIZACIÓN: 2021-13-24															**** 
 ****  ELABORADO POR EGR y JLCG																	**** 
 ****  CONTACTO: Lujan Garibay, Julio Cesar [CCC-OT NE] ;										**** 
 ****	        Gonzalez Rodriguez, Edmundo [CCC-OT NE]											****
 ****  PROCESO CONTEMPLA																		****
 ****     A) CREACIÓN DE LAS 10 TABLAS DE TERADATA												**** 
 ****     B) CREACIÓN DE LAS 22 TABLAS DE CARGAS MANUALES										**** 
 ****											                                                ****    
 ****																						    ****   
 ***************************************************************************************************  
 ***************************************************************************************************/



/*************************************************************************************************** 
TERADATA
 ***************************************************************************************************/


/*Crear Tabla 1 de 10*/

USE [Q_MX_CB_EDW_V73_T1]
GO

/****** Object:  Table [dbo].[INT_CRD_EPP_SNAPSHOT_M_F]    Script Date: 24/03/2021 06:50:17 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[INT_CRD_EPP_SNAPSHOT_M_F](
	[ACCR_INT_EOC_LCY] [decimal](30, 5) NULL,
	[ACCT_ACTV_IND] [varchar](20) NULL,
	[ACCT_BEH_SCORE] [varchar](20) NULL,
	[ACCT_ORG_CDE] [char](3) NOT NULL,
	[ACCT_RISK_LVL] [varchar](20) NULL,
	[ACTV_EPP_ORIG_LOAN_LCY] [decimal](30, 5) NULL,
	[AGGR_BAL_LCY] [decimal](30, 5) NULL,
	[AGNT_CDE] [varchar](15) NULL,
	[APPL_NBR] [varchar](20) NULL,
	[BIZ_ORG_CDE] [char](5) NULL,
	[CLNT_NBR] [varchar](20) NULL,
	[CNTRY_CDE] [char](3) NULL,
	[COMM_TO_DT_LCY] [decimal](30, 5) NULL,
	[CRD_ACCT_NBR] [varchar](20) NULL,
	[CRD_TYP] [varchar](20) NULL,
	[CREATION_FEE_LCY] [decimal](30, 5) NULL,
	[CURR_INT_RTE] [decimal](18, 7) NULL,
	[CYC_DAYS] [decimal](5, 0) NULL,
	[EFF_LOAN_TNR] [varchar](20) NULL,
	[EPP_ACCT_NBR] [varchar](20) NULL,
	[EPP_ORIG_LOAN_AMT] [decimal](30, 5) NULL,
	[EPP_TRAN_AUTH_CODE] [char](6) NULL,
	[EPP_TYP_CDE] [varchar](20) NULL,
	[FEE_OFF_LCY] [decimal](30, 5) NULL,
	[FEE_OFF_STAT] [char](1) NULL,
	[INT_BILLD_TO_DT_LCY] [decimal](30, 5) NULL,
	[INT_PREV_BILLD_TO_DT_LCY] [decimal](30, 5) NULL,
	[LAST_BILLD_INT_LCY] [decimal](18, 2) NULL,
	[LAST_BILLD_PRIN_LCY] [decimal](18, 2) NULL,
	[LAST_INSTL_DT] [date] NULL,
	[LAST_INSTL_LCY] [decimal](30, 5) NULL,
	[LAST_INSTL_RTE] [decimal](18, 7) NULL,
	[LAST_TOP_UP_DT] [date] NULL,
	[LAST_TOP_UP_MOB_NBR] [decimal](5, 0) NULL,
	[LOAD_DT_TIME] [time](6) NULL,
	[LOAN_CLOSE_DT] [date] NULL,
	[LOAN_CREATED_USR_ID] [varchar](20) NULL,
	[LOAN_DT] [date] NULL,
	[LOAN_INSTL_CYC] [varchar](20) NULL,
	[LOAN_LCY] [decimal](30, 5) NULL,
	[LOAN_MAINT_USR_ID] [varchar](20) NULL,
	[LOAN_OPEN_DT] [date] NULL,
	[LOAN_OPEN_MOB_NBR] [decimal](5, 0) NULL,
	[LOAN_OUTST_EOC_BAL_LCY] [decimal](30, 5) NULL,
	[LOAN_OUTSTND_BAL_LCY] [decimal](30, 5) NULL,
	[LOAN_REF_NBR] [varchar](26) NULL,
	[LOAN_SRC_CDE] [varchar](10) NULL,
	[LOAN_STAT] [char](1) NULL,
	[LOAN_STAT_REASON] [char](2) NULL,
	[LOAN_TNR] [varchar](20) NULL,
	[LOAN_TYP_CDE] [varchar](10) NULL,
	[MERCH_NBR] [varchar](12) NULL,
	[MERCH_NM] [varchar](40) NULL,
	[MERCH_ORG] [char](3) NULL,
	[MERCH_TYP] [varchar](20) NULL,
	[MH_USER_AMT_1] [decimal](18, 0) NULL,
	[MH_USER_AMT_2] [decimal](18, 0) NULL,
	[MH_USER_AMT_3] [decimal](18, 0) NULL,
	[MIS_DT] [date] NULL,
	[NBR_OF_INSTL_BILLD] [decimal](18, 0) NULL,
	[OLD_PROMO_ID] [varchar](9) NULL,
	[OLD_TNR_NBR] [decimal](5, 0) NULL,
	[ORGNL_ORG_CDE] [char](3) NULL,
	[ORGNL_CRD_TYP] [char](5) NULL,
	[OUTSTND_LOAN_TNR] [varchar](20) NULL,
	[POST_CARD_NBR] [varchar](16) NULL,
	[POSTED_DT] [date] NULL,
	[PREV_LOAN_OUTST_BAL_LCY] [decimal](30, 5) NULL,
	[PRIN_LOAN_BILLD_TO_DT_LCY] [decimal](30, 5) NULL,
	[PRIOR_TOP_UP_OUTSTND_BAL_LCY] [decimal](18, 2) NULL,
	[PROMO_ID] [varchar](20) NULL,
	[PROMO_OPT_ID] [varchar](20) NULL,
	[SRC_SYS_ID] [char](5) NULL,
	[STAT_CHG_DT] [date] NULL,
	[TOP_UP_IND] [char](1) NULL,
	[TOP_UP_LCY] [decimal](18, 2) NULL,
	[TOP_UP_TO_DT_CNT] [decimal](5, 0) NULL,
	[TOP_UP_TO_DT_LCY] [decimal](18, 2) NULL,
	[TOP_UP_USR_ID] [varchar](8) NULL,
	[TRAN_CDE] [varchar](10) NULL,
	[TXN_CRD_NBR] [varchar](20) NULL,
	[TXN_DT] [date] NULL,
	[TXN_REF_NBR] [varchar](23) NULL,
	[UNBLD_INT_LCYAMT] [decimal](30, 2) NULL,
	[UNEARN_INT] [decimal](23, 5) NULL,
	[POST_CR_PLAN_NBR] [int] NULL,
	[RSRV_DATA_TXT] [varchar](100) NULL,
	[TXN_CR_PLAN_NBR] [int] NULL,
	[MERCH_TNR_NBR] [smallint] NULL,
	[COMM_MTHD_IND] [char](1) NULL,
	[INT_OPT_IND] [char](1) NULL,
	[INT_STRT_DAY_IND] [char](1) NULL,
	[TXN_DESC] [varchar](100) NULL,
	[PRIN_REVS_TILL_DT_LCYAMT] [decimal](23, 5) NULL,
	[INT_REVS_TILL_DT_LCYAMT] [decimal](23, 5) NULL,
	[PYMT_TILL_DT_LCYAMT] [decimal](23, 5) NULL,
	[PYMT_TILL_DT_CNT] [int] NULL,
	[OTB_TYP_IND] [char](1) NULL,
	[PROMO_TYP_CDE] [varchar](15) NULL,
	[FIXED_INSTLMT_LCYAMT] [decimal](23, 5) NULL,
	[TXN_CRD_ORG_CDE] [char](3) NULL,
	[TXN_CRD_TYP_CDE] [varchar](15) NULL,
	[ORGNL_RTE_DT] [date] NULL,
	[RSK_CTRL_ID_CDE] [varchar](15) NULL,
	[OTB_REDUCTION_PCT] [decimal](18, 7) NULL,
	[CR_COMM_BILLD_TILL_DT_LCYAMT] [decimal](23, 5) NULL,
	[DR_COMM_BILLD_TILL_DT_LCYAMT] [decimal](23, 5) NULL,
	[OUTSTND_CREATION_FEE_LCYAMT] [decimal](23, 5) NULL,
	[FEE_BLNG_MTHD_IND] [char](1) NULL,
	[DEFERRED_MTH_CNT] [smallint] NULL,
	[DISPUTE_IND] [char](1) NULL,
	[LST_CLSE_LOAN_INT_ADJSTMT_LCL] [decimal](23, 5) NULL,
	[LST_CLSE_LOAN_PNLTY_LCYAMT] [decimal](23, 5) NULL,
	[LST_CLSE_LOAN_OUTSTND_BAL_LCYA] [decimal](23, 5) NULL,
	[LST_CLSE_LOAN_TNR_CNT] [smallint] NULL,
	[CR_INT_CTD_LCYAMT] [decimal](23, 5) NULL,
	[CRLM_BLK_PCT] [decimal](18, 7) NULL,
	[DR_INT_CTD_LCYAMT] [decimal](23, 5) NULL,
	[FRST_DUE_DT] [date] NULL,
	[LST_ACTY_DT] [date] NULL,
	[LST_ONE_TIME_PYMT_DT] [date] NULL,
	[OVRD_INT_END_DT] [date] NULL,
	[OVRD_INT_RTE] [decimal](18, 7) NULL,
	[OVRD_INT_EFF_DT] [date] NULL,
	[OLD_RWRT_ACCT_NBR] [varchar](20) NULL,
	[OLD_RWRT_CYC_DUE_CNT] [smallint] NULL,
	[OLD_RWRT_PYMT_DUE_CNT] [smallint] NULL,
	[TNR_CTRL_ID_DESC] [varchar](100) NULL,
	[USR_AREA_2_CDE] [varchar](100) NULL,
	[COMMISION_RTE] [decimal](18, 7) NULL,
	[LOAN_DESC] [varchar](100) NULL,
	[LST_PAID_LCYAMT] [decimal](23, 5) NULL,
	[LST_PAID_DT] [date] NULL,
	[PYMT_CYC_DAY_CNT] [smallint] NULL,
	[MERCH_PYMT_MTHD_DESC] [varchar](100) NULL,
	[COMM_TBL_ID_DESC] [varchar](100) NULL,
	[GL_INSTLMT_LCYAMT] [decimal](23, 5) NULL,
	[TOT_INT_LCYAMT] [decimal](23, 5) NULL,
	[CRDHLDR_PRCS_TBL_ID_DESC] [varchar](100) NULL,
	[RWRT_POST_ACCT_NBR] [varchar](20) NULL,
	[RWRT_ACCT_STAT_IND] [char](1) NULL,
	[NEW_RWRT_CRD_ACCT_NBR] [varchar](20) NULL,
	[RWRT_LCYAMT] [decimal](23, 5) NULL,
	[RWRT_TNR_CNT] [smallint] NULL,
	[RWRT_INT_RTE] [decimal](18, 7) NULL,
	[INTIAL_PYMT_LCYAMT] [decimal](23, 5) NULL,
	[INIITAL_AMT_PYMT_DT] [date] NULL,
	[MTHLY_PYMT_LCYAMT] [decimal](23, 5) NULL,
	[ETIQUETA] [char](2) NULL,
	[MB_WALLET_SRV_PROV] [char](1) NULL,
	[MB_DPAN_ID] [char](4) NULL,
 CONSTRAINT [PK_INT_CRD_EPP_SNAPSHOT_M_F] PRIMARY KEY CLUSTERED 
(
	[ACCT_ORG_CDE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO




/*Crear Tabla 2 de 10*/

USE [Q_MX_CB_EDW_V73_T1]
GO

/****** Object:  Table [dbo].[INT_CRD_PLAN_SNAPSHOT_C_F]    Script Date: 24/03/2021 06:47:26 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[INT_CRD_PLAN_SNAPSHOT_C_F](
	[ACCT_ORG_CDE] [char](3) NOT NULL,
	[CRD_ACCT_NBR] [varchar](20) NULL,
	[MIS_DT] [date] NULL,
	[STMT_ID_CDE] [varchar](15) NULL,
	[PLAN_NBR] [varchar](15) NULL,
	[PLAN_TYP_CDE] [varchar](50) NULL,
	[PLAN_DT] [date] NULL,
	[BGNG_BAL_LCYAMT] [decimal](23, 5) NULL,
	[DR_CNT] [smallint] NULL,
	[CR_CNT] [smallint] NULL,
	[DR_LCYAMT] [decimal](23, 5) NULL,
	[CR_LCYAMT] [decimal](23, 5) NULL,
	[INT_LCYAMT] [decimal](23, 5) NULL,
	[CURR_DUE_LCYAMT] [decimal](23, 5) NULL,
	[CURR_BAL_LCYAMT] [decimal](23, 5) NULL,
	[PAST_DUE_LCYAMT] [decimal](23, 5) NULL,
	[RTE_CHG_EFF_DT] [date] NULL,
	[AGGR_BAL_LCYAMT] [decimal](23, 5) NULL,
	[AGGR_DAYS_CNT] [smallint] NULL,
	[INT_BNP_LCYAMT] [decimal](23, 5) NULL,
	[SERV_CHRG_BNP_LCYAMT] [decimal](23, 5) NULL,
	[LATE_CHRG_BNP_LCYAMT] [decimal](23, 5) NULL,
	[MBRZP_FEE_BNP_LCYAMT] [decimal](23, 5) NULL,
	[OVRLMT_FEE_BNP_LCYAMT] [decimal](23, 5) NULL,
	[INS_FEE_BNP_LCYAMT] [decimal](23, 5) NULL,
	[RCVRY_FEE_BNP_LCYAMT] [decimal](23, 5) NULL,
	[COLL_FEE_BNP_LCYAMT] [decimal](23, 5) NULL,
	[NSF_FEE_BNP_LCYAMT] [decimal](23, 5) NULL,
	[BASE_RTE] [decimal](18, 7) NULL,
	[LOAD_DT_TIME] [time](6) NULL,
	[CNTRY_CDE] [char](3) NULL,
	[BIZ_ORG_CDE] [char](3) NULL,
	[SRC_SYS_ID] [char](5) NULL,
	[YTD_INT_LCYAMT] [decimal](23, 5) NULL,
	[CALC_RTE] [decimal](18, 7) NULL,
 CONSTRAINT [PK_INT_CRD_PLAN_SNAPSHOT_C_F] PRIMARY KEY CLUSTERED 
(
	[ACCT_ORG_CDE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/*Crear Tabla 3 de 10*/


USE [Q_MX_CB_EDW_V73_T1]
GO

/****** Object:  Table [dbo].[INT_CRD_PORTFOLIO_MASTER_F]    Script Date: 24/03/2021 06:54:39 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[INT_CRD_PORTFOLIO_MASTER_F](
	[ACCT_ORG_CDE] [char](3) NOT NULL,
	[CRD_ACCT_NBR] [varchar](20) NOT NULL,
	[ACCT_ACTIVATION_DT] [date] NULL,
	[ACCT_ACTV_IND] [char](5) NULL,
	[ACCT_BLK_MOB] [smallint] NULL,
	[ACCT_CLSE_DT] [date] NULL,
	[ACCT_CLSE_IND] [char](1) NULL,
	[ACCT_CLSE_RSN] [char](5) NULL,
	[ACCT_CR_LN_TYP] [char](5) NULL,
	[ACCT_EOP_IND] [char](1) NULL,
	[ACCT_EPP_IND] [char](1) NULL,
	[ACCT_EXPRY_DT] [date] NULL,
	[ACCT_IND] [char](29) NULL,
	[ACCT_INTRNL_STAT] [char](5) NULL,
	[ACCT_INVLNTRY_ATRZN_IND] [char](1) NULL,
	[ACCT_MOB] [smallint] NULL,
	[ACCT_OPEN_DT] [date] NULL,
	[ACCT_PRIM_BLK_CDE] [char](5) NULL,
	[ACCT_SPND_CRLM_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_STAT_IND] [char](1) NULL,
	[ACCT_TRNSFR_MOB] [smallint] NULL,
	[ACCT_VLNTRY_ATRZN_IND] [char](1) NULL,
	[ACQRD_SRC_CDE] [varchar](15) NULL,
	[ACTV_EPP_IND] [char](1) NULL,
	[AGNT_CDE] [varchar](15) NULL,
	[APPL_NBR] [varchar](20) NULL,
	[ATRZN_IND] [char](9) NULL,
	[BAL_TRNSFR_IND] [char](1) NULL,
	[CCL_IND] [char](1) NULL,
	[CIF_CIR_IND] [char](1) NULL,
	[CIF_EOP_IND] [char](1) NULL,
	[CLNT_NBR] [varchar](20) NULL,
	[CNTRY_SPECIFIC_STR] [varchar](50) NULL,
	[CR_SHIELD_NEW_IND] [char](1) NULL,
	[CRD_ACY] [char](3) NULL,
	[CRD_CUST_NBR] [varchar](20) NULL,
	[CRD_EFF_TRNSFR_DT] [date] NULL,
	[CRD_EXPRY_DT] [date] NULL,
	[CRD_TYP] [varchar](15) NULL,
	[CRLM_LST_DECRD_DT] [date] NULL,
	[CRLM_LST_INCR_DT] [date] NULL,
	[CURR_DELQ] [varchar](24) NULL,
	[DELQ_STR] [varchar](24) NULL,
	[FRST_TXN_DT] [date] NULL,
	[LST_CSH_TXN_DT] [date] NULL,
	[LST_PYMT_DT] [date] NULL,
	[LST_REAGE_DT] [date] NULL,
	[LST_RTL_TXN_DT] [date] NULL,
	[LST_STAT_CHG_DT] [date] NULL,
	[LST_TXN_DT] [date] NULL,
	[LSTMT_DT] [date] NULL,
	[MITIGATION_IND] [char](1) NULL,
	[NEW_TO_BNK_IND] [char](1) NULL,
	[NEW_TO_CRD_IND] [char](1) NULL,
	[OPEN_ACCT_IND] [char](1) NULL,
	[OVRLMT_IND] [char](1) NULL,
	[PREV_BLK_CDE] [char](5) NULL,
	[PREV_CRD_NBR] [varchar](20) NULL,
	[PREV_CRD_TYP] [varchar](15) NULL,
	[PRIC_CSH_PROMO_END_DT] [date] NULL,
	[PRIC_CSH_PROMO_PLAN] [int] NULL,
	[PRIC_CSH_PROMO_STRT_DT] [date] NULL,
	[PRIC_PRCNG_END_DT] [date] NULL,
	[PRIC_PRCNG_IND] [char](1) NULL,
	[PRIC_PRCNG_STRT_DT] [date] NULL,
	[PRIC_RTL_PROMO_END_DT] [date] NULL,
	[PRIC_RTL_PROMO_PLAN] [int] NULL,
	[PRIC_RTL_PROMO_STRT_DT] [date] NULL,
	[PYMT_DUE_DT] [date] NULL,
	[RNDM_DIGITS] [smallint] NULL,
	[RNSTMT_DT] [date] NULL,
	[RNSTMT_IND] [char](1) NULL,
	[RELN_NBR] [varchar](20) NULL,
	[RNWL_TAG] [char](5) NULL,
	[REWRT_IND] [char](1) NULL,
	[ROTA_NBR] [decimal](23, 5) NULL,
	[STMT_IND] [char](1) NULL,
	[STRTEGIC_PRTFL_ID] [int] NULL,
	[STRTEGIC_PRTFL_ID1] [int] NULL,
	[THIRD_PYMT_DFLT_IND] [char](1) NULL,
	[TRNSFR_ACCT_NBR] [varchar](20) NULL,
	[USR_DFIND_CDE_1] [varchar](15) NULL,
	[USR_DFIND_CDE_2] [varchar](15) NULL,
	[USR_DFIND_CDE_3] [varchar](15) NULL,
	[ACCT_EOC_IND] [char](1) NULL,
	[FRST_DELQ_STMT_DT] [date] NULL,
	[ACCT_BLNG_CYC] [smallint] NULL,
	[MTH_ON_LST_RTL_PRCH] [smallint] NULL,
	[MTH_ON_LST_CSH_ADVNC] [smallint] NULL,
	[LOAD_DT_TIME] [time](6) NULL,
	[SRC_SYS_ID] [char](5) NULL,
	[CNTRY_CDE] [char](3) NULL,
	[BIZ_ORG_CDE] [char](3) NULL,
	[SRC_CDE] [varchar](15) NULL,
	[MIS_DT] [date] NULL,
	[NXT_STMT_DT] [date] NULL,
	[LST_UTLTY_BILL_PYMT_USG_DT] [date] NULL,
	[RELN_BRAND_IND] [char](1) NULL,
	[RELN_DDA_IND] [char](1) NULL,
	[DDA_BNK_CDE] [varchar](15) NULL,
	[DDA_BR_CDE] [varchar](15) NULL,
	[DDA_RTNG_CDE] [varchar](30) NULL,
	[DDA_ACCOUN_TYP_CDE] [varchar](15) NULL,
	[DDA_ACNT_NBR] [varchar](20) NULL,
	[DDA_ACCT_NM_TXT] [varchar](50) NULL,
	[RELN_TYP_IND] [char](1) NULL,
	[PRIVACY_LAW_CDE] [varchar](15) NULL,
	[PRIM_CRD_NBR] [varchar](20) NULL,
	[FRST_DELQ_DT] [date] NULL,
	[FRST_PYMT_DFLT_IND] [char](1) NULL,
	[TRNSFR_ORG_CDE] [char](3) NULL,
	[ACCT_PRIM_BLK_DT] [date] NULL,
	[ACCT_PRIM_BLK_RSN_CDE] [char](5) NULL,
	[CITI_GOLD_IND] [char](1) NULL,
	[CO_CDE] [char](5) NULL,
	[SIGNTR_TO_CDE] [char](1) NULL,
	[DIRECT_MAIL_TO_CDE] [char](1) NULL,
	[LST_ALOP_DT] [date] NULL,
	[LST_LOP_DT] [date] NULL,
	[PCT_STRT_DT] [date] NULL,
	[OVRLMT_FEE_WAIVE_CNT] [smallint] NULL,
	[LST_RETURN_DT] [date] NULL,
	[OVRLMT_CYC_CNT] [smallint] NULL,
	[CRD_FEE_DT] [date] NULL,
	[OWNING_BNK_NBR] [int] NULL,
	[SECURE_IND] [char](1) NULL,
	[OFFCR_CDE] [varchar](15) NULL,
	[CR_APPL_SCR_CDE] [varchar](15) NULL,
	[COLL_CRD_CDE] [varchar](15) NULL,
	[LST_RETURN_CHECK_DT] [date] NULL,
	[GREATEST_EXPRY_DT] [date] NULL,
	[ACH_PYMT_DR_NBR] [varchar](30) NULL,
	[CRD_TECH_IND] [char](1) NULL,
	[LST_REAGE_2_DT] [date] NULL,
	[PYMT_REAGE_USR_ID] [varchar](30) NULL,
	[PYMT_REAGE_TIMZ_CNT] [smallint] NULL,
	[REAGE_QUALIFIER_IND] [char](1) NULL,
	[REAGE_QUALIFIER_DT] [date] NULL,
	[REAGE_CURE_CYC_DUE_IND] [char](1) NULL,
	[REAGE_CURE_LCYAMT] [decimal](23, 5) NULL,
	[REAGE_1_TIMZ_CNT] [smallint] NULL,
	[REAGE_TRACK_CNT] [smallint] NULL,
	[FRST_PRCH_DT] [date] NULL,
	[ACCT_ORIGN_BR_NBR] [varchar](50) NULL,
	[ACCT_OWNING_BR_NBR] [varchar](50) NULL,
	[LEGAL_VHCL_IND] [varchar](10) NULL,
	[BORD_OR_NON_BORD_IND_TXT] [char](1) NULL,
	[PRCH_DISC_LCYAMT] [decimal](23, 5) NULL,
	[CSH_DISC_LCYAMT] [decimal](23, 5) NULL,
	[BC_ST_NM_TXT] [varchar](50) NULL,
	[ACCT_EXCLSN_IND] [char](1) NULL,
	[ACCT_NEW_IND] [varchar](1) NULL,
	[ACCT_IND_12M_1] [varchar](48) NULL,
	[ACCT_IND_12M_2] [varchar](48) NULL,
	[FINAL_EVLUTN_DT] [date] NULL,
	[ORGNL_CRLM_LCYAMT] [decimal](18, 5) NULL,
	[ORGNL_CRLM_STRT_DT] [date] NULL,
	[RELN_ORG] [char](3) NULL,
 CONSTRAINT [PK_INT_CRD_PORTFOLIO_MASTER_F] PRIMARY KEY CLUSTERED 
(
	[ACCT_ORG_CDE] ASC,
	[CRD_ACCT_NBR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



/*Crear Tabla 4 de 10*/

USE [Q_MX_CB_EDW_V73_T1]
GO

/****** Object:  Table [dbo].[INT_CRD_PORTFOLIO_SNAPSHOT_C_F]    Script Date: 24/03/2021 07:01:05 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[INT_CRD_PORTFOLIO_SNAPSHOT_C_F](
	[BLNG_CYC_DT] [date] NOT NULL,
	[ACCT_ORG_CDE] [char](3) NOT NULL,
	[CRD_ACCT_NBR] [varchar](20) NOT NULL,
	[ACCT_BLK_CDE_1] [char](5) NULL,
	[ACCT_BLK_CDE_2] [char](5) NULL,
	[ACCT_BLK_RSN_1] [char](5) NULL,
	[ACCT_BLK_RSN_2] [char](5) NULL,
	[ACCT_EOC_IND] [char](1) NULL,
	[ACCT_BLNG_CYC] [char](5) NULL,
	[ACCT_EXPRY_DT] [date] NULL,
	[ACCT_PRIM_BLK_CDE] [char](5) NULL,
	[ACCT_STAT_IND_CYC] [char](1) NULL,
	[PAST_DUE_LCYAMT] [decimal](23, 5) NULL,
	[ALOP_BAL_LCYAMT] [decimal](23, 5) NULL,
	[ALOP_ENR_LCYAMT] [decimal](23, 5) NULL,
	[ALOP_TXN_LCYAMT] [decimal](23, 5) NULL,
	[ANR_ALOP_LCYAMT] [decimal](23, 5) NULL,
	[ANR_PREV_LCYAMT] [decimal](23, 5) NULL,
	[ANR_BILLD_LCYAMT] [decimal](23, 5) NULL,
	[ANR_LCYAMT] [decimal](23, 5) NULL,
	[ANR_RTL_LCYAMT] [decimal](23, 5) NULL,
	[STMT_BAL_PREV_LCYAMT] [decimal](23, 5) NULL,
	[PYMT_CYC_TO_DT_LCYAMT] [decimal](23, 5) NULL,
	[ANR_UNBLD_LCYAMT] [decimal](23, 5) NULL,
	[AVLBL_ALOP_CRLM_LCYAMT] [decimal](23, 5) NULL,
	[AVLBL_CSH_LCYAMT] [decimal](23, 5) NULL,
	[STMT_BAL_CURR_LCYAMT] [decimal](23, 5) NULL,
	[AVLBL_CR_LCYAMT] [decimal](23, 5) NULL,
	[AVLBL_CR_USDAMT] [decimal](23, 5) NULL,
	[BALCON_ANR_LCYAMT] [decimal](23, 5) NULL,
	[CRD_USG_FEE_LCYAMT] [decimal](23, 5) NULL,
	[BLK_CDE_1_CHG_DT] [date] NULL,
	[BLK_CDE_2_CHG_DT] [date] NULL,
	[CSH_BAL_LCYAMT] [decimal](23, 5) NULL,
	[CSH_ANR_LCYAMT] [decimal](23, 5) NULL,
	[CORE_ENR_LCYAMT] [decimal](23, 5) NULL,
	[CRLM_UTIL_3MTHS_PCT] [decimal](18, 7) NULL,
	[CRLM_UTIL_6MTHS_PCT] [decimal](18, 7) NULL,
	[CRLM_UTIL_PCT] [decimal](18, 7) NULL,
	[ENR_ALOP_LCYAMT] [decimal](23, 5) NULL,
	[CYC_DUE] [smallint] NULL,
	[ENR_CSH_LCYAMT] [decimal](23, 5) NULL,
	[ENR_BALCON_LCYAMT] [decimal](23, 5) NULL,
	[ENR_FOR_1_LCYAMT] [decimal](23, 5) NULL,
	[ENR_FOR_2_LCYAMT] [decimal](23, 5) NULL,
	[ENR_FOR_3_LCYAMT] [decimal](23, 5) NULL,
	[ENR_FOR_4_LCYAMT] [decimal](23, 5) NULL,
	[ENR_FOR_5_LCYAMT] [decimal](23, 5) NULL,
	[ENR_FOR_6_LCYAMT] [decimal](23, 5) NULL,
	[ENR_FOR_7_LCYAMT] [decimal](23, 5) NULL,
	[ENR_LCYAMT] [decimal](23, 5) NULL,
	[ENR_EPP_LCYAMT] [decimal](23, 5) NULL,
	[ENR_RTL_LCYAMT] [decimal](23, 5) NULL,
	[ENR_UNBLD_LCYAMT] [decimal](23, 5) NULL,
	[EPP_ANR_LCYAMT] [decimal](23, 5) NULL,
	[EPP_BAL_LCYAMT] [decimal](23, 5) NULL,
	[EPP_INSTLMT_LCYAMT] [decimal](23, 5) NULL,
	[EPP_INSTLMT_USDAMT] [decimal](23, 5) NULL,
	[EPP_UNBLD_LCYAMT] [decimal](23, 5) NULL,
	[FLEXI_PYMT_UNBLD_LCYAMT] [decimal](23, 5) NULL,
	[LOP_ANR_LCYAMT] [decimal](23, 5) NULL,
	[LOP_BAL_LCYAMT] [decimal](23, 5) NULL,
	[LOP_ENR_LCYAMT] [decimal](23, 5) NULL,
	[LOP_TXN_LCYAMT] [decimal](23, 5) NULL,
	[NEW_EPP_LCYAMT] [decimal](23, 5) NULL,
	[NEW_LOP_LCYAMT] [decimal](23, 5) NULL,
	[NBR_OF_ALOP_TXN] [smallint] NULL,
	[NBR_OF_EPP] [smallint] NULL,
	[NBR_OF_EPP_INSTLMT] [smallint] NULL,
	[NBR_OF_INTL_CSH_SALE] [smallint] NULL,
	[NBR_OF_INTL_RTL_SALE] [smallint] NULL,
	[NBR_OF_LCL_CSH_SALE] [smallint] NULL,
	[NBR_OF_LCL_RTL_SALE] [smallint] NULL,
	[NBR_OF_LOP_TXN] [smallint] NULL,
	[NBR_OF_NEW_EPP] [smallint] NULL,
	[NBR_OF_NEW_LOP] [smallint] NULL,
	[NBR_OF_QC_INSTLMT] [smallint] NULL,
	[NBR_OF_RETRO_EPP_INSTLMT] [smallint] NULL,
	[PAYLITE_CONV_ANR_LCYAMT] [decimal](23, 5) NULL,
	[PAYLITE_CONV_ENR_LCYAMT] [decimal](23, 5) NULL,
	[PAYLITE_ENR_LCYAMT] [decimal](23, 5) NULL,
	[QC_INSTLMT_LCYAMT] [decimal](23, 5) NULL,
	[RTL_BAL_LCYAMT] [decimal](23, 5) NULL,
	[RTL_INT_LCYAMT] [decimal](23, 5) NULL,
	[RETRO_EPP_INSTLMT_LCYAMT] [decimal](23, 5) NULL,
	[TOT_BAL_LCYAMT] [decimal](23, 5) NULL,
	[TOT_BAL_PREV_LCYAMT] [decimal](23, 5) NULL,
	[TOT_INTL_CSH_SALE_LCYAMT] [decimal](23, 5) NULL,
	[TOT_INTL_RTL_SALE_LCYAMT] [decimal](23, 5) NULL,
	[TOT_LCL_CSH_SALE_LCYAMT] [decimal](23, 5) NULL,
	[TOT_LCL_RTL_SALE_LCYAMT] [decimal](23, 5) NULL,
	[TOT_PYMT_LCYAMT] [decimal](23, 5) NULL,
	[TOT_SALE_LCYAMT] [decimal](23, 5) NULL,
	[UNBLD_ALOP_LCYAMT] [decimal](23, 5) NULL,
	[DELQ_STR] [varchar](24) NULL,
	[ACCT_BAL_LCYAMT] [decimal](23, 5) NULL,
	[BEH_SCR] [char](6) NULL,
	[BEH_SCR_ID] [varchar](30) NULL,
	[CIF_IND] [char](1) NULL,
	[CR_BURO_MGMT_SCR] [char](6) NULL,
	[CR_SCR] [char](6) NULL,
	[DELQ_EOC_PLUS] [varchar](24) NULL,
	[FRST_PYMT_DFLT_IND] [char](1) NULL,
	[CURR_CYC_IND] [char](1) NULL,
	[PYMT_DUE_DT] [date] NULL,
	[PYMT_HSTRY_STR] [varchar](24) NULL,
	[SCND_PYMT_DFLT_IND] [char](1) NULL,
	[SKIP_PYMT_IND] [char](1) NULL,
	[STMT_IND] [char](1) NULL,
	[THIRD_PYMT_DFLT_IND] [char](1) NULL,
	[TOT_AMT_PAST_DUE] [decimal](23, 5) NULL,
	[TOT_CRLM_LCYAMT] [decimal](23, 5) NULL,
	[CURR_CRLM_CYC_DT] [date] NULL,
	[LST_CSH_TXN_DT] [date] NULL,
	[LST_PYMT_DT] [date] NULL,
	[LST_RETURN_CHQ_DT] [date] NULL,
	[LST_RTL_TXN_DT] [date] NULL,
	[NBR_OF_PYMTS] [smallint] NULL,
	[NBR_OF_RETURN_CHQ] [smallint] NULL,
	[PREV_2_CYC_PYMT_AMT] [decimal](23, 5) NULL,
	[PREV_2_MTH_CYC_BAL] [decimal](23, 5) NULL,
	[PREV_3_MTH_CYC_BAL] [decimal](23, 5) NULL,
	[PYMT_AMT_LST_CYC] [decimal](23, 5) NULL,
	[CPP_LN] [decimal](23, 5) NULL,
	[CPP_LN_LST_MODIFY_DT] [date] NULL,
	[CPP_LN_OPEN_DT] [date] NULL,
	[CRD_STAT_DT] [date] NULL,
	[DAC_FRST_INSTALL_FEE_AMT] [decimal](23, 5) NULL,
	[ASSET_DT] [date] NULL,
	[ASSET_AMT] [decimal](23, 5) NULL,
	[MIS_DT] [date] NOT NULL,
	[LOAD_DT_TIME] [time](6) NULL,
	[SRC_SYS_ID] [char](5) NULL,
	[CNTRY_CDE] [char](3) NULL,
	[BIZ_ORG_CDE] [char](3) NULL,
	[PYMT_CYC_TO_DT_USDAMT] [decimal](23, 5) NULL,
	[MIS_MTH] [char](6) NULL,
	[PYMT_CURR_DUE_LCYAMT] [decimal](30, 2) NULL,
	[MBR_SINCE_NBR] [date] NULL,
	[ROLL_12_MTH_BEH_SCR] [char](36) NULL,
	[ROLL_12_MTH_BEH_SCR_ID] [char](36) NULL,
	[ROLL_12_MTH_RSK_LVL] [char](36) NULL,
	[IS_BKT_CDE] [char](1) NULL,
	[WAS_BKT_CDE] [char](1) NULL,
	[ANR_1_MTH_AGO_LCYAMT] [decimal](23, 5) NULL,
	[ANR_2_MTH_AGO_LCYAMT] [decimal](23, 5) NULL,
	[ANR_3_MTH_AGO_LCYAMT] [decimal](23, 5) NULL,
	[CRLM_LCYAMT] [decimal](23, 5) NULL,
	[ALOP_CRLM_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_INTRNL_STAT_CDE] [varchar](15) NULL,
	[GRACE_DAY_EXPRY_DT] [date] NULL,
	[BGNG_BAL_LCYAMT] [decimal](23, 5) NULL,
	[TXTR_RVLR_HSTRY_STR] [char](12) NULL,
	[PYMT_PAST_DUE_TIMZ_CNT] [int] NULL,
	[PYMT_30_DPD_TIMZ_CNT] [smallint] NULL,
	[PYMT_60_DPD_TIMZ_CNT] [smallint] NULL,
	[PYMT_90_DPD_TIMZ_CNT] [smallint] NULL,
	[PYMT_120_DPD_TIMZ_CNT] [smallint] NULL,
	[PYMT_150_DPD_TIMZ_CNT] [smallint] NULL,
	[PYMT_180_DPD_TIMZ_CNT] [smallint] NULL,
	[PYMT_210_DPD_TIMZ_CNT] [smallint] NULL,
	[SOC_30_PLUS_PYMT_DUE_LCYAMT] [decimal](23, 5) NULL,
	[EPP_CSH_OUTSTND_LCYAMT] [decimal](23, 5) NULL,
	[ACTL_CSH_WDRW_LCYAMT] [decimal](23, 5) NULL,
	[ACTL_PRCH_LCYAMT] [decimal](23, 5) NULL,
	[BAL_WRT_OFF_LCYAMT] [decimal](30, 5) NULL,
	[CNRTY_CDE] [decimal](3, 0) NULL,
	[CSH_DISC_LCYAMT] [decimal](23, 5) NULL,
	[CYC_PRCH_LCYAMT] [decimal](23, 5) NULL,
	[LST_STMT_TOT_MIN_DUE_LCYAMT] [decimal](23, 5) NULL,
	[PRCH_DISC_LCYAMT] [decimal](23, 5) NULL,
	[PREV_FINAL_APPLIED_SCR_NBR] [decimal](23, 5) NULL,
	[PRIN_BAL_LCYAMT] [decimal](23, 5) NULL,
	[PYMT_CTD_LCYAMT] [decimal](23, 5) NULL,
	[PYMT_CYC_LCYAMT] [char](1) NULL,
	[FEE_PRCH_PLAN_RTE] [decimal](18, 7) NULL,
	[GROS_CR_LOSSES_LCYAMT] [decimal](23, 5) NULL,
	[COLL_FEES_LCYAMT] [decimal](23, 5) NULL,
	[REPOSZN_FEE_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_IND] [varchar](50) NULL,
 CONSTRAINT [PK_INT_CRD_PORTFOLIO_SNAPSHOT_C_F] PRIMARY KEY CLUSTERED 
(
	[BLNG_CYC_DT] ASC,
	[ACCT_ORG_CDE] ASC,
	[CRD_ACCT_NBR] ASC,
	[MIS_DT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/*Crear Tabla 5 de 10*/



USE [Q_MX_CB_EDW_V73_T1]
GO

/****** Object:  Table [dbo].[INT_CRD_PORTFOLIO_SNAPSHOT_M_F]    Script Date: 24/03/2021 07:06:03 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[INT_CRD_PORTFOLIO_SNAPSHOT_M_F](
	[MIS_DT] [date] NOT NULL,
	[ACCT_ORG_CDE] [char](3) NOT NULL,
	[CRD_ACCT_NBR] [varchar](20) NOT NULL,
	[ACCT_BLK_CDE_1] [char](5) NULL,
	[ACCT_BLK_CDE_2] [char](5) NULL,
	[ACCT_BLK_RSN_1] [char](5) NULL,
	[ACCT_BLK_RSN_2] [char](5) NULL,
	[ACCT_RSK_LVL] [char](5) NULL,
	[ALOP_ORGNL_LOAN_LCYAMT] [decimal](23, 5) NULL,
	[ALOP_PREV_CR_LCYAMT] [decimal](23, 5) NULL,
	[ACTV_EPP_ORGNL_LOAN_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_SPND_CRLM_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_BAL_LCYAMT] [decimal](23, 5) NULL,
	[AVLBL_ALOP_CRLM_LCYAMT] [decimal](23, 5) NULL,
	[ANR_PREV_FIN_YR_LCYAMT] [decimal](23, 5) NULL,
	[ANR_YTD_LCYAMT] [decimal](23, 5) NULL,
	[AVLBL_CSH_LMT_LCYAMT] [decimal](23, 5) NULL,
	[AVLBL_CR_LCYAMT] [decimal](23, 5) NULL,
	[AVLBL_CR_LOP_LN_LCYAMT] [decimal](23, 5) NULL,
	[AVLBL_SPND_CRLM_LCYAMT] [decimal](23, 5) NULL,
	[ANR_LCYAMT] [decimal](23, 5) NULL,
	[ANR_USDAMT] [decimal](23, 5) NULL,
	[ANR_RTL_LCYAMT] [decimal](23, 5) NULL,
	[ANR_UNBLD_LCYAMT] [decimal](23, 5) NULL,
	[BAL_AT_RSK_LCYAMT] [decimal](23, 5) NULL,
	[BAL_RTL_PRIN_LCYAMT] [decimal](23, 5) NULL,
	[BAL_CSH_PRIN_LCYAMT] [decimal](23, 5) NULL,
	[BAL_TOT_PRIN_LCYAMT] [decimal](23, 5) NULL,
	[BALCON_ANR_LCYAMT] [decimal](23, 5) NULL,
	[BNKRPT_CURR_MTH_IND] [char](1) NULL,
	[BNKRPT_PREV_MTH_IND] [char](1) NULL,
	[BIZ_CLSE_DT] [date] NULL,
	[BASEL_ID] [int] NULL,
	[BLK_CDE_1_CHG_DT] [date] NULL,
	[BLK_CDE_2_CHG_DT] [date] NULL,
	[BEH_TYP] [varchar](15) NULL,
	[BILL_TO_CDE] [char](5) NULL,
	[CRD_FEATURE] [varchar](60) NULL,
	[CRD_FEE_CDE] [char](5) NULL,
	[CRD_HLDR_DOMICILE] [char](3) NULL,
	[CRD_PRC_CTL_TBL_EXPRY_DT] [date] NULL,
	[CRD_PRC_CTL_TBL_ID] [varchar](60) NULL,
	[CITI_EMPL_CDE] [varchar](15) NULL,
	[CLNT_AGE] [smallint] NULL,
	[CLNT_CRD_VNTG] [varchar](15) NULL,
	[CLNT_DT_OF_BIRTH] [date] NULL,
	[CLNT_FRST_PRD_IND] [char](1) NULL,
	[CLNT_ENR_LCYAMT] [decimal](23, 5) NULL,
	[CLNT_WORST_RSK_LVL] [char](5) NULL,
	[CSH_BAL_LCYAMT] [decimal](23, 5) NULL,
	[CRD_USG_LCYAMT] [decimal](23, 5) NULL,
	[CSH_ANR_LCYAMT] [decimal](23, 5) NULL,
	[CORE_CSH_SALE_LCYAMT] [decimal](23, 5) NULL,
	[CORE_RTL_SALE_LCYAMT] [decimal](23, 5) NULL,
	[CRD_TO_CDE] [varchar](15) NULL,
	[CRD_SGMTZN] [varchar](60) NULL,
	[CRD_SGMTZN_BIN] [varchar](60) NULL,
	[CORP_NM] [varchar](50) NULL,
	[CORP_LMT] [decimal](23, 5) NULL,
	[CORE_ENR_LCYAMT] [decimal](23, 5) NULL,
	[CR_LIMT_PREV_PERM_LCYAMT] [decimal](23, 5) NULL,
	[CRLM_DECRD_LCYAMT] [decimal](23, 5) NULL,
	[CRLM_INCR_IND] [char](1) NULL,
	[CORE_CSH_ENR_LCYAMT] [decimal](23, 5) NULL,
	[CORP_CLNT_NBR] [varchar](20) NULL,
	[CRLM_INCR_LCYAMT] [decimal](23, 5) NULL,
	[CRLM_LST_MTH_LCYAMT] [decimal](23, 5) NULL,
	[CRLM_LST_DECRD_LCYAMT] [decimal](23, 5) NULL,
	[AVG_3_MTH_CSH_LCYAMT] [decimal](23, 5) NULL,
	[AVG_3_MTH_SALE_LCYAMT] [decimal](23, 5) NULL,
	[AVG_3_MTH_RTL_LCYAMT] [decimal](23, 5) NULL,
	[CRLM_LCYAMT] [decimal](23, 5) NULL,
	[CSH_INT_RTE] [decimal](18, 7) NULL,
	[DEFN_FIN_FEE_IND] [char](1) NULL,
	[CRLM_LST_TEMP_DECR_LCYAMT] [decimal](23, 5) NULL,
	[DT_OF_LST_INCM_VERIF] [date] NULL,
	[DT_OF_LST_INCM_VERIF1] [date] NULL,
	[CSH_LMT_LCYAMT] [decimal](23, 5) NULL,
	[DIRECT_DR_THIS_QTR] [char](1) NULL,
	[DIRECT_DR_TXN_REVS_IND] [char](1) NULL,
	[DIRECT_DR_IND] [char](1) NULL,
	[EPP_ORGNL_LOAN_AMT] [decimal](23, 5) NULL,
	[EPP_ORGNL_LOAN_LCYAMT] [decimal](23, 5) NULL,
	[ENR_UNBLD_LCYAMT] [decimal](23, 5) NULL,
	[EPP_OUTSTND_TNR] [smallint] NULL,
	[EPP_RCPL_OUTSTND_FEE_LCYAMT] [decimal](23, 5) NULL,
	[EPP_QC_SALE_LCYAMT] [decimal](23, 5) NULL,
	[EPP_SALE_MTD_LCYAMT] [decimal](23, 5) NULL,
	[EPP_RETRO_SALE_LCYAMT] [decimal](23, 5) NULL,
	[HSTRY_RVLR_IND] [char](12) NULL,
	[HIGHEST_BAL_LCYAMT] [decimal](23, 5) NULL,
	[EPP_ORGNL_LOAN_TXN] [decimal](23, 5) NULL,
	[EPP_MAX_OUTSTND_TNR] [smallint] NULL,
	[FEE_OFF_IND] [char](1) NULL,
	[SAFETY_PKG_IND] [char](1) NULL,
	[IENC_ANTCPTD_CSH_BAL_LCYAMT] [decimal](23, 5) NULL,
	[IENC_ACCR_CSH_BAL_LCYAMT] [decimal](23, 5) NULL,
	[IENC_PRVSNL_CSH_BAL_LCYAMT] [decimal](23, 5) NULL,
	[IENC_PRVSNL_RTL_BAL_LCYAMT] [decimal](23, 5) NULL,
	[IENC_ANTCPTD_RTL_BAL_LCYAMT] [decimal](23, 5) NULL,
	[IENC_RVLR_IND] [char](1) NULL,
	[SECURED_IND] [char](1) NULL,
	[SERV_FEE_IND] [char](1) NULL,
	[MITIGATION_IND] [char](1) NULL,
	[STAFF_ACCT_IND] [char](1) NULL,
	[TOT_MUE] [decimal](23, 5) NULL,
	[REWRT_PAST_IND] [char](1) NULL,
	[ONE_BILL_SALE_LCYAMT] [decimal](23, 5) NULL,
	[PYMT_MOB] [smallint] NULL,
	[ROTA_NBR] [decimal](23, 5) NULL,
	[PRIC_TABLE_IN_USE] [int] NULL,
	[OFFCR_CDE] [varchar](15) NULL,
	[PRIC_STGY_ID] [smallint] NULL,
	[NBR_OF_ACCT_UTLTY_TXN] [smallint] NULL,
	[NBR_OF_ACTV_ALOP_ORGNL_LOAN] [smallint] NULL,
	[RC_PAYLITE_IND] [char](1) NULL,
	[NBR_OF_NEW_SUP_CRDS] [smallint] NULL,
	[NBR_OF_EPP_OUTSTND_TNR] [smallint] NULL,
	[NBR_OF_ONE_BILL_CLSE_ENRLMT] [smallint] NULL,
	[NBR_OF_FLEXI_PYMT] [smallint] NULL,
	[NBR_OF_ONE_BILL_ENRLD_ACCT] [smallint] NULL,
	[NBR_OF_ONE_BILL_NEW_ENRLMT] [smallint] NULL,
	[NBR_OF_ACTV_EPP_ORGNL_LOAN] [smallint] NULL,
	[NEW_BALCON_SALE_LCYAMT] [decimal](23, 5) NULL,
	[NO_OF_PAYLITE_ACTL_EPP_ORGNL_L] [smallint] NULL,
	[NBR_OF_ONE_BILL_TXN] [smallint] NULL,
	[NO_PYMT_SINCE_WRT_OFF_IND] [char](1) NULL,
	[NBR_OF_REDEM] [smallint] NULL,
	[NBR_OF_IFHP] [smallint] NULL,
	[NBR_OF_RNSTMT] [smallint] NULL,
	[NBR_OF_SUP_CRDS] [smallint] NULL,
	[NBR_OF_BALCON_TRNSFR] [smallint] NULL,
	[PRIC_SCNRIO_ID] [smallint] NULL,
	[PAYLITE_ACTL_EPP_ORGNL_LOAN_LC] [decimal](23, 5) NULL,
	[PRIM_CRD_NBR] [varchar](20) NULL,
	[PREV_CYC_DUE] [smallint] NULL,
	[PRCH_RATIO] [decimal](18, 7) NULL,
	[PREV_CRLM_LCYAMT] [decimal](23, 5) NULL,
	[RSRV_LCYAMT] [decimal](23, 5) NULL,
	[RSRV_USDAMT] [decimal](23, 5) NULL,
	[RTL_FEE_OFF_LCYAMT] [decimal](23, 5) NULL,
	[RVLR_ANR_LCYAMT] [decimal](23, 5) NULL,
	[STRTEGIC_PRTFL_ID1] [int] NULL,
	[RVLG_ACCT_IND] [char](1) NULL,
	[RVLG_EPP_ANR_LCYAMT] [decimal](23, 5) NULL,
	[REAGE_IND] [char](1) NULL,
	[RTL_INT_RTE] [decimal](18, 7) NULL,
	[STRTEGIC_PRTFL_ID] [int] NULL,
	[TOT_ANR_LCYAMT] [decimal](23, 5) NULL,
	[TOT_CSH_SALE_LCYAMT] [decimal](23, 5) NULL,
	[MTH_ON_CURR_CRLM] [smallint] NULL,
	[TOT_LCL_RTL_SALE_LCYAMT] [decimal](23, 5) NULL,
	[TOT_INTL_CSH_SALE_LCYAMT] [decimal](23, 5) NULL,
	[TOT_LCL_CSH_SALE_LCYAMT] [decimal](23, 5) NULL,
	[LST_MTH_PYMT_LCYAMT] [decimal](23, 5) NULL,
	[TXTR_RVLR_ACCT_IND] [char](1) NULL,
	[GRNDFTHR_IND] [char](1) NULL,
	[UPGRD_DGRD_IND] [char](1) NULL,
	[WRK_POS_TYP] [varchar](15) NULL,
	[VNTG_VAL] [varchar](15) NULL,
	[ZIP_CURR] [varchar](18) NULL,
	[LST_DELQ_DT] [date] NULL,
	[IENC_ACCR_RTL_BAL_LCYAMT] [decimal](23, 5) NULL,
	[HANDPH_IND] [char](1) NULL,
	[CRLM_PERM_INCR_LCYAMT] [decimal](23, 5) NULL,
	[CRLM_PERM_LCYAMT] [decimal](23, 5) NULL,
	[AVG_6_MTH_SALE_LCYAMT] [decimal](23, 5) NULL,
	[CRLM_RELN_LCYAMT] [decimal](23, 5) NULL,
	[CRLM_LST_TEMP_INCR_LCYAMT] [decimal](23, 5) NULL,
	[CURR_CRLM_DT] [date] NULL,
	[CRLM_TEMP_EFF_DT] [date] NULL,
	[AVG_6_MTH_CSH_LCYAMT] [decimal](23, 5) NULL,
	[CRLM_TEMP_EXPRY_DT] [date] NULL,
	[CRLM_TEMP_LCYAMT] [decimal](23, 5) NULL,
	[CRLM_TEMP_INCR_LCYAMT] [decimal](23, 5) NULL,
	[PAYLITE_REG_ANR_LCYAMT] [decimal](23, 5) NULL,
	[ANR_CMLTD_LCYAMT] [decimal](23, 5) NULL,
	[CURR_DUE_LCYAMT] [decimal](23, 5) NULL,
	[NO_OF_PAYLITE_TXN] [smallint] NULL,
	[ENR_CSH_LCYAMT] [decimal](23, 5) NULL,
	[AVG_6_MTH_RTL_LCYAMT] [decimal](23, 5) NULL,
	[MTH_ON_LST_CSH_ADVNC] [smallint] NULL,
	[MTH_ON_LST_RTL_PRCH] [smallint] NULL,
	[ENR_CR_LCYAMT] [decimal](23, 5) NULL,
	[ENR_CR_USDAMT] [decimal](23, 5) NULL,
	[ENR_DR_LCYAMT] [decimal](23, 5) NULL,
	[ENR_DR_USDAMT] [decimal](23, 5) NULL,
	[ENR_FOR_1_MTH_LCYAMT] [decimal](23, 5) NULL,
	[ENR_FOR_2_MTH_LCYAMT] [decimal](23, 5) NULL,
	[ENR_FOR_3_MTH_LCYAMT] [decimal](23, 5) NULL,
	[ENR_FOR_4_MTH_LCYAMT] [decimal](23, 5) NULL,
	[ENR_FOR_5_MTH_LCYAMT] [decimal](23, 5) NULL,
	[ENR_FOR_6_MTH_LCYAMT] [decimal](23, 5) NULL,
	[ENR_FOR_7_MTH_LCYAMT] [decimal](23, 5) NULL,
	[ENR_LCYAMT] [decimal](23, 5) NULL,
	[ENR_QC_LCYAMT] [decimal](23, 5) NULL,
	[ENR_RTL_LCYAMT] [decimal](23, 5) NULL,
	[ENR_RETRO_EPP_LCYAMT] [decimal](23, 5) NULL,
	[EPP_ANR_LCYAMT] [decimal](23, 5) NULL,
	[EPP_BAL_LCYAMT] [decimal](23, 5) NULL,
	[EPP_ENR_LCYAMT] [decimal](23, 5) NULL,
	[EPP_INSTLMT_LCYAMT] [decimal](23, 5) NULL,
	[EPP_INSTLMT_USDAMT] [decimal](23, 5) NULL,
	[EPP_OUTSTND_LCYAMT] [decimal](23, 5) NULL,
	[EPP_OUTSTND_USDAMT] [decimal](23, 5) NULL,
	[EPP_PAYLITE_CONV_ACTV_AMT] [decimal](23, 5) NULL,
	[EPP_PAYLITE_CONV_ACTV_TXN] [decimal](23, 5) NULL,
	[EPP_PAYLITE_REG_ACTV_AMT] [decimal](23, 5) NULL,
	[EPP_PAYLITE_REG_ACTV_TXN] [decimal](23, 5) NULL,
	[FLEXI_PYMT_UNBLD_LCYAMT] [decimal](23, 5) NULL,
	[NEW_EPP_LCYAMT] [decimal](23, 5) NULL,
	[NO_OF_PAYLITE_REG_TXN] [smallint] NULL,
	[NEW_LOP_LCYAMT] [decimal](23, 5) NULL,
	[NBR_OF_EPP_INSTLMT] [smallint] NULL,
	[NBR_OF_INTL_CSH_SALE] [smallint] NULL,
	[NBR_OF_INTL_RTL_SALE] [smallint] NULL,
	[NBR_OF_LCL_CSH_SALE] [smallint] NULL,
	[NBR_OF_LCL_RTL_SALE] [smallint] NULL,
	[NBR_OF_MTH_CRD_RTL_INACTV] [smallint] NULL,
	[NBR_OF_NEW_EPP] [smallint] NULL,
	[NBR_OF_NEW_LOP] [smallint] NULL,
	[NBR_OF_PAYLITE_CONV_TXN] [smallint] NULL,
	[NBR_OF_PYMTS] [smallint] NULL,
	[NBR_OF_QC_INSTLMT] [smallint] NULL,
	[NBR_OF_RETRO_EPP_INSTLMT] [smallint] NULL,
	[EPP_UNBLD_LCYAMT] [decimal](23, 5) NULL,
	[PAYLITE_ANR_LCYAMT] [decimal](23, 5) NULL,
	[PAYLITE_CONV_ANR_LCYAMT] [decimal](23, 5) NULL,
	[PAYLITE_CONV_ENR_LCYAMT] [decimal](23, 5) NULL,
	[PAYLITE_CONV_EPP_LCYAMT] [decimal](23, 5) NULL,
	[PAYLITE_ENR_LCYAMT] [decimal](23, 5) NULL,
	[PAYLITE_LCYAMT] [decimal](23, 5) NULL,
	[PAYLITE_REG_ENR_LCYAMT] [decimal](23, 5) NULL,
	[PAYLITE_REG_LCYAMT] [decimal](23, 5) NULL,
	[PYMT_RATIO_CURR_MTH] [decimal](18, 7) NULL,
	[PYMT_LST_3_MTH_LCYAMT] [decimal](23, 5) NULL,
	[PYMT_RATIO_FOR_1_MTH] [decimal](18, 7) NULL,
	[PYMT_RATIO_FOR_3_MTH] [decimal](18, 7) NULL,
	[PYMT_RATIO_FOR_6_MTH] [decimal](18, 7) NULL,
	[QC_INSTLMT_LCYAMT] [decimal](23, 5) NULL,
	[RETRO_EPP_INSTLMT_LCYAMT] [decimal](23, 5) NULL,
	[RVLR_ACCT_PAST1_MTH_IND] [char](1) NULL,
	[RVLR_ACCT_PAST12_MTH_IND] [char](1) NULL,
	[RVLR_ACCT_PAST6_MTH_IND] [char](1) NULL,
	[STAT_DPD_AT] [smallint] NULL,
	[TOT_BAL_LCYAMT] [decimal](23, 5) NULL,
	[TOT_BAL_PREV_LCYAMT] [decimal](23, 5) NULL,
	[TOT_INTL_RTL_SALE_LCYAMT] [decimal](23, 5) NULL,
	[TOT_PYMT_LCYAMT] [decimal](23, 5) NULL,
	[TOT_RTL_VOL_LCYAMT] [decimal](23, 5) NULL,
	[TOT_SALE_LCYAMT] [decimal](23, 5) NULL,
	[UNBLD_ALOP_LCYAMT] [decimal](23, 5) NULL,
	[UTIL_LCYAMT] [decimal](23, 5) NULL,
	[CRLM_LST_TEMP_DECR_DT] [date] NULL,
	[CRLM_LST_TEMP_INCR_DT] [date] NULL,
	[CRLM_PERM_INCR_IND] [char](1) NULL,
	[CRLM_TEMP_INCR_IND] [char](1) NULL,
	[RVLG_ANR_CSH_LCYAMT] [decimal](23, 5) NULL,
	[RVLG_ANR_LCYAMT] [decimal](23, 5) NULL,
	[ANR_1_MTH_AGO_LCYAMT] [decimal](23, 5) NULL,
	[ANR_2_MTH_AGO_LCYAMT] [decimal](23, 5) NULL,
	[ANR_3_MTH_AGO_LCYAMT] [decimal](23, 5) NULL,
	[BNK_OR_CUST_INIT_LN_MGMT_IND] [char](1) NULL,
	[LST_LN_INCR_DT] [date] NULL,
	[LST_LN_INCR_MOB_NBR] [smallint] NULL,
	[LST_CRD_UPGRD_MOB_NBR] [smallint] NULL,
	[LST_CROSS_SELL_MOB_NBR] [smallint] NULL,
	[ALOP_CR_LCYAMT] [decimal](23, 5) NULL,
	[APPL_NBR] [varchar](20) NULL,
	[CLNT_YRLY_SAL_LCYAMT] [decimal](23, 5) NULL,
	[CYC_DUE] [smallint] NULL,
	[PRICE_UP_DOWN_IND] [char](1) NULL,
	[FLEXI_PYMT_LCYAMT] [decimal](23, 5) NULL,
	[RVLG_ANR_RTL_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_IND] [varchar](50) NULL,
	[DELQ_CURR] [varchar](24) NULL,
	[NXT_PYMT_DUE_DT] [date] NULL,
	[RELN_BLK_CDE] [char](1) NULL,
	[AVLBL_CRLM_RELN_LCYAMT] [decimal](30, 2) NULL,
	[SOC_30_PLUS_PYMT_DUE_LCYAMT] [decimal](30, 2) NULL,
	[BAL_PYMT_HSTRY_STR] [char](24) NULL,
	[ACCT_PRIM_BLK_CDE] [varchar](15) NULL,
	[ACCT_INTRNL_STAT_CDE] [varchar](15) NULL,
	[RELN_WORST_RSK_CDE] [char](1) NULL,
	[IS_BKT_CDE] [char](1) NULL,
	[WAS_BKT_CDE] [char](1) NULL,
	[CRLM_DECR_IND] [char](1) NULL,
	[CSH_UTIL_PCT] [decimal](18, 7) NULL,
	[OVRLMT_LCYAMT] [decimal](30, 5) NULL,
	[LST_PYMT_LCYAMT] [decimal](23, 5) NULL,
	[CHRG_OFF_LCYAMT] [decimal](23, 5) NULL,
	[CHRG_OFF_DT] [date] NULL,
	[CHRG_OFF_RSN_1_CDE] [varchar](15) NULL,
	[CHRG_OFF_RSN_2_CDE] [varchar](15) NULL,
	[CSH_CHRG_OFF_LCYAMT] [decimal](23, 5) NULL,
	[EPP_CSH_OUTSTND_LCYAMT] [decimal](23, 5) NULL,
	[TXTR_RVLR_HSTRY_STR] [char](12) NULL,
	[CRLM_DT] [date] NULL,
	[ACH_FIXED_LCYAMT] [decimal](23, 5) NULL,
	[FIXED_PYMT_AMT_PCT] [decimal](18, 7) NULL,
	[WAIVE_YRLY_FEE_IND] [char](1) NULL,
	[WAIVE_INT_IND] [char](1) NULL,
	[WAIVE_LATE_CHRG_IND] [char](1) NULL,
	[WAIVE_OVRLMT_IND] [char](1) NULL,
	[WAIVE_SERV_CHRG_IND] [char](1) NULL,
	[BURO_CR_SCR_VAL] [varchar](15) NULL,
	[CRD_FEE_DT] [date] NULL,
	[WAIVE_FEE_CHRG_IND] [char](1) NULL,
	[PYMT_PAST_DUE_LCYAMT] [decimal](23, 5) NULL,
	[PYMT_30_DPD_LCYAMT] [decimal](23, 5) NULL,
	[PYMT_60_DPD_LCYAMT] [decimal](23, 5) NULL,
	[PYMT_90_DPD_LCYAMT] [decimal](23, 5) NULL,
	[PYMT_120_DPD_LCYAMT] [decimal](23, 5) NULL,
	[PYMT_150_DPD_LCYAMT] [decimal](23, 5) NULL,
	[PYMT_180_DPD_LCYAMT] [decimal](23, 5) NULL,
	[PYMT_210_DPD_LCYAMT] [decimal](23, 5) NULL,
	[PYMT_REAGED_BY_TXT] [varchar](50) NULL,
	[REAGE_CURE_LCYAMT] [decimal](23, 5) NULL,
	[PREV_TOT_MIN_DUE_LCYAMT] [decimal](23, 5) NULL,
	[ITO_EXPR_DT] [date] NULL,
	[BLK_CRLM_PCT_LCYAMT] [decimal](23, 5) NULL,
	[TXTR_RVLR_HSTRY_TXT] [varchar](100) NULL,
	[ACTV_CRDS_CNT] [smallint] NULL,
	[CRLM_EXPRY_DT] [date] NULL,
	[YTD_CSH_CNT] [smallint] NULL,
	[YTD_CSH_LCYAMT] [decimal](23, 5) NULL,
	[MTH_PAST_DUE_CNT] [smallint] NULL,
	[FRGN_BAL_LCYAMT] [decimal](23, 5) NULL,
	[PRE_CLSE_INVLNTRY_IND] [char](1) NULL,
	[PRE_CLSE_VLNTRY_IND] [char](1) NULL,
	[RTL_BAL_LCYAMT] [decimal](23, 5) NULL,
	[ACTV_ALOP_ORGNL_LOAN_LCYAMT] [decimal](23, 5) NULL,
	[BAL_BALCON_PRIN_LCYAMT] [decimal](23, 5) NULL,
	[BAL_EPP_PRIN_LCYAMT] [decimal](23, 5) NULL,
	[BT_SALE_LCYAMT] [decimal](23, 5) NULL,
	[ENR_BALCON_LCYAMT] [decimal](23, 5) NULL,
	[EPP_LOP_ACTV_AMT] [decimal](23, 5) NULL,
	[LOP_CRLM_LCYAMT] [decimal](23, 5) NULL,
	[LOP_ENR_LCYAMT] [decimal](23, 5) NULL,
	[LOP_TXN_LCYAMT] [decimal](23, 5) NULL,
	[NBR_OF_ALOP_TXN] [smallint] NULL,
	[NBR_OF_ALOP_ORGNL_LOAN] [smallint] NULL,
	[NBR_OF_BT_CLSE] [smallint] NULL,
	[NBR_OF_NEW_BT_BOOKINGS] [smallint] NULL,
	[ALOP_TXN_LCYAMT] [decimal](23, 5) NULL,
	[ANR_ALOP_LCYAMT] [decimal](23, 5) NULL,
	[ENR_ALOP_LCYAMT] [decimal](23, 5) NULL,
	[LOP_ANR_LCYAMT] [decimal](23, 5) NULL,
	[LOP_BAL_LCYAMT] [decimal](23, 5) NULL,
	[NBR_OF_LOP_TXN] [smallint] NULL,
	[RVLG_ALOP_ANR_LCYAMT] [decimal](23, 5) NULL,
	[DDA_PYMT_OPT_IND] [char](1) NULL,
	[LST_PYMT_DUE_DT] [date] NULL,
	[BAL_TYP_CDE] [varchar](20) NULL,
	[OVER_PYMT_LCYAMT] [decimal](23, 5) NULL,
	[PREV_RELN_CR_LN_LCYAMT] [decimal](23, 5) NULL,
	[PREV_BAL_TYP_CDE] [varchar](20) NULL,
	[SEMESTER_TXT] [varchar](20) NULL,
	[QUATER_CTGRY_TXT] [varchar](20) NULL,
	[IS_WAS_CTGRY_TXT] [varchar](20) NULL,
	[BLNG_ACTV_CDE] [varchar](20) NULL,
	[ACCT_30_PLUS_PAST_DUE_IND] [char](1) NULL,
	[ACCT_60_PLUS_PAST_DUE_IND] [char](1) NULL,
	[ACCT_90_PLUS_PAST_DUE_IND] [char](1) NULL,
	[ACCT_30_PLUS_PAST_DUE_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_60_PLUS_PAST_DUE_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_90_PLUS_PAST_DUE_LCYAMT] [decimal](23, 5) NULL,
	[CIR_ACCT_IND] [char](1) NULL,
	[CIR_CR_LNS_LCYAMT] [decimal](23, 5) NULL,
	[CIR_PRCH_LCYAMT] [decimal](23, 5) NULL,
	[CIR_CSH_ADVNCS_LCYAMT] [decimal](23, 5) NULL,
	[CIR_SALE_TXN_CNT] [smallint] NULL,
	[CIR_PRCH_TXN_CNT] [smallint] NULL,
	[CIR_CSH_ADVNCS_TXN_CNT] [smallint] NULL,
	[CIR_PYMTS_LCYAMT] [decimal](23, 5) NULL,
	[CIR_INACTV_ACCT_CNT] [smallint] NULL,
	[OPEN_RELN_CR_LNS_LCYAMT] [decimal](23, 5) NULL,
	[CIR_RELN_UNUSED_LNS_LCYAMT] [decimal](23, 5) NULL,
	[GOOD_BALS_LCYAMT] [decimal](23, 5) NULL,
	[GOOD_ACCT_CNT] [smallint] NULL,
	[GOOD_RELN_CR_LN_LCYAMT] [decimal](23, 5) NULL,
	[BAD_BALS_LCYAMT] [decimal](23, 5) NULL,
	[BAD_ACCT_CNT] [smallint] NULL,
	[BAD_RELN_CR_LNS_LCYAMT] [decimal](23, 5) NULL,
	[FRST_PYMT_DFLT_BKT_1_LCYAMT] [decimal](23, 5) NULL,
	[INFORMATION_DT] [date] NULL,
	[ACCT_MOB_3_COIN_30_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_3_COIN_60_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_6_COIN_60_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_6_COIN_90_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_6_COIN_120_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_9_COIN_60_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_9_COIN_90_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_9_COIN_120_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_12_COIN_60_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_12_COIN_90_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_12_COIN_120_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_15_COIN_60_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_15_COIN_90_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_15_COIN_120_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_18_COIN_60_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_18_COIN_90_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_18_COIN_120_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_21_COIN_60_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_21_COIN_90_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_21_COIN_120_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_24_COIN_60_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_24_COIN_90_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_24_COIN_120_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_9_WRT_OFF_CNT] [smallint] NULL,
	[ACCT_MOB_12_WRT_OFF_CNT] [smallint] NULL,
	[ACCT_MOB_15_WRT_OFF_CNT] [smallint] NULL,
	[ACCT_MOB_18_WRT_OFF_CNT] [smallint] NULL,
	[ACCT_MOB_21_WRT_OFF_CNT] [smallint] NULL,
	[ACCT_MOB_24_WRT_OFF_CNT] [smallint] NULL,
	[OVRLMT_IND] [char](1) NULL,
	[RNSTMT_IND] [char](1) NULL,
	[RWRT_IND] [char](1) NULL,
	[ACCT_EPP_IND] [char](1) NULL,
	[BLNG_TYP_CDE] [varchar](20) NULL,
	[LST_RELN_CR_LN_LCYAMT] [decimal](23, 5) NULL,
	[OVER_30_CR_LN_LCYAMT] [decimal](23, 5) NULL,
	[OVER_60_CR_LN_LCYAMT] [decimal](23, 5) NULL,
	[OVER_90_CR_LN_LCYAMT] [decimal](23, 5) NULL,
	[PREV_CIR_ACCT_CNT] [smallint] NULL,
	[ACCT_MOB_3_EVR_30_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_3_EVR_60_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_6_EVR_30_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_6_EVR_60_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_6_EVR_90_PLUS_CNT] [smallint] NULL,
	[EVR_30_PLUS_ACCT_CNT] [smallint] NULL,
	[EVR_60_PLUS_ACCT_CNT] [smallint] NULL,
	[EVR_90_PLUS_ACCT_CNT] [smallint] NULL,
	[EVR_30_PLUS_ACCT_LCYAMT] [decimal](23, 5) NULL,
	[EVR_60_PLUS_ACCT_LCYAMT] [decimal](23, 5) NULL,
	[EVR_90_PLUS_ACCT_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_3_EVR_30_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_3_EVR_60_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_6_EVR_30_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_6_EVR_60_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_6_EVR_90_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_9_EVR_30_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_9_EVR_60_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_9_EVR_90_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_12_EVR_30_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_12_EVR_60_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_12_EVR_90_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_15_EVR_30_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_15_EVR_60_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_15_EVR_90_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_18_EVR_30_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_18_EVR_60_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_18_EVR_90_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_21_EVR_30_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_21_EVR_60_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_21_EVR_90_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_24_EVR_30_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_24_EVR_60_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_24_EVR_90_PLUS_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_3_COIN_60_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_3_COIN_90_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_6_COIN_60_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_6_COIN_90_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_6_COIN_120_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_9_COIN_60_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_9_COIN_90_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_9_COIN_120_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_12_COIN_60_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_12_COIN_90_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_12_COIN_120_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_15_COIN_60_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_15_COIN_90_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_15_COIN_120_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_18_COIN_60_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_18_COIN_90_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_18_COIN_120_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_21_COIN_60_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_21_COIN_90_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_21_COIN_120_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_24_COIN_60_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_24_COIN_90_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_24_COIN_120_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_9_WRT_OFF_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_12_WRT_OFF_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_15_WRT_OFF_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_18_WRT_OFF_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_21_WRT_OFF_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_24_WRT_OFF_LCYAMT] [decimal](23, 5) NULL,
	[PREV_BAL_LCYAMT] [decimal](23, 5) NULL,
	[PREV_ACCT_STAT_CDE] [varchar](20) NULL,
	[PREV_WRT_OFF_CDE] [varchar](20) NULL,
	[WRT_OFF_CDE] [varchar](20) NULL,
	[PREV_ENR_LCYAMT] [decimal](23, 5) NULL,
	[ACCT_MOB_9_EVR_30_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_9_EVR_60_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_9_EVR_90_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_12_EVR_30_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_12_EVR_60_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_12_EVR_90_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_15_EVR_30_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_15_EVR_60_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_15_EVR_90_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_18_EVR_30_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_18_EVR_60_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_18_EVR_90_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_21_EVR_30_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_21_EVR_60_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_21_EVR_90_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_24_EVR_30_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_24_EVR_60_PLUS_CNT] [smallint] NULL,
	[ACCT_MOB_24_EVR_90_PLUS_CNT] [smallint] NULL,
	[CURR_BAL_LCYAMT] [decimal](23, 5) NULL,
	[NBR_OF_MTH_CRD_INACTV] [smallint] NULL,
	[ALOP_BAL_LCYAMT] [decimal](23, 5) NULL,
	[BAL_LCYAMT] [decimal](23, 5) NULL,
	[COHORT_BND_MOB_CNT] [smallint] NULL,
	[CIR_WRT_OFF_LCYAMT] [decimal](23, 5) NULL,
	[CUM_WRT_OFF_ACCT_CNT] [smallint] NULL,
	[CUM_WRT_OFF_LCYAMT] [decimal](23, 5) NULL,
	[CIR_WRT_OFF_CR_LN_LCYAMT] [decimal](23, 5) NULL,
	[CUM_WRT_OFF_CR_LN_LCYAMT] [decimal](23, 5) NULL,
	[STRAIGHT_RLE_WRT_OFF_ACCT_CNT] [smallint] NULL,
	[STRAIGHT_RLE_WRT_OFF_LCYAMT] [decimal](23, 5) NULL,
	[WRT_OFF_DFSP_LCYAMT] [decimal](23, 5) NULL,
	[BAL_STAT_CDE] [varchar](20) NULL,
	[CURR_BAL_LCYAMT_1] [decimal](23, 5) NULL,
	[RELN_CRLM_LCYAMT] [decimal](23, 5) NULL,
	[PREV_CYC_DUE_LCYAMT] [decimal](23, 5) NULL,
	[SALE_ACTV_IND] [char](1) NULL,
	[CIR_ENR_LCYAMT] [decimal](23, 5) NULL,
	[CIR_ANR_LCYAMT] [decimal](23, 5) NULL,
	[CIR_SALE_LCYAMT] [decimal](23, 5) NULL,
	[WRT_OFF_MIS_CDE] [char](2) NULL,
	[OPEN_ACCT_CNT] [smallint] NULL,
	[VLNTRY_ATRZN_CNT] [smallint] NULL,
	[INVLNTRY_ATRZN_CNT] [smallint] NULL,
	[FRST_PYMT_DFLT_BKT_1_ACCT_CNT] [decimal](23, 5) NULL,
	[CURR_CYC_DUE_LCYAMT] [decimal](23, 5) NULL,
	[NET_RCVRY_LCYAMT] [decimal](23, 5) NULL,
	[SAVE_CR_BAL_LCYAMT] [decimal](23, 5) NULL,
	[EPP_OUTSTND_INT_LCYAMT] [decimal](23, 5) NULL,
	[TXTR_RVLR_HSTRY_NBR] [char](1) NULL,
	[BIZ_ORG_CDE] [char](3) NULL,
	[CNTRY_CDE] [char](3) NULL,
	[LOAD_DT_TIME] [time](6) NULL,
	[SRC_SYS_ID] [varchar](15) NULL,
	[CIR_WRT_OFF_CNT] [smallint] NULL,
	[PYMT_DUE_DT] [date] NULL,
	[PURCH_DISCOUNT_AMOUNT] [decimal](7, 4) NULL,
	[CASH_DISCOUNT_AMOUNT] [decimal](7, 4) NULL,
	[OPE_ACT] [char](1) NULL,
	[TOT_ACT] [char](1) NULL,
	[RWRT_ACCT_CANCEL_DT] [date] NULL,
	[NEW_RWRT_ACCT_INIT_DT] [date] NULL,
	[GLBL_LIQDTN_CDE] [char](5) NULL,
	[TOT_PRIN_LCYAMT] [decimal](23, 5) NULL,
	[COLL_OTH_PRGM_STAT_CDE] [char](5) NULL,
	[UPP_PAYDOWN_CDE] [char](3) NULL,
	[PREV_CASH_CRLIM] [decimal](13, 2) NULL,
	[DATE_CASH_CRLIM_CHG] [date] NULL,
	[PYMT_TOT_DUE_LCYAMT] [decimal](11, 2) NULL,
 CONSTRAINT [PK_INT_CRD_PORTFOLIO_SNAPSHOT_M_F] PRIMARY KEY CLUSTERED 
(
	[MIS_DT] ASC,
	[ACCT_ORG_CDE] ASC,
	[CRD_ACCT_NBR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/*Crear Tabla 6 de 10*/


USE [Q_MX_CB_EDW_V73_T1]
GO

/****** Object:  Table [dbo].[INT_CRD_TXN_D_F]    Script Date: 24/03/2021 07:12:18 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[INT_CRD_TXN_D_F](
	[REF_NBR] [varchar](23) NOT NULL,
	[MIS_DT] [date] NOT NULL,
	[TXN_CRD_NBR] [varchar](20) NULL,
	[CRD_TYP] [char](3) NULL,
	[MERCH_NBR] [varchar](10) NULL,
	[MERCH_ORG] [char](3) NULL,
	[MERCH_TYP] [varchar](20) NULL,
	[POSS_ENTRY_MODE] [varchar](20) NULL,
	[TXN_CCY] [char](3) NULL,
	[TXN_TYP] [varchar](20) NOT NULL,
	[POSTING_DT] [date] NULL,
	[TXN_DT] [date] NOT NULL,
	[PRIM_CRD_IND] [char](1) NULL,
	[TXN_LCY] [decimal](30, 5) NULL,
	[TXN_AMT_IN_ORIG_CCY] [decimal](30, 5) NULL,
	[TXN_CNTRY_CDE] [varchar](10) NULL,
	[AUTH_CDE] [varchar](10) NOT NULL,
	[TXN_CDE] [varchar](10) NULL,
	[TXN_SUB_CDE] [varchar](10) NULL,
	[RTL_CSH_IND] [char](5) NULL,
	[PYMT_IND] [char](1) NULL,
	[CRD_ACCT_NBR] [varchar](20) NOT NULL,
	[LOAD_DT_TIME] [time](6) NULL,
	[CNTRY_CDE] [varchar](20) NULL,
	[SRC_SYS_ID] [varchar](20) NULL,
	[BIZ_ORG_CDE] [char](5) NULL,
	[ACCT_ORG_CDE] [char](3) NOT NULL,
	[TXN_INTERCH_FEE] [decimal](9, 2) NULL,
	[MERCH_DESC] [varchar](40) NULL,
	[CUST_NBR] [varchar](16) NULL,
	[TXN_GRP] [varchar](30) NULL,
	[TXN_MERCH_NAME] [varchar](10) NULL,
	[TXN_CTY_CDE] [varchar](10) NULL,
	[LGC_MOD_NBR] [smallint] NULL,
	[PLAN_NBR] [int] NULL,
	[EMV_IND] [char](1) NULL,
	[PRCH_ORD_NBR] [varchar](50) NULL,
	[PLAN_SEQ_NBR] [smallint] NULL,
	[TXN_TIME] [varchar](8) NULL,
	[BR_NBR] [varchar](15) NULL,
	[CASHIER_NBR] [varchar](15) NULL,
	[WALLET_TXN_TOKEN_IND_CDE] [char](5) NULL,
	[PRTL_DPAN_ACCT_NBR] [char](5) NULL,
 CONSTRAINT [PK_INT_CRD_TXN_D_F] PRIMARY KEY CLUSTERED 
(
	[REF_NBR] ASC,
	[MIS_DT] ASC,
	[TXN_TYP] ASC,
	[TXN_DT] ASC,
	[AUTH_CDE] ASC,
	[CRD_ACCT_NBR] ASC,
	[ACCT_ORG_CDE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/*Crear Tabla 7 de 10*/

USE [Q_MX_CB_EDW_V73_T1]
GO

/****** Object:  Table [dbo].[INT_CRD_PLAN_SNAPSHOT_M]    Script Date: 24/03/2021 07:40:20 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[INT_CRD_PLAN_SNAPSHOT_M](
	[ACCR_INT_LCYAMT] [decimal](30, 2) NULL,
	[ACCT_ORG_CDE] [varchar](3) NOT NULL,
	[CRD_ACCT_NBR] [varchar](3) NOT NULL,
	[CURR_BAL_LCYAMT] [decimal](22, 3) NULL,
	[INS_FEE_BNP_LCYAMT] [varchar](10) NULL,
	[INT_BNP_LCYAMT] [decimal](22, 3) NULL,
	[LATE_CHRG_BNP_LCYAMT] [decimal](30, 2) NULL,
	[MBRZP_FEE_BNP_LCYAMT] [decimal](30, 2) NULL,
	[MIS_DT] [date] NOT NULL,
	[NSF_FEE_BNP_LCYAMT] [decimal](30, 2) NULL,
	[OVRLMT_FEE_BNP_LCYAMT] [decimal](30, 2) NULL,
	[PLAN_NBR] [varchar](15) NULL,
	[PRIN_BAL_LCYAMT] [decimal](30, 2) NULL,
	[SERV_CHRG_BNP_LCYAMT] [decimal](30, 2) NULL,
	[TAX_BNP_LCYAMT] [decimal](30, 2) NULL,
 CONSTRAINT [PK_INT_CRD_PLAN_SNAPSHOT_M] PRIMARY KEY CLUSTERED 
(
	[ACCT_ORG_CDE] ASC,
	[CRD_ACCT_NBR] ASC,
	[MIS_DT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/*Crear Tabla 8 de 10*/

USE [Q_MX_CB_EDW_V73_T1]
GO

/****** Object:  Table [dbo].[INT_CRD_PLASTIC_MASTER]    Script Date: 24/03/2021 07:43:15 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[INT_CRD_PLASTIC_MASTER](
	[ACCT_ORG_CDE] [varchar](3) NOT NULL,
	[CRD_ACCT_NBR] [varchar](20) NOT NULL,
	[CRD_NBR] [varchar](20) NULL,
	[CRD_OPEN_DT] [date] NULL,
	[PRIM_CRD_IND] [varchar](1) NULL,
 CONSTRAINT [PK_INT_CRD_PLASTIC_MASTER] PRIMARY KEY CLUSTERED 
(
	[ACCT_ORG_CDE] ASC,
	[CRD_ACCT_NBR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/*Crear Tabla 9 de 10*/

USE [Q_MX_CB_EDW_V73_T1]
GO

/****** Object:  Table [dbo].[INT_CRD_EPP_SNAPSHOT_D]    Script Date: 24/03/2021 07:50:29 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[INT_CRD_EPP_SNAPSHOT_D](
	[ACCT_ORG_CDE] [varchar](3) NOT NULL,
	[AGGR_BAL_LCY] [decimal](22, 3) NULL,
	[CLNT_NBR] [varchar](16) NULL,
	[CRD_ACCT_NBR] [varchar](20) NOT NULL,
	[EPP_ORIG_LOAN_AMT] [decimal](22, 3) NULL,
	[LOAN_OPEN_DT] [date] NULL,
	[LOAN_OUTSTND_BAL_LCY] [decimal](22, 3) NULL,
	[LOAN_REF_NBR] [decimal](22, 3) NULL,
	[LOAN_STAT] [varchar](1) NULL,
	[MIS_DT] [date] NULL,
	[PREV_LOAN_OUTST_BAL_LCY] [decimal](22, 3) NULL,
	[PROMO_ID] [varchar](20) NULL,
	[TXN_CRD_NBR] [varchar](20) NULL,
 CONSTRAINT [PK_INT_CRD_EPP_SNAPSHOT_D] PRIMARY KEY CLUSTERED 
(
	[ACCT_ORG_CDE] ASC,
	[CRD_ACCT_NBR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



/*Crear Tabla 10 de 10*/

USE [Q_MX_CB_EDW_V73_T1]
GO

/****** Object:  Table [dbo].[INT_CRD_PLASTIC_SNAPSHOT_M]    Script Date: 24/03/2021 07:55:54 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[INT_CRD_PLASTIC_SNAPSHOT_M](
	[CRD_BLK_CDE] [varchar](1) NULL,
	[CRD_NBR] [varchar](20) NOT NULL,
	[MIS_DT] [date] NULL,
 CONSTRAINT [PK_INT_CRD_PLASTIC_SNAPSHOT_M] PRIMARY KEY CLUSTERED 
(
	[CRD_NBR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO




/*************************************************************************************************** 
CARGAS MANUALES
 ***************************************************************************************************/



 /*Crear Tabla 1 de 22 */

 USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[ANNUALFEE_TOBE]    Script Date: 24/03/2021 08:14:26 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ANNUALFEE_TOBE](
	[AFFINITYFEE] [decimal](22, 3) NULL,
	[ANNUALFEE] [decimal](22, 3) NULL,
	[CASHBACK] [decimal](22, 3) NULL,
	[FASB] [decimal](22, 3) NULL,
	[INFORMATIONDATE] [date] NOT NULL,
	[LIBRA] [decimal](22, 3) NULL,
	[PREMIA] [decimal](22, 3) NULL,
	[PRODUCTO] [varchar](20) NULL,
	[REWARDS] [decimal](22, 3) NULL,
	[TASADESCTO] [decimal](22, 3) NULL,)/*
 CONSTRAINT [PK_ANNUALFEE_TOBE] PRIMARY KEY CLUSTERED 
(
	[INFORMATIONDATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]*/
GO


 /*Crear Tabla 2  de 22*/


USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[AUTORIZADAS_TDC]    Script Date: 24/03/2021 08:20:32 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AUTORIZADAS_TDC](
	[ANIO] [int] NULL,
	[CREDITO] [int] NULL,
	[CUENTA] [char](20) NOT NULL,
	[LIN_INI] [int] NULL,
	[MES] [int] NULL,
	[SUBCANAL_NOMBRE] [char](30) NULL,)/*
 CONSTRAINT [PK_AUTORIZADAS_TDC] PRIMARY KEY CLUSTERED 
(
	[CUENTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]*/
GO



 /*Crear Tabla 3 de 22 */

 USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[BALANCE_TOBE]    Script Date: 24/03/2021 08:22:51 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BALANCE_TOBE](
	[ANR_Current] [decimal](18, 2) NULL,
	[ANR_Past_Due] [decimal](18, 2) NULL,
	[CRD_ACCT_NBR] [varchar](20) NOT NULL,
	[ENR_Current] [decimal](18, 2) NULL,
	[ENR_Past_Due] [decimal](18, 2) NULL,
	[INFORMATIONDATE] [date] NOT NULL,)/*
 CONSTRAINT [PK_BALANCE_TOBE] PRIMARY KEY CLUSTERED 
(
	[CRD_ACCT_NBR] ASC,
	[INFORMATIONDATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]*/
GO


 /*Crear Tabla 4 de 22 */

 USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[balcon_amortization]    Script Date: 24/03/2021 08:24:41 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[balcon_amortization](
	[BALCON_AMORTIZATION] [int] NULL,
	[crd_acct_nbr] [char](16) NOT NULL,)/*
 CONSTRAINT [PK_balcon_amortization] PRIMARY KEY CLUSTERED 
(
	[crd_acct_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]*/
GO



 /*Crear Tabla 5 de 22 */

 USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[cat_bines]    Script Date: 24/03/2021 08:27:29 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[cat_bines](
	[BIN] [int] NULL,
	[FAMILIA] [varchar](20) NULL,
	[Logo] [int] NULL,
	[PRODUCTO] [varchar](20) NULL
) ON [PRIMARY]
GO


 /*Crear Tabla 6 de 22 */

 USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[cat_productos_pnl]    Script Date: 24/03/2021 08:29:23 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[cat_productos_pnl](
	[Familia] [varchar](20) NULL,
	[Logo] [int] NULL,
	[Producto] [varchar](20) NULL
) ON [PRIMARY]
GO



 /*Crear Tabla 7 de 22 */


 USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[cb_bb01_bb02]    Script Date: 24/03/2021 08:30:44 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[cb_bb01_bb02](
	[CB_BB01_BB02] [int] NULL,
	[CRD_ACCT_NBR] [char](16) NULL
) ON [PRIMARY]
GO


 /*Crear Tabla 8 de 22 */

 USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[cb_pull_bb04]    Script Date: 24/03/2021 08:32:21 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[cb_pull_bb04](
	[CB_PULL_BB04] [int] NULL,
	[CRD_ACCT_NBR] [char](16) NULL
) ON [PRIMARY]
GO

 /*Crear Tabla 9 de 22 */


 USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[crp_cards]    Script Date: 24/03/2021 08:34:47 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[crp_cards](
	[aiBalance] [int] NULL,
	[aiBalType] [char](2) NULL,
	[aiBin] [int] NULL,
	[aiBinxc] [int] NULL,
	[aiBinxt] [int] NULL,
	[aiCashAdvancesAmts] [int] NULL,
	[aiCashAdvancesTxns] [int] NULL,
	[aiCLIAccts] [int] NULL,
	[aiCLIAmts] [int] NULL,
	[aiCLUBnd] [int] NULL,
	[aiCreditlines] [int] NULL,
	[aiDelBnd] [int] NULL,
	[aiDelBndCycle] [int] NULL,
	[aiDelBndWorst] [int] NULL,
	[aiENRBal] [int] NULL,
	[aiEver30Accts] [int] NULL,
	[aiEver30Amts] [int] NULL,
	[aiEver60Accts] [int] NULL,
	[aiEver60Amts] [int] NULL,
	[aiEver90Accts] [int] NULL,
	[aiEver90Amts] [int] NULL,
	[aiFeeOnlyAccts] [int] NULL,
	[aiFeeOnlyAmts] [int] NULL,
	[aiFPDAccts] [int] NULL,
	[aiFPDAmts] [int] NULL,
	[aiInactiveAccts] [int] NULL,
	[aiIntereses_DB] [int] NULL,
	[aiInts_cob_x_ant] [int] NULL,
	[aiInts_Revolving] [int] NULL,
	[aiInvoluntaryAttrition] [int] NULL,
	[aiIva_DB] [int] NULL,
	[aiLiabilitesFix] [int] NULL,
	[aiLiabilities] [int] NULL,
	[aiMax_Del_Hist] [int] NULL,
	[aiMisDate] [char](6) NULL,
	[aiMOBBnd] [int] NULL,
	[aiNewAccts] [int] NULL,
	[aiINTAccts] [int] NULL,
	[aiOpenAccts] [int] NULL,
	[aiOpenLines] [int] NULL,
	[aiOver30Accts] [int] NULL,
	[aiOver30Amts] [int] NULL,
	[aiOver30Date] [char](6) NULL,
	[aiOver30Lines] [int] NULL,
	[aiOver60Accts] [int] NULL,
	[aiOver60Amts] [int] NULL,
	[aiOver60Lines] [int] NULL,
	[aiOver90Accts] [int] NULL,
	[aiOver90Amts] [int] NULL,
	[aiOver90Lines] [int] NULL,
	[aiPaymentsAccts] [int] NULL,
	[aiPaymentsAmts] [int] NULL,
	[aiPPP] [int] NULL,
	[aiPurchasesAmts] [int] NULL,
	[aiPurchasesTxns] [int] NULL,
	[aiSalesAmts] [int] NULL,
	[aiSalesTxns] [int] NULL,
	[aiUnadvisedUnusedLines] [int] NULL,
	[aiUnusedLines] [int] NULL,
	[aiUnusedLinesEB] [int] NULL,
	[aiVintage] [char](6) NULL,
	[aiVoluntaryAttrition] [int] NULL,
	[basBaselIDALOP] [char](7) NULL,
	[catBaselID] [int] NULL,
	[CRD_ACCT_NBR] [char](20) NOT NULL,
	[crpTableFlag] [char](4) NULL,
	[crpVersion] [int] NULL,
	[dtkCnt_Pagos] [int] NULL,
	[dtkCnt_pagosvencidos] [int] NULL,
	[dtkCve_situacioncta] [int] NULL,
	[dtkDia_Cortecta] [int] NULL,
	[dtkFec_autlineacrd] [char](6) NULL,
	[dtkFec_Bancomalo] [char](6) NULL,
	[dtkFec_castigocta] [char](6) NULL,
	[dtkFec_Ultcargo] [int] NULL,
	[dtkFec_ultpagocredito] [char](8) NULL,
	[dtkImp_bancomalo] [int] NULL,
	[dtkImp_limitecredito] [int] NULL,
	[dtkImp_lineacredito] [int] NULL,
	[dtkImp_pagos] [int] NULL,
	[dtkInd_Prealta] [int] NULL,
	[dtkInd_sitcontable] [int] NULL,
	[dtkMca_Bancomalo] [char](2) NULL,
	[dtkINT_Sucpromotora] [int] NULL,
	[dtkSdo_capital] [int] NULL,
	[dtkSdo_comisionescta] [int] NULL,
	[dtkSdo_Ctacorte] [int] NULL,
	[dtkSdo_cuenta] [int] NULL,
	[dtkSdo_gastoscobranza] [int] NULL,
	[dtkSdo_interesescta] [int] NULL,
	[dtkSdo_iva] [int] NULL,
	[ecsACCT_PRIM_BLK_CDE] [char](1) NULL,
	[ecsEPP] [int] NULL,
	[exBalanceWriteOff] [int] NULL,
	[exCohortBnd] [int] NULL,
	[exCummEarlyWriteOffAccts] [int] NULL,
	[exCummEarlyWriteOffAmts] [int] NULL,
	[exCummEarlyWriteOffBrakeAccts] [int] NULL,
	[exCummEarlyWriteOffBrakeAmts] [int] NULL,
	[exCummIENC] [int] NULL,
	[exCummINTWriteOffAccts] [int] NULL,
	[exCummWriteOffAmts] [int] NULL,
	[exEarlyWriteOffAccts] [int] NULL,
	[exEarlyWriteOffAmts] [int] NULL,
	[exEarlyWriteOffBrakeAccts] [int] NULL,
	[exEarlyWriteOffBrakeAmts] [int] NULL,
	[exEarlyWriteOffDate] [char](6) NULL,
	[exFecBancomalo] [char](6) NULL,
	[exIENC] [int] NULL,
	[exInsuranceFlag] [int] NULL,
	[exINTWriteOffAccts] [int] NULL,
	[exSRWOAccts] [int] NULL,
	[exSRWOAmts] [int] NULL,
	[exWoffFlag] [char](2) NULL,
	[exWoffFlagCard] [char](2) NULL,
	[exWriteOffAmts] [int] NULL,
	[FEC_ACTCALIF] [int] NULL,
	[max_aiDelBnd] [int] NULL,
	[nclNetCreditLosses] [int] NULL,
	[INT_CLIENTE] [int] NULL,
	[INT_CTA_REL] [char](14) NULL,
	[INT_CUENTA] [char](16) NULL,
	[oriBinxc] [int] NULL,
	[prevACCT_PRIM_BLK_CDE] [char](1) NULL,
	[prevCve_situacioncta] [int] NULL,
	[prevDelBnd] [int] NULL,
	[prevENRBal] [int] NULL,
	[prevINTAccts] [int] NULL,
	[recCummGrossRecoveriesAmts] [int] NULL,
	[recCummLegalFeesAmts] [int] NULL,
	[recGrossRecoveriesAccts] [int] NULL,
	[recGrossRecoveriesAmts] [int] NULL,
	[recLegalFeesAccts] [int] NULL,
	[recLegalFeesAmts] [int] NULL,
	[recNetRecoveriesAmts] [int] NULL,
	[SCOR] [int] NULL,
	[SCORE] [int] NULL,
	[SCORE_ALIG] [int] NULL,
	[scrBehaviourScoreNotAligned] [int] NULL,
	[scrBehaviourScoreNotAlignedDate] [int] NULL,
	[scrScoreAlignedAcq] [int] NULL,
	[scrScoreNotAlignedAcq] [int] NULL,
	[tdrSettlementDate] [char](6) NULL,
	[tdrTDRIn] [int] NULL,
	[tdrTDROut] [int] NULL,
	[tdrTDRRepeat] [int] NULL,
	[vector] [char](12) NULL,)/*
 CONSTRAINT [PK_crp_cards] PRIMARY KEY CLUSTERED 
(
	[CRD_ACCT_NBR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]*/
GO



 /*Crear Tabla 10 de 22 */


 USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[EXPENSES_TOBE_NEW]    Script Date: 24/03/2021 08:36:58 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EXPENSES_TOBE_NEW](
	[ACQUISITION] [decimal](22, 3) NULL,
	[FACQUISITION] [decimal](22, 3) NULL,
	[FOP_VAR] [decimal](22, 3) NULL,
	[INFORMATIONDATE] [date] NOT NULL,
	[OP_FIX] [decimal](22, 3) NULL,
	[OP_VAR] [decimal](22, 3) NULL,
	[PRODUCTO] [varchar](20) NULL,
	[TOT_EXPENSE] [decimal](22, 3) NULL,)/*
 CONSTRAINT [PK_EXPENSES_TOBE_NEW] PRIMARY KEY CLUSTERED 
(
	[INFORMATIONDATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]*/
GO


 /*Crear Tabla 11 de 22 */

 USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[LLR_TOBE_BY_PROD]    Script Date: 24/03/2021 08:40:58 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LLR_TOBE_BY_PROD](
	[INFORMATIONDATE] [date] NOT NULL,
	[LLR] [varchar](20) NULL,
	[PRODUCTO] [varchar](20) NULL,)/*
 CONSTRAINT [PK_LLR_TOBE_BY_PROD] PRIMARY KEY CLUSTERED 
(
	[INFORMATIONDATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]*/
GO



 /*Crear Tabla 12 de 22 */

 USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[lop_balcon_6]    Script Date: 24/03/2021 08:44:17 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lop_balcon_6](
	[crd_acct_nbr] [char](16) NULL,
	[LOP_BALCON_6] [int] NULL
) ON [PRIMARY]
GO


 /*Crear Tabla 13 de 22 */

USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[lop_balcon_tenor_36]    Script Date: 24/03/2021 08:45:26 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lop_balcon_tenor_36](
	[crd_acct_nbr] [char](16) NULL,
	[LOP_BALCON_TENOR_36] [int] NULL
) ON [PRIMARY]
GO


 /*Crear Tabla 14 de 22 */

 USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[lsm_wi]    Script Date: 24/03/2021 08:46:59 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lsm_wi](
	[CRD_ACCT_NBR] [char](16) NULL,
	[LSM_WI] [int] NULL
) ON [PRIMARY]
GO


 /*Crear Tabla 15 de 22 */

 USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[NCL_TOBE]    Script Date: 24/03/2021 08:49:41 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[NCL_TOBE](
	[CRD_ACCT_NBR] [varchar](20) NOT NULL,
	[INFORMATIONDATE] [date] NOT NULL,
	[NCL] [decimal](22, 3) NULL,
	[NETRECOV] [decimal](22, 3) NULL,
	[PBC] [decimal](22, 3) NULL,
	[WO] [decimal](22, 3) NULL,)
/* CONSTRAINT [PK_NCL_TOBE] PRIMARY KEY CLUSTERED 
(
	[CRD_ACCT_NBR] ASC,
	[INFORMATIONDATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]*/
GO

 /*Crear Tabla 16 de 22 */

 USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[NEW_EOP_TOB]    Script Date: 24/03/2021 08:51:10 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[NEW_EOP_TOB](
	[EOP_TOBE] [int] NULL,
	[INFORMATIONDATE] [date] NOT NULL,
	[NUEVA_TOBE] [int] NULL)
/* CONSTRAINT [PK_NEW_EOP_TOB] PRIMARY KEY CLUSTERED 
(
	[INFORMATIONDATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]*/
GO

 /*Crear Tabla 17 de 22 */

 USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[PBC]    Script Date: 24/03/2021 08:53:54 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PBC](
	[CRD_ACCT_NBR] [varchar](20) NULL,
	[FECHA] [date] NULL,
	[Fecha aplicación] [date] NULL,
	[PBC] [decimal](22, 3) NULL
) ON [PRIMARY]
GO


 /*Crear Tabla 18 de 22 */


 USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[PNL]    Script Date: 24/03/2021 08:56:19 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PNL](
	[ACCT_OPEN_DT] [int] NULL,
	[ACQUISITION] [int] NULL,
	[ACT1_D] [int] NULL,
	[ACT2_D] [int] NULL,
	[ACT3_BIS_D] [int] NULL,
	[AFFINITYFEE] [int] NULL,
	[ALLOC] [int] NULL,
	[ANNUALFEE] [int] NULL,
	[ANR] [int] NULL,
	[ANR_BALCON] [int] NULL,
	[ANR_DISP_BNMX] [int] NULL,
	[ANR_EFVO_BNMX] [int] NULL,
	[ANR_OTHER] [int] NULL,
	[ANR_PPP] [int] NULL,
	[ANR_PROG] [int] NULL,
	[ANR_REV] [int] NULL,
	[ANR_REV_10000] [int] NULL,
	[ANR_REV_20000] [int] NULL,
	[ANR_REV_90004] [int] NULL,
	[ANR_RW] [int] NULL,
	[ANR_T0] [int] NULL,
	[ANR_TOT] [int] NULL,
	[BALCON_AMORTIZATION] [int] NULL,
	[BEH_SCR] [char](6) NULL,
	[BIN] [char](20) NULL,
	[CANAL] [char](30) NULL,
	[CARTERA] [char](11) NULL,
	[CASHADVANCE] [int] NULL,
	[CASHBACK] [int] NULL,
	[CB_BB01_BB02] [int] NULL,
	[CB_PULL_BB04] [int] NULL,
	[CL_UTIL] [int] NULL,
	[COF] [int] NULL,
	[COF_OTHER] [int] NULL,
	[COF_PROG] [int] NULL,
	[COF_REV] [int] NULL,
	[COF_T0] [int] NULL,
	[COF_TOT] [int] NULL,
	[COF_VEN] [int] NULL,
	[COMPRAS_NORMALES] [int] NULL,
	[COMPRAS_T0] [int] NULL,
	[COMPRAS_TOT] [int] NULL,
	[CORTE] [int] NULL,
	[CRD_ACCT_NBR] [char](20) NULL,
	[CREDIT_LINE] [int] NULL,
	[CYC_DUE] [int] NULL,
	[DDA_FLAG] [int] NULL,
	[ENR] [int] NULL,
	[EOP] [int] NULL,
	[EOP_OLD] [int] NULL,
	[Familia] [char](10) NULL,
	[FASB] [int] NULL,
	[FICO_SCORE] [int] NULL,
	[FRAUD] [int] NULL,
	[INFORMATIONDATE] [int] NULL,
	[INT_10000] [int] NULL,
	[INT_20000] [int] NULL,
	[INT_90004] [int] NULL,
	[INT_CANC] [int] NULL,
	[INT_PROGRAMAS] [int] NULL,
	[INT_REESTR] [int] NULL,
	[INT_REV] [int] NULL,
	[INT_SUBTOT] [int] NULL,
	[INT_TOT_BONIF] [int] NULL,
	[INT_UNBLD] [int] NULL,
	[INT_WAIVED] [int] NULL,
	[INT_WO] [int] NULL,
	[INTERCHANGE] [int] NULL,
	[KOB] [char](4) NULL,
	[LATEFEE] [int] NULL,
	[LIBRA] [int] NULL,
	[LINEA_CORT] [int] NULL,
	[LLR] [int] NULL,
	[LLR_NEW] [int] NULL,
	[LOGO] [char](15) NULL,
	[LOP_BALCON_6] [int] NULL,
	[LOP_BALCON_TENOR_36] [int] NULL,
	[LSM_WI] [int] NULL,
	[MOB] [int] NULL,
	[NCL] [int] NULL,
	[NET_INTEREST] [int] NULL,
	[NET_NONNIR] [int] NULL,
	[NETRECOV] [int] NULL,
	[NIM] [int] NULL,
	[NIR] [int] NULL,
	[NUEVA] [int] NULL,
	[INTCLIENTE] [int] NULL,
	[NVA_OLD] [int] NULL,
	[OP_FIX] [int] NULL,
	[OP_VAR] [int] NULL,
	[OTHER_NIR] [int] NULL,
	[OTHER_NONNIR] [int] NULL,
	[OTHER_REVENUE] [int] NULL,
	[PAGOS] [int] NULL,
	[PBC] [int] NULL,
	[Producto] [char](18) NULL,
	[RED] [int] NULL,
	[REVENUE] [int] NULL,
	[REWARDS] [int] NULL,
	[SCORE_DEC] [int] NULL,
	[SEG_DEC] [char](30) NULL,
	[sub_red] [char](15) NULL,
	[SWO_RAF_N] [int] NULL,
	[TASA_10000] [int] NULL,
	[TASA_20000] [int] NULL,
	[TASA_90004] [int] NULL,
	[TASA0FEE] [int] NULL,
	[TASADESCTO] [int] NULL,
	[TEST] [char](28) NULL,
	[TOT_EXPENSE] [int] NULL,
	[TOT_INTEREST] [int] NULL,
	[WAIVER] [int] NULL,
	[WO] [int] NULL
) ON [PRIMARY]
GO


 /*Crear Tabla 19 de 22 */


USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[POLICY_TAGS]    Script Date: 24/03/2021 08:57:49 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[POLICY_TAGS](
	[APP_V_APPLICATION_ID] [char](30) NULL,
	[CRD_ACCT_NBR] [char](30) NULL,
	[Excepcion] [int] NULL,
	[Justification] [char](52) NULL,
	[N_X_SELL_FLAG] [int] NULL,
	[NEW_VTG] [int] NULL,
	[SCORE_DEC] [int] NULL,
	[SEG_DEC] [char](30) NULL,
	[STRATEGY] [char](30) NULL,
	[TEST] [char](28) NULL
) ON [PRIMARY]
GO

 /*Crear Tabla 20 de 22 */

 USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[retro_db_v1]    Script Date: 24/03/2021 09:00:10 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[retro_db_v1](
	[ACT1_D] [int] NULL,
	[ACT2_D] [int] NULL,
	[ACT3_BIS_D] [int] NULL,
	[CRD_ACCT_NBR] [char](20) NULL,
	[ERROR_COSTCO] [char](6) NULL,
	[Final_CLA] [int] NULL,
	[FRAUD] [int] NULL,
	[KOB] [char](4) NULL,
	[KOB_2] [char](10) NULL,
	[NEW_VTG] [int] NULL,
	[INTCLIENTE] [int] NULL,
	[INTFOL_TXT] [char](17) NULL,
	[RED] [int] NULL,
	[Short_Term_flag] [int] NULL,
	[sub_red] [char](15) NULL,
	[SWO_RAF_N] [int] NULL,
	[TOTAL] [int] NULL,
	[VINTAGE] [int] NULL,
	[WAIVER] [int] NULL
) ON [PRIMARY]
GO


 /*Crear Tabla 21 de 22 */

USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[REVENUE_TOBE]    Script Date: 24/03/2021 09:01:37 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[REVENUE_TOBE](
	[AFFINITYFEE] [decimal](22, 3) NULL,
	[ALLOC] [decimal](22, 3) NULL,
	[ANNUALFEE] [decimal](22, 3) NULL,
	[CASHADVANCE] [decimal](22, 3) NULL,
	[CASHBACK] [decimal](22, 3) NULL,
	[CATERPILLAR] [decimal](22, 3) NULL,
	[COF] [decimal](22, 3) NULL,
	[COMPRAS_TOT] [decimal](22, 3) NULL,
	[CRD_ACCT_NBR] [varchar](20) NULL,
	[FASB] [decimal](22, 3) NULL,
	[HEDGE] [decimal](22, 3) NULL,
	[INFORMATIONDATE] [date] NULL,
	[INT_CANC] [decimal](22, 3) NULL,
	[INT_PROGRAMAS] [decimal](22, 3) NULL,
	[INT_REESTR] [decimal](22, 3) NULL,
	[INT_REV] [decimal](22, 3) NULL,
	[INT_SUBTOT] [decimal](22, 3) NULL,
	[INT_TOT_BONIF] [decimal](22, 3) NULL,
	[INT_UNBLD] [decimal](22, 3) NULL,
	[INT_WAIVED] [decimal](22, 3) NULL,
	[INT_WO] [decimal](22, 3) NULL,
	[INTERCHANGE] [decimal](22, 3) NULL,
	[LATEFEE] [decimal](22, 3) NULL,
	[LIBRA] [decimal](22, 3) NULL,
	[NET_INTEREST] [decimal](22, 3) NULL,
	[NET_NONNIR] [decimal](22, 3) NULL,
	[NIM] [decimal](22, 3) NULL,
	[NIR] [decimal](22, 3) NULL,
	[OTHER_NIR] [decimal](22, 3) NULL,
	[OTHER_NONNIR] [decimal](22, 3) NULL,
	[OTHER_REVENUE] [decimal](22, 3) NULL,
	[REVENUE] [decimal](22, 3) NULL,
	[REWARDS] [decimal](22, 3) NULL,
	[TASA_28D] [decimal](22, 3) NULL,
	[TASA_HEDGE] [decimal](22, 3) NULL,
	[TASA_INTERCAMBIO] [decimal](22, 3) NULL,
	[TASA_REWARDS] [decimal](22, 3) NULL,
	[TASA0FEE] [decimal](22, 3) NULL,
	[TASADESCTO] [decimal](22, 3) NULL,
	[TOT_INTEREST] [decimal](22, 3) NULL
) ON [PRIMARY]
GO


 /*Crear Tabla 22 de 22 */

 USE [DATA_SET_SAS]
GO

/****** Object:  Table [dbo].[score_ecs_alig]    Script Date: 24/03/2021 09:03:41 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[score_ecs_alig](
	[BAND] [char](2) NULL,
	[CRD_ACCT_NBR] [char](16) NULL,
	[I_ALOP] [int] NULL,
	[INT_CUENTA] [char](16) NULL,
	[SC_TYPE] [char](11) NULL,
	[SCORE] [int] NULL,
	[SCORE_ALIG] [int] NULL
) ON [PRIMARY]
GO