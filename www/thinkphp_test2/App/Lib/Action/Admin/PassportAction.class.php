<?php

class PassportAction extends Action {
	public function login(){
		if (IS_POST) {

		} else {
			$this->display();
		}
	}
}

?>