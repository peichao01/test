<?php

class IndexAction extends Action {
	public function index () {
		echo '前台：Index/Index/index';
	}

	public function show(){
		$this->assign('name', 'David');
		$this->assign('link', array(
			'home'=>U('Index/Index/index'),
			'admin_home'=>U('Admin/Index/index'),
		));
		$this->display();
	}

	public function handleLogin(){
		//if (!IS_AJAX) _404('页面不存在');
		//var_dump(IS_AJAX);
		echo I('content');
	}
}

?>