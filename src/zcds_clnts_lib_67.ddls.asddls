@AbapCatalog.sqlViewName: 'ZV_CLNTS_LIB_67'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Clientes libros'
@Metadata.allowExtensions: true
define view ZCDS_CLNTS_LIB_67
  as select from ztb_clnts_lib_67 as custbook
  association [1..*] to ZCDS_CLIENTES_6741 as _cust on custbook.id_cliente = _cust.idcliente
{
        //ZTB_CLNTS_LIB_67
  key   id_cliente as idcliente,
  key   id_libro   as idlibro,
        _cust
}
