//pc1_1 js -- window.name
(function(root, doc){
	var Cross = {};
	var _id = 1;
	var reg = {
		f: /{{(\d+)}}/g,
		f2: /{{(\w+)}}/g
	};
	var origin = location.origin || location.href.match(/(\w+:\/\/[^\/]+)\//)[1];
	var proxy = origin + '/proxy.html';
	var extend = function (reciever, source) { for (var name in source) { if (source.hasOwnProperty(name)) reciever[name] = source[name] }; return reciever };
	var getId = function (postfix, id) { return 'CrossDomainAjax-' + (id||_id++) + (postfix||''); }
	var bind = function(fn, context){ return function(){fn.apply(context, arguments)}};
	var createElement = function(html){var div=doc.createElement('div');div.innerHTML=html;return div.childNodes[0]};
	//f('hi, {{name}}, {{feel}} to see you', {name:'David',feel:'nice'})
	var f2 = function (tpl, data) { return tpl.replace(reg.f2, function (s, n) { return data[n] }) }
	var tplForm = '<form method="{{method}}" action="{{action}}" target="{{target}}" id="{{id}}"></form>';
	var tplIFrame = '<iframe name={{name}} id="{{name}}" src="{{src}}" style="display:none;"></iframe>';

	//参数：
	//	method String <GET|POST>
	//	action String
	//	[ callback Function ]
	var Suit = function (options) {
		this.state = 0;
		this.callback = options.callback;
		var formId = getId('form');
		var iframeId = getId('iframe', _id-1);
		var form = this.form = createElement(f2(tplForm, {
			method: options.method,
			action: options.action,
			id: formId,
			target: iframeId
		}));
		//iframe的name在创建节点之后再赋值的话，在IE6,IE7下是无效的，会自动重置为：submitName 属性
		var iframe = this.iframe = createElement(f2(tplIFrame, {
			name: iframeId,
			id: iframeId,
			src: proxy
		}));
		
		var onload = bind(this.onLoad, this);
		if(iframe.attachEvent){
			iframe.attachEvent('onload', onload);
		}else{
			iframe.onload = onload;
		}
		
		doc.body.appendChild(form);
		doc.body.appendChild(iframe);

		this.inputs = [];
	}
	
	extend(Suit.prototype, {
		add: function (name, value) {
			var input = doc.createElement('input');
			input.type = 'hidden';
			input.name = name;
			input.value = value;
			this.form.appendChild(input);
			this.inputs.push(input);
			return this;
		},
		clear: function(){
			var iframe = this.iframe;
			try{
                iframe.contentWindow.document.write('');
                iframe.contentWindow.close();
                doc.body.removeChild(iframe);
                doc.body.removeChild(this.form);
            }catch(e){}
		},
		onLoad: function(){
			var iframe = this.iframe;
			if(this.state === 0){
				iframe.contentWindow.location = proxy;
			}else if(this.state === 1){
				var data = iframe.contentWindow.name;
				//alert(data);
				var cb = this.callback;
				cb && (typeof cb === 'function') && cb.call(this, data, this);
				//this.clear();
			}
			this.state++;
		}
	});
	//callback(data)
	var ajax = function (method, url, data, callback) {
		var suit = new Suit({
			method: method,
			action: url,
			callback: callback
		});
		for (var name in data) {
			if (data.hasOwnProperty(name))
				suit.add(name, data[name]);
		}
		suit.form.submit();
	}

	Cross.get = function (url, data, callback) {
		ajax('GET', url, data, callback);
	}

	Cross.post = function (url ,data, callback) {
		ajax('POST', url, data, callback);
	}
	
	var prevCross = root.Cross;
	root.Cross = Cross;
	
})(this, document);