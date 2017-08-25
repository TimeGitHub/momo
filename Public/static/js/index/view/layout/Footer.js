Ext.define('admin.view.layout.Footer',{
	extend:'Ext.panel.Panel',
	initComponent: function(){
		Ext.apply(this,{
			region:'south',
			cls:'footer',
			height: 25,
			split: true,
			html:'Copyright © 2015 momo Tencent. All Rights Reserved'
		});
		this.callParent(arguments);
	}
});