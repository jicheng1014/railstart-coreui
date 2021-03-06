// https://www.chartjs.org/docs/latest/getting-started/integration.html
// https://echarts.apache.org/examples/zh/editor.html?c=line-smooth
import { Controller } from "@hotwired/stimulus";
// import Utils  from "@coreui/utils";
import * as echarts from 'echarts';

export default class extends Controller {
  connect() {
    this.lineChart()
    this.chart1()
    this.chart3()
  }

  chart1() {
    var chartDom = document.getElementById('card-chart1');
    var myChart = echarts.init(chartDom);
    var option;

    option = {
      xAxis: {
        type: 'category',
        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
      },
      yAxis: {
        type: 'value'
      },
      series: [
        {
          data: [820, 932, 901, 934, 1290, 1330, 1320],
          type: 'line',
          showBackground: false,
          smooth: true
        }
      ]
    };
    option && myChart.setOption(option);
  }
  chart3() {
    var chartDom = document.getElementById('card-chart3');
    var myChart = echarts.init(chartDom);
    var option;

    option = {
      xAxis: {
        type: 'category',
        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
      },
      yAxis: {
        type: 'value'
      },
      series: [
        {
          data: [120, 200, 150, 80, 70, 110, 130],
          type: 'bar',
          showBackground: false,

          backgroundStyle: {
            color: 'rgba(180, 180, 180, 0.2)'
          }
        }
      ]
    };

    option && myChart.setOption(option);


  }

  lineChart() {
    var chartDom = document.getElementById('main-chart');
    var myChart = echarts.init(chartDom);
    var option; 

    option = {
      title: {
        text: 'Stacked Line'
      },
      tooltip: {
        trigger: 'axis'
      },
      legend: {
        data: ['Email', 'Union Ads', 'Video Ads', 'Direct', 'Search Engine']
      },
      grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
      },
      toolbox: {
        feature: {
          saveAsImage: {}
        }
      },
      xAxis: {
        type: 'category',
        boundaryGap: false,
        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
      },
      yAxis: {
        type: 'value'
      },
      series: [
        {
          name: 'Email',
          type: 'line',
          stack: 'Total',
          data: [120, 132, 101, 134, 90, 230, 210]
        },
        {
          name: 'Union Ads',
          type: 'line',
          stack: 'Total',
          data: [220, 182, 191, 234, 290, 330, 310]
        },
        {
          name: 'Video Ads',
          type: 'line',
          stack: 'Total',
          data: [150, 232, 201, 154, 190, 330, 410]
        },
        {
          name: 'Direct',
          type: 'line',
          stack: 'Total',
          data: [320, 332, 301, 334, 390, 330, 320]
        },
        {
          name: 'Search Engine',
          type: 'line',
          stack: 'Total',
          data: [820, 932, 901, 934, 1290, 1330, 1320]
        }
      ]
    };

    myChart.setOption(option);
  }

}

// // ?????? echarts ???????????????????????????????????? echarts ???????????????????????????
// import * as echarts from 'echarts/core';
// // ?????????????????????????????????????????? Chart
// import { BarChart } from 'echarts/charts';
// // ????????????????????????????????????????????????????????????????????????????????????????????????????????? Component
// import {
//   TitleComponent,
//   TooltipComponent,
//   GridComponent,
//   DatasetComponent,
//   TransformComponent
// } from 'echarts/components';
// // ????????????????????????????????????????????????
// import { LabelLayout, UniversalTransition } from 'echarts/features';
// // ?????? Canvas ???????????????????????? CanvasRenderer ?????? SVGRenderer ??????????????????
// import { CanvasRenderer } from 'echarts/renderers';

// // ?????????????????????
// echarts.use([
//   TitleComponent,
//   TooltipComponent,
//   GridComponent,
//   DatasetComponent,
//   TransformComponent,
//   BarChart,
//   LabelLayout,
//   UniversalTransition,
//   CanvasRenderer
// ]);

// // ????????????????????????????????????????????????????????????????????????
// var myChart = echarts.init(document.getElementById('main'));
// myChart.setOption({
//   // ...
// });