<?php

define('APP_ROOT', './');

define('APP_NAME', 'Index');
define('APP_PATH', APP_ROOT.'Index/');
define('RUNTIME_PATH', APP_PATH.'Temp/');

//部署项目时去掉这句话
define('APP_DEBUG', TRUE);

include './ThinkPHP/ThinkPHP.php';

?>
