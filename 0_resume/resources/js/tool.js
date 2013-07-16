$(function(){
	//1.
	var cxt = $('#time-line').get(0).getContext('2d');

	var oData = [{
		lang: 'vim',
		level: 85,
		time: 10
	},{
		lang: 'linux',
		level: 75,
		time: 14
	},{
		lang: 'mac osx',
		level: 75,
		time: 10
	},{
		lang: 'phpstorm',
		level: 80,
		time: 12
	},{
		lang: 'visualstudio',
		level: 75,
		time: 6
	},{
		lang: 'webstorm',
		level: 80,
		time: 5
	},{
		lang: 'xcode',
		level: 60,
		time: 4
	},{
		lang: 'flash',
		level: 100,
		time: 60
	},{
		lang: 'photoshop',
		level: 86,
		time: 50
	},{
		lang: 'illustrator',
		level: 60,
		time: 20
	},{
		lang: 'Maya',
		level: 60,
		time: 40
	}];

	var labels = [];
	var levelData = [];
	var timeData = [];

	$.each(oData, function(i, value){
		labels.push(value.lang);
		levelData.push(value.level);
		//时间是使用的月数，总共60个月，除以 100 的显示
		var timeScale = 100/60;
		timeData.push(value.time * timeScale);
	});


	var data = {
		labels: labels,
		datasets : [
			{
				fillColor : "rgba(151,187,205,0.5)",
				strokeColor : "rgba(151,187,205,1)",
				data : levelData
			},
			{
				fillColor : "rgba(220,220,220,0.5)",
				strokeColor : "rgba(220,220,220,1)",
				data : timeData
			}
		]
	};

	new Chart(cxt).Bar(data);

});