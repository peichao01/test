var pc2_com_script_src = 'http://pc2.com/jsonp.js';
var script = document.createElement('script'),
	callback;
script.src = pc2_com_script_src;

//IE6 - IE8 不支持 document.head
//但是支持：document.body
//document.head.appendChild(script);
document.getElementsByTagName('head')[0].appendChild(script);

pc1_callback = function(data){
	//pc2.com/jsonp.js 中设置的数据
	alert(data.desc);
}