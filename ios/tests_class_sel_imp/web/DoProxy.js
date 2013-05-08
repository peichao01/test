var SET_SKIN_COLOR = "setSkinColor";
var BULL_CLASS = "Bull";
var CATTLE_CLASS = "Cattle";

var DoProxyProto = DoProxy.prototype;
function DoProxy()
{
	this.notFirstRun = false;
	
	this.cattle = [];//new Array[3];
	
	this.say = null;
	this.skin = null;
	
	this.setSkinColor_Func = null;
	
	this.say_Func = null;
	
	this.bullClass = null;
}

DoProxyProto.setAllVars = function setAllVars()
{
	this.cattle[0] = new Cattle;
	
	this.bullClass = window[BULL_CLASS];
	this.cattle[1] = new this.bullClass;
	this.cattle[2] = new this.bullClass;
	
	this.say = Bull.prototype.saySomething;
	this.skin = Bull.prototype[SET_SKIN_COLOR];
};

DoProxyProto.doWithCattleId_colorParam = function doWithCattleId_colorParam(aCattle, color)
{
	if(this.notFirstRun === false){
		var myName = arguments.callee.name;
		console.log("Running in the method of " + myName);
		this.notFirstRun = true;
	}
	
	var cattleParamClassName = aCattle.constructor.name;
	
	if(cattleParamClassName === BULL_CLASS || 
		cattleParamClassName === CATTLE_CLASS)
	{
		aCattle.setLegsCount(4);
		if(aCattle[this.skin.name]){
			aCattle[this.skin.name](color);
		}else{
			console.log("Hi, I am a " + cattleParamClassName + ", have not setSkinColor!");
		}
		aCattle[this.say.name]();
	}else{
		var yourClassName = aCattle.constructor.name;
		console.log("Hi, you are a " + yourClassName + ", but I like cattle or bull!");
	}
};

DoProxyProto.SELFuncs = function SELFuncs()
{
	this.doWithCattleId_colorParam(this.cattle[0], "brown");
	this.doWithCattleId_colorParam(this.cattle[1], "red");
	this.doWithCattleId_colorParam(this.cattle[2], "black");
	this.doWithCattleId_colorParam(this, "haha");
};

DoProxyProto.functionPointers = function functionPointers()
{
	this.setSkinColor_Func = this.skin;//this.cattle[1][this.skin.name];
	this.say_Func = this.say;//this.cattle[1][this.say.name];
	
	this.setSkinColor_Func.call(this.cattle[1], "verbos");
	
	console.log("Running as a function pointer will be more efficiency!");
	
	this.say_Func.call(this.cattle[1]);
};

