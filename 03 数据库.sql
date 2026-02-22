-- Adminer 4.8.1 MySQL 8.0.33 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(40) NOT NULL DEFAULT '' COMMENT '用户UID',
  `to_uid` varchar(40) NOT NULL DEFAULT '' COMMENT '好友uid',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '对好友的备注',
  `flag` smallint NOT NULL DEFAULT '0' COMMENT '好友标示',
  `version` bigint NOT NULL DEFAULT '0' COMMENT '版本号',
  `vercode` varchar(100) NOT NULL DEFAULT '' COMMENT '验证码 加好友来源',
  `source_vercode` varchar(100) NOT NULL DEFAULT '' COMMENT '好友来源',
  `is_deleted` smallint NOT NULL DEFAULT '0' COMMENT '是否已删除',
  `is_alone` smallint NOT NULL DEFAULT '0' COMMENT '单项好友',
  `initiator` smallint NOT NULL DEFAULT '0' COMMENT '加好友发起方',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `to_uid_uid` (`uid`,`to_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `friend` (`id`, `uid`, `to_uid`, `remark`, `flag`, `version`, `vercode`, `source_vercode`, `is_deleted`, `is_alone`, `initiator`, `created_at`, `updated_at`) VALUES
(1,	'5e87364086ec4660b7fe932e4b9cb787',	'u_10000',	'',	0,	1000001,	'',	'',	0,	0,	0,	'2024-06-18 12:51:40',	'2024-06-18 12:51:40'),
(2,	'5e87364086ec4660b7fe932e4b9cb787',	'fileHelper',	'',	0,	1000002,	'',	'',	0,	0,	0,	'2024-06-18 12:51:40',	'2024-06-18 12:51:40'),
(3,	'72f6c08f190f4322b622680734fbf744',	'u_10000',	'',	0,	1000003,	'',	'',	0,	0,	0,	'2024-06-18 12:54:08',	'2024-06-18 12:54:08'),
(4,	'72f6c08f190f4322b622680734fbf744',	'fileHelper',	'',	0,	1000004,	'',	'',	0,	0,	0,	'2024-06-18 12:54:08',	'2024-06-18 12:54:08'),
(5,	'72f6c08f190f4322b622680734fbf744',	'admin',	'',	0,	1001001,	'7472cbae1a6749f5a5c0cab75687c54a@4',	'f1d2b521833d4cdf91514f479d64d9ac@1',	0,	0,	0,	'2024-06-21 07:03:35',	'2024-06-21 07:03:35'),
(6,	'admin',	'72f6c08f190f4322b622680734fbf744',	'',	0,	1001001,	'18e90549f5d849ccadaa2303e5c3e606@4',	'f1d2b521833d4cdf91514f479d64d9ac@1',	0,	0,	1,	'2024-06-21 07:03:35',	'2024-06-21 07:03:35'),
(7,	'5e87364086ec4660b7fe932e4b9cb787',	'72f6c08f190f4322b622680734fbf744',	'',	0,	1003001,	'868f7325feae4d7aa3e46324a6b209db@4',	'b4b002da0fe84fcabca4c26158c93c65@2',	0,	0,	0,	'2024-06-25 06:58:20',	'2024-06-25 06:58:20'),
(8,	'72f6c08f190f4322b622680734fbf744',	'5e87364086ec4660b7fe932e4b9cb787',	'',	0,	1003001,	'e79540d651a34699a52b319e6816175a@4',	'b4b002da0fe84fcabca4c26158c93c65@2',	0,	0,	1,	'2024-06-25 06:58:20',	'2024-06-25 06:58:20'),
(9,	'dc26cbe5a083456a841a45c1b4dabcf8',	'u_10000',	'',	0,	1003002,	'',	'',	0,	0,	0,	'2024-07-04 09:28:50',	'2024-07-04 09:28:50'),
(10,	'dc26cbe5a083456a841a45c1b4dabcf8',	'fileHelper',	'',	0,	1003003,	'',	'',	0,	0,	0,	'2024-07-04 09:28:50',	'2024-07-04 09:28:50'),
(11,	'6765ee0075d14fe4a14551927c8119c1',	'u_10000',	'',	0,	1003004,	'',	'',	0,	0,	0,	'2024-07-04 09:29:24',	'2024-07-04 09:29:24'),
(12,	'6765ee0075d14fe4a14551927c8119c1',	'fileHelper',	'',	0,	1003005,	'',	'',	0,	0,	0,	'2024-07-04 09:29:24',	'2024-07-04 09:29:24'),
(13,	'd39d072025d547909a8bef3df86e867d',	'u_10000',	'',	0,	1003006,	'',	'',	0,	0,	0,	'2024-07-04 10:02:00',	'2024-07-04 10:02:00'),
(14,	'd39d072025d547909a8bef3df86e867d',	'fileHelper',	'',	0,	1003007,	'',	'',	0,	0,	0,	'2024-07-04 10:02:00',	'2024-07-04 10:02:00');

DROP TABLE IF EXISTS `friend_apply_record`;
CREATE TABLE `friend_apply_record` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uid` varchar(40) NOT NULL DEFAULT '',
  `to_uid` varchar(40) NOT NULL DEFAULT '',
  `remark` varchar(200) NOT NULL DEFAULT '',
  `status` smallint NOT NULL DEFAULT '1',
  `token` varchar(200) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `friend_apply_record_uid_touidx` (`uid`,`to_uid`),
  KEY `friend_apply_record_uidx` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_no` varchar(40) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `creator` varchar(40) NOT NULL DEFAULT '',
  `status` smallint NOT NULL DEFAULT '0',
  `forbidden` smallint NOT NULL DEFAULT '0' COMMENT '群禁言',
  `invite` smallint NOT NULL DEFAULT '0' COMMENT '群邀请开关',
  `forbidden_add_friend` smallint NOT NULL DEFAULT '0',
  `allow_view_history_msg` smallint NOT NULL DEFAULT '1',
  `version` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notice` varchar(400) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '群头像',
  `is_upload_avatar` smallint NOT NULL DEFAULT '0' COMMENT '群头像是否已经被用户上传',
  `group_type` smallint NOT NULL DEFAULT '0' COMMENT '群类型',
  `category` varchar(40) NOT NULL DEFAULT '0' COMMENT '群分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_groupNo` (`group_no`),
  KEY `group_creator` (`creator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `group` (`id`, `group_no`, `name`, `creator`, `status`, `forbidden`, `invite`, `forbidden_add_friend`, `allow_view_history_msg`, `version`, `created_at`, `updated_at`, `notice`, `avatar`, `is_upload_avatar`, `group_type`, `category`) VALUES
(1,	'7cfd06b569634f979c93c5f50896e947',	'user、文件传输助手、系统账号',	'5e87364086ec4660b7fe932e4b9cb787',	1,	0,	0,	0,	1,	1000001,	'2024-06-21 06:58:57',	'2024-06-21 06:58:57',	'',	'',	0,	0,	''),
(2,	'7af47a38ab784cf98a0c2bafd180c07f',	'user、文件传输助手、系统账号',	'5e87364086ec4660b7fe932e4b9cb787',	1,	1,	1,	1,	1,	1000002,	'2024-06-21 07:14:05',	'2024-06-21 07:14:05',	'',	'',	0,	0,	''),
(3,	'a0436105b997480ab61a80d844de0379',	'交流群',	'72f6c08f190f4322b622680734fbf744',	1,	0,	0,	0,	1,	1003001,	'2024-06-21 07:21:50',	'2024-06-21 07:21:50',	'hi',	'group/12/a0436105b997480ab61a80d844de0379.png',	1,	0,	''),
(4,	'eba682c78c5d472a8adb076f0b72bea7',	'user、user1、文件传输助手、系统',	'5e87364086ec4660b7fe932e4b9cb787',	1,	0,	0,	0,	1,	1001001,	'2024-06-25 06:58:57',	'2024-06-25 06:58:57',	'',	'',	0,	0,	''),
(5,	'c0187bbac43047c8839daf7babc3b235',	'user、user1、超级管理员',	'72f6c08f190f4322b622680734fbf744',	1,	0,	0,	0,	1,	1002002,	'2024-06-25 07:19:55',	'2024-06-25 07:19:55',	'hu',	'',	0,	0,	'');

DROP TABLE IF EXISTS `member_readed`;
CREATE TABLE `member_readed` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `clone_no` varchar(40) NOT NULL DEFAULT '',
  `message_id` varchar(20) NOT NULL DEFAULT '',
  `channel_id` varchar(100) NOT NULL DEFAULT '',
  `channel_type` smallint NOT NULL DEFAULT '0',
  `uid` varchar(40) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `message_uid_idx` (`message_id`,`uid`),
  KEY `channel_idx` (`channel_id`,`channel_type`),
  KEY `uid_idx` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `member_readed` (`id`, `clone_no`, `message_id`, `channel_id`, `channel_type`, `uid`, `created_at`, `updated_at`) VALUES
(1,	'',	'1804047538345476096',	'admin@72f6c08f190f4322b622680734fbf744',	1,	'admin',	'2024-06-25 06:53:40',	'2024-06-25 06:53:40'),
(2,	'',	'1804047668578615296',	'admin@72f6c08f190f4322b622680734fbf744',	1,	'admin',	'2024-06-25 06:53:40',	'2024-06-25 06:53:40'),
(3,	'',	'1804051926841556992',	'admin@72f6c08f190f4322b622680734fbf744',	1,	'admin',	'2024-06-25 06:53:40',	'2024-06-25 06:53:40'),
(4,	'',	'1804051934387109888',	'admin@72f6c08f190f4322b622680734fbf744',	1,	'admin',	'2024-06-25 06:53:40',	'2024-06-25 06:53:40'),
(5,	'',	'1804051999897944064',	'admin@72f6c08f190f4322b622680734fbf744',	1,	'admin',	'2024-06-25 06:53:40',	'2024-06-25 06:53:40'),
(6,	'',	'1804052379079802880',	'a0436105b997480ab61a80d844de0379',	2,	'admin',	'2024-06-25 06:53:42',	'2024-06-25 06:53:42'),
(7,	'',	'1804053173061550080',	'a0436105b997480ab61a80d844de0379',	2,	'admin',	'2024-06-25 06:53:42',	'2024-06-25 06:53:42'),
(8,	'',	'1804053244779954176',	'a0436105b997480ab61a80d844de0379',	2,	'admin',	'2024-06-25 06:53:42',	'2024-06-25 06:53:42'),
(9,	'',	'1804053251071410176',	'a0436105b997480ab61a80d844de0379',	2,	'admin',	'2024-06-25 06:53:42',	'2024-06-25 06:53:42'),
(10,	'',	'1804053284210606080',	'a0436105b997480ab61a80d844de0379',	2,	'admin',	'2024-06-25 06:53:42',	'2024-06-25 06:53:42'),
(15,	'',	'1805494604535955456',	'admin@72f6c08f190f4322b622680734fbf744',	1,	'admin',	'2024-06-25 06:53:54',	'2024-06-25 06:53:54'),
(16,	'',	'1805494619073413120',	'admin@72f6c08f190f4322b622680734fbf744',	1,	'72f6c08f190f4322b622680734fbf744',	'2024-06-25 06:53:57',	'2024-06-25 06:53:57'),
(17,	'',	'1805494627462021120',	'admin@72f6c08f190f4322b622680734fbf744',	1,	'72f6c08f190f4322b622680734fbf744',	'2024-06-25 06:53:59',	'2024-06-25 06:53:59'),
(18,	'',	'1805494703924183040',	'admin@72f6c08f190f4322b622680734fbf744',	1,	'admin',	'2024-06-25 06:54:18',	'2024-06-25 06:54:18'),
(19,	'',	'1805494728288894976',	'admin@72f6c08f190f4322b622680734fbf744',	1,	'admin',	'2024-06-25 06:54:24',	'2024-06-25 06:54:24'),
(20,	'',	'1805494736224518144',	'admin@72f6c08f190f4322b622680734fbf744',	1,	'admin',	'2024-06-25 06:54:26',	'2024-06-25 06:54:26'),
(21,	'',	'1805494768516464640',	'admin@72f6c08f190f4322b622680734fbf744',	1,	'admin',	'2024-06-25 06:54:32',	'2024-06-25 06:54:32'),
(22,	'',	'1805494937131679744',	'admin@72f6c08f190f4322b622680734fbf744',	1,	'admin',	'2024-06-25 06:55:14',	'2024-06-25 06:55:14'),
(23,	'',	'1805495897480495104',	'eba682c78c5d472a8adb076f0b72bea7',	2,	'72f6c08f190f4322b622680734fbf744',	'2024-06-25 07:00:14',	'2024-06-25 07:00:14'),
(24,	'',	'1805495946545463296',	'eba682c78c5d472a8adb076f0b72bea7',	2,	'72f6c08f190f4322b622680734fbf744',	'2024-06-25 07:00:14',	'2024-06-25 07:00:14'),
(25,	'',	'1805496047322005504',	'eba682c78c5d472a8adb076f0b72bea7',	2,	'72f6c08f190f4322b622680734fbf744',	'2024-06-25 07:00:14',	'2024-06-25 07:00:14'),
(29,	'',	'1805501107175161856',	'eba682c78c5d472a8adb076f0b72bea7',	2,	'5e87364086ec4660b7fe932e4b9cb787',	'2024-07-04 09:07:04',	'2024-07-04 09:07:04'),
(30,	'',	'1805501110106980352',	'eba682c78c5d472a8adb076f0b72bea7',	2,	'5e87364086ec4660b7fe932e4b9cb787',	'2024-07-04 09:07:04',	'2024-07-04 09:07:04'),
(31,	'',	'1809422768358293504',	'5e87364086ec4660b7fe932e4b9cb787@72f6c08f190f4322b622680734fbf744',	1,	'72f6c08f190f4322b622680734fbf744',	'2024-07-06 03:04:13',	'2024-07-06 03:04:13'),
(32,	'',	'1809423166536155136',	'5e87364086ec4660b7fe932e4b9cb787@72f6c08f190f4322b622680734fbf744',	1,	'5e87364086ec4660b7fe932e4b9cb787',	'2024-07-06 03:05:23',	'2024-07-06 03:05:23'),
(33,	'',	'1804052379079802880',	'a0436105b997480ab61a80d844de0379',	2,	'5e87364086ec4660b7fe932e4b9cb787',	'2024-07-06 03:05:47',	'2024-07-06 03:05:47'),
(34,	'',	'1804053173061550080',	'a0436105b997480ab61a80d844de0379',	2,	'5e87364086ec4660b7fe932e4b9cb787',	'2024-07-06 03:05:47',	'2024-07-06 03:05:47'),
(35,	'',	'1804053244779954176',	'a0436105b997480ab61a80d844de0379',	2,	'5e87364086ec4660b7fe932e4b9cb787',	'2024-07-06 03:05:47',	'2024-07-06 03:05:47'),
(36,	'',	'1804053251071410176',	'a0436105b997480ab61a80d844de0379',	2,	'5e87364086ec4660b7fe932e4b9cb787',	'2024-07-06 03:05:47',	'2024-07-06 03:05:47'),
(37,	'',	'1804053284210606080',	'a0436105b997480ab61a80d844de0379',	2,	'5e87364086ec4660b7fe932e4b9cb787',	'2024-07-06 03:05:47',	'2024-07-06 03:05:47'),
(46,	'',	'1809423648088391680',	'a0436105b997480ab61a80d844de0379',	2,	'5e87364086ec4660b7fe932e4b9cb787',	'2024-07-06 03:06:31',	'2024-07-06 03:06:31'),
(51,	'',	'1809423775964332032',	'a0436105b997480ab61a80d844de0379',	2,	'5e87364086ec4660b7fe932e4b9cb787',	'2024-07-06 03:07:01',	'2024-07-06 03:07:01'),
(55,	'',	'1809424048619257856',	'a0436105b997480ab61a80d844de0379',	2,	'72f6c08f190f4322b622680734fbf744',	'2024-07-06 03:08:07',	'2024-07-06 03:08:07'),
(60,	'',	'1809951434095984640',	'a0436105b997480ab61a80d844de0379',	2,	'72f6c08f190f4322b622680734fbf744',	'2024-07-07 14:04:39',	'2024-07-07 14:04:39'),
(63,	'',	'1809951692087623680',	'a0436105b997480ab61a80d844de0379',	2,	'5e87364086ec4660b7fe932e4b9cb787',	'2024-07-07 14:04:49',	'2024-07-07 14:04:49');

DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `message_id` varchar(20) NOT NULL DEFAULT '',
  `message_seq` bigint NOT NULL DEFAULT '0',
  `client_msg_no` varchar(40) NOT NULL DEFAULT '',
  `header` varchar(100) NOT NULL DEFAULT '',
  `setting` smallint NOT NULL DEFAULT '0',
  `signal` smallint NOT NULL DEFAULT '0',
  `from_uid` varchar(40) NOT NULL DEFAULT '',
  `channel_id` varchar(100) NOT NULL DEFAULT '',
  `channel_type` smallint NOT NULL DEFAULT '0',
  `timestamp` bigint NOT NULL DEFAULT '0',
  `payload` mediumblob NOT NULL,
  `is_deleted` smallint NOT NULL DEFAULT '0',
  `voice_status` smallint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expire` int NOT NULL DEFAULT '0' COMMENT '消息过期时长',
  `expire_at` bigint NOT NULL DEFAULT '0' COMMENT '消息过期时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `message_id` (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `message` (`id`, `message_id`, `message_seq`, `client_msg_no`, `header`, `setting`, `signal`, `from_uid`, `channel_id`, `channel_type`, `timestamp`, `payload`, `is_deleted`, `voice_status`, `created_at`, `updated_at`, `expire`, `expire_at`) VALUES
(1,	'1804046068858486784',	1,	'ebf62907c86b6050cc5630974d2854533',	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	128,	0,	'5e87364086ec4660b7fe932e4b9cb787',	'5e87364086ec4660b7fe932e4b9cb787@fileHelper',	1,	1718953075,	'{\"content\":\"hi\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-21 06:57:55',	'2024-06-21 06:57:55',	0,	0),
(2,	'1804046299629092864',	2,	'19e1fdfe73e1172796baeaef1017ef273',	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	128,	0,	'5e87364086ec4660b7fe932e4b9cb787',	'5e87364086ec4660b7fe932e4b9cb787@fileHelper',	1,	1718953130,	'{\"content\":\"hi\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-21 06:58:50',	'2024-06-21 06:58:50',	0,	0),
(3,	'1804050770140594176',	1,	'056abab991644b5b9aab09d3682ece0b0',	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	0,	0,	'u_10000',	'fileHelper@u_10000',	1,	1718954198,	'{\"content\":\"hh\",\"type\":1}',	0,	0,	'2024-06-21 07:16:38',	'2024-06-21 07:16:38',	0,	0),
(4,	'1804440900907040768',	3,	'3cdcac3e7596c5756717d5e05ae4fe813',	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	128,	0,	'5e87364086ec4660b7fe932e4b9cb787',	'5e87364086ec4660b7fe932e4b9cb787@fileHelper',	1,	1719047212,	'{\"content\":\"啦啦啦\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-22 09:06:52',	'2024-06-22 09:06:52',	0,	0),
(5,	'1804441062505185280',	4,	'3f2e849554db424557066d118a95356d3',	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	128,	0,	'5e87364086ec4660b7fe932e4b9cb787',	'5e87364086ec4660b7fe932e4b9cb787@fileHelper',	1,	1719047250,	'{\"width\":500,\"height\":500,\"url\":\"file/preview/chat/1/fileHelper/67A5967FDDD124508DAD4B2807BBC784\",\"type\":2}',	0,	0,	'2024-06-22 09:07:31',	'2024-06-22 09:07:31',	0,	0);

DROP TABLE IF EXISTS `message1`;
CREATE TABLE `message1` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `message_id` varchar(20) NOT NULL DEFAULT '',
  `message_seq` bigint NOT NULL DEFAULT '0',
  `client_msg_no` varchar(40) NOT NULL DEFAULT '',
  `setting` smallint NOT NULL DEFAULT '0',
  `signal` smallint NOT NULL DEFAULT '0',
  `header` varchar(100) NOT NULL DEFAULT '',
  `from_uid` varchar(40) NOT NULL DEFAULT '',
  `channel_id` varchar(100) NOT NULL DEFAULT '',
  `channel_type` smallint NOT NULL DEFAULT '0',
  `timestamp` bigint NOT NULL DEFAULT '0',
  `payload` mediumblob NOT NULL,
  `is_deleted` smallint NOT NULL DEFAULT '0',
  `voice_status` smallint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expire` int NOT NULL DEFAULT '0' COMMENT '消息过期时长',
  `expire_at` bigint NOT NULL DEFAULT '0' COMMENT '消息过期时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `message_id` (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `message1` (`id`, `message_id`, `message_seq`, `client_msg_no`, `setting`, `signal`, `header`, `from_uid`, `channel_id`, `channel_type`, `timestamp`, `payload`, `is_deleted`, `voice_status`, `created_at`, `updated_at`, `expire`, `expire_at`) VALUES
(1,	'1804045916160655360',	1,	'60247f565945444691fee68e93a359190',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1718953038,	'{\"content\":\"欢迎使用航小语IM\\n本次登录的信息：172.19.0.6 2024-06-21 14:57:18\",\"type\":1}',	0,	0,	'2024-06-21 06:57:18',	'2024-06-21 06:57:18',	0,	0),
(2,	'1804046091029577728',	2,	'3b1df54c0191bdcb8535c907579022423',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'5e87364086ec4660b7fe932e4b9cb787',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1718953080,	'{\"content\":\"hi\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-21 06:58:00',	'2024-06-21 06:58:00',	0,	0),
(3,	'1804047143057489920',	1,	'63209a2e0d4244b8b11c9888a965b7c40',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'admin@u_10000',	1,	1718953331,	'{\"content\":\"欢迎使用航小语IM\\n本次登录的信息：172.19.0.6 2024-06-21 15:02:11\",\"type\":1}',	0,	0,	'2024-06-21 07:02:11',	'2024-06-21 07:02:11',	0,	0),
(4,	'1804049427292225536',	3,	'e08b67152e94401295a404b1855d97830',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1718953877,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：172.19.0.6 2024-06-21 14:57:18\\n本次登录的信息：192.168.65.1 2024-06-21 15:11:17\",\"type\":1}',	0,	0,	'2024-06-21 07:11:18',	'2024-06-21 07:11:18',	0,	0),
(5,	'1804049784416239616',	4,	'5031170938f04b0a8a7905646cc792280',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1718953963,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：192.168.65.1 2024-06-21 15:11:17\\n本次登录的信息：192.168.65.1 2024-06-21 15:12:43\",\"type\":1}',	0,	0,	'2024-06-21 07:12:43',	'2024-06-21 07:12:43',	0,	0),
(6,	'1804050111110578176',	5,	'1ecec62818fe4b6dad9b654ffd40e4420',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1718954040,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：192.168.65.1 2024-06-21 15:12:43\\n本次登录的信息：192.168.65.1 2024-06-21 15:14:00\",\"type\":1}',	0,	0,	'2024-06-21 07:14:01',	'2024-06-21 07:14:01',	0,	0),
(7,	'1804050130261770240',	1,	'a45e4111a5b24b2ca36656975c66a6070',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'7af47a38ab784cf98a0c2bafd180c07f',	2,	1718954045,	'{\"content\":\"user邀请{0},{1}加入群聊\",\"creator\":\"5e87364086ec4660b7fe932e4b9cb787\",\"creator_name\":\"user\",\"extra\":[{\"uid\":\"fileHelper\",\"name\":\"文件传输助手\"},{\"uid\":\"u_10000\",\"name\":\"系统账号\"}],\"type\":1001,\"version\":1000002}',	0,	0,	'2024-06-21 07:14:05',	'2024-06-21 07:14:05',	0,	0),
(8,	'1804050451121831936',	2,	'265c4a5aed75477cbc7e7a1f202a60b80',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'7af47a38ab784cf98a0c2bafd180c07f',	2,	1718954121,	'{\"content\":\"{0}开启了群禁言\",\"data\":{\"forbidden\":\"1\"},\"extra\":[{\"uid\":\"5e87364086ec4660b7fe932e4b9cb787\",\"name\":\"user\"}],\"type\":1005}',	0,	0,	'2024-06-21 07:15:22',	'2024-06-21 07:15:22',	0,	0),
(9,	'1804050462077353984',	3,	'a72268675fd9403baac151894e319cca0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'7af47a38ab784cf98a0c2bafd180c07f',	2,	1718954124,	'{\"content\":\"{0}已启用“群聊邀请确认”，群成员需群主或管理员确认才能邀请朋友进群。\",\"data\":{\"invite\":\"1\"},\"extra\":[{\"uid\":\"5e87364086ec4660b7fe932e4b9cb787\",\"name\":\"user\"}],\"type\":1005}',	0,	0,	'2024-06-21 07:15:25',	'2024-06-21 07:15:25',	0,	0),
(10,	'1804050579400425472',	4,	'114d1ca188a04c94908d9f2fcc2eb4c80',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'user',	'7af47a38ab784cf98a0c2bafd180c07f',	2,	1718954152,	'{\"content\":\"hh\",\"from_uid\":\"user\",\"type\":1}',	0,	0,	'2024-06-21 07:15:53',	'2024-06-21 07:15:53',	0,	0),
(11,	'1804050620739485696',	5,	'0d241e49e77547fabcdf8473378ef4570',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'user',	'7af47a38ab784cf98a0c2bafd180c07f',	2,	1718954162,	'{\"content\":\"h\",\"from_uid\":\"user\",\"type\":1}',	0,	0,	'2024-06-21 07:16:02',	'2024-06-21 07:16:02',	0,	0),
(12,	'1804050732190531584',	6,	'96ba5544ea1f479580caa96b4d22a5060',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1718954188,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：192.168.65.1 2024-06-21 15:14:00\\n本次登录的信息：192.168.65.1 2024-06-21 15:16:28\",\"type\":1}',	0,	0,	'2024-06-21 07:16:29',	'2024-06-21 07:16:29',	0,	0),
(13,	'1804050770178342912',	2,	'1419a16e2a0a41b996f6ed9b51343c460',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'admin@u_10000',	1,	1718954198,	'{\"content\":\"hh\",\"type\":1}',	0,	0,	'2024-06-21 07:16:38',	'2024-06-21 07:16:38',	0,	0),
(14,	'1804050770182537216',	7,	'455e0c73530941628544ab9b6dbfcd580',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1718954198,	'{\"content\":\"hh\",\"type\":1}',	0,	0,	'2024-06-21 07:16:38',	'2024-06-21 07:16:38',	0,	0),
(15,	'1804051129181405184',	8,	'2b34decc5ab949bc8dd10330ae12e0780',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1718954283,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：192.168.65.1 2024-06-21 15:16:28\\n本次登录的信息：192.168.65.1 2024-06-21 15:18:03\",\"type\":1}',	0,	0,	'2024-06-21 07:18:04',	'2024-06-21 07:18:04',	0,	0),
(16,	'1804051491548299264',	9,	'd05b7ec9e9a64b15a73192eed3fe11830',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1718954370,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：192.168.65.1 2024-06-21 15:18:03\\n本次登录的信息：192.168.65.1 2024-06-21 15:19:30\",\"type\":1}',	0,	0,	'2024-06-21 07:19:30',	'2024-06-21 07:19:30',	0,	0),
(17,	'1804051610519732224',	10,	'16be4f05da1d42d286ef11ccb32051430',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1718954398,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：192.168.65.1 2024-06-21 15:19:30\\n本次登录的信息：192.168.65.1 2024-06-21 15:19:58\",\"type\":1}',	0,	0,	'2024-06-21 07:19:58',	'2024-06-21 07:19:58',	0,	0),
(18,	'1804438212710498304',	11,	'ff8047657a5d4523b69def8a9f4fc48d0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1719046569,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：192.168.65.1 2024-06-21 15:19:58\\n本次登录的信息：172.19.0.8 2024-06-22 16:56:09\",\"type\":1}',	0,	0,	'2024-06-22 08:56:09',	'2024-06-22 08:56:09',	0,	0),
(19,	'1804438243878371328',	6,	'b1d885e71e48efd6e0d68ce78ca9feb13',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'5e87364086ec4660b7fe932e4b9cb787',	'7af47a38ab784cf98a0c2bafd180c07f',	2,	1719046576,	'{\"content\":\"hi、\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-22 08:56:17',	'2024-06-22 08:56:17',	0,	0),
(20,	'1804439129925091328',	12,	'75a93e7f1f0b4beabd2a44550d3104e80',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1719046789,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：172.19.0.8 2024-06-22 16:56:09\\n本次登录的信息：192.168.65.1 2024-06-22 16:59:49\",\"type\":1}',	0,	0,	'2024-06-22 08:59:50',	'2024-06-22 08:59:50',	0,	0),
(21,	'1804439214905884672',	13,	'2410cfbd57f84d65be60ed69f51a9ad60',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1719046810,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：192.168.65.1 2024-06-22 16:59:50\\n本次登录的信息：192.168.65.1 2024-06-22 17:00:10\",\"type\":1}',	0,	0,	'2024-06-22 09:00:10',	'2024-06-22 09:00:10',	0,	0),
(22,	'1804439336209350656',	14,	'4e5bdcd8f59b4d05b1a6a9d00ebef5580',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1719046839,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：192.168.65.1 2024-06-22 17:00:10\\n本次登录的信息：192.168.65.1 2024-06-22 17:00:39\",\"type\":1}',	0,	0,	'2024-06-22 09:00:39',	'2024-06-22 09:00:39',	0,	0),
(23,	'1804440093528686592',	15,	'b99869dd0b634d1fb26c9fa6a4455f020',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1719047019,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：192.168.65.1 2024-06-22 17:00:39\\n本次登录的信息：192.168.65.1 2024-06-22 17:03:39\",\"type\":1}',	0,	0,	'2024-06-22 09:03:40',	'2024-06-22 09:03:40',	0,	0),
(24,	'1805494519911677952',	3,	'2af240a44b0446c4897e1fe9672564890',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'admin@u_10000',	1,	1719298412,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：172.19.0.6 2024-06-21 15:02:11\\n本次登录的信息：172.19.0.2 2024-06-25 14:53:32\",\"type\":1}',	0,	0,	'2024-06-25 06:53:32',	'2024-06-25 06:53:32',	0,	0),
(25,	'1805495351419863040',	16,	'd40474d3728e4053b9fbd3090c9ccec90',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1719298610,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：192.168.65.1 2024-06-22 17:03:39\\n本次登录的信息：172.19.0.2 2024-06-25 14:56:50\",\"type\":1}',	0,	0,	'2024-06-25 06:56:51',	'2024-06-25 06:56:51',	0,	0),
(26,	'1805495689409462272',	17,	'136fc139b17a4317bd14ca52b5b9548b0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1719298691,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：172.19.0.2 2024-06-25 14:56:50\\n本次登录的信息：172.19.0.2 2024-06-25 14:58:11\",\"type\":1}',	0,	0,	'2024-06-25 06:58:11',	'2024-06-25 06:58:11',	0,	0),
(27,	'1808789361525784576',	18,	'bfec2115abc9483fbad7a3aa39e6e8e20',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1720083964,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：172.19.0.2 2024-06-25 14:58:11\\n本次登录的信息：192.168.65.1 2024-07-04 17:06:04\",\"type\":1}',	0,	0,	'2024-07-04 09:06:04',	'2024-07-04 09:06:04',	0,	0),
(28,	'1808789595253374976',	19,	'b147aa6af2254cc0a624ea5dec8d72dc0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1720084019,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：192.168.65.1 2024-07-04 17:06:04\\n本次登录的信息：192.168.65.1 2024-07-04 17:06:59\",\"type\":1}',	0,	0,	'2024-07-04 09:07:00',	'2024-07-04 09:07:00',	0,	0),
(29,	'1808799172992696320',	1,	'06d1a7011b1641a0b0f88839b40609f60',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'dc26cbe5a083456a841a45c1b4dabcf8@u_10000',	1,	1720086303,	'{\"content\":\"欢迎使用航小信 IM\\n本次登录的信息：192.168.65.1 2024-07-04 17:45:03\",\"type\":1}',	0,	0,	'2024-07-04 09:45:03',	'2024-07-04 09:45:03',	0,	0),
(30,	'1808807568714235904',	2,	'dc919a375da343f5b131d6f8111af8820',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'dc26cbe5a083456a841a45c1b4dabcf8@u_10000',	1,	1720088305,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：192.168.65.1 2024-07-04 17:45:03\\n本次登录的信息：192.168.65.1 2024-07-04 18:18:25\",\"type\":1}',	0,	0,	'2024-07-04 10:18:25',	'2024-07-04 10:18:25',	0,	0),
(31,	'1808813380933255168',	3,	'fd3f7a23358946f6bf55f54b0697eea10',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'dc26cbe5a083456a841a45c1b4dabcf8@u_10000',	1,	1720089690,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：192.168.65.1 2024-07-04 18:18:25\\n本次登录的信息：192.168.65.1 2024-07-04 18:41:30\",\"type\":1}',	0,	0,	'2024-07-04 10:41:31',	'2024-07-04 10:41:31',	0,	0),
(32,	'1808817795098476544',	4,	'e68ce25c7cb548539207735fc61102130',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'dc26cbe5a083456a841a45c1b4dabcf8@u_10000',	1,	1720090743,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：192.168.65.1 2024-07-04 18:41:30\\n本次登录的信息：192.168.65.1 2024-07-04 18:59:03\",\"type\":1}',	0,	0,	'2024-07-04 10:59:03',	'2024-07-04 10:59:03',	0,	0),
(33,	'1808817961520070656',	5,	'ba180f57076d493a90718c19c12daae80',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'dc26cbe5a083456a841a45c1b4dabcf8@u_10000',	1,	1720090782,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：192.168.65.1 2024-07-04 18:59:03\\n本次登录的信息：192.168.65.1 2024-07-04 18:59:42\",\"type\":1}',	0,	0,	'2024-07-04 10:59:43',	'2024-07-04 10:59:43',	0,	0),
(34,	'1808820394216390656',	20,	'fe4fda6417fe41728a96ba9295f9e1040',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1720091362,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：192.168.65.1 2024-07-04 17:06:59\\n本次登录的信息：192.168.65.1 2024-07-04 19:09:22\",\"type\":1}',	0,	0,	'2024-07-04 11:09:23',	'2024-07-04 11:09:23',	0,	0),
(35,	'1809420679548764160',	6,	'31b60741ef0c4e1fb5c3029d9e4bd0b30',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'dc26cbe5a083456a841a45c1b4dabcf8@u_10000',	1,	1720234482,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：192.168.65.1 2024-07-04 18:59:42\\n本次登录的信息：192.168.65.1 2024-07-06 10:54:42\",\"type\":1}',	0,	0,	'2024-07-06 02:54:42',	'2024-07-06 02:54:42',	0,	0),
(36,	'1809422619632467968',	21,	'c67c37866b9e4879b4141e34b5dc5e7e0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	1720234944,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：192.168.65.1 2024-07-04 19:09:22\\n本次登录的信息：192.168.65.1 2024-07-06 11:02:24\",\"type\":1}',	0,	0,	'2024-07-06 03:02:24',	'2024-07-06 03:02:24',	0,	0);

DROP TABLE IF EXISTS `message2`;
CREATE TABLE `message2` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `message_id` varchar(20) NOT NULL DEFAULT '',
  `message_seq` bigint NOT NULL DEFAULT '0',
  `client_msg_no` varchar(40) NOT NULL DEFAULT '',
  `setting` smallint NOT NULL DEFAULT '0',
  `signal` smallint NOT NULL DEFAULT '0',
  `header` varchar(100) NOT NULL DEFAULT '',
  `from_uid` varchar(40) NOT NULL DEFAULT '',
  `channel_id` varchar(100) NOT NULL DEFAULT '',
  `channel_type` smallint NOT NULL DEFAULT '0',
  `timestamp` bigint NOT NULL DEFAULT '0',
  `payload` mediumblob NOT NULL,
  `is_deleted` smallint NOT NULL DEFAULT '0',
  `voice_status` smallint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expire` int NOT NULL DEFAULT '0' COMMENT '消息过期时长',
  `expire_at` bigint NOT NULL DEFAULT '0' COMMENT '消息过期时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `message_id` (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `message2` (`id`, `message_id`, `message_seq`, `client_msg_no`, `setting`, `signal`, `header`, `from_uid`, `channel_id`, `channel_type`, `timestamp`, `payload`, `is_deleted`, `voice_status`, `created_at`, `updated_at`, `expire`, `expire_at`) VALUES
(1,	'1804045883919040512',	1,	'e182e627be4d46b4a8964ca373f7d6690',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'admin',	'admin@72f6c08f190f4322b622680734fbf744',	1,	1718953030,	'{\"content\":\"1\",\"from_uid\":\"admin\",\"type\":1}',	0,	0,	'2024-06-21 06:57:11',	'2024-06-21 06:57:11',	0,	0),
(2,	'1804047450789380096',	1,	'c4554a57083340dc80e2a53d2a2dfe780',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'u_10000@72f6c08f190f4322b622680734fbf744',	1,	1718953404,	'{\"content\":\"欢迎使用航小语IM\\n本次登录的信息：172.19.0.6 2024-06-21 15:03:24\",\"type\":1}',	0,	0,	'2024-06-21 07:03:24',	'2024-06-21 07:03:24',	0,	0),
(3,	'1804047496289189888',	2,	'10d8d29c3eb440caae3f9e66850527630',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'admin@72f6c08f190f4322b622680734fbf744',	1,	1718953415,	'{\"content\":\"我们已经是好友了，可以愉快的聊天了！\",\"type\":2000}',	0,	0,	'2024-06-21 07:03:35',	'2024-06-21 07:03:35',	0,	0),
(4,	'1804047496301772800',	3,	'e84371312dee49ac9e8c6aed48d92b4a0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'admin',	'admin@72f6c08f190f4322b622680734fbf744',	1,	1718953415,	'{\"content\":\"我是超级管理员\",\"type\":1}',	0,	0,	'2024-06-21 07:03:35',	'2024-06-21 07:03:35',	0,	0),
(5,	'1804047538345476096',	4,	'cd2b5457f3c00c25646eb16e807d5df53',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'admin@72f6c08f190f4322b622680734fbf744',	1,	1718953425,	'{\"content\":\"😡\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-21 07:03:45',	'2024-06-21 07:03:45',	0,	0),
(6,	'1804047668578615296',	5,	'5227c3af3691aed58a30701c47e6e97a3',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'admin@72f6c08f190f4322b622680734fbf744',	1,	1718953456,	'{\"width\":500,\"height\":500,\"url\":\"file/preview/chat/1/admin/8075BF70B583CCDBE50D291C08A81DCD\",\"type\":2}',	0,	0,	'2024-06-21 07:04:16',	'2024-06-21 07:04:16',	0,	0),
(7,	'1804050770190925824',	2,	'6bf670af88b2464ab775188fa45379c80',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'u_10000@72f6c08f190f4322b622680734fbf744',	1,	1718954198,	'{\"content\":\"hh\",\"type\":1}',	0,	0,	'2024-06-21 07:16:38',	'2024-06-21 07:16:38',	0,	0),
(8,	'1804051926841556992',	6,	'4924c22ae4312ab8a473a9bcf5cf86083',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'admin@72f6c08f190f4322b622680734fbf744',	1,	1718954473,	'{\"content\":\"hi\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-21 07:21:14',	'2024-06-21 07:21:14',	0,	0),
(9,	'1804051934387109888',	7,	'634cc947b87a76f475bdf2635542283b3',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'admin@72f6c08f190f4322b622680734fbf744',	1,	1718954475,	'{\"content\":\"hi\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-21 07:21:16',	'2024-06-21 07:21:16',	0,	0),
(10,	'1804051999897944064',	8,	'6183fe2616ab99cae0b72cbfc911e21a3',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'admin@72f6c08f190f4322b622680734fbf744',	1,	1718954491,	'{\"content\":\"no\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-21 07:21:31',	'2024-06-21 07:21:31',	0,	0),
(11,	'1804052080868982784',	1,	'd6494466e2ae44eaa44777613c75ded50',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'a0436105b997480ab61a80d844de0379',	2,	1718954510,	'{\"content\":\"user1邀请{0},{1},{2}加入群聊\",\"creator\":\"72f6c08f190f4322b622680734fbf744\",\"creator_name\":\"user1\",\"extra\":[{\"uid\":\"admin\",\"name\":\"超级管理员\"},{\"uid\":\"fileHelper\",\"name\":\"文件传输助手\"},{\"uid\":\"u_10000\",\"name\":\"系统账号\"}],\"type\":1001,\"version\":1000003}',	0,	0,	'2024-06-21 07:21:50',	'2024-06-21 07:21:50',	0,	0),
(12,	'1804052111076360192',	2,	'd273bf52338d4ee3a48f6bcee45ac0f10',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'a0436105b997480ab61a80d844de0379',	2,	1718954517,	'{\"content\":\"{0}修改群公告为\\\"hi\\\"\",\"data\":{\"notice\":\"hi\"},\"extra\":[{\"uid\":\"72f6c08f190f4322b622680734fbf744\",\"name\":\"user1\"}],\"type\":1005}',	0,	0,	'2024-06-21 07:21:57',	'2024-06-21 07:21:57',	0,	0),
(13,	'1804052135302660096',	3,	'92dc89bb41214a6692524d1b3e101e660',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'a0436105b997480ab61a80d844de0379',	2,	1718954523,	'{\"content\":\"{0}修改群名为\\\"hi\\\"\",\"data\":{\"name\":\"hi\"},\"extra\":[{\"uid\":\"72f6c08f190f4322b622680734fbf744\",\"name\":\"user1\"}],\"type\":1005}',	0,	0,	'2024-06-21 07:22:03',	'2024-06-21 07:22:03',	0,	0),
(14,	'1804052379079802880',	4,	'6acd20caff5e85ea5696db4f1ee1cccb3',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'a0436105b997480ab61a80d844de0379',	2,	1718954581,	'{\"content\":\"h@所有人 @所有人 \",\"type\":1,\"mention\":{\"all\":1}}',	0,	0,	'2024-06-21 07:23:01',	'2024-06-21 07:23:01',	0,	0),
(15,	'1804053125762383872',	5,	'e7e2ab5bd55a47c5bc3e82e94eb661440',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'a0436105b997480ab61a80d844de0379',	2,	1718954759,	'{\"content\":\"{0}开启了群禁言\",\"data\":{\"forbidden\":\"1\"},\"extra\":[{\"uid\":\"admin\",\"name\":\"超级管理员\"}],\"type\":1005}',	0,	0,	'2024-06-21 07:25:59',	'2024-06-21 07:25:59',	0,	0),
(16,	'1804053142153723904',	6,	'9bd41df4173c46baa8d2047ea15403030',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'a0436105b997480ab61a80d844de0379',	2,	1718954763,	'{\"content\":\"{0}关闭了群禁言\",\"data\":{\"forbidden\":\"0\"},\"extra\":[{\"uid\":\"admin\",\"name\":\"超级管理员\"}],\"type\":1005}',	0,	0,	'2024-06-21 07:26:03',	'2024-06-21 07:26:03',	0,	0),
(17,	'1804053173061550080',	7,	'a6b0c2da360b978c6e468982dc840af93',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'a0436105b997480ab61a80d844de0379',	2,	1718954770,	'{\"content\":\"s\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-21 07:26:10',	'2024-06-21 07:26:10',	0,	0),
(18,	'1804053232046047232',	8,	'b592dfa65c774c1eb21a8ffe9584ef040',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'a0436105b997480ab61a80d844de0379',	2,	1718954784,	'{\"content\":\"{0}开启了群禁言\",\"data\":{\"forbidden\":\"1\"},\"extra\":[{\"uid\":\"admin\",\"name\":\"超级管理员\"}],\"type\":1005}',	0,	0,	'2024-06-21 07:26:24',	'2024-06-21 07:26:24',	0,	0),
(19,	'1804053244779954176',	9,	'd03e3c3636faf38d9de47d9b5c93e55c3',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'a0436105b997480ab61a80d844de0379',	2,	1718954787,	'{\"content\":\"s\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-21 07:26:28',	'2024-06-21 07:26:28',	0,	0),
(20,	'1804053251071410176',	10,	'efa40279adad6b4e5774c5a9f7ecb90b3',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'a0436105b997480ab61a80d844de0379',	2,	1718954789,	'{\"content\":\"asd\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-21 07:26:29',	'2024-06-21 07:26:29',	0,	0),
(21,	'1804053273569656832',	11,	'68f880d024c845b2a472be439dcbb3310',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'a0436105b997480ab61a80d844de0379',	2,	1718954794,	'{\"content\":\"{0}关闭了群禁言\",\"data\":{\"forbidden\":\"0\"},\"extra\":[{\"uid\":\"admin\",\"name\":\"超级管理员\"}],\"type\":1005}',	0,	0,	'2024-06-21 07:26:34',	'2024-06-21 07:26:34',	0,	0),
(22,	'1804053284210606080',	12,	'dc8848cd6960cd8d3efef4266e63f8b93',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'a0436105b997480ab61a80d844de0379',	2,	1718954797,	'{\"content\":\"as\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-21 07:26:37',	'2024-06-21 07:26:37',	0,	0),
(23,	'1804053301902180352',	13,	'0a2c7e6c235d4ae4ae3427e0df100b7b0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'a0436105b997480ab61a80d844de0379',	2,	1718954801,	'{\"content\":\"{0}封禁了该群\",\"data\":{\"status\":\"0\"},\"extra\":[{\"uid\":\"admin\",\"name\":\"超级管理员\"}],\"type\":1005}',	0,	0,	'2024-06-21 07:26:41',	'2024-06-21 07:26:41',	0,	0),
(24,	'1804053355798986752',	14,	'3bb69bd4787b4972951c5fc5a9ada8dc0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'a0436105b997480ab61a80d844de0379',	2,	1718954814,	'{\"content\":\"{0}解禁了该群\",\"data\":{\"status\":\"1\"},\"extra\":[{\"uid\":\"admin\",\"name\":\"超级管理员\"}],\"type\":1005}',	0,	0,	'2024-06-21 07:26:54',	'2024-06-21 07:26:54',	0,	0),
(25,	'1804438143705808896',	9,	'9b4f6de8f02141dcbb454618c70b35df0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'admin',	'admin@72f6c08f190f4322b622680734fbf744',	1,	1719046552,	'{\"content\":\"123\",\"from_uid\":\"admin\",\"type\":1}',	0,	0,	'2024-06-22 08:55:53',	'2024-06-22 08:55:53',	0,	0),
(26,	'1805494314655023104',	3,	'3dfe9eef716b4025a1e23b222686f1c50',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'u_10000@72f6c08f190f4322b622680734fbf744',	1,	1719298363,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：172.19.0.6 2024-06-21 15:03:24\\n本次登录的信息：172.19.0.2 2024-06-25 14:52:43\",\"type\":1}',	0,	0,	'2024-06-25 06:52:43',	'2024-06-25 06:52:43',	0,	0),
(27,	'1805494604535955456',	10,	'c985d07e0628a46120ef156d0297ca9a3',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'admin@72f6c08f190f4322b622680734fbf744',	1,	1719298432,	'{\"content\":\"你好\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-25 06:53:52',	'2024-06-25 06:53:52',	0,	0),
(28,	'1805494619073413120',	11,	'9aa02f40c50182d50e9787de9b4bf7a33',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'admin',	'admin@72f6c08f190f4322b622680734fbf744',	1,	1719298436,	'{\"content\":\"哈哈哈\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-25 06:53:56',	'2024-06-25 06:53:56',	0,	0),
(29,	'1805494627462021120',	12,	'e3223bb4d3d5687510f93269f68fd8a33',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'admin',	'admin@72f6c08f190f4322b622680734fbf744',	1,	1719298438,	'{\"content\":\"大是大非就是地方\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-25 06:53:58',	'2024-06-25 06:53:58',	0,	0),
(30,	'1805494703924183040',	13,	'3a6e0c7ed546bf12667d875a65b72c7f3',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'admin@72f6c08f190f4322b622680734fbf744',	1,	1719298456,	'{\"content\":\"@超级管理员 \",\"type\":1,\"mention\":{\"uids\":[\"admin\"]},\"reply\":{\"message_id\":\"1804438143705808896\",\"message_seq\":9,\"from_uid\":\"admin\",\"from_name\":\"超级管理员\",\"payload\":{\"content\":\"123\",\"type\":1}}}',	0,	0,	'2024-06-25 06:54:16',	'2024-06-25 06:54:16',	0,	0),
(31,	'1805494728288894976',	14,	'28c7d4940e852b4f2aa551469c97dd1e3',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'admin@72f6c08f190f4322b622680734fbf744',	1,	1719298462,	'{\"content\":\"123\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-25 06:54:22',	'2024-06-25 06:54:22',	0,	0),
(32,	'1805494736224518144',	15,	'917c48308e8538037935109ce76007f83',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'admin@72f6c08f190f4322b622680734fbf744',	1,	1719298464,	'{\"content\":\"123321\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-25 06:54:24',	'2024-06-25 06:54:24',	0,	0),
(33,	'1805494768516464640',	16,	'b130d331f7f06ba73b01d6561dc13f063',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'admin@72f6c08f190f4322b622680734fbf744',	1,	1719298471,	'{\"content\":\"123\\n\\n释放\\n\\n\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-25 06:54:32',	'2024-06-25 06:54:32',	0,	0),
(34,	'1805494937131679744',	17,	'03214daccb5aa53608f50910ffbe48cd3',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'admin@72f6c08f190f4322b622680734fbf744',	1,	1719298512,	'{\"content\":\"@超级管理员 \",\"type\":1,\"mention\":{\"uids\":[\"admin\"]}}',	0,	0,	'2024-06-25 06:55:12',	'2024-06-25 06:55:12',	0,	0),
(35,	'1805495208918384640',	18,	'9fa730fe1dd35ecb15238bb98dd55e1b3',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'admin@72f6c08f190f4322b622680734fbf744',	1,	1719298576,	'{\"content\":\"hi\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-25 06:56:17',	'2024-06-25 06:56:17',	0,	0),
(36,	'1805495446970302464',	4,	'be28021fd065454397e29b072ee1632b0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'u_10000@72f6c08f190f4322b622680734fbf744',	1,	1719298633,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：172.19.0.2 2024-06-25 14:52:43\\n本次登录的信息：172.19.0.2 2024-06-25 14:57:13\",\"type\":1}',	0,	0,	'2024-06-25 06:57:13',	'2024-06-25 06:57:13',	0,	0),
(37,	'1805495881760243712',	1,	'db70b44c044c432c8b9c9aaa201538800',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'eba682c78c5d472a8adb076f0b72bea7',	2,	1719298737,	'{\"content\":\"user邀请{0},{1},{2}加入群聊\",\"creator\":\"5e87364086ec4660b7fe932e4b9cb787\",\"creator_name\":\"user\",\"extra\":[{\"uid\":\"72f6c08f190f4322b622680734fbf744\",\"name\":\"user1\"},{\"uid\":\"fileHelper\",\"name\":\"文件传输助手\"},{\"uid\":\"u_10000\",\"name\":\"系统账号\"}],\"type\":1001,\"version\":1001001}',	0,	0,	'2024-06-25 06:58:57',	'2024-06-25 06:58:57',	0,	0),
(38,	'1805495897480495104',	2,	'21bc3eeadbc037397afa3c7fe84c829b3',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'5e87364086ec4660b7fe932e4b9cb787',	'eba682c78c5d472a8adb076f0b72bea7',	2,	1719298741,	'{\"content\":\"hi\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-25 06:59:01',	'2024-06-25 06:59:01',	0,	0),
(39,	'1805495946545463296',	3,	'51b5312c3b4206e113751dd4afb865b03',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'5e87364086ec4660b7fe932e4b9cb787',	'eba682c78c5d472a8adb076f0b72bea7',	2,	1719298752,	'{\"content\":\"😧\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-25 06:59:12',	'2024-06-25 06:59:12',	0,	0),
(40,	'1805496047322005504',	4,	'af20e493de813b6589d44e6302687e523',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'5e87364086ec4660b7fe932e4b9cb787',	'eba682c78c5d472a8adb076f0b72bea7',	2,	1719298776,	'{\"width\":500,\"height\":500,\"url\":\"file/preview/chat/2/eba682c78c5d472a8adb076f0b72bea7/4C90333866F3877B7359C957D8A01617\",\"type\":2}',	0,	0,	'2024-06-25 06:59:36',	'2024-06-25 06:59:36',	0,	0),
(41,	'1805496197452922880',	5,	'ae9004f52f784cef9fdab1da6fc415240',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'u_10000@72f6c08f190f4322b622680734fbf744',	1,	1719298812,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：172.19.0.2 2024-06-25 14:57:13\\n本次登录的信息：172.19.0.2 2024-06-25 15:00:12\",\"type\":1}',	0,	0,	'2024-06-25 07:00:12',	'2024-06-25 07:00:12',	0,	0),
(42,	'1805496244257161216',	5,	'aa03685154754a4bcd13150a84d692f23',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'eba682c78c5d472a8adb076f0b72bea7',	2,	1719298823,	'{\"channel_type\":2,\"users\":[{\"uid\":\"5e87364086ec4660b7fe932e4b9cb787\",\"name\":\"user\"}],\"msgs\":[{\"message_id\":\"1805496047322005504\",\"from_uid\":\"5e87364086ec4660b7fe932e4b9cb787\",\"timestamp\":1719298776,\"payload\":{\"height\":500,\"type\":2,\"url\":\"file/preview/chat/2/eba682c78c5d472a8adb076f0b72bea7/4C90333866F3877B7359C957D8A01617\",\"width\":500}}],\"type\":11}',	0,	0,	'2024-06-25 07:00:23',	'2024-06-25 07:00:23',	0,	0),
(43,	'1805500517770592256',	6,	'63c8c7da49fb45c3819c4e14ce6848af0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'u_10000@72f6c08f190f4322b622680734fbf744',	1,	1719299842,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：172.19.0.2 2024-06-25 15:00:12\\n本次登录的信息：172.19.0.2 2024-06-25 15:17:22\",\"type\":1}',	0,	0,	'2024-06-25 07:17:23',	'2024-06-25 07:17:23',	0,	0),
(44,	'1805500971208409088',	7,	'64d5c0763b9a4ec1a4dccd6809180d590',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'u_10000@72f6c08f190f4322b622680734fbf744',	1,	1719299950,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：172.19.0.2 2024-06-25 15:17:22\\n本次登录的信息：172.19.0.2 2024-06-25 15:19:10\",\"type\":1}',	0,	0,	'2024-06-25 07:19:11',	'2024-06-25 07:19:11',	0,	0),
(45,	'1805500986748305408',	6,	'ba0f49f4e93c4ec9ad49474a7df444810',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'user',	'eba682c78c5d472a8adb076f0b72bea7',	2,	1719299954,	'{\"content\":\"123\",\"from_uid\":\"user\",\"type\":1}',	0,	0,	'2024-06-25 07:19:14',	'2024-06-25 07:19:14',	0,	0),
(46,	'1805501046580051968',	7,	'09e26dff53334d72a9a915da42ac21350',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'eba682c78c5d472a8adb076f0b72bea7',	2,	1719299968,	'{\"content\":\"{0}开启了群禁言\",\"data\":{\"forbidden\":\"1\"},\"extra\":[{\"uid\":\"admin\",\"name\":\"超级管理员\"}],\"type\":1005}',	0,	0,	'2024-06-25 07:19:29',	'2024-06-25 07:19:29',	0,	0),
(47,	'1805501092658675712',	8,	'dc0b75cf705744da8c3335063059a1d40',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'eba682c78c5d472a8adb076f0b72bea7',	2,	1719299979,	'{\"content\":\"{0}关闭了群禁言\",\"data\":{\"forbidden\":\"0\"},\"extra\":[{\"uid\":\"admin\",\"name\":\"超级管理员\"}],\"type\":1005}',	0,	0,	'2024-06-25 07:19:40',	'2024-06-25 07:19:40',	0,	0),
(48,	'1805501107175161856',	9,	'25aacce7a949b7a098ea350a9ae2929c3',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'eba682c78c5d472a8adb076f0b72bea7',	2,	1719299983,	'{\"content\":\"123\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-25 07:19:43',	'2024-06-25 07:19:43',	0,	0),
(49,	'1805501110106980352',	10,	'b5b70d4c2ec805dbfb9b6cf378ede3123',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'eba682c78c5d472a8adb076f0b72bea7',	2,	1719299983,	'{\"content\":\"123\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-25 07:19:44',	'2024-06-25 07:19:44',	0,	0),
(50,	'1805501160853864448',	1,	'c49d91030aac446894755f1c1a3021370',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'c0187bbac43047c8839daf7babc3b235',	2,	1719299995,	'{\"content\":\"user1邀请{0},{1}加入群聊\",\"creator\":\"72f6c08f190f4322b622680734fbf744\",\"creator_name\":\"user1\",\"extra\":[{\"uid\":\"5e87364086ec4660b7fe932e4b9cb787\",\"name\":\"user\"},{\"uid\":\"admin\",\"name\":\"超级管理员\"}],\"type\":1001,\"version\":1002001}',	0,	0,	'2024-06-25 07:19:56',	'2024-06-25 07:19:56',	0,	0),
(51,	'1805501220446535680',	2,	'd06d3d91e5294fbc98f95bcb0b5461d30',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'c0187bbac43047c8839daf7babc3b235',	2,	1719300010,	'{\"content\":\"{0}修改群公告为\\\"hu\\\"\",\"data\":{\"notice\":\"hu\"},\"extra\":[{\"uid\":\"72f6c08f190f4322b622680734fbf744\",\"name\":\"user1\"}],\"type\":1005}',	0,	0,	'2024-06-25 07:20:10',	'2024-06-25 07:20:10',	0,	0),
(52,	'1805501254370066432',	3,	'93994d36bc1540ccb7c7dfd13d4c63850',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'c0187bbac43047c8839daf7babc3b235',	2,	1719300018,	'{\"content\":\"“{0}“退出群聊\",\"extra\":[{\"uid\":\"72f6c08f190f4322b622680734fbf744\",\"name\":\"user1\"}],\"type\":1021}',	0,	0,	'2024-06-25 07:20:18',	'2024-06-25 07:20:18',	0,	0),
(53,	'1805504115313213440',	8,	'3e5a7b217bf04fbf8a9f6e348cd53b730',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'u_10000@72f6c08f190f4322b622680734fbf744',	1,	1719300700,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：172.19.0.2 2024-06-25 15:19:10\\n本次登录的信息：172.19.0.7 2024-06-25 15:31:40\",\"type\":1}',	0,	0,	'2024-06-25 07:31:40',	'2024-06-25 07:31:40',	0,	0),
(54,	'1805511966790254592',	9,	'cb671c2b7a1343f498cf948a258777c70',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'u_10000@72f6c08f190f4322b622680734fbf744',	1,	1719302572,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：172.19.0.7 2024-06-25 15:31:40\\n本次登录的信息：192.168.65.1 2024-06-25 16:02:52\",\"type\":1}',	0,	0,	'2024-06-25 08:02:52',	'2024-06-25 08:02:52',	0,	0),
(55,	'1805512825204899840',	10,	'25890b7db0704f4980a52bfbd7bc1dcd0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'u_10000@72f6c08f190f4322b622680734fbf744',	1,	1719302776,	'{\"content\":\"欢迎使用航小语IM\\n上次的登录信息：192.168.65.1 2024-06-25 16:02:52\\n本次登录的信息：192.168.65.1 2024-06-25 16:06:16\",\"type\":1}',	0,	0,	'2024-06-25 08:06:17',	'2024-06-25 08:06:17',	0,	0),
(56,	'1805525339774910464',	11,	'76977ee0a4cb449bae6c8e2d8442be5f0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'u_10000@72f6c08f190f4322b622680734fbf744',	1,	1719305760,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：192.168.65.1 2024-06-25 16:06:16\\n本次登录的信息：192.168.65.1 2024-06-25 16:56:00\",\"type\":1}',	0,	0,	'2024-06-25 08:56:00',	'2024-06-25 08:56:00',	0,	0),
(57,	'1805528529127866368',	12,	'a93cec91b661440fa3cb26c7947ce8ab0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'u_10000@72f6c08f190f4322b622680734fbf744',	1,	1719306521,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：192.168.65.1 2024-06-25 16:56:00\\n本次登录的信息：192.168.65.1 2024-06-25 17:08:41\",\"type\":1}',	0,	0,	'2024-06-25 09:08:41',	'2024-06-25 09:08:41',	0,	0),
(58,	'1805534197616476160',	13,	'e4014108f7aa45f68f03d129e8a2440b0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'u_10000@72f6c08f190f4322b622680734fbf744',	1,	1719307872,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：192.168.65.1 2024-06-25 17:08:41\\n本次登录的信息：192.168.65.1 2024-06-25 17:31:12\",\"type\":1}',	0,	0,	'2024-06-25 09:31:12',	'2024-06-25 09:31:12',	0,	0),
(59,	'1805534251144183808',	19,	'b9d1cced4f4ea01f0e1543b21e80e6873',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'admin@72f6c08f190f4322b622680734fbf744',	1,	1719307885,	'{\"content\":\"hi\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-25 09:31:25',	'2024-06-25 09:31:25',	0,	0),
(60,	'1808788562775113728',	11,	'c6375cf5673147dd97b44f2a15b405e70',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'eba682c78c5d472a8adb076f0b72bea7',	2,	1720083773,	'{\"content\":\"“{0}“退出群聊\",\"extra\":[{\"uid\":\"72f6c08f190f4322b622680734fbf744\",\"name\":\"user1\"}],\"type\":1021}',	0,	0,	'2024-07-04 09:02:54',	'2024-07-04 09:02:54',	0,	0),
(61,	'1808789709044842496',	12,	'6c6f98db349943eca158706f1a42415c0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'eba682c78c5d472a8adb076f0b72bea7',	2,	1720084047,	'{\"content\":\"“{0}“退出群聊\",\"extra\":[{\"uid\":\"5e87364086ec4660b7fe932e4b9cb787\",\"name\":\"user\"}],\"type\":1021}',	0,	0,	'2024-07-04 09:07:27',	'2024-07-04 09:07:27',	0,	0),
(62,	'1808793627875344384',	15,	'57f8e948a9d847f8a9b4cfc3a853c2ad0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'a0436105b997480ab61a80d844de0379',	2,	1720084981,	'{\"content\":\"hi\",\"from_uid\":\"72f6c08f190f4322b622680734fbf744\",\"type\":1}',	0,	0,	'2024-07-04 09:23:01',	'2024-07-04 09:23:01',	0,	0),
(63,	'1809423044267999232',	14,	'7216a7a7ba354eaba4ad639a67f668380',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'u_10000@72f6c08f190f4322b622680734fbf744',	1,	1720235045,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：192.168.65.1 2024-06-25 17:31:12\\n本次登录的信息：192.168.65.1 2024-07-06 11:04:05\",\"type\":1}',	0,	0,	'2024-07-06 03:04:06',	'2024-07-06 03:04:06',	0,	0),
(64,	'1809423453971808256',	16,	'b336e7f4152a41c2a0c21932135ff3fb0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'a0436105b997480ab61a80d844de0379',	2,	1720235143,	'{\"content\":\"user1邀请{0}加入群聊\",\"extra\":[{\"uid\":\"5e87364086ec4660b7fe932e4b9cb787\",\"name\":\"user\"}],\"from_name\":\"user1\",\"from_uid\":\"72f6c08f190f4322b622680734fbf744\",\"type\":1002}',	0,	0,	'2024-07-06 03:05:43',	'2024-07-06 03:05:43',	0,	0),
(65,	'1809423527447625728',	17,	'55bdbfa3181047ca8787cf00cf223cc00',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'a0436105b997480ab61a80d844de0379',	2,	1720235161,	'{\"content\":\"{0}修改群名为\\\"交流群\\\"\",\"data\":{\"name\":\"交流群\"},\"extra\":[{\"uid\":\"72f6c08f190f4322b622680734fbf744\",\"name\":\"user1\"}],\"type\":1005}',	0,	0,	'2024-07-06 03:06:01',	'2024-07-06 03:06:01',	0,	0),
(66,	'1809423648088391680',	18,	'f337c2ccb04dd2f8006bb92fd6c843303',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'a0436105b997480ab61a80d844de0379',	2,	1720235189,	'{\"content\":\"☺️ 测试 @user \",\"type\":1,\"mention\":{\"uids\":[\"5e87364086ec4660b7fe932e4b9cb787\"]}}',	0,	0,	'2024-07-06 03:06:30',	'2024-07-06 03:06:30',	0,	0),
(67,	'1809423775964332032',	19,	'4df995641ec578175f6f3afad447364d3',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'a0436105b997480ab61a80d844de0379',	2,	1720235220,	'{\"content\":\"👌 测试 @所有人 \",\"type\":1,\"mention\":{\"all\":1}}',	0,	0,	'2024-07-06 03:07:00',	'2024-07-06 03:07:00',	0,	0),
(68,	'1809424048619257856',	20,	'38576af7dc13fa4737ca54572c2cb9d33',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'5e87364086ec4660b7fe932e4b9cb787',	'a0436105b997480ab61a80d844de0379',	2,	1720235285,	'{\"width\":6072,\"height\":4044,\"url\":\"file/preview/chat/2/a0436105b997480ab61a80d844de0379/152AD4F7E2315C2E333A570107044FA2\",\"type\":2}',	0,	0,	'2024-07-06 03:08:05',	'2024-07-06 03:08:05',	0,	0),
(69,	'1809951434095984640',	21,	'c6047964e720f6a17f84d580d9a56a483',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'5e87364086ec4660b7fe932e4b9cb787',	'a0436105b997480ab61a80d844de0379',	2,	1720361023,	'{\"content\":\"🛫 来航小信IM，畅聊南航生活！\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-07-07 14:03:44',	'2024-07-07 14:03:44',	0,	0),
(70,	'1809951657119711232',	15,	'd0707f0f3de14dbbb4666143cada425e0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'u_10000@72f6c08f190f4322b622680734fbf744',	1,	1720361077,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：192.168.65.1 2024-07-06 11:04:05\\n本次登录的信息：192.168.65.1 2024-07-07 22:04:37\",\"type\":1}',	0,	0,	'2024-07-07 14:04:37',	'2024-07-07 14:04:37',	0,	0),
(71,	'1809951692087623680',	22,	'62266f9c18319c291ed01d9fb3ca17a03',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'a0436105b997480ab61a80d844de0379',	2,	1720361085,	'{\"content\":\"🛫 来航小信IM，畅聊南航生活！\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-07-07 14:04:45',	'2024-07-07 14:04:45',	0,	0);

DROP TABLE IF EXISTS `message3`;
CREATE TABLE `message3` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `message_id` varchar(20) NOT NULL DEFAULT '',
  `message_seq` bigint NOT NULL DEFAULT '0',
  `client_msg_no` varchar(40) NOT NULL DEFAULT '',
  `setting` smallint NOT NULL DEFAULT '0',
  `signal` smallint NOT NULL DEFAULT '0',
  `header` varchar(100) NOT NULL DEFAULT '',
  `from_uid` varchar(40) NOT NULL DEFAULT '',
  `channel_id` varchar(100) NOT NULL DEFAULT '',
  `channel_type` smallint NOT NULL DEFAULT '0',
  `timestamp` bigint NOT NULL DEFAULT '0',
  `payload` mediumblob NOT NULL,
  `is_deleted` smallint NOT NULL DEFAULT '0',
  `voice_status` smallint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expire` int NOT NULL DEFAULT '0' COMMENT '消息过期时长',
  `expire_at` bigint NOT NULL DEFAULT '0' COMMENT '消息过期时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `message_id` (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `message3` (`id`, `message_id`, `message_seq`, `client_msg_no`, `setting`, `signal`, `header`, `from_uid`, `channel_id`, `channel_type`, `timestamp`, `payload`, `is_deleted`, `voice_status`, `created_at`, `updated_at`, `expire`, `expire_at`) VALUES
(1,	'1804046331728101376',	1,	'bdace4643e064e418f4589471be981d90',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'7cfd06b569634f979c93c5f50896e947',	2,	1718953137,	'{\"content\":\"user邀请{0},{1}加入群聊\",\"creator\":\"5e87364086ec4660b7fe932e4b9cb787\",\"creator_name\":\"user\",\"extra\":[{\"uid\":\"fileHelper\",\"name\":\"文件传输助手\"},{\"uid\":\"u_10000\",\"name\":\"系统账号\"}],\"type\":1001,\"version\":1000001}',	0,	0,	'2024-06-21 06:58:57',	'2024-06-21 06:58:57',	0,	0),
(2,	'1804046350799601664',	2,	'25393b4118427e2f3406e0d8214d4d5e3',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'5e87364086ec4660b7fe932e4b9cb787',	'7cfd06b569634f979c93c5f50896e947',	2,	1718953142,	'{\"content\":\"哈哈\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-21 06:59:02',	'2024-06-21 06:59:02',	0,	0),
(3,	'1804046392428068864',	3,	'b759c9c788e5439e8c3f4988864d5b240',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'user',	'7cfd06b569634f979c93c5f50896e947',	2,	1718953152,	'{\"content\":\"hi\",\"from_uid\":\"user\",\"type\":1}',	0,	0,	'2024-06-21 06:59:12',	'2024-06-21 06:59:12',	0,	0),
(4,	'1804046537433546752',	4,	'e3f9256324cd4e8984009ac7920eb3220',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'7cfd06b569634f979c93c5f50896e947',	2,	1718953186,	'{\"content\":\"{0}封禁了该群\",\"data\":{\"status\":\"0\"},\"extra\":[{\"uid\":\"admin\",\"name\":\"超级管理员\"}],\"type\":1005}',	0,	0,	'2024-06-21 06:59:46',	'2024-06-21 06:59:46',	0,	0),
(5,	'1804046599064649728',	5,	'7a082213e9ed40c6be6b70f83fd50f230',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'',	'7cfd06b569634f979c93c5f50896e947',	2,	1718953201,	'{\"content\":\"{0}解禁了该群\",\"data\":{\"status\":\"1\"},\"extra\":[{\"uid\":\"admin\",\"name\":\"超级管理员\"}],\"type\":1005}',	0,	0,	'2024-06-21 07:00:01',	'2024-06-21 07:00:01',	0,	0),
(6,	'1804046610833866752',	6,	'102c308b7fbdcc2d9e9e6f7766b2d3d43',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'5e87364086ec4660b7fe932e4b9cb787',	'7cfd06b569634f979c93c5f50896e947',	2,	1718953204,	'{\"content\":\"123\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-06-21 07:00:04',	'2024-06-21 07:00:04',	0,	0),
(7,	'1804050770090262528',	1,	'359d53a09f9d40d88e86c4f499e8db4e0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'u_10000@u_10000',	1,	1718954198,	'{\"content\":\"hh\",\"type\":1}',	0,	0,	'2024-06-21 07:16:38',	'2024-06-21 07:16:38',	0,	0),
(8,	'1808800392062959616',	1,	'aa397e039137418fbc030a8d6069db160',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'admin',	'6765ee0075d14fe4a14551927c8119c1@admin',	1,	1720086594,	'{\"content\":\"你好\",\"from_uid\":\"admin\",\"type\":1}',	0,	0,	'2024-07-04 09:49:54',	'2024-07-04 09:49:54',	0,	0);

DROP TABLE IF EXISTS `message4`;
CREATE TABLE `message4` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `message_id` varchar(20) NOT NULL DEFAULT '',
  `message_seq` bigint NOT NULL DEFAULT '0',
  `client_msg_no` varchar(40) NOT NULL DEFAULT '',
  `setting` smallint NOT NULL DEFAULT '0',
  `signal` smallint NOT NULL DEFAULT '0',
  `header` varchar(100) NOT NULL DEFAULT '',
  `from_uid` varchar(40) NOT NULL DEFAULT '',
  `channel_id` varchar(100) NOT NULL DEFAULT '',
  `channel_type` smallint NOT NULL DEFAULT '0',
  `timestamp` bigint NOT NULL DEFAULT '0',
  `payload` mediumblob NOT NULL,
  `is_deleted` smallint NOT NULL DEFAULT '0',
  `voice_status` smallint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expire` int NOT NULL DEFAULT '0' COMMENT '消息过期时长',
  `expire_at` bigint NOT NULL DEFAULT '0' COMMENT '消息过期时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `message_id` (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `message4` (`id`, `message_id`, `message_seq`, `client_msg_no`, `setting`, `signal`, `header`, `from_uid`, `channel_id`, `channel_type`, `timestamp`, `payload`, `is_deleted`, `voice_status`, `created_at`, `updated_at`, `expire`, `expire_at`) VALUES
(1,	'1805495728554901504',	1,	'3235413e055747049fc6057a333a1e140',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'5e87364086ec4660b7fe932e4b9cb787',	'5e87364086ec4660b7fe932e4b9cb787@72f6c08f190f4322b622680734fbf744',	1,	1719298700,	'{\"content\":\"我们已经是好友了，可以愉快的聊天了！\",\"type\":2000}',	0,	0,	'2024-06-25 06:58:20',	'2024-06-25 06:58:20',	0,	0),
(2,	'1805495728613621760',	2,	'117773b46c6e42fa86867eb6b51a2cc50',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'5e87364086ec4660b7fe932e4b9cb787@72f6c08f190f4322b622680734fbf744',	1,	1719298700,	'{\"content\":\"我是user1\",\"type\":1}',	0,	0,	'2024-06-25 06:58:20',	'2024-06-25 06:58:20',	0,	0),
(3,	'1808789828955799552',	3,	'b78c0bd456584c2aaaba51103788169a0',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'5e87364086ec4660b7fe932e4b9cb787',	'5e87364086ec4660b7fe932e4b9cb787@72f6c08f190f4322b622680734fbf744',	1,	1720084075,	'{\"content\":\"我们已经是好友了，可以愉快的聊天了！\",\"type\":2000}',	0,	0,	'2024-07-04 09:07:56',	'2024-07-04 09:07:56',	0,	0),
(4,	'1808789829060657152',	4,	'25b5953206d6455bab39b6981e2a3fe10',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'5e87364086ec4660b7fe932e4b9cb787@72f6c08f190f4322b622680734fbf744',	1,	1720084075,	'{\"content\":\"我是群聊\\\"user、user1、文件传输助手、系统\\\"的user1\",\"type\":1}',	0,	0,	'2024-07-04 09:07:56',	'2024-07-04 09:07:56',	0,	0),
(5,	'1808799706948567040',	1,	'3eed7ac743d94b458b22aaacdabb74f50',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'6765ee0075d14fe4a14551927c8119c1@u_10000',	1,	1720086430,	'{\"content\":\"欢迎使用航小信 IM\\n本次登录的信息：192.168.65.1 2024-07-04 17:47:10\",\"type\":1}',	0,	0,	'2024-07-04 09:47:11',	'2024-07-04 09:47:11',	0,	0),
(6,	'1808803804947152896',	2,	'db99becf2fd262a23abcda4913b6b3da3',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'6765ee0075d14fe4a14551927c8119c1',	'6765ee0075d14fe4a14551927c8119c1@u_10000',	1,	1720087407,	'{\"content\":\"no\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-07-04 10:03:28',	'2024-07-04 10:03:28',	0,	0),
(7,	'1808803830096199680',	3,	'c3c7065cdb72db3d4499a650b3b6f7943',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'6765ee0075d14fe4a14551927c8119c1',	'6765ee0075d14fe4a14551927c8119c1@u_10000',	1,	1720087413,	'{\"content\":\"hi\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-07-04 10:03:34',	'2024-07-04 10:03:34',	0,	0),
(8,	'1808818456544411648',	4,	'0deaac5746ef430f8b47e2bd8f206a630',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'6765ee0075d14fe4a14551927c8119c1@u_10000',	1,	1720090900,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：192.168.65.1 2024-07-04 17:47:10\\n本次登录的信息：192.168.65.1 2024-07-04 19:01:40\",\"type\":1}',	0,	0,	'2024-07-04 11:01:41',	'2024-07-04 11:01:41',	0,	0),
(9,	'1808818556071051264',	5,	'b893483364a949a3b155dc468332ade50',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'6765ee0075d14fe4a14551927c8119c1@u_10000',	1,	1720090924,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：192.168.65.1 2024-07-04 19:01:40\\n本次登录的信息：192.168.65.1 2024-07-04 19:02:04\",\"type\":1}',	0,	0,	'2024-07-04 11:02:05',	'2024-07-04 11:02:05',	0,	0),
(10,	'1808818605505118208',	6,	'61cd2e54651614f4b580e99d2225844e3',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'6765ee0075d14fe4a14551927c8119c1',	'6765ee0075d14fe4a14551927c8119c1@u_10000',	1,	1720090936,	'{\"width\":240,\"height\":240,\"url\":\"file/preview/chat/1/u_10000/4482C72C1422358DF4F076987DB9128E\",\"type\":2}',	0,	0,	'2024-07-04 11:02:16',	'2024-07-04 11:02:16',	0,	0),
(11,	'1808818785067466752',	7,	'e5b2b44390024baba2708764492246b60',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'6765ee0075d14fe4a14551927c8119c1@u_10000',	1,	1720090979,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：192.168.65.1 2024-07-04 19:02:04\\n本次登录的信息：192.168.65.1 2024-07-04 19:02:59\",\"type\":1}',	0,	0,	'2024-07-04 11:02:59',	'2024-07-04 11:02:59',	0,	0),
(12,	'1808818975681806336',	8,	'ecafb004e4f54f29a6d99340d7dcf7850',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'6765ee0075d14fe4a14551927c8119c1@u_10000',	1,	1720091024,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：192.168.65.1 2024-07-04 19:02:59\\n本次登录的信息：192.168.65.1 2024-07-04 19:03:44\",\"type\":1}',	0,	0,	'2024-07-04 11:03:45',	'2024-07-04 11:03:45',	0,	0),
(13,	'1808819188924416000',	9,	'0573f59818c843918d2628ba9d6de9c50',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'6765ee0075d14fe4a14551927c8119c1@u_10000',	1,	1720091075,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：192.168.65.1 2024-07-04 19:03:44\\n本次登录的信息：192.168.65.1 2024-07-04 19:04:35\",\"type\":1}',	0,	0,	'2024-07-04 11:04:35',	'2024-07-04 11:04:35',	0,	0),
(14,	'1808820802804514816',	10,	'ed21df0eb50a45878408e9e58eb6ca980',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'6765ee0075d14fe4a14551927c8119c1@u_10000',	1,	1720091460,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：192.168.65.1 2024-07-04 19:04:35\\n本次登录的信息：192.168.65.1 2024-07-04 19:11:00\",\"type\":1}',	0,	0,	'2024-07-04 11:11:00',	'2024-07-04 11:11:00',	0,	0),
(15,	'1809422768358293504',	5,	'f3d2a13fc45fdaa7b152b6a11b379f9d3',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'5e87364086ec4660b7fe932e4b9cb787',	'5e87364086ec4660b7fe932e4b9cb787@72f6c08f190f4322b622680734fbf744',	1,	1720234980,	'{\"content\":\"Hello World!\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-07-06 03:03:00',	'2024-07-06 03:03:00',	0,	0),
(16,	'1809423166536155136',	6,	'5b371c87c0f5d7865c967d43bc300d4a3',	128,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'72f6c08f190f4322b622680734fbf744',	'5e87364086ec4660b7fe932e4b9cb787@72f6c08f190f4322b622680734fbf744',	1,	1720235075,	'{\"content\":\"Hello NUAA!\",\"type\":1,\"mention\":{}}',	0,	0,	'2024-07-06 03:04:35',	'2024-07-06 03:04:35',	0,	0),
(17,	'1809437218058534912',	11,	'394f5ab6802b4744bc068b3e30c504c20',	0,	0,	'{\"no_persist\":0,\"red_dot\":1,\"sync_once\":0}',	'u_10000',	'6765ee0075d14fe4a14551927c8119c1@u_10000',	1,	1720238425,	'{\"content\":\"欢迎使用航小信 IM\\n上次的登录信息：192.168.65.1 2024-07-04 19:11:00\\n本次登录的信息：192.168.65.1 2024-07-06 12:00:25\",\"type\":1}',	0,	0,	'2024-07-06 04:00:25',	'2024-07-06 04:00:25',	0,	0);

DROP TABLE IF EXISTS `message_extra`;
CREATE TABLE `message_extra` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `message_id` varchar(20) NOT NULL DEFAULT '',
  `message_seq` bigint NOT NULL DEFAULT '0',
  `channel_id` varchar(100) NOT NULL DEFAULT '',
  `channel_type` smallint NOT NULL DEFAULT '0',
  `from_uid` varchar(40) NOT NULL DEFAULT '',
  `revoke` smallint NOT NULL DEFAULT '0',
  `revoker` varchar(40) NOT NULL DEFAULT '',
  `clone_no` varchar(40) NOT NULL DEFAULT '',
  `version` bigint NOT NULL DEFAULT '0',
  `readed_count` int NOT NULL DEFAULT '0',
  `is_deleted` smallint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content_edit` text COMMENT '编辑后的正文',
  `content_edit_hash` varchar(255) NOT NULL DEFAULT '' COMMENT '编辑正文的hash值，用于重复判断',
  `edited_at` int NOT NULL DEFAULT '0' COMMENT '编辑时间 时间戳（秒）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `message_id` (`message_id`),
  KEY `from_uid_idx` (`from_uid`),
  KEY `channel_idx` (`channel_id`,`channel_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `message_extra` (`id`, `message_id`, `message_seq`, `channel_id`, `channel_type`, `from_uid`, `revoke`, `revoker`, `clone_no`, `version`, `readed_count`, `is_deleted`, `created_at`, `updated_at`, `content_edit`, `content_edit_hash`, `edited_at`) VALUES
(1,	'1804046068858486784',	0,	'5e87364086ec4660b7fe932e4b9cb787@fileHelper',	1,	'',	0,	'',	'',	1000001,	0,	1,	'2024-06-21 06:58:28',	'2024-06-21 06:58:28',	NULL,	'',	0),
(2,	'1804051129181405184',	0,	'5e87364086ec4660b7fe932e4b9cb787@u_10000',	1,	'',	0,	'',	'',	1000001,	0,	1,	'2024-06-21 07:18:33',	'2024-06-21 07:18:33',	NULL,	'',	0),
(3,	'1804441062505185280',	0,	'5e87364086ec4660b7fe932e4b9cb787@fileHelper',	1,	'',	1,	'5e87364086ec4660b7fe932e4b9cb787',	'',	1001001,	0,	0,	'2024-06-22 09:08:09',	'2024-06-22 09:08:09',	NULL,	'',	0),
(4,	'1804047538345476096',	4,	'admin@72f6c08f190f4322b622680734fbf744',	1,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1000001,	1,	0,	'2024-06-25 06:53:40',	'2024-06-25 06:53:40',	NULL,	'',	0),
(5,	'1804047668578615296',	5,	'admin@72f6c08f190f4322b622680734fbf744',	1,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1000002,	1,	0,	'2024-06-25 06:53:40',	'2024-06-25 06:53:40',	NULL,	'',	0),
(6,	'1804051926841556992',	6,	'admin@72f6c08f190f4322b622680734fbf744',	1,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1000003,	1,	0,	'2024-06-25 06:53:40',	'2024-06-25 06:53:40',	NULL,	'',	0),
(7,	'1804051934387109888',	7,	'admin@72f6c08f190f4322b622680734fbf744',	1,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1000004,	1,	0,	'2024-06-25 06:53:40',	'2024-06-25 06:53:40',	NULL,	'',	0),
(8,	'1804051999897944064',	8,	'admin@72f6c08f190f4322b622680734fbf744',	1,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1000005,	1,	0,	'2024-06-25 06:53:40',	'2024-06-25 06:53:40',	NULL,	'',	0),
(9,	'1804052379079802880',	4,	'a0436105b997480ab61a80d844de0379',	2,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1001001,	2,	0,	'2024-06-25 06:53:42',	'2024-06-25 06:53:42',	NULL,	'',	0),
(10,	'1804053173061550080',	7,	'a0436105b997480ab61a80d844de0379',	2,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1001010,	2,	0,	'2024-06-25 06:53:42',	'2024-06-25 06:53:42',	NULL,	'',	0),
(11,	'1804053244779954176',	9,	'a0436105b997480ab61a80d844de0379',	2,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1001015,	2,	0,	'2024-06-25 06:53:42',	'2024-06-25 06:53:42',	NULL,	'',	0),
(12,	'1804053251071410176',	10,	'a0436105b997480ab61a80d844de0379',	2,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1001016,	2,	0,	'2024-06-25 06:53:42',	'2024-06-25 06:53:42',	NULL,	'',	0),
(13,	'1804053284210606080',	12,	'a0436105b997480ab61a80d844de0379',	2,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1001020,	2,	0,	'2024-06-25 06:53:42',	'2024-06-25 06:53:42',	NULL,	'',	0),
(18,	'1805494604535955456',	10,	'admin@72f6c08f190f4322b622680734fbf744',	1,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1000006,	1,	0,	'2024-06-25 06:53:54',	'2024-06-25 06:53:54',	NULL,	'',	0),
(19,	'1805494619073413120',	11,	'admin@72f6c08f190f4322b622680734fbf744',	1,	'admin',	0,	'',	'',	1000007,	1,	0,	'2024-06-25 06:53:57',	'2024-06-25 06:53:57',	NULL,	'',	0),
(20,	'1805494627462021120',	12,	'admin@72f6c08f190f4322b622680734fbf744',	1,	'admin',	0,	'',	'',	1000008,	1,	0,	'2024-06-25 06:53:59',	'2024-06-25 06:53:59',	NULL,	'',	0),
(21,	'1805494703924183040',	13,	'admin@72f6c08f190f4322b622680734fbf744',	1,	'72f6c08f190f4322b622680734fbf744',	1,	'72f6c08f190f4322b622680734fbf744',	'',	1000010,	1,	0,	'2024-06-25 06:54:18',	'2024-06-25 06:54:18',	NULL,	'',	0),
(23,	'1805494728288894976',	14,	'admin@72f6c08f190f4322b622680734fbf744',	1,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1000011,	1,	0,	'2024-06-25 06:54:24',	'2024-06-25 06:54:24',	NULL,	'',	0),
(24,	'1805494736224518144',	15,	'admin@72f6c08f190f4322b622680734fbf744',	1,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1000012,	1,	0,	'2024-06-25 06:54:26',	'2024-06-25 06:54:26',	NULL,	'',	0),
(25,	'1805494768516464640',	16,	'admin@72f6c08f190f4322b622680734fbf744',	1,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1000013,	1,	0,	'2024-06-25 06:54:32',	'2024-06-25 06:54:32',	NULL,	'',	0),
(26,	'1805494937131679744',	17,	'admin@72f6c08f190f4322b622680734fbf744',	1,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1000014,	1,	0,	'2024-06-25 06:55:14',	'2024-06-25 06:55:14',	NULL,	'',	0),
(27,	'1805495897480495104',	2,	'eba682c78c5d472a8adb076f0b72bea7',	2,	'5e87364086ec4660b7fe932e4b9cb787',	0,	'',	'',	1000004,	1,	0,	'2024-06-25 07:00:14',	'2024-06-25 07:00:14',	NULL,	'',	0),
(28,	'1805495946545463296',	3,	'eba682c78c5d472a8adb076f0b72bea7',	2,	'5e87364086ec4660b7fe932e4b9cb787',	0,	'',	'',	1000005,	1,	0,	'2024-06-25 07:00:14',	'2024-06-25 07:00:14',	NULL,	'',	0),
(29,	'1805496047322005504',	4,	'eba682c78c5d472a8adb076f0b72bea7',	2,	'5e87364086ec4660b7fe932e4b9cb787',	0,	'',	'',	1000006,	1,	0,	'2024-06-25 07:00:14',	'2024-06-25 07:00:14',	NULL,	'',	0),
(33,	'1805496244257161216',	5,	'eba682c78c5d472a8adb076f0b72bea7',	2,	'',	0,	'',	'',	1000007,	0,	1,	'2024-06-25 07:02:04',	'2024-06-25 07:02:04',	NULL,	'',	0),
(34,	'1805501107175161856',	9,	'eba682c78c5d472a8adb076f0b72bea7',	2,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1001001,	1,	0,	'2024-07-04 09:07:04',	'2024-07-04 09:07:04',	NULL,	'',	0),
(35,	'1805501110106980352',	10,	'eba682c78c5d472a8adb076f0b72bea7',	2,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1001002,	1,	0,	'2024-07-04 09:07:04',	'2024-07-04 09:07:04',	NULL,	'',	0),
(36,	'1805501254370066432',	3,	'c0187bbac43047c8839daf7babc3b235',	2,	'',	0,	'',	'',	1000001,	0,	1,	'2024-07-04 09:35:04',	'2024-07-04 09:35:04',	NULL,	'',	0),
(37,	'1808803830096199680',	0,	'6765ee0075d14fe4a14551927c8119c1@u_10000',	1,	'',	1,	'6765ee0075d14fe4a14551927c8119c1',	'',	1000001,	0,	0,	'2024-07-04 10:03:38',	'2024-07-04 10:03:38',	NULL,	'',	0),
(38,	'1808803804947152896',	0,	'6765ee0075d14fe4a14551927c8119c1@u_10000',	1,	'',	1,	'6765ee0075d14fe4a14551927c8119c1',	'',	1000002,	0,	0,	'2024-07-04 10:03:40',	'2024-07-04 10:03:40',	NULL,	'',	0),
(39,	'1809422768358293504',	5,	'5e87364086ec4660b7fe932e4b9cb787@72f6c08f190f4322b622680734fbf744',	1,	'5e87364086ec4660b7fe932e4b9cb787',	0,	'',	'',	1000001,	1,	0,	'2024-07-06 03:04:14',	'2024-07-06 03:04:14',	NULL,	'',	0),
(40,	'1809423166536155136',	6,	'5e87364086ec4660b7fe932e4b9cb787@72f6c08f190f4322b622680734fbf744',	1,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1000002,	1,	0,	'2024-07-06 03:05:23',	'2024-07-06 03:05:23',	NULL,	'',	0),
(54,	'1809423648088391680',	18,	'a0436105b997480ab61a80d844de0379',	2,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1001021,	1,	0,	'2024-07-06 03:06:31',	'2024-07-06 03:06:31',	NULL,	'',	0),
(59,	'1809423775964332032',	19,	'a0436105b997480ab61a80d844de0379',	2,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1001022,	1,	0,	'2024-07-06 03:07:01',	'2024-07-06 03:07:01',	NULL,	'',	0),
(63,	'1809424048619257856',	20,	'a0436105b997480ab61a80d844de0379',	2,	'5e87364086ec4660b7fe932e4b9cb787',	0,	'',	'',	1001027,	1,	0,	'2024-07-06 03:08:08',	'2024-07-06 03:08:08',	NULL,	'',	0),
(68,	'1809951434095984640',	21,	'a0436105b997480ab61a80d844de0379',	2,	'5e87364086ec4660b7fe932e4b9cb787',	0,	'',	'',	1002003,	1,	0,	'2024-07-07 14:04:39',	'2024-07-07 14:04:39',	NULL,	'',	0),
(71,	'1809951692087623680',	22,	'a0436105b997480ab61a80d844de0379',	2,	'72f6c08f190f4322b622680734fbf744',	0,	'',	'',	1002010,	1,	0,	'2024-07-07 14:04:49',	'2024-07-07 14:04:49',	NULL,	'',	0);

DROP TABLE IF EXISTS `message_user_extra`;
CREATE TABLE `message_user_extra` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uid` varchar(40) NOT NULL DEFAULT '',
  `message_id` varchar(20) NOT NULL DEFAULT '',
  `message_seq` bigint NOT NULL DEFAULT '0',
  `channel_id` varchar(100) NOT NULL DEFAULT '',
  `channel_type` smallint NOT NULL DEFAULT '0',
  `voice_readed` smallint NOT NULL DEFAULT '0',
  `message_is_deleted` smallint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid_message_idx` (`uid`,`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `message_user_extra` (`id`, `uid`, `message_id`, `message_seq`, `channel_id`, `channel_type`, `voice_readed`, `message_is_deleted`, `created_at`, `updated_at`) VALUES
(1,	'72f6c08f190f4322b622680734fbf744',	'1804047450789380096',	1,	'72f6c08f190f4322b622680734fbf744',	1,	0,	1,	'2024-06-25 06:57:23',	'2024-06-25 06:57:23'),
(2,	'72f6c08f190f4322b622680734fbf744',	'1804050770190925824',	2,	'72f6c08f190f4322b622680734fbf744',	1,	0,	1,	'2024-06-25 06:57:23',	'2024-06-25 06:57:23'),
(3,	'72f6c08f190f4322b622680734fbf744',	'1805495728613621760',	2,	'5e87364086ec4660b7fe932e4b9cb787',	1,	0,	1,	'2024-07-06 03:04:21',	'2024-07-06 03:04:21');

DROP TABLE IF EXISTS `message_user_extra1`;
CREATE TABLE `message_user_extra1` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uid` varchar(40) NOT NULL DEFAULT '',
  `message_id` varchar(20) NOT NULL DEFAULT '',
  `message_seq` bigint NOT NULL DEFAULT '0',
  `channel_id` varchar(100) NOT NULL DEFAULT '',
  `channel_type` smallint NOT NULL DEFAULT '0',
  `voice_readed` smallint NOT NULL DEFAULT '0',
  `message_is_deleted` smallint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid_message_idx` (`uid`,`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `message_user_extra1` (`id`, `uid`, `message_id`, `message_seq`, `channel_id`, `channel_type`, `voice_readed`, `message_is_deleted`, `created_at`, `updated_at`) VALUES
(1,	'5e87364086ec4660b7fe932e4b9cb787',	'1804045916160655360',	1,	'5e87364086ec4660b7fe932e4b9cb787',	1,	0,	1,	'2024-07-06 03:02:33',	'2024-07-06 03:02:33'),
(2,	'5e87364086ec4660b7fe932e4b9cb787',	'1804053173061550080',	7,	'a0436105b997480ab61a80d844de0379',	2,	0,	1,	'2024-07-06 03:21:19',	'2024-07-06 03:21:19');

DROP TABLE IF EXISTS `message_user_extra2`;
CREATE TABLE `message_user_extra2` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uid` varchar(40) NOT NULL DEFAULT '',
  `message_id` varchar(20) NOT NULL DEFAULT '',
  `message_seq` bigint NOT NULL DEFAULT '0',
  `channel_id` varchar(100) NOT NULL DEFAULT '',
  `channel_type` smallint NOT NULL DEFAULT '0',
  `voice_readed` smallint NOT NULL DEFAULT '0',
  `message_is_deleted` smallint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid_message_idx` (`uid`,`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `send_history`;
CREATE TABLE `send_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `receiver` varchar(40) NOT NULL DEFAULT '',
  `receiver_name` varchar(100) NOT NULL DEFAULT '',
  `receiver_channel_type` smallint NOT NULL DEFAULT '0',
  `sender` varchar(40) NOT NULL DEFAULT '',
  `sender_name` varchar(100) NOT NULL DEFAULT '',
  `handler_uid` varchar(40) NOT NULL DEFAULT '',
  `handler_name` varchar(100) NOT NULL DEFAULT '',
  `content` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `send_history` (`id`, `receiver`, `receiver_name`, `receiver_channel_type`, `sender`, `sender_name`, `handler_uid`, `handler_name`, `content`, `created_at`, `updated_at`) VALUES
(1,	'72f6c08f190f4322b622680734fbf744',	'user1',	1,	'admin',	'超级管理员',	'admin',	'超级管理员',	'1',	'2024-06-21 06:57:10',	'2024-06-21 06:57:10'),
(2,	'7cfd06b569634f979c93c5f50896e947',	'user、文件传输助手、系统账号',	2,	'user',	'5e87364086ec4660b7fe932e4b9cb787',	'admin',	'超级管理员',	'hi',	'2024-06-21 06:59:12',	'2024-06-21 06:59:12'),
(3,	'7af47a38ab784cf98a0c2bafd180c07f',	'user、文件传输助手、系统账号',	2,	'user',	'5e87364086ec4660b7fe932e4b9cb787',	'admin',	'超级管理员',	'hh',	'2024-06-21 07:15:52',	'2024-06-21 07:15:52'),
(4,	'7af47a38ab784cf98a0c2bafd180c07f',	'user、文件传输助手、系统账号',	2,	'user',	'5e87364086ec4660b7fe932e4b9cb787',	'admin',	'超级管理员',	'h',	'2024-06-21 07:16:02',	'2024-06-21 07:16:02'),
(5,	'72f6c08f190f4322b622680734fbf744',	'user1',	1,	'admin',	'超级管理员',	'admin',	'超级管理员',	'123',	'2024-06-22 08:55:52',	'2024-06-22 08:55:52'),
(6,	'eba682c78c5d472a8adb076f0b72bea7',	'user、user1、文件传输助手、系统',	2,	'user',	'5e87364086ec4660b7fe932e4b9cb787',	'admin',	'超级管理员',	'123',	'2024-06-25 07:19:14',	'2024-06-25 07:19:14'),
(7,	'a0436105b997480ab61a80d844de0379',	'hi',	2,	'72f6c08f190f4322b622680734fbf744',	'user1',	'admin',	'超级管理员',	'hi',	'2024-07-04 09:23:01',	'2024-07-04 09:23:01'),
(8,	'6765ee0075d14fe4a14551927c8119c1',	'程昊川',	1,	'admin',	'超级管理员',	'admin',	'超级管理员',	'你好',	'2024-07-04 09:49:54',	'2024-07-04 09:49:54');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(40) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `short_no` varchar(40) NOT NULL DEFAULT '',
  `short_status` smallint NOT NULL DEFAULT '0',
  `sex` smallint NOT NULL DEFAULT '0',
  `robot` smallint NOT NULL DEFAULT '0',
  `category` varchar(40) NOT NULL DEFAULT '',
  `role` varchar(40) NOT NULL DEFAULT '',
  `username` varchar(40) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `zone` varchar(20) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `chat_pwd` varchar(40) NOT NULL DEFAULT '',
  `lock_screen_pwd` varchar(40) NOT NULL DEFAULT '',
  `lock_after_minute` int NOT NULL DEFAULT '0',
  `vercode` varchar(100) NOT NULL DEFAULT '',
  `is_upload_avatar` smallint NOT NULL DEFAULT '0',
  `qr_vercode` varchar(100) NOT NULL DEFAULT '',
  `device_lock` smallint NOT NULL DEFAULT '0',
  `search_by_phone` smallint NOT NULL DEFAULT '1',
  `search_by_short` smallint NOT NULL DEFAULT '1',
  `new_msg_notice` smallint NOT NULL DEFAULT '1',
  `msg_show_detail` smallint NOT NULL DEFAULT '1',
  `voice_on` smallint NOT NULL DEFAULT '1',
  `shock_on` smallint NOT NULL DEFAULT '1',
  `mute_of_app` smallint NOT NULL DEFAULT '0',
  `offline_protection` smallint NOT NULL DEFAULT '0',
  `version` bigint NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `bench_no` varchar(40) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `app_id` varchar(40) NOT NULL DEFAULT '' COMMENT 'app id',
  `msg_expire_second` bigint NOT NULL DEFAULT '0' COMMENT '消息过期时长(单位秒)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  UNIQUE KEY `short_no_udx` (`short_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `user` (`id`, `uid`, `name`, `short_no`, `short_status`, `sex`, `robot`, `category`, `role`, `username`, `password`, `zone`, `phone`, `chat_pwd`, `lock_screen_pwd`, `lock_after_minute`, `vercode`, `is_upload_avatar`, `qr_vercode`, `device_lock`, `search_by_phone`, `search_by_short`, `new_msg_notice`, `msg_show_detail`, `voice_on`, `shock_on`, `mute_of_app`, `offline_protection`, `version`, `status`, `bench_no`, `created_at`, `updated_at`, `app_id`, `email`, `is_destroy`, `wx_openid`, `wx_unionid`, `gitee_uid`, `github_uid`, `web3_public_key`, `msg_expire_second`) VALUES
(1,	'u_10000',	'系统账号',	'10000',	0,	0,	1,	'system',	'',	'',	'',	'0086',	'13000000000',	'',	'',	0,	'',	1,	'',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	'',	'2024-06-18 12:46:00',	'2024-06-18 12:46:00',	'',	'',	0,	'',	'',	'',	'',	'',	0),
(2,	'fileHelper',	'文件传输助手',	'20000',	0,	0,	0,	'system',	'',	'',	'',	'0086',	'13000000001',	'',	'',	0,	'',	1,	'',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	'',	'2024-06-18 12:46:00',	'2024-06-18 12:46:00',	'',	'',	0,	'',	'',	'',	'',	'',	0),
(3,	'admin',	'超级管理员',	'30000',	0,	0,	0,	'system',	'superAdmin',	'superAdmin',	'1efe2d9894b0e46a3d07822af486bad0',	'0086',	'13000000002',	'',	'',	0,	'',	0,	'',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	'',	'2024-06-18 12:46:01',	'2024-06-18 12:46:01',	'',	'',	0,	'',	'',	'',	'',	'',	0),
(4,	'5e87364086ec4660b7fe932e4b9cb787',	'user',	'SJtayGyIV',	0,	1,	0,	'',	'',	'008613800138000',	'14e1b600b1fd579f47433b88e8d85291',	'0086',	'13800138000',	'',	'',	0,	'cd3efef90cd74bd5b80c11d85353b281@1',	1,	'3bb42c9bc5ac4842ae2cc3e17c78abc8@3',	0,	1,	1,	1,	1,	1,	1,	0,	0,	0,	1,	'',	'2024-06-18 12:51:40',	'2024-06-18 12:51:40',	'',	'',	0,	'',	'',	'',	'',	'',	0),
(5,	'72f6c08f190f4322b622680734fbf744',	'user1',	'SJvLsOc',	0,	1,	0,	'',	'',	'008613800138009',	'14e1b600b1fd579f47433b88e8d85291',	'0086',	'13800138009',	'',	'',	0,	'f1d2b521833d4cdf91514f479d64d9ac@1',	0,	'16a0153c3a234b9cb977b5557d1ad54e@3',	0,	1,	1,	1,	1,	1,	1,	0,	0,	0,	1,	'',	'2024-06-18 12:54:08',	'2024-06-18 12:54:08',	'',	'',	0,	'',	'',	'',	'',	'',	0),
(6,	'dc26cbe5a083456a841a45c1b4dabcf8',	'黄天佑',	'yPKz9n',	0,	1,	0,	'',	'',	'008613800138008',	'14e1b600b1fd579f47433b88e8d85291',	'0086',	'13800138008',	'',	'',	0,	'8d9095caf1c844169f6242c4b9dc7847@1',	1,	'7bbfabb7cb8f4775a2fa5b7a03104dbc@3',	0,	1,	1,	1,	1,	1,	1,	0,	0,	0,	1,	'',	'2024-07-04 09:28:50',	'2024-07-04 09:28:50',	'',	'',	0,	'',	'',	'',	'',	'',	0),
(7,	'6765ee0075d14fe4a14551927c8119c1',	'程昊川',	'zqrJuaf',	0,	1,	0,	'',	'',	'008613800138003',	'14e1b600b1fd579f47433b88e8d85291',	'0086',	'13800138003',	'',	'',	0,	'be87ebff228641928599ac2a00eeca71@1',	0,	'4da28b97c3ec44f395ec6e90ca955150@3',	0,	1,	1,	1,	1,	1,	1,	0,	0,	0,	1,	'',	'2024-07-04 09:29:24',	'2024-07-04 09:29:24',	'',	'',	0,	'',	'',	'',	'',	'',	0),
(8,	'd39d072025d547909a8bef3df86e867d',	'test',	'SuaJhA',	0,	0,	0,	'',	'',	'008600000000000',	'14e1b600b1fd579f47433b88e8d85291',	'0086',	'00000000000',	'',	'',	0,	'4f6b3c75edc94f4fa1b252b104ca988b@1',	0,	'ac13c1b213834bcaa208724906d29f40@3',	0,	1,	1,	1,	1,	1,	1,	0,	0,	0,	0,	'',	'2024-07-04 10:02:00',	'2024-07-04 10:02:00',	'',	'',	0,	'',	'',	'',	'',	'',	0);

DROP TABLE IF EXISTS `user_online`;
CREATE TABLE `user_online` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uid` varchar(40) NOT NULL DEFAULT '',
  `device_flag` smallint NOT NULL DEFAULT '0',
  `last_online` int NOT NULL DEFAULT '0',
  `last_offline` int NOT NULL DEFAULT '0',
  `online` tinyint(1) NOT NULL DEFAULT '0',
  `version` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid_device` (`uid`,`device_flag`),
  KEY `online_idx` (`online`),
  KEY `uid_idx` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `user_online` (`id`, `uid`, `device_flag`, `last_online`, `last_offline`, `online`, `version`, `created_at`, `updated_at`) VALUES
(1,	'5e87364086ec4660b7fe932e4b9cb787',	1,	1720509333,	1720510284,	0,	1720510284852242,	'2024-06-21 06:57:18',	'2024-07-09 07:31:24'),
(2,	'____manager',	1,	1718953068,	1718953072,	0,	1718953072972454,	'2024-06-21 06:57:48',	'2024-06-21 06:57:52'),
(7,	'admin',	1,	1719298412,	1719298943,	0,	1719298943359984,	'2024-06-21 07:02:11',	'2024-06-25 07:02:23'),
(9,	'72f6c08f190f4322b622680734fbf744',	1,	1720361076,	1720509339,	0,	1720509339271815,	'2024-06-21 07:03:23',	'2024-07-09 07:15:39'),
(118,	'dc26cbe5a083456a841a45c1b4dabcf8',	1,	1720234480,	1720234649,	0,	1720234649191894,	'2024-07-04 09:45:02',	'2024-07-06 02:57:29'),
(123,	'6765ee0075d14fe4a14551927c8119c1',	1,	1720238424,	1720238531,	0,	1720238531043787,	'2024-07-04 09:47:11',	'2024-07-06 04:02:11');

-- 2024-07-09 07:36:15