<?php
if(isset($_GET['id'])){
	if($_GET['id'] == 1){
		$bk = array(
			'code' => 200,
			'domain' => 'pc2.com',
			'name' => 'David',
			'age' => 24
		);
	}else{
		$bk = array(
			'code' => 200,
			'domain' => 'pc2.com',
			'name' => 'John',
			'age' => 26
		);
	}
}else{
	$bk = array(
		'code' => 500,
		'domain' => 'pc2.com',
	);
}

echo "<script>this.name='".json_encode($bk)."'</script>";

/*$a='
<html>
<body>
<p id="content">hi, <strong>pc</strong>!</p>
</body>
<script type="text/javascript">
window.name = document.getElementById("content").innerHTML;
</script>
</html>';*/

//$a="<script>this.name='hi!pc'</script>";
//echo $a;