<?php
if(isset($_GET['id'])){
	if($_GET['id'] == 1){
		$bk = array(
			'code' => 200,
			'domain' => 'pc1.com',
			'name' => 'David',
			'age' => 24
		);
	}else{
		$bk = array(
			'code' => 200,
			'domain' => 'pc1.com',
			'name' => 'John',
			'age' => 26
		);
	}
}else{
	$bk = array(
		'code' => 500,
		'domain' => 'pc1.com',
	);
}

echo json_encode($bk);