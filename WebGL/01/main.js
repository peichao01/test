(function(){
	var gl;

	document.addEventListener('DOMContentLoaded', function(e){

		var canvasDom = document.querySelector('#glcanvas');

		canvasDom.style.width = window.innerWidth + 'px';
		canvasDom.style.height = window.innerHeight + 'px';
		// console.log(window);

		gl = initWebGL(canvasDom);

		if (gl) {
			gl.clearColor(0, 0, 0, 1);
			gl.enable(gl.DEPTH_TEST);
			gl.depthFunc(gl.LEQUAL);
			gl.clear(gl.COLOR_BUFFER_BIT|gl.DEPTH_BUFFER_BIT);

			gl.viewport(0, 0, canvasDom.width, canvasDom.height);

			// console.log
		};
	});

	function initWebGL(canvasDom){
		var gl = null;

		try{
			gl = canvasDom.getContext('webgl') || canvas.getContext('experimental-webgl');
		}
		catch(e){}

		if (!gl) {
			alert('Unable to initialize WebGL. Your browser may not support it.');
			gl = null;
		}

		return gl;
	}

	function initShaders(){
		var fragmentShader = getShader(gl, "shader-fs");
		var vertexShader = getShader(gl, "shader-vs");

		shaderProgram = gl.createProgram();
		gl.attachShader(shaderProgram, vertexShader);
		gl.attachShader(shaderProgram, fragmentShader);
		gl.linkProgram(shaderProgram);

		if (!gl.getProgramParameter(shaderProgram, gl.LINK_STATUS)) {
			alert("Unable to initialize the shader program.")
		}

		gl.useProgram(shaderProgram);

		vertexPositionAttribute = gl.getAttribLocation(shaderProgram, "aVertexPosition");
		gl.enableVertexAttribArray(vertexPositionAttribute);
	}

	function getShader(gl, id){
		var shaderScript, theSource, currentChild, shader;

		shaderScript = document.getElementById(id);

		if (!shaderScript) {
			return null;
		}

		theSource = "";
		currentChild = shaderScript.firstChild;

		while(currentChild){
			if (currentChild.nodeType == currentChild.TEXT_NODE) {
				theSource += currentChild.textContent;
			}

			currentChild = currentChild.nextSibling;
		}

		if (shaderScript.type == 'x-shader/x-fragment') {
			shader = gl.createShader(gl.FRAGMENT_SHADER);
		} else if (shaderScript.type == 'x-shader/x-vertex') {
			shader = gl.createShader(gl.VERTEX_SHADER);
		} else {
			return null;
		}

		gl.shaderSource(shader, theSource);

		gl.compileShader(shader);

		if (!gl.getShaderParameter(shader, gl.COMPILE_STATUS)) {
			alert("An error occurred compiling the shaders: " + gl.getShaderInfoLog(shader));
			return null;
		}

		return shader;
	}
})();