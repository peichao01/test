$(function(){
	//1.
	var cxt = $('#time-line').get(0).getContext('2d');

	var oData = [{
		lang: 'javascript',
		level: 95,
		time: 36
	},{
		lang: 'css',
		level: 89,
		time: 40
	},{
		lang: 'html',
		level: 93,
		time: 40
	},{
		lang: 'php',
		level: 50,
		time: 24
	},{
		lang: 'mysql',
		level: 40,
		time: 24
	},{
		lang: 'actionscript3.0',
		level: 65,
		time: 20
	},{
		lang: 'objective2.0',
		level: 12,
		time: 3
	},{
		lang: 'c++(cocos2d-x)',
		level: 30,
		time: 1
	}];

	var labels = [];
	var levelData = [];
	var timeData = [];

	$.each(oData, function(i, value){
		labels.push(value.lang);
		levelData.push(value.level);
		//时间是使用的月数，总共40个月，除以 100 的显示
		var timeScale = 100/40;
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