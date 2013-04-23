<?php
$s = 'var pc2_data = ';
if(isset($_GET['id'])){
	$s .= '{id:'.$_GET['id'].', name: "David"}';
}else{
	$s .= '{id:null}';
}
$s .= ';alert(pc2_data.name)';
echo $s;
	