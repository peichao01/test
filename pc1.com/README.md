pc1.com 和 pc2.com 主要是测试 js 跨域

这两个目录分别对应：http://pc1.com/ 和 http://pc2.com/

在nginx下配一个虚拟主机即可，二级子域名也是
【nginx配置文件可参考../vhost.conf】
(1)修改 hosts, local ip pc1.com \n ip domain.pc1.com ...

* 1. document.domain 跨子域
 blog 和 domain 分别是：blog.pc1.com 和 domain.pc1.com 对应的目录
 - domain/a.html iframe 包含 blog/a.html 页面。
 - 默认情况下二者不可互相访问对方的 contentWindow(window对象)
 - 双方各自将自己的 document.domain = 'pc1.com' 后，就可以互相通讯了。
