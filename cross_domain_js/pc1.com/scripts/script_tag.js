var pc2_com_script_src = 'http://pc2.com/data.js';
var script = document.createElement('script'),
	callback;
script.src = pc2_com_script_src;

script.onload = script.onreadystatechange = function(){
	if (!this.readyState || this.readyState === 'loaded' || this.readyState === 'complete') {
		callback();
		script.onload = script.onreadystatechange = null;
	}
}

//IE6 - IE8 不支持 document.head
//但是支持：document.body
//document.head.appendChild(script);
document.getElementsByTagName('head')[0].appendChild(script);

callback = function(){
	//pc2.com/data.js 中设置的数据
	alert(pc2.origin);
}