REPLACE VIEW PROD_NATL_SALES_SUM_VW.ENT_VW ( ENT_NB,ENT_NR,ENT_NM,DSTRB_CH_CD,ENT_OPN_DT,ENT_CLS_DT,MRG_ENT_NM,MRG_ENT_NB,MRG_ENT_NR,MRG_ENT_DT,CREATE_DT,RGN_NM ) AS 
	LOCKING ROW
	ACCESS
 SELECT PROD_NATL_SALES_SUM.ENT.ENT_NB,CAST(PROD_NATL_SALES_SUM.ENT.ENT_NB AS INTEGER) AS ENT_NR,
PROD_NATL_SALES_SUM.ENT.ENT_NM,PROD_NATL_SALES_SUM.ENT.DSTRB_CH_CD,PROD_NATL_SALES_SUM.ENT.ENT_OPN_DT,PROD_NATL_SALES_SUM.ENT.ENT_CLS_DT,PROD_NATL_SALES_SUM.ENT.MRG_ENT_NM,PROD_NATL_SALES_SUM.ENT.MRG_ENT_NB,CAST(PROD_NATL_SALES_SUM.ENT.MRG_ENT_NB AS INTEGER) AS MRG_ENT_NR,PROD_NATL_SALES_SUM.ENT.MRG_ENT_DT,PROD_NATL_SALES_SUM.ENT.CREATE_DT,PROD_NATL_SALES_SUM.ENT.RGN_NM
  FROM PROD_NATL_SALES_SUM.ENT;