<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style>
   #main_center {
      margin: 0 20px;
      width: 760px;
      height: 480px;
      background: white;
   }
</style>
<script>
   function display(input) {
      Highcharts.chart('container', {
          chart: {
              type: 'column'
          },
          title: {
              text: 'World\'s largest cities per 2014'
          },
          subtitle: {
              text: 'Source: <a href="http://en.wikipedia.org/wiki/List_of_cities_proper_by_population">Wikipedia</a>'
          },
          xAxis: {
              type: 'category',
              labels: {
                  rotation: -45,
                  style: {
                      fontSize: '13px',
                      fontFamily: 'Verdana, sans-serif'
                  }
              }
          },
          yAxis: {
              min: 0,
              title: {
                  text: 'Population (millions)'
              }
          },
          legend: {
              enabled: false
          },
          tooltip: {
              pointFormat: 'Population in 2008: <b>{point.y:.1f} millions</b>'
          },
          series: [{
              name: 'Population',
              data: input,
              dataLabels: {
                  enabled: true,
                  rotation: -90,
                  color: '#FFFFFF',
                  align: 'right',
                  format: '{point.y:.1f}', // one decimal
                  y: 10, // 10 pixels down from the top
                  style: {
                      fontSize: '13px',
                      fontFamily: 'Verdana, sans-serif'
                  }
              }
          }]
      });
   }
   
   $(document).ready(function() {
	var datas=[
		['��ȣ����',70.5],
		['��θ���',90.5],
		['����ť',80.5],
		['��׳�',60.5],
		['�ںҷθ�',99.5],
		['�������',40.5],
		['�̳׸���',50.5],
		['��ġŲ',40.5],
		['�̰�â',30.5],
		['�̽÷���',10.5]
	];
	display(datas);
});

</script>
<div id="main_center">
   <h1>Main Center</h1>
   
<div id="container" style="min-width: 300px; height: 400px; margin: 0 auto"></div>
   
</div>

