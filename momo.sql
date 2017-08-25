-- phpMyAdmin SQL Dump
-- version 3.5.6
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 03 月 05 日 10:52
-- 服务器版本: 5.0.41-community-nt
-- PHP 版本: 5.4.37

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `momo`
--

-- --------------------------------------------------------

--
-- 表的结构 `momo_area`
--

CREATE TABLE IF NOT EXISTS `momo_area` (
  `id` int(5) NOT NULL auto_increment,
  `number` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `momo_area`
--

INSERT INTO `momo_area` (`id`, `number`, `name`) VALUES
(1, 11, '地下城勇士'),
(3, 20, 'QQ飞车'),
(4, 90, '穿越火红'),
(5, 110, '魔兽世界'),
(6, 18, '峰战');

-- --------------------------------------------------------

--
-- 表的结构 `momo_config`
--

CREATE TABLE IF NOT EXISTS `momo_config` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '配置ID',
  `name` varchar(30) NOT NULL default '' COMMENT '配置名称',
  `type` tinyint(3) unsigned NOT NULL default '0' COMMENT '配置类型',
  `title` varchar(50) NOT NULL default '' COMMENT '配置说明',
  `group` tinyint(3) unsigned NOT NULL default '0' COMMENT '配置分组',
  `extra` varchar(255) NOT NULL default '' COMMENT '配置值',
  `remark` varchar(100) NOT NULL default '' COMMENT '配置说明',
  `create_time` int(10) unsigned NOT NULL default '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL default '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL default '0' COMMENT '状态',
  `value` text COMMENT '配置值',
  `sort` smallint(3) unsigned NOT NULL default '0' COMMENT '排序',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `uk_name` (`name`),
  KEY `type` (`type`),
  KEY `group` (`group`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- 转存表中的数据 `momo_config`
--

INSERT INTO `momo_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES
(1, 'WEB_SITE_TITLE', 1, '网站标题', 1, '', '网站标题前台显示标题', 1378898976, 1379235274, 1, 'OneThink内容管理框架', 0),
(2, 'WEB_SITE_DESCRIPTION', 2, '网站描述', 1, '', '网站搜索引擎描述', 1378898976, 1379235841, 1, 'OneThink内容管理框架', 1),
(3, 'WEB_SITE_KEYWORD', 2, '网站关键字', 1, '', '网站搜索引擎关键字', 1378898976, 1381390100, 1, 'ThinkPHP,OneThink', 8),
(4, 'WEB_SITE_CLOSE', 4, '关闭站点', 1, '0:关闭,1:开启', '站点关闭后其他用户不能访问，管理员可以正常访问', 1378898976, 1379235296, 1, '1', 1),
(9, 'CONFIG_TYPE_LIST', 3, '配置类型列表', 4, '', '主要用于数据解析和页面表单的生成', 1378898976, 1379235348, 1, '0:数字\r\n1:字符\r\n2:文本\r\n3:数组\r\n4:枚举', 2),
(10, 'WEB_SITE_ICP', 1, '网站备案号', 1, '', '设置在网站底部显示的备案号，如“沪ICP备12007941号-2', 1378900335, 1379235859, 1, '', 9),
(11, 'DOCUMENT_POSITION', 3, '文档推荐位', 2, '', '文档推荐位，推荐到多个位置KEY值相加即可', 1379053380, 1379235329, 1, '1:列表推荐\r\n2:频道推荐\r\n4:首页推荐', 3),
(12, 'DOCUMENT_DISPLAY', 3, '文档可见性', 2, '', '文章可见性仅影响前台显示，后台不收影响', 1379056370, 1379235322, 1, '0:所有人可见\r\n1:仅注册会员可见\r\n2:仅管理员可见', 4),
(13, 'COLOR_STYLE', 4, '后台色系', 1, 'default_color:默认\r\nblue_color:紫罗兰', '后台颜色风格', 1379122533, 1379235904, 1, 'default_color', 10),
(20, 'CONFIG_GROUP_LIST', 3, '配置分组', 4, '', '配置分组', 1379228036, 1384418383, 1, '1:基本\r\n2:内容\r\n3:用户\r\n4:系统', 4),
(21, 'HOOKS_TYPE', 3, '钩子的类型', 4, '', '类型 1-用于扩展显示内容，2-用于扩展业务处理', 1379313397, 1379313407, 1, '1:视图\r\n2:控制器', 6),
(22, 'AUTH_CONFIG', 3, 'Auth配置', 4, '', '自定义Auth.class.php类配置', 1379409310, 1379409564, 1, 'AUTH_ON:1\r\nAUTH_TYPE:2', 8),
(23, 'OPEN_DRAFTBOX', 4, '是否开启草稿功能', 2, '0:关闭草稿功能\r\n1:开启草稿功能\r\n', '新增文章时的草稿功能配置', 1379484332, 1379484591, 1, '1', 1),
(24, 'DRAFT_AOTOSAVE_INTERVAL', 0, '自动保存草稿时间', 2, '', '自动保存草稿的时间间隔，单位：秒', 1379484574, 1386143323, 1, '60', 2),
(25, 'LIST_ROWS', 0, '后台每页记录数', 2, '', '后台数据每页显示记录数', 1379503896, 1380427745, 1, '10', 10),
(26, 'USER_ALLOW_REGISTER', 4, '是否允许用户注册', 3, '0:关闭注册\r\n1:允许注册', '是否开放用户注册', 1379504487, 1379504580, 1, '1', 3),
(27, 'CODEMIRROR_THEME', 4, '预览插件的CodeMirror主题', 4, '3024-day:3024 day\r\n3024-night:3024 night\r\nambiance:ambiance\r\nbase16-dark:base16 dark\r\nbase16-light:base16 light\r\nblackboard:blackboard\r\ncobalt:cobalt\r\neclipse:eclipse\r\nelegant:elegant\r\nerlang-dark:erlang-dark\r\nlesser-dark:lesser-dark\r\nmidnight:midnight', '详情见CodeMirror官网', 1379814385, 1384740813, 1, 'ambiance', 3),
(28, 'DATA_BACKUP_PATH', 1, '数据库备份根路径', 4, '', '路径必须以 / 结尾', 1381482411, 1381482411, 1, './Data/', 5),
(29, 'DATA_BACKUP_PART_SIZE', 0, '数据库备份卷大小', 4, '', '该值用于限制压缩后的分卷最大长度。单位：B；建议设置20M', 1381482488, 1381729564, 1, '20971520', 7),
(30, 'DATA_BACKUP_COMPRESS', 4, '数据库备份文件是否启用压缩', 4, '0:不压缩\r\n1:启用压缩', '压缩备份文件需要PHP环境支持gzopen,gzwrite函数', 1381713345, 1381729544, 1, '1', 9),
(31, 'DATA_BACKUP_COMPRESS_LEVEL', 4, '数据库备份文件压缩级别', 4, '1:普通\r\n4:一般\r\n9:最高', '数据库备份文件的压缩级别，该配置在开启压缩时生效', 1381713408, 1381713408, 1, '9', 10),
(32, 'DEVELOP_MODE', 4, '开启开发者模式', 4, '0:关闭\r\n1:开启', '是否开启开发者模式', 1383105995, 1383291877, 1, '1', 11),
(33, 'ALLOW_VISIT', 3, '不受限控制器方法', 0, '', '', 1386644047, 1386644741, 1, '0:article/draftbox\r\n1:article/mydocument\r\n2:Category/tree\r\n3:Index/verify\r\n4:file/upload\r\n5:file/download\r\n6:user/updatePassword\r\n7:user/updateNickname\r\n8:user/submitPassword\r\n9:user/submitNickname\r\n10:file/uploadpicture', 0),
(34, 'DENY_VISIT', 3, '超管专限控制器方法', 0, '', '仅超级管理员可访问的控制器方法', 1386644141, 1386644659, 1, '0:Addons/addhook\r\n1:Addons/edithook\r\n2:Addons/delhook\r\n3:Addons/updateHook\r\n4:Admin/getMenus\r\n5:Admin/recordList\r\n6:AuthManager/updateRules\r\n7:AuthManager/tree', 0),
(35, 'REPLY_LIST_ROWS', 0, '回复列表每页条数', 2, '', '', 1386645376, 1387178083, 1, '10', 0),
(36, 'ADMIN_ALLOW_IP', 2, '后台允许访问IP', 4, '', '多个用逗号分隔，如果不配置表示不限制IP访问', 1387165454, 1387165553, 1, '', 12),
(37, 'SHOW_PAGE_TRACE', 4, '是否显示页面Trace', 4, '0:关闭\r\n1:开启', '是否显示页面Trace信息', 1387165685, 1387165685, 1, '0', 1);

-- --------------------------------------------------------

--
-- 表的结构 `momo_config_dbset`
--

CREATE TABLE IF NOT EXISTS `momo_config_dbset` (
  `id` int(5) unsigned NOT NULL auto_increment,
  `db_type` varchar(255) default NULL COMMENT '数据库类型',
  `db_host` varchar(255) default NULL COMMENT '服务器地址',
  `db_name` varchar(255) default NULL COMMENT '数据库名',
  `db_user` varchar(255) default NULL COMMENT '用户名',
  `db_pwd` varchar(255) default NULL COMMENT '密码',
  `db_port` varchar(255) default '' COMMENT '端口',
  `db_prefix` varchar(255) default NULL COMMENT '数据库表前缀',
  `db_charset` varchar(255) default NULL COMMENT '字符集',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `momo_config_dbset`
--

INSERT INTO `momo_config_dbset` (`id`, `db_type`, `db_host`, `db_name`, `db_user`, `db_pwd`, `db_port`, `db_prefix`, `db_charset`) VALUES
(1, 'mysql', 'localhost', 'momo', 'root', '123456', '3306', 'momo_', 'utf8');

-- --------------------------------------------------------

--
-- 表的结构 `momo_config_netset`
--

CREATE TABLE IF NOT EXISTS `momo_config_netset` (
  `id` int(5) unsigned NOT NULL auto_increment,
  `web_name` varchar(255) default NULL COMMENT '网站名称',
  `web_title` text COMMENT '网站标题',
  `web_keywords` text COMMENT '网站关键词',
  `web_description` text COMMENT '网站描述',
  `web_remark` text COMMENT '备注，用于在EXTJS里添加编辑器测试',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `momo_config_netset`
--

INSERT INTO `momo_config_netset` (`id`, `web_name`, `web_title`, `web_keywords`, `web_description`, `web_remark`) VALUES
(1, '陌陌', '上海陌陌有限公司', '陌陌是一款基于地理位置的移动社交工具。使用者可以通过陌陌认识附近的人，免费发送文字消息、语音、照片以及精准的地理位置和身边的人更好的交流；可以使用陌陌创建和加入附近的兴趣小组、留言及附近活动和陌陌吧，丰富自己的社交圈。', '陌陌正式宣布，截止2014年6月30日，总注册用户突破1.48亿，月度活跃用户超过5234万，陌陌总群组总数超过356万。据了解，截止2014年7月10日，陌陌总用户数已经超过1.5亿。2014年陌陌卷入创意抄袭风波。', '<b>陌陌@编辑器测试</b><br><font color="008000">度月飞天 465264324@qq.com</font><br><font face="arial"><b></b></font>');

-- --------------------------------------------------------

--
-- 表的结构 `momo_grade`
--

CREATE TABLE IF NOT EXISTS `momo_grade` (
  `id` int(5) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `grade` varchar(50) NOT NULL COMMENT '等级',
  `country` varchar(50) NOT NULL default '0' COMMENT '国家',
  `spouse` varchar(50) NOT NULL COMMENT '配偶',
  `faction` varchar(50) NOT NULL COMMENT '帮派',
  `ranking` int(5) NOT NULL COMMENT '等级',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `momo_grade`
--

INSERT INTO `momo_grade` (`id`, `name`, `grade`, `country`, `spouse`, `faction`, `ranking`) VALUES
(1, '★妖人看招★', '185', '宋', 'YOYO', '度月飞天', 2),
(4, '阿布西西', '33', '汉', '月兔', '凯门王国', 64),
(5, '狼来了', '53', '清', '清名', '顶级盛世', 9),
(6, '九月', '90', '汉', '', '女儿国', 32),
(7, '小七', '90', '唐', '灵之', '聚义堂', 2),
(8, '新月英皇', '8', '明', '', '情爽天下', 55),
(9, '几味老友', '54', '汉', '', '惯饮孤独', 5),
(10, '初遇☀', '54', '汉', '', '听说你还记得我', 5),
(11, '闹笑☼', '5', '唐', '情何以琛', '后来提及', 6),
(12, '明月', '300', 'CH', '', '消泡剂人', 20);

-- --------------------------------------------------------

--
-- 表的结构 `momo_info`
--

CREATE TABLE IF NOT EXISTS `momo_info` (
  `id` int(5) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `momo_member`
--

CREATE TABLE IF NOT EXISTS `momo_member` (
  `uid` int(10) unsigned NOT NULL auto_increment COMMENT '用户ID',
  `username` char(16) NOT NULL default '' COMMENT '昵称',
  `password` varchar(255) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL default '0' COMMENT '性别',
  `birthday` date NOT NULL default '0000-00-00' COMMENT '生日',
  `qq` char(10) NOT NULL default '' COMMENT 'qq号',
  `score` mediumint(8) NOT NULL default '0' COMMENT '用户积分',
  `login` int(10) unsigned NOT NULL default '0' COMMENT '登录次数',
  `reg_ip` bigint(20) NOT NULL default '0' COMMENT '注册IP',
  `reg_time` int(10) unsigned NOT NULL default '0' COMMENT '注册时间',
  `last_login_ip` bigint(20) NOT NULL default '0' COMMENT '最后登录IP',
  `last_login_time` int(10) unsigned NOT NULL default '0' COMMENT '最后登录时间',
  `status` tinyint(4) NOT NULL default '0' COMMENT '会员状态',
  PRIMARY KEY  (`uid`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='会员表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `momo_member`
--

INSERT INTO `momo_member` (`uid`, `username`, `password`, `sex`, `birthday`, `qq`, `score`, `login`, `reg_ip`, `reg_time`, `last_login_ip`, `last_login_time`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0, '0000-00-00', '', 10, 37, 0, 1421123006, 1961137857, 1425523366, 1);

-- --------------------------------------------------------

--
-- 表的结构 `momo_user`
--

CREATE TABLE IF NOT EXISTS `momo_user` (
  `id` int(5) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `root` tinyint(1) default '0' COMMENT '是否管理员：1-是，0-否',
  `xm` varchar(20) NOT NULL,
  `xb` varchar(5) NOT NULL,
  `nl` int(5) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `momo_user`
--

INSERT INTO `momo_user` (`id`, `name`, `password`, `root`, `xm`, `xb`, `nl`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, '庆哥', '男', 23),
(2, 'qinga', '', 1, '测试', '女', 33);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
