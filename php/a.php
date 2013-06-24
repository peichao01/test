<?php

class A
{
	function foo()
	{
		if(isset($this)){
			echo '$this is defined (';
			echo get_class($this);
			echo ")\n";
		} else {
			echo "\$this is not defined.\n";
		}
	}

	static function foo_static()
	{
		echo "foo_static!!\n";
	}
}

class B
{
	function bar()
	{
		//A::foo();
		A::foo_static();
	}
}

$a = new A();
$a->foo();

//A::foo();
$b = new B();
$b->bar();

//B::bar();

?>
