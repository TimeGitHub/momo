Ext.define('admin.model.AccountModel', {
    extend: 'Ext.data.Model',
    fields: [
        // { name: 'id', type: 'int' },
        // { name: 'name', type: 'string' },
        // { name: 'password', type: 'string' },
        // { name: 'root', type: 'int' },
        // { name: 'xm', type: 'string' },
        // { name: 'xb', type: 'string' },
        // { name: 'nl', type: 'int' }

        { name: 'id', type: 'int' }, //int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
        { name: 'name', type: 'string' }, //varchar(50) DEFAULT NULL COMMENT '账号名',
        { name: 'email', type: 'string' }, //varchar(64) DEFAULT NULL COMMENT '邮箱',
        { name: 'pwd', type: 'string' }, //varchar(64) DEFAULT NULL COMMENT '密码',
        { name: 'deviceId', type: 'string' }, //varchar(100) DEFAULT NULL COMMENT '机器码，设备唯一号',
        { name: 'status', type: 'int' }, //int(2) DEFAULT '0', type: 'string' }, //COMMENT '账号状态  0正常 ，1普通封号，2设备封号',
        { name: 'channelId', type: 'int' }, //int(11) DEFAULT '0', type: 'string' }, //COMMENT '渠道id',
        { name: 'sdkData', type: 'string' }, //text COMMENT 'sdk数据',
        { name: 'exData', type: 'string' }, //text COMMENT '扩展数据',
        { name: 'createTime', type: 'string' }, //datetime DEFAULT NULL COMMENT '创建时间',
        { name: 'createIP', type: 'string' }, //varchar(50) DEFAULT NULL COMMENT '创建ip',
        { name: 'lastUpdateTime', type: 'string' }, //datetime DEFAULT NULL COMMENT '最后修改时间',
        { name: 'loginCount', type: 'int' }, //int(11) DEFAULT '0',
        { name: 'loginKey', type: 'string' }, //varchar(500) DEFAULT NULL COMMENT '登陆值',
        { name: 'userServers', type: 'string' }, //text COMMENT '有角色的服务器组',
        { name: 'rechargeCom', type: 'string' }, //varchar(100) DEFAULT NULL COMMENT '充值补偿',
        { name: 'sdkChannelId', type: 'string' }, //varchar(20) DEFAULT NULL COMMENT 'sdk渠道号',
        { name: 'bendExpireAt', type: 'string' }, //datetime DEFAULT NULL COMMENT '禁言过期时间',
        { name: 'bendType', type: 'int' }, //int(11) DEFAULT '0', type: 'string' }, //COMMENT '禁言类型，第一位为普通',

    ]
});