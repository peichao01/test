$(function(){
	//1.
	var cxtTimeline = $('#time-line').get(0).getContext('2d');

	var chartTimeline = new Chart(cxtTimeline);

	var startYear = 2010;
	var endYear = 2013;
	var startMonth = 3;
	var endMonth = 7;
	var dateLabels = [];
	for(var year=startYear;year<=endYear;year++){
		for(var mon=1;mon<=12;mon++){
			if((year == startYear && mon < startMonth) || (year == endYear && mon > endMonth)) continue;
			dateLabels.push(year + '.' + mon);
		}
	}

	var moneyScale = 130;//100 * 130 = 1.3w
	var dataMoney = [
		{
			inc: '1000kk.com',
			comment: '实习',
			year: 2010,
			mon: 3,
			count: 3000,
			afterCount: 3000
		},
		{
			inc: '1000kk.com',
			comment: '试用',
			year: 2010,
			mon: 6,
			count: 3800,
			afterCount: 3600
		},
		{
			inc: '1000kk.com',
			comment:'正式',
			year: 2010,
			mon: 8,
			count: 4000,
			afterCount: 3700
		},
		{
			inc: '1000kk.com',
			comment: '正式',
			year: 2011,
			mon: 1,
			count: 4600,
			afterCount: 4300
		},
		{
			inc: 'ctrip.com',
			year: 2011,
			mon: 8,
			count: 8000,
			afterCount: 7000
		},
		{
			inc: 'zuo.com',
			year: 2012,
			mon: 3,
			count:12000,
			afterCount: 10800
		},
		{
			inc: 'zuo.com',
			year: 2013,
			mon: 3,
			count:12600,
			afterCount: 11228.6
		}
	];
	var getIndex = function(year, month){
		return (year * 12 + month) - (startYear * 12 + startMonth);
	};

	var dataMoneyBefore = [];
	var dataMoneyAfter = [];
	$.each(dataMoney, function(i, data){
		var index = getIndex(data.year, data.mon);
		dataMoneyBefore[index] = data.count / moneyScale;
		dataMoneyAfter[index] = data.afterCount / moneyScale;
	});
	$.each(dateLabels, function(i){
		dataMoneyBefore[i] = dataMoneyBefore[i] || dataMoneyBefore[i-1];
		dataMoneyAfter[i] = dataMoneyAfter[i] || dataMoneyAfter[i-1];
	});

	var data = {
		labels : dateLabels,
		datasets : [
			{
				fillColor : "rgba(220,220,220,0.5)",
				strokeColor : "rgba(220,220,220,1)",
				pointColor : "rgba(220,220,220,1)",
				pointStrokeColor : "#fff",
				data : dataMoneyBefore
			},
			{
				fillColor : "rgba(151,187,205,0.5)",
				strokeColor : "rgba(151,187,205,1)",
				pointColor : "rgba(151,187,205,1)",
				pointStrokeColor : "#fff",
				data : dataMoneyAfter
			}
		]
	};

	chartTimeline.Line(data);

	var dataMoney = {
		labels: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
		datasets: [
			{
				fillColor : "rgba(220,220,220,0.5)",
				strokeColor : "rgba(220,220,220,1)",
				data : [65,59,90,81,56,55,40]
			},
			{
				fillColor : "rgba(151,187,205,0.5)",
				strokeColor : "rgba(151,187,205,1)",
				data : [28,48,40,19,96,27,100]
			}
		]
	};
	var optionMoney = {};
	//chartTimeline.Bar(dataMoney);

});