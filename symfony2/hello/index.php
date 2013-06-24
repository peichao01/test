<?php
$link = mysql_connect('localhost', 'root', '123456');
mysql_select_db('blog_db', $link);

//$result = mysql_query('SELECT date, title FROM post', $link);
$result = mysql_query('SELECT `content`,`title` FROM `post`', $link);
?>

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
				<?php
				while($row = mysql_fetch_array($result, MYSQL_ASSOC))
        {
          echo '<tr>';
          printf('<td>%s</td>', gettype($row['date']));
          printf('<td>%s</td>', $row['title']);
          echo '</tr>';
        }
				?>
		</table>
	</body>
</html>

<?php

mysql_close($link);
?>
