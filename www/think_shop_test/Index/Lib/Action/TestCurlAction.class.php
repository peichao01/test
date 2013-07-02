<?php

class TestCurlAction extends Action {
	public function index(){
		echo 'first';
	}

	public function t1(){
		$ch = curl_init();

		curl_setopt($ch, CURLOPT_URL, "http://www.baidu.com");
		//curl_setopt($ch, CURLOPT_URL, "http://192.168.11.100");
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_HEADER, 0);

		$output = curl_exec($ch);
		$info = curl_getinfo($ch);

		//echo '获取'.$info['url'].'耗时'.$info['total_time'].'秒';
		foreach ($info as $key=>$value) {
			echo $key.': '.$value.'<br>';
		}

		if($output === false) {
			echo "cURL Error: ".curl_error($ch);
		}else{
			echo '<pre>';
			print_r($output);
			echo '</pre>';
		}

		curl_close($ch);
	}

	public function t2 () {
		$ch = curl_init();

		$urls = array(
			"http://www.cnn.com",
			"http://www.mozilla.com",
			"http://www.google.com",
		);
		$browsers = array(
			"standard" => array(
				"user_agent"=>"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 (.NET CLR 3.5.30729)",
				"language"=>"en-us,en;q=0.5",
			),
			"iphone"=>array(
				"user_agent"=>"Mozilla/5.0 (iPhone; U; CPU like Mac OS X; en) AppleWebKit/420+ (KHTML, like Gecko) Version/3.0 Mobile/1A537a Safari/419.3",
				"language"=>'en',
			),
			"french"=>array(
				"user_agent"=>"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6; .NET CLR 2.0.50727)",
				"language"=>"fr,fr-FR;q=0.5",
			),
		);
		foreach ($urls as $url) {
			echo "URL: $url\n";

			foreach ($browsers as $test_name => $browser) {
				$ch = curl_init();
				curl_setopt($ch, CURLOPT_URL, $url);
				curl_setopt($ch, CURLOPT_HTTPHEADER, array(
					"User-Agent: {$browser['user_agent']}",
					"Accept-Language: {$browser['language']}"
				));
				curl_setopt($ch, CURLOPT_NOBODY, 1);
				curl_setopt($ch, CURLOPT_HEADER, 1);
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
				$output = curl_exec($ch);
				curl_close($ch);

				if (preg_match("!Location: (.*)!", $output, $matches)) {
					echo "$test_name: redirects to $matches[1]\n";
				} else {
					echo "$test_name: no redirection\n";
				}
			}
		}
		echo "\n\n";
	}

	public function t_post () {
		$url = "http://biaoshujia.com/TestCurl/post_page";
		$ch = curl_init();
		$post_data = array(
			"name"=>"David",
			"age"=>25,
			"country"=>"China",
		);
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data);
		$output = curl_exec($ch);
		curl_close($ch);
		echo $output;
	}

	public function post_page () {
		$method = I('server.REQUEST_METHOD');
		if($method == 'GET') {
			echo 'this page is test for cURL POST.';
		} else {
			//echo 'post';
			$data = array();
			$data['name'] = I('post.name');
			$data['age'] = I('post.age');
			$data['country'] = I('post.country');
			echo json_encode($data);
		}
	}

	public function t_upload () {
		$url = "http://biaoshujia.com/TestCurl/upload_output";
		$post_data = array(
			"foo" => "bar",
			"upload" => "/home/chao/bb",
		);
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLE_FTP_PORT_FAILED, $post_data);
		$output = curl_exec($ch);
		curl_close($ch);
		echo $output;
	}

	public function upload_output () {
		print_r($_FILES);
	}
}