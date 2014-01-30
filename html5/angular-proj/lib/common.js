(function(exports){
	var domready;
	var caches = [];
	window.addEventListener('DOMContentLoaded', function(e){
		if(!domready){
			domready = true;
			loaded();
		}
	});

	window.addEventListener('load', function(){
		if(!domready) {
			domready = true;
			loaded();
		}
	});

	function loaded(){
		var fn;
		while(fn = caches.shift()){
			fn();
		}
	}

	exports.domready = function(fn){
		if(!domready) {
			caches.push(fn);
		}
		else{
			fn();
		}
	};
})(this);