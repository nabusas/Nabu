/*
    Fecha creacion		= 28-02-2015
	Desarrollador		= CAGC  
	Fecha modificacion	= 11-03-2017
	Fecha modificacion	= 06-04-2017
	Usuario Modifico	= CAGC
*/


function ChangeUrl(title, url) {
    if (typeof (history.pushState) != "undefined") {
        var obj = { Title: title, Url: url };
        history.pushState(obj, obj.Title, obj.Url);
    } 
}

var buscarCliente = function (doc,page,field) {
    
    "use strict";
    var ruta = "nabu.php?p="+page+"&accion=s&"+field+"=" + doc;
    
    if (!isNaN(doc)) {
        document.location = ruta;
    }
};

/**
* Realiza consulta para traer los datos. Los valores deben corresponder a los valores de los campos en el mismo orden.
* @param {Array} values 
* @param {Array} fields
* @param {String} page
* @param {Array} restricted campos a no enviar
* @param {Array} cadenas campos que se necesita ponerle comillas
* @return {} Nada
*/
var buscarVariosDatos = function (fields,values,page, restricted, cadenas) {
    
    "use strict";

    if (fields == null || values == null) {
      throw "Algun valor es nulo";
    }

    var fieldsLength = fields.length;
    var valuesLength = values.length;
    
    if (fieldsLength != valuesLength) {
      throw "los valores y los campos no tienen el mismo tamano";
    }

    // eliminar los campos restringidos de la consulta
    var restrictedLength = restricted.length;
    for (var i = 0; i < restrictedLength; i++) {
        var index = fields.indexOf(restricted[i]);
        if(index != -1){
            fields.splice(index, 1);
            values.splice(index, 1);
	   }
    }
    
    fieldsLength = fields.length;
    valuesLength = values.length;

    var campos='';
    
    for (var i = 0; i < fieldsLength; i++) {
	var comillas='';
	if ($.inArray(fields[i], cadenas)!=-1){
		comillas="\\\'"
	}
       	campos += "&"+fields[i]+"="+comillas+values[i]+comillas
    }

    var ruta = "nabu.php?p="+page+"&accion=s"+campos;

    document.location = ruta;
};


var my_validation= function (value,label)
{
    if (value < 100)
        return [true,""];
    else
        return [false,label+": Error prueba"];
};