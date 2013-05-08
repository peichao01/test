var BullParent = Cattle;
var BullParentProto = BullParent.prototype;
function Bull()
{
	BullParent.call(this);
	this.skinColor = null;
}

for(var selector in BullParentProto){
	if(BullParentProto.hasOwnProperty(selector)){
		Bull.prototype[selector] = BullParentProto[selector];
	}
}

Bull.prototype.saySomething = function saySomething()
{
	console.log("Hello, I am a " + this.skinColor + " bull, I have " + this.legsCount + " legs.");
}

Bull.prototype.getSkinColor = function getSkinColor()
{
	return this.skinColor;
}

Bull.prototype.setSkinColor = function setSkinColor(color)
{
	this.skinColor = color;
}