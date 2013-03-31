var urlFromPC2 = 'http://pc2.com/iframe_with_hash.html';

var ifr = document.createElement('iframe');
ifr.src = urlFromPC2;
document.body.appendChild(ifr);

(function(){
	// >=IE8
	window.onhashchange = ondata;
	var version = navigator.userAgent.match(/MSIE\s+(\d)/);
	//alert(version);
	
	if(!version || version[1] >= 8) return;
	
	var prevData = location.hash.substring(1);
	
	//至于怎么检测 IE6-7 的 hashchange 是另一个话题了，下面这样子在 后退前进 的时候并不能检测到
	//通常是用iframe，请自行去网上搜索了
	setInterval(function(){
		var nowData = location.hash.substring(1);
		if(nowData != prevData){
			prevData = nowData;
			ondata(null, nowData);
		}
	}, 1000);
})();

function ondata(e, hash){
	var data = hash || location.hash.substring(1);
	alert(data);
}