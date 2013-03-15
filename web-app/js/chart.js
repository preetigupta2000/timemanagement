/*window.chart='stackedColumn';


function draw(){
	
       chart = $('#chart').val();
      //alert(chart);
	$('#jqChart').jqChart({
		title: { text: 'Task Report' },
			animation: { duration: 1 },
			shadows: {
				enabled: true
						},
						axes: [
								 {
									 type: 'category',
									 location: 'bottom',
									 categories: ['Task1', 'Task2', 'Task3', 'Task4', 'Task4', 'Task5', 'Task6']
								 }
							  ],
						series: [
									{
										type: chart,
										title: 'Expected Hours',
										data: [2, 3, 1, 5, 6, 2, 4],
										labels: { font: '12px sans-serif' }
									},
									{
										type: chart,
										title: 'Actual Hours',
										data: [6, 9, 4, 5, 8, 8, 7],
										labels: { font: '12px sans-serif' }
									},
									
								]
			});
	 }

jQuery(window).load(function(){
draw();
});*/

#######################

//Change Chart type function
function ChangeChartType(chart, series, newType) {
    newType = newType.toLowerCase();
    for (var i = 0; i < series.length; i++) {
        var srs = series[0];
        try {
            srs.chart.addSeries({
                type: newType,
                stack: srs.stack,
                yaxis: srs.yaxis,
                name: srs.name,
                color: srs.color,
                data: srs.options.data
            },
            false);
            series[0].remove();
        } catch (e) {
        }
    }
}

// Two charts definition
var chart1;

// Once DOM (document) is finished loading
$(document).ready(function() {

    // First chart initialization
    chart1 = new Highcharts.Chart({
     chart: {
        renderTo: 'jqChart',
        type: 'column',
        height: 350,
     },
     title: {
        text: 'Tools developers plans to use to make html5 games (in %)'
     },
     xAxis: {
        categories: ['Processing.js', 'Impact.js', 'Other', 'Ease.js', 'Box2D.js', 'WebGL', 'DOM', 'CSS', 'Canvas', 'Javascript']
     },
     yAxis: {
        title: {
           text: 'Interviewed'
        }
     },
     series: [{
        name: 'Dev #1',
        data: [5, 10, 20, 22, 25, 28, 30, 40, 80, 90]
     }, {
        name: 'Dev #2',
        data: [15, 15, 18, 40, 30, 25, 60, 60, 80, 70]
     }, {
        name: 'Dev #3',
        data: [1, 3, 6, 0, 50, 25, 50, 60, 30, 100]
     }]
    });



    // Switchers (of the Chart1 type) - onclick handler
    $('#chart').onchange(function () {
        var newType = $('#chart').val();
        ChangeChartType(chart1, chart1.series, newType);
    });
});
