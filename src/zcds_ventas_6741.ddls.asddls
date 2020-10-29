@AbapCatalog.sqlViewName: 'ZV_VENTAS_67'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Venta de libros'
define view ZCDS_VENTAS_6741
  as select from ztb_clnts_lib_67 as custbook
{
  key id_libro   as idlibro,
      count( * ) as sum_vent
}
group by
  id_libro
