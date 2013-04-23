<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>pc1.com homepage</title>
	</head>
	<body>
		<!-- 
			这些 script 可以逐个的测试，其他的在不测试的时候先注释掉
		-->
		<!-- 1. document.domain 跨子域，见 domain 文件夹 -->
		
		<!-- 2. 创建script标签 -->
		<script src="scripts/script_tag.js"></script>
		
		<!-- 2.1. JSOP -->
		<script src="scripts/jsonp.js"></script>
		
		<!-- 2.2 和 2.3 跟上面是同理的 -->
		<!-- 2.2. (GET) 调用外部JS -- (IE6 - IE10: OK, Chrome: OK, Firefox: OK) -->
		<script src="http://pc2.com/data.js"></script>
		
		<!-- 2.3. (GET) 调用外部动态资源 -- (IE6 - IE10: OK, Chrome: OK, Firefox: OK) -->
		<script src="http://pc2.com/data.php?id=1" type="text/javascript"></script>
		
		<!-- 3. location.hash && iframe -->
		<!-- url 变得好丑陋，而且...数据一目了然 -->
		<script src="scripts/iframe_with_hash.js"></script>
		
		<!-- 4. HTML5 postMessage -->
		<!-- >= IE9: OK, 其他浏览器：OK -->
		<script src="scripts/postmessage.js"></script>
		
		<!-- 5. (GET) window.name -- (IE6 - IE10: OK, Chrome: OK, Firefox: OK) -->
		<!-- 
			目前真没看出来这种方式和script(jsonp) 方式相比有什么优势，劣势是：挺麻烦的。
			如果说这种方式使用name传递数据不用双方约定变量名。但jsonp也可以统一指定一个
			全局（可访问的）变量或回调函数即可，也并不比window.name麻烦
		-->
		<script src="scripts/pc1_window_name.js"></script>
		
		<!-- 5.5. (POST | GET) 调用外部动态资源 -- (IE6: OK, Chrome: OK, Firefox: OK, 
			IE7-IE10:FAILED) -->
			
		<!-- 
			这是唯一支持POST的方法，是我自己弄的一个，就是form提交表单到一个iframe中，并利用了 window.name 属性
			不过很奇怪，首先，提交表单到iframe，则此iframe必须有name属性才行。
			但是，设置了 contentWindow.name，然后 location切换回来之后，
			在 >=IE7 下拿到的 iframe.contentWindow.name 都是 iframe 标签的 name属性，而不是刚设置的 contentWindow.name 属性
			其他浏览器和 IE6（反而ok）都可以正确的拿到 contentWindow.name 的值
		-->
		<script src="Cross.js" type="text/javascript"></script>
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