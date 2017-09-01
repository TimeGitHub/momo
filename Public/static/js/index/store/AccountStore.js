Ext.define('admin.store.AccountStore', {
    extend: 'Ext.data.Store',
    // autoLoad: true,
    pageSize: 35,
    autoLoad: { start: 0, limit: 35 },
    model: 'admin.model.AccountModel',
    proxy: {
        type: 'ajax',
        api: {
            read: '../Account/getInfo.html',
            update: '../Account/editInfo.html',
            create: '../Account/addInfo.html',
            destroy: '../Account/delInfo.html'
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