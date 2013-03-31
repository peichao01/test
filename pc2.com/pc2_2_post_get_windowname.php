<?php

$bk = array();
$bk['method'] = $_SERVER['REQUEST_METHOD'];
if($bk['method'] == 'GET'){
	$b = $_GET;
}else{
	$b = $_POST;
}
foreach($b as $key => $value){
	$bk[$key] = $value;
}

$s = "<script>".
	"var data = '".json_encode($bk)."';".
	"this.name = data;".
	"this.location.hash = data;".
	"//alert(window.name);".
	"</script>";
echo $s;