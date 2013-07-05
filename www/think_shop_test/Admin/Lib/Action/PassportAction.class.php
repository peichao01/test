<?php
class PassportAction extends Action{
	public function index(){
		//session('admin_name', null);
		if(!$this->isLogin()){
			redirect('Passport/login');
		}
	}

	public function login(){
		$requestMethod = I('server.REQUEST_METHOD');
		if($requestMethod == 'GET'){
			//echo 'haha';
			$this->assign('form_action', U('login'));
			$this->display();
		}else if($requestMethod == 'POST'){
			session('admin_name', 'pc');
			//redirect('index');
		}
	}

	public function register(){

	}

	private function getAdminName(){
		return session('admin_name');
	}

	private function isLogin(){
		return $this->getAdminName();
	}
}