$(function(){
	//1.
	var cxtTimeline = $('#time-line').get(0).getContext('2d');
	var chartTimeline = new Chart(cxtTimeline);
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
	chartTimeline.Bar(dataMoney);
});