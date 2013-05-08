function Cattle()
{
	this.legsCount = null;
}

Cattle.prototype.saySomething = function saySomething()
{
	console.log("Hello, I am a cattle, I have " + this.legsCount + " legs.");
}

Cattle.prototype.setLegsCount = function setLegsCount(count)
{
	this.legsCount = count;
}