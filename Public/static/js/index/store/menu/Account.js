Ext.define('admin.store.menu.Account', {
    extend: 'Ext.data.TreeStore',
    proxy: {
        type: 'ajax',
        url: '../Menu/account.html',
        noCache: false,
        actionMethods: {
            read: 'GET'
        }
    }
})