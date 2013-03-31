//其实这里处理 callback:
//1. 约定好用什么函数
//2. web server 拿到url后动态处理，如交给php先处理一次，再返回js文件

pc1_callback({
	origin: 'http://pc2.com',
	desc: 'jsonp 约定pc1 的回调为 pc1_callback'
});