<?php
define('APP_NAME', 'App');//此项目的名字，此为前台项目，后台项目可用名字如：Admin
define('APP_PATH', './App/'); //此项目的路径，ThinkPHP会自动生成样板目录
define('RUNTIME_PATH', APP_PATH.'Temp/'); //此项目的运行时缓存路径
define('APP_DEBUG', true); //开发阶段都要开启，尽可能的显示错误信息
include './ThinkPHP/ThinkPHP.php'; //加载入口文件
?>