pc1.com 和 pc2.com 主要是测试 js 跨域

1. blog 和 domain 分别是：blog.pc1.com 和 domain.pc1.com 对应的目录
- domain/a.html iframe 包含 blog/a.html 页面。
- 默认情况下二者不可互相访问对方的 contentWindow(window对象)
- 双方各自将自己的 document.domain = 'pc1.com' 后，就可以互相通讯了。
