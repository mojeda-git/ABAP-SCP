@AbapCatalog.sqlViewName: 'ZV_BOOKS_6741'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Librería'
@Metadata.allowExtensions: true
define view Z_I_bookshop_6741
  as select from ZCDS_LIBROS_67 as BOOKS
  association [0..*] to ZCDS_CLNTS_LIB_67 as _custbook on BOOKS.idlibro = _custbook.idlibro
  association [0..*] to ZCDS_VENTAS_6741  as _sales    on BOOKS.idlibro = _sales.idlibro
  association [1..1] to ZCDS_CATEGO_6741  as _category on BOOKS.category = _category.category
{
      //BOOKS
  key idlibro,
  key category,
      Titulo,
      Autor,
      Editorial,
      Idioma,
      Paginas,
      @Semantics.amount.currencyCode: 'Moneda'
      Precio,
      Moneda,
      Formato,
      url  as Imagen,
      case
      when _sales.sum_vent <= 0 then 1
      when _sales.sum_vent between 1 and 2 then 2
       when _sales.sum_vent between 3 and 20 then 3
       else
       0
       end as Ventas,
      _custbook,
      _category
}
