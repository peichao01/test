<!DOCTYPE html>
<html>
	<head>
		<title></title>
	</head>
	<body>
		<!-- 1. (GET) window.name -- (IE6 - IE10: OK, Chrome: OK, Firefox: OK) -->
		<!-- <script src="pc1_window_name.js"></script>
		
		<!-- 2. (GET) 调用外部JS -- (IE6 - IE10: OK, Chrome: OK, Firefox: OK) -->
		<!-- <script src="http://pc2.com/data.js"></script>
		
		<!-- 3. (GET) 调用外部动态资源 -- (IE6 - IE10: OK, Chrome: OK, Firefox: OK) -->
		<!-- <script src="http://pc2.com/data.php?id=1" type="text/javascript"></script>
		
		<!-- 4. (POST | GET) 调用外部动态资源 -- (IE6 - IE10: OK, Chrome: OK, Firefox: OK) -->
		<script src="pc1_cross.js" type="text/javascript"></script>
		<script>
			var dataUrl = 'http://pc2.com/pc2_2_post_get_windowname.php';
			Cross.get(dataUrl, {name: 'David'}, function(data, that){
				alert(data);
				//alert(that.iframe.name);
				//alert(that.iframe.contentWindow.name);
			});
		</script>
	</body>
</html>