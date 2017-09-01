Ext.define('admin.view.account.List', {
    extend: 'Ext.grid.Panel',
    alias: 'widget.accountList',
    store: 'AccountStore',
    selModel: Ext.create('Ext.selection.CheckboxModel'),
    border: 0,
    initComponent: function() {
        this.columns = [
            { header: '编号', dataIndex: 'id', flex: 0.5 },
            { header: '邮箱', dataIndex: 'mail', flex: 1 },
            { header: '账号名', dataIndex: 'name', flex: 1 },
            { header: '账号状态', dataIndex: 'status', flex: 1 },
            { header: '设备编号', dataIndex: 'deviceId', flex: 1 },
            { header: '创建时间', dataIndex: 'createTime', flex: 0.5 },
            { header: '禁言状态', dataIndex: 'bendType', flex: 1 },
            { header: '登录次数', dataIndex: 'loginCount', flex: 1 },
        ];
        this.tbar = [{
                text: '新增用户',
                action: 'accountAdd',
                iconCls: 'Useradd'
            }, '-', {
                text: '删除用户',
                action: 'accountDelete',
                iconCls: 'Userdelete'
            }, '-', {
                xtype: 'textfield',
                emptyText: '请输入查询关键词',
                name: 'seakey'
            }, {
                text: '查询',
                action: 'accountSearch',
                iconCls: 'Zoom'
            }],
            this.bbar = Ext.create('Ext.PagingToolbar', {
                store: this.store,
                displayInfo: true,
                displayMsg: '显示 {0} - {1} 条，共计 {2} 条',
                emptyMsg: "没有数据"
            });
        this.callParent(arguments);
    }
});