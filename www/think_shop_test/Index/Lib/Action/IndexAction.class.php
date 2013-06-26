<?php
// 本类由系统自动生成，仅供测试用途
class IndexAction extends Action {

    public function index(){
<<<<<<< HEAD
	    echo C('URL_MODEL');
        echo 'IndexAction:index';
=======
	    //$this->show('<style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} body{ background: #fff; font-family: "微软雅黑"; color: #333;} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.8em; font-size: 36px }</style><div style="padding: 24px 48px;"> <h1>:)</h1><p>欢迎使用 <b>ThinkPHP</b>！</p></div><script type="text/javascript" src="http://tajs.qq.com/stats?sId=9347272" charset="UTF-8"></script>','utf-8');
        //echo 'IndexAction:index';
		//$this->display();
		//echo U('Index/index', array('userid'=>23, 'username'=>'admin'), null, false, true);
		dump($_GET);
>>>>>>> 07f0e4752156a89a236b6c46e4107574a2bd6259
    }

    public function add(){
    	echo 'IndexAction:add';
    }

    public function delete(){
    	echo 'IndexAction:delete';
    }
}