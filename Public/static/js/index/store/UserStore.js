Ext.define('admin.store.UserStore', {
    extend: 'Ext.data.Store',
    autoLoad: true,
    pageSize: 15,
	autoLoad: {start: 0, limit: 15},
    model: 'admin.model.UserModel',
	proxy:{
		type: 'ajax',
		api: {
			read: '../User/getInfo.html',
			update: '../User/editInfo.html',
			create: '../User/addInfo.html',
			destroy: '../User/delInfo.html'
		},
		reader: {
			type: 'json',
			rootProperty: 'data',
			successProperty: 'success',
			totalProperty: 'totalCount'
		},
		writer: {
			type: 'json'
		}
	}
});