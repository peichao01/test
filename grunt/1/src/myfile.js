(function(global){

	var naruto = {};

	var Game = function(){
		this.name = 'Game';
	}
	Game.prototype.CCLog = function(msg){
		console.log(msg);
	}

	naruto.Game = Game;

	global.naruto = naruto;

})(this);
