<?php
// 本类由系统自动生成，仅供测试用途
class IndexAction extends Action {

    public function index(){
	    echo C('URL_MODEL');
        echo 'IndexAction:index';
    }

    public function add(){
    	echo 'IndexAction:add';
    }

    public function delete(){
    	echo 'IndexAction:delete';
    }
}