var pc2_origin = 'http://pc2.com',
	ifr = document.createElement('iframe');

ifr.src = pc2_origin + '/postmessage.html';

if(window.addEventListener){
	window.addEventListener('message', onmessage);
}else{
	window.attachEvent('onmessage', onmessage);
}

document.body.appendChild(ifr);

function onmessage(e){
	if(e.origin == pc2_origin){
		alert(e.data);
	}
}