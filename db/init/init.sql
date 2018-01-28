DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(20) NOT NULL COMMENT '登录名',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态,0:禁用,1:激活',
  `salt` varchar(32)  NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_login_name` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000 DEFAULT CHARSET=utf8 COMMENT='用户表';


DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) NOT NULL,
  `role_desc` varchar(20) DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000 DEFAULT CHARSET=utf8 COMMENT='角色表';


DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `role_id` int(11) NOT NULL DEFAULT '0' COMMENT '角色ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_userid_roleid` (`user_id`,`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000  DEFAULT CHARSET=utf8 COMMENT='用户角色表';


DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) NOT NULL,
  `menu_url` varchar(50) NOT NULL,
  `permission` varchar(50) NOT NULL,
  `parent_id` varchar(32) NOT NULL,
  `parent_ids` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '分级菜单,默认0为一级菜单',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_roleid_menuid` (`role_id`, `menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色菜单关联表';

-- DROP TABLE IF EXISTS `permission`;
-- CREATE TABLE `permission` (
--   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
--   `expression` varchar(128) NOT NULL DEFAULT '' COMMENT '权限表达式',
--   `description` varchar(128) NOT NULL DEFAULT '' COMMENT '权限描述',
--   `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
--   `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
--   PRIMARY KEY (`id`),
--   UNIQUE KEY `uk_tenantId_expression` (`tenant_id`,`expression`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=10000000 DEFAULT CHARSET=utf8 COMMENT='权限表';
--
-- DROP TABLE IF EXISTS `role_permission`;
-- CREATE TABLE `role_permission` (
--   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
--   `role_id` int(11) NOT NULL DEFAULT '0' COMMENT '角色ID',
--   `permission_id` int(11) NOT NULL DEFAULT '0' COMMENT '权限ID',
--   `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
--   `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
--   PRIMARY KEY (`id`),
--   UNIQUE KEY `uk_roleid_permissionid` (`role_id`,`permission_id`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=10000000  DEFAULT CHARSET=utf8 COMMENT='用户角色表';

