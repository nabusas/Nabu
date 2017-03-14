/*
    Fecha creacion		= 28-02-2015
	Desarrollador		= CAGC  
	Fecha modificacion	= 11-03-2017
	Fecha modificacion	= 14-03-2017
	Usuario Modifico	= CAGC
*/


var buscarCliente = function (doc,page,field) {
    
    "use strict";
    var ruta = "nabu.php?p="+page+"&accion=s&"+field+"=" + doc;
    
    if (!isNaN(doc)) {
        document.location = ruta;
    }
};