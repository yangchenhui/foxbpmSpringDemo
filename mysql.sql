# Host: 127.0.0.1  (Version: 5.0.96-community-nt)
# Date: 2014-08-16 14:45:35
# Generator: MySQL-Front 5.3  (Build 4.108)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "au_userinfo"
#

DROP TABLE IF EXISTS `au_userinfo`;
CREATE TABLE `au_userinfo` (
  `USERID` varchar(64) NOT NULL default '' COMMENT '用户编号',
  `USERNAME` varchar(512) default NULL COMMENT '用户名称',
  `PASSWORD` varchar(512) default NULL COMMENT '密码',
  `EMAIL` varchar(250) default NULL COMMENT '邮箱',
  `TEL` varchar(255) default NULL COMMENT '电话',
  PRIMARY KEY  (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户';

#
# Structure for table "oa_leave"
#

DROP TABLE IF EXISTS `oa_leave`;
CREATE TABLE `oa_leave` (
  `Id` varchar(64) NOT NULL default '',
  `leave_person` varchar(255) default NULL COMMENT '请假人',
  `leave_begin` varchar(255) default NULL COMMENT '请假开始时间',
  `leave_days` varchar(255) default NULL COMMENT '天数',
  `leave_type` varchar(255) default NULL COMMENT '请假类型',
  `leave_reason` varchar(1024) default NULL COMMENT '请假事由',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='请假信息表';
