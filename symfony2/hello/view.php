<html>
	<head>
		<title>List of Posts</title>
	</head>
	<body>
		<h1>List of Posts</h1>
		<table>
			<tr>
				<th>Date</th>
				<th>Title</th>
			</tr>
			<#?php	foreach ($post in $posts): ?>
			<tr>
				<td><#?php echo $post['date'] ?></td>
				<td><#?php echo $post['title'] ?></td>
			</tr>
			<#?php endforeach ?>
		</table>
	</body>
</html>

