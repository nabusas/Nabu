<?php
$g_hostname               = 'localhost';
$g_db_type                = 'mysqli';
$g_database_name          = 'nabutraq';
$g_db_username            = 'nabu';
$g_db_password            = '6492496';



$g_crypto_master_salt     = 'CqI/5fm9XJca3RJJvShvBKTzZ5X7lq1f8+GJE90gMsw=';

//CAGC

//Inactivar Signup for a new account
$g_allow_signup = OFF;

//Idioma
$g_default_language = 'spanish';

//¿Olvidó su contraseña?
$g_send_reset_password = OFF;

$g_default_timezone       = 'America/Bogota';

$g_allow_file_upload=OFF;

$g_default_bug_view_status = VS_PRIVATE;

$g_window_title='Nabu- Reporte de Errores';
$g_page_title='Nabu- Reporte de Errores';

$g_favicon_image ='../Core/Images/logo.ico';

$g_logo_image='../Core/Images/logoBig.png';
$g_logo_url='../Core/Images/logoBig.png';

$g_bug_report_page_fields = array(
                'category_id',
                'view_state',
                'handler',
                'priority',
                'severity',
                //'reproducibility',
                //'platform',
                //'os',
                //'os_version',
                //'product_version',
                //'product_build',
                //'target_version',
                'summary',
                'description',
                //'additional_info',
                //'steps_to_reproduce',
                //'attachments',
                'due_date',
        );


?>