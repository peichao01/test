<?php

class UserAction extends Action {
    
	public function index(){
		echo C('URL_MODEL');
		a();
		echo 'UserAction:index';
	}

    public function add(){
        echo 'UserAction:add';
    }

    public function delete(){
    	echo 'UserAction:delete';
    }

}
