@AbapCatalog.sqlViewName: 'ZV_CUSTOMER_67'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Clientes'
@Metadata.allowExtensions: true
define view ZCDS_CLIENTES_6741
  as select from ztb_clientes_67
//   association [1..*] to ZCDS_CLIENTES_6741 as _cust  on custbook.id_cliente = _cust.idcliente
{
      //ztb_clientes_67
  key id_cliente  as idcliente,
  key tipo_acceso as accesstype,
      nombre      as name,
      apellidos   as lastname,
      email,
      url
}
