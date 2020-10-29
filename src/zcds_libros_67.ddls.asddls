@AbapCatalog.sqlViewName: 'ZV_LIBROS_67'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Catalogo de libros'
define view ZCDS_LIBROS_67
  as select from ztb_libros_67
{
  key id_libro  as idlibro,
  key bi_categ  as category,
      titulo    as Titulo,
      autor     as Autor,
      editorial as Editorial,
      idioma    as Idioma,
      paginas   as Paginas,
      precio    as Precio,
      moneda    as Moneda,
      formato   as Formato,
      url
}
