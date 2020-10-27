@AbapCatalog.sqlViewName: 'ZV_CATEGO_6741'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Categorías'
define view ZCDS_CATEGO_6741 as select from ztb_catego_6741 {
    //ztb_catego_6741
    key bi_categ  as category,
    descripcion   as description
}
