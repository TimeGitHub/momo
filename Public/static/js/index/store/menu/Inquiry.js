Ext.define('admin.store.menu.Inquiry',{
	extend: 'Ext.data.TreeStore',
	proxy: {
		type: 'ajax',
		url: '../Menu/inquiry.html',
		noCache: false,
		actionMethods: {
			read: 'GET'
		}
	}
})