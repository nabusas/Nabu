var buscarCliente = function (doc) {
    "use strict";
    var ruta = "nabu.php?p=nb_facturacion_pg&accion=s&nb_fact_3_fld=" + doc;
    document.location = ruta; 
};