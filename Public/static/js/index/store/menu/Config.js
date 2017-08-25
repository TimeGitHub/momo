Ext.define('admin.store.menu.Config',{
	extend: 'Ext.data.TreeStore',
	proxy: {
		type: 'ajax',
		url: '../Menu/config.html',
		noCache: false,
		actionMethods: {
			read: 'GET'
		}
	}
})