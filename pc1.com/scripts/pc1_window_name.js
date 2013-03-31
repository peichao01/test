//pc1_1 js -- window.name
(function(){
	var state = 0;
	var iframe = document.createElement('iframe');
	iframe.src = 'http://pc2.com/pc2_1_data.php?id=2';
	iframe.name = 'aa';
	var onload = function(){
		if(state === 0){
			state = 1;
			iframe.contentWindow.location = 'http://pc1.com/proxy.html';//window.location;
			//console.log(iframe.contentWindow.name);
		}else if(state === 1){
			var data = iframe.contentWindow.name;
			alert(data);
		}
	}

	if(iframe.attachEvent){
		iframe.attachEvent('onload', onload);
	}else{
		iframe.onload = onload;
	}
	document.body.appendChild(iframe);
})();