/*
    Fecha creacion		= 28-02-2015
	Desarrollador		= CAGC  
	Fecha modificacion	= 11-03-2017
	Fecha modificacion	= 27-05-2017
	Usuario Modifico	= CAGC
*/


function ChangeUrl(title, url) {
    if (typeof (history.pushState) != "undefined") {
        var obj = { Title: title, Url: url };
        history.pushState(obj, obj.Title, obj.Url);
    } 
}

var sendAjaxRequest = function (codva,vali,empresa,messa,parametros,sucFun){
    $.ajax({
        url: '../Events/webservice.php',
		data: {	'token': 'e53db2b5b93254fddb55de43a3323970',
				'codigovalidacion': codva,
                'validacion': vali,
			    'codigoemp' : empresa,
			    'messa' : messa,
			    'binds' : parametros
			  },
        dataType: 'json',
	    method: 'POST',
        success: sucFun
	});
};

var getDataEvent = function (empresa,page,field,value,form) {
    
    var parametros = page+';'+field+';'+value;
    
    var sucFun = function(json){
        
        for (var field in json){
            var value = json[field];
            form.childrenByPropertyId[field].setValue(value);
        }
    };
    
    sendAjaxRequest('none','getData',empresa,'',parametros,sucFun);

};