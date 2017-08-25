Ext.require('Ext.chart.*');
Ext.require(['Ext.Window', 'Ext.fx.target.Sprite', 'Ext.layout.container.Fit', 'Ext.window.MessageBox']);
  
Ext.onReady(function () {
    window.store1 = Ext.create('Ext.data.JsonStore', {
                    fields : ['speed1', 'num'],
                    data : [{
                                    "speed1" : "71",
                                    "num" : "10"
                            }, {
                                    "speed1" : "63",
                                    "num" : "11"
                            }, {
                                    "speed1" : "77",
                                    "num" : "12"
                            }, {
                                    "speed1" : "85",
                                    "num" : "13"
                            }, {
                                    "speed1" : "79",
                                    "num" : "14"
                            }
                    ]
    });
    var chart = Ext.create('Ext.chart.Chart', {
            xtype: 'chart',
            style: 'background:#fff',
            animate: true,
            store: store1,
            shadow: true,
            theme: 'Category1',
            legend: {
                position: 'right'
            },
            axes: [{
                type: 'Numeric',
                minimum: 0,
                position: 'left',
                fields: ['speed1'],
                title: 'Number of Hits',
             //  minorTickSteps: 1,
                grid: {
                    odd: {
                        opacity: 1,
                        fill: '#ddd',
                        stroke: '#bbb',
                        'stroke-width': 0.5
                    }
                }
            }, {
                type: 'Category',
                position: 'bottom',
                fields: ['num'],
                title: 'Month of the Year'
            }],
            series: [{
                type: 'line',
                highlight: {
                    size: 20,
                    radius: 7
                },
                                tips: {
                    trackMouse: true,
                    width: 80,
                    height: 40,
                    renderer: function(storeItem, item) {
                        this.setTitle(storeItem.get('num'));
                        this.update(storeItem.get('speed1'));
                    }
                },
                axis: 'left',
             //   smooth: true,//平滑线条
                fill: true,//填充面积
                xField: ['num'],
                yField: ['speed1'],
                markerConfig: {
                    type: 'circle',//cross是叉叉，这个是圆圈
                    size: 4,
                    radius: 4,
                    'stroke-width': 0
                }
            }]
        });
  
  
    var win = Ext.create('Ext.Window', {
        width: 800,
        height: 600,
        minHeight: 400,
        minWidth: 550,
        hidden: false,
        maximizable: true,
        title: 'Line Chart',
        renderTo: Ext.getBody(),
        layout: 'fit',
        tbar: [{
            text: 'Save Chart',
            handler: function() {
                Ext.MessageBox.confirm('Confirm Download', 'Would you like to download the chart as an image?', function(choice){
                    if(choice == 'yes'){
                        chart.save({
                            type: 'image/png'
                        });
                    }
                });
            }
        }],
        items: chart
    });
});