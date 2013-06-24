<?php

function getAllPosts()
{
	$link = mysql_connect('localhost', 'root', '123456');

	mysql_select_db('blog_db', $link);

	$result = mysql_query('SELECT `date`, `title` FROM `post`', $link);

	$posts = array(0;
	while($row = mysql_fetch_array($result, MYSQL_ASSOC)
	{
		$posts[] = $row;
	}

	mysql_close($link);
	return $posts;
}
