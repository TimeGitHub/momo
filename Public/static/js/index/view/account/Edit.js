Ext.define('admin.view.account.Edit', {
    extend: 'Ext.window.Window',
    alias: 'widget.accountEdit',
    title: '编辑账号信息',
    layout: 'fit',
    resizable: false,
    autoShow: true,
    initComponent: function() {
        this.items = [{
            xtype: 'form',
            bodyPadding: 5,
            fieldDefaults: {
                allowBlank: false,
                labelAlign: 'right',
                labelWidth: 60
            },
            defaultType: 'textfield',
            items: [
                { fieldLabel: '编号', name: 'id', hidden: true, allowBlank: true },
                { fieldLabel: '邮箱', name: 'mail', regex: /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/, regexText: '必须是合法的邮箱地址' },
                { fieldLabel: '账号名', name: 'name', regex: /^.{6,10}$/, regexText: '账号名必须是6~10个字符' },
                { fieldLabel: '账号状态', name: 'status' },
                { fieldLabel: '设备编号', name: 'deviceId', allowBlank: true },
                { fieldLabel: '创建时间', name: 'createTime', allowBlank: true },
                { fieldLabel: '禁言状态', name: 'bendType', allowBlank: true },
                { fieldLabel: '登录次数', name: 'loginCount' },
            ]
        }];
        this.buttons = [
            { text: '保存', action: 'accountEditSave' },
            { text: '取消', action: 'accountEditClose' }
        ];
        this.buttonAlign = 'center',
            this.callParent(arguments);
    }
})