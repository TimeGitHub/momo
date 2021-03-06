<?php
// +----------------------------------------------------------------------------
// | 描述：系统相关配置
// +----------------------------------------------------------------------------
// | 作者：度月飞天 490702087@qq.com
// +----------------------------------------------------------------------------
// | 版权：Copyright (c) 2015 www.keebin.cn All rights reserved.
// +----------------------------------------------------------------------------
// | 日期：2015-2-10 上午10:28:25
// +----------------------------------------------------------------------------

return array(
	'SHOW_PAGE_TRACE' =>true,  // 开启页面调试工具
	
	/* URL设置 */
	'URL_MODEL' =>  2,       // URL访问模式,可选参数0、1、2、3,代表以下四种模式：
    // 0 (普通模式); 1 (PATHINFO 模式); 2 (REWRITE  模式); 3 (兼容模式)  默认为PATHINFO 模式
    
    /* 数据库配置 */
    'DB_TYPE'   => 'mysql', // 数据库类型
	'DB_HOST'   => 'localhost', // 服务器地址
	'DB_NAME'   => 'momo', // 数据库名
	'DB_USER'   => 'root', // 用户名
	'DB_PWD'    => 'root', // 密码
	'DB_PORT'   => 3306, // 端口
	'DB_PREFIX' => 'momo_', // 数据库表前缀 
	'DB_CHARSET'=> 'utf8', // 字符集
	'DB_DEBUG'  =>  TRUE, // 数据库调试模式 开启后可以记录SQL日志 3.2.3新增
	// 'DB_DSN' => 'mysql://root:root@localhost:3306/momo#utf8',

	//数据库配置1
	'DB_ACCOUNT' => array(
		'db_type'  		=> 'mysql',
		'db_user'  		=> 'root',
		'db_pwd'   		=> 'root',
		'db_host'  		=> '192.168.0.104',
		'db_port'  		=> '3306',
		'db_name'  		=> 'chuanqi_login',
		'db_charset' 	=> 'utf8',
		'db_debug'    	=> true,
	),
	
	/* 模板相关配置 */
	'TMPL_PARSE_STRING' => array(
		'__STATIC__' => __ROOT__ . '/Public/static',
	),
);