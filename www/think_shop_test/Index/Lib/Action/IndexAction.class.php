<?php
// 本类由系统自动生成，仅供测试用途
class IndexAction extends Action {

    public function index(){
	    echo C('URL_MODEL');
		echo '<br>';
		echo DIRECTORY_SEPARATOR;

        //echo 'IndexAction:index';
	    //$this->show('<style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} body{ background: #fff; font-family: "微软雅黑"; color: #333;} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.8em; font-size: 36px }</style><div style="padding: 24px 48px;"> <h1>:)</h1><p>欢迎使用 <b>ThinkPHP</b>！</p></div><script type="text/javascript" src="http://tajs.qq.com/stats?sId=9347272" charset="UTF-8"></script>','utf-8');
        //echo 'IndexAction:index';
		//$this->display();
		//echo U('Index/index', array('userid'=>23, 'username'=>'admin'), null, false, true);
		//dump($_GET);
    }

    public function add(){
    	//echo 'IndexAction:add';
		$arr = array(
			'name'=>'David',
			'age'=>25,
		);
		if(!IS_POST) _404('页面不存在');
    }

	public function show(){
		$arr = array(
			array('name'=>'Davlid'),
			array('name'=>'John'),
		);
		$this->assign('arr', $arr)->display();
	}

    public function delete(){
    	echo 'IndexAction:delete';
    }
}