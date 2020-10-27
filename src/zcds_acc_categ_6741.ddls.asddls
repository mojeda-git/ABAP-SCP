@AbapCatalog.sqlViewName: 'ZV_ACCESS_TYP_67'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Tipos de Acceso'
define view ZCDS_ACC_CATEG_6741
  as select from ztb_acc_categ_67
{
      //ztb_acc_categ_67
  key bi_categ    as category,
  key tipo_acceso as access_type
}
