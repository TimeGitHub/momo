Ext.define('admin.store.menu.Distribute',{
	extend: 'Ext.data.TreeStore',
	proxy: {
		type: 'ajax',
		url: '../Menu/distribute.html',
		noCache: false,
		actionMethods: {
			read: 'GET'
		}
	}
})