@AbapCatalog.sqlViewName: 'ZV_CUSTOMER_67'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Clientes'
define view ZCDS_CLIENTES_6741
  as select from ztb_clientes_67
{
      //ztb_clientes_67
  key id_cliente  as id_customer,
  key tipo_acceso as access_type,
      nombre      as name,
      apellidos   as last_name,
      email,
      url
}
