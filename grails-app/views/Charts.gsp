<%@ page import="org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils" %>
<html lang="en">
  <head>	
<%--<g:javascript src="../js/chart.js"></g:javascript>

--%><script type="text/javascript">
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
	var expectedTimeData;
	var actualTimeData;
	var xaxisData;
	var data = "${data}";
	data = data.replace('{',' ');
	data = data.replace('}',' ');
	var dataArray = data.split("||");
	for(i=0;i<dataArray.length;i++)
	{
		if(i == 2)
		{
			xaxisData = eval("\""+dataArray[2]+"\"");
			xaxisData = xaxisData.replace('[','');
			xaxisData = xaxisData.replace(']','');	
			var xaxisDataSplitted = xaxisData.split(",");
			xaxisData = xaxisDataSplitted;
			
		}
		if(i == 3)
		{
			expectedTimeData = eval(dataArray[3]);
		}
		if(i == 4)
		{
			actualTimeData = eval(dataArray[4]);
		}
	}
    // First chart initialization
    chart1 = new Highcharts.Chart({
     chart: {
        renderTo: 'jqChart',
        type: 'column',
        height: 350,
     },
     title: {
        text: 'User activity summary'
     },
     xAxis: {
    	 title: {
             text: 'Tasks Assigned'
          },
        categories: xaxisData
     },
     yAxis: {
        title: {
           text: 'Expected Time V/S Actual Time'
        }
     },
     series: [{
        name: 'Expected Time',
        data: expectedTimeData
     }, {
        name: 'Actual Time',
        data: actualTimeData
     }]
    });

});


function draw()
{

    // Switchers (of the Chart1 type) - onclick handler
        var newType = $('#chart').val();
        ChangeChartType(chart1, chart1.series, newType);

}


</script>
</head>

<body>
	  <div class="container" style="width: 100%">
	 	<label>Select a chart : </label>
		<select id="chart" onchange="draw();">
				<option value="column">Column</option>
				<option value="area">Area</option>
				<option value="line">line</option>
				<option value="areaspline">Areaspline</option>
				<option value="spline">Spline</option>
		</select>
		</div>
		
		<div id="jqChart">
		</div>

</body>
</html>