<?php

/*
The MIT License (MIT)

Copyright (c) <2015> <Carlos Alberto Garcia Cobo - carlosgc4@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

	Fecha creacion		= 20-02-2015
	Desarrollador		= CAGC
	Fecha modificacion	= 23-02-2016
	Usuario Modifico	= CAGC

*/
	include("../Framework/adodb/adodb.inc.php");

	class Conexion
	{
		var $db;
		var $host;
		var $user;
		var $password;
		var $database;

		function Conexion($host,$user,$password,$database)
		{
	        $this->host=$host;
			$this->user=$user;
			$this->password=$password;
			$this->database=$database;
        }
        
		function conectar()
		{
			error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED); ini_set("display_errors",1);
            
            $this->db = newAdoConnection('mysql');
			$this->db->debug =false;
			$this->db->execute("SET NAMES utf8");
            $this->db->NLS_DATE_FORMAT =  'RRRR-MM-DD HH24:MI:SS';
			$this->db->maxblobsize = 10485760; //Tamaño de los campos blob aumentado a 10 MB
			$this->db->Connect($this->host,$this->user, $this->password ,$this->database);
			return $this->db;
		}

		function desconectar()
		{
			$this->db->Disconnect();
		}
	}
?>