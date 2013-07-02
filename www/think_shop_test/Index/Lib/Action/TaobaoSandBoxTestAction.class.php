<?php

class TaobaoSandBoxTestAction extends Action {
	public function index () {
		echo 'TaobaoSandBoxTestAction';
	}

	public function t1(){
		header('Content-Type:text/html;charset=UTF-8');
		$appKey = 'test';
		$appSecret = 'test';
		//参数数组
		$paramArr = array(
			'app_key'=>$appKey,
			'method'=>'taobao.user.get',
			'format'=>'json',
			'v'=>'2.0',
			'sign_method'=>'md5',
			'timestamp'=>date('Y-m-d H:i:s'),
			'fields'=>'nick,type,buyer_credit,seller-credit',
			'nick'=>'andyy_tan',
		);
		//生成签名
		$sign = createSign($paramArr);
		//组织参数
		$strParam = createStrParam($paramArr);
		$strParam .= 'sign='.$sign;
		//访问服务
		$url = 'http://gw.api.tbsandbox.com/router/rest?'.$strParam;
		$result = file_get_contents($url);
		echo $result;
		/*
		$result = json_decode($result);
		echo "json的结构为：";
		print_r($result);
		echo "<br>";
		echo "用户名称为：".$result->user_get_response->user->nick;
		echo "<br>";
		echo "买家信用等级为：".$result->user_get_response->user->buyer_credit->level;
		*/
	}

	public function t2 () {
		//load('taobao-sdk-php-online_standard.TopSdk');
		include APP_ROOT.'taobao-sdk-php-online_standard'.DIRECTORY_SEPARATOR.'TopSdk.php';

		$c = new TopClient;
		//$c->appkey = "test";
		//$c->secretKey = "test";
		$c->appkey = '1021503873';
		$c->secretKey = 'sandboxf1da7c9b40fc724c962d8d5ff';

		$req = new UserGetRequest;
		$req->setFields('nick,sex,uid,created');
		//$req->setNick('sandbox_c_1');
		$req->setNick('sandbox_peichao01');

		$resp = $c->execute($req);
		echo 'result:';
		print_r($resp);
		echo "<br>";
		echo "nick: ".$req->getNick();
	}
}