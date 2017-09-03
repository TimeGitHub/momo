Ext.define('admin.controller.AccountController', {
    extend: 'Ext.app.Controller',
    models: ['AccountModel'],
    stores: ['AccountStore'],
    views: ['account.List', 'account.Edit'],
    refs: [{
        ref: 'AccountList',
        selector: 'accountList'
    }],
    init: function() {
        this.control({
            'accountList': { itemdblclick: this.accountEdit },
            'accountList button[action=accountDelete]': { click: this.accountDelete },
            'accountList button[action=accountSearch]': { click: this.accountSearch },

            'accountEdit button[action=accountEditSave]': { click: this.accountEditSave },
            'accountEdit button[action=accountEditClose]': { click: this.accountEditClose }
        });
    },
    accountEdit: function(grid, record) {
        var view = Ext.widget('accountEdit');
        view.down('form').loadRecord(record);
    },
    accountEditSave: function(button) {
        var win = button.up('window'),
            form = win.down('form'),
            record = form.getRecord(),
            values = form.getValues(),
            store = this.getStore('AccountStore'),
            model = this.getModel('AccountModel');

        if (form.getForm().isValid()) {
            if (values.id > 0) {
                record.set(values);
            } else {
                record = Ext.create(model);
                record.set(values);
                store.add(record);
            }
            win.close();
            store.sync();
            store.load();
        }
    },
    accountEditClose: function(button) {
        button.up('window').close()
    },
    accountDelete: function(button) {
        var grid = this.getAccountList(),
            record = grid.getSelectionModel().getSelection(),
            store = this.getStore('AccountStore');

        if (record.length <= 0) {
            Ext.Msg.alert('提示', '请选择您要删除的信息');
        } else {
            Ext.Msg.confirm('提示', '您确定要删除这些信息吗？', function(optional) {
                if (optional == 'yes') {
                    store.remove(record);
                    store.sync();
                    store.load();
                }
            });
        }
    },
    accountSearch: function(button) {
        var searchKey = Ext.getCmp('seakey').getValue();
        if (!searchKey || searchKey === '') {
            return;
        }

        var store = this.getStore('AccountStore');
        store.load({
            params: {
                seakey: searchKey
            }
        });
    }
});