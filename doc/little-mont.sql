/*
 Navicat Premium Data Transfer

 Source Server         : 101.43.136.5
 Source Server Type    : MySQL
 Source Server Version : 50651
 Source Host           : 101.43.136.5:3306
 Source Schema         : little-mont

 Target Server Type    : MySQL
 Target Server Version : 50651
 File Encoding         : 65001

 Date: 07/05/2022 15:48:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (56, 'tb_sys_menu', '菜单表', NULL, NULL, 'TbSysMenu', 'crud', 'com.unioncall.auth', 'auth', 'menu', '菜单', 'xjl', '0', '/', NULL, 'admin', '2022-01-13 17:29:20', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 832 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (810, '56', 'id', '编号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (811, '56', 'name', '名称', 'varchar(100)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (812, '56', 'parent_id', '父级编号', 'varchar(64)', 'String', 'parentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (813, '56', 'parent_ids', '所有父级编号', 'varchar(2000)', 'String', 'parentIds', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (814, '56', 'path', '路由地址', 'varchar(200)', 'String', 'path', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (815, '56', 'component', '组件路径', 'varchar(255)', 'String', 'component', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (816, '56', 'redirect', '重定向', 'varchar(100)', 'String', 'redirect', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (817, '56', 'breadcrumb', '面包屑', 'tinyint(1)', 'Integer', 'breadcrumb', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (818, '56', 'keep_alive', '页面是否缓存', 'tinyint(1)', 'Integer', 'keepAlive', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (819, '56', 'sort', '排序', 'decimal(10,0)', 'Long', 'sort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (820, '56', 'menu_type', '菜单类型（M目录 C菜单 F按钮）', 'char(1)', 'String', 'menuType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 11, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (821, '56', 'href', '链接', 'varchar(2000)', 'String', 'href', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 12, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (822, '56', 'target', '目标', 'varchar(20)', 'String', 'target', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (823, '56', 'icon', '图标', 'varchar(100)', 'String', 'icon', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (824, '56', 'is_show', '是否在菜单中显示', 'char(1)', 'String', 'isShow', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (825, '56', 'permis', '权限标识', 'varchar(200)', 'String', 'permis', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (826, '56', 'creator', '创建者', 'int(11)', 'Long', 'creator', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (827, '56', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 18, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (828, '56', 'update_user', '更新者', 'int(11)', 'Long', 'updateUser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (829, '56', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 20, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (830, '56', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2022-01-13 17:29:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (831, '56', 'is_del', '删除标记 默认0  是否删除  0否  1是 ', 'bit(1)', 'Integer', 'isDel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2022-01-13 17:29:20', '', NULL);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-12-31 16:38:04', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-12-31 16:38:04', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-12-31 16:38:04', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'N', 'admin', '2021-12-31 16:38:04', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2021-12-31 16:38:04', '', NULL, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-12-31 16:38:04', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-12-31 16:38:04', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-12-31 16:38:04', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-12-31 16:38:04', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-12-31 16:38:04', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-12-31 16:38:04', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-12-31 16:38:04', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-12-31 16:38:04', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-12-31 16:38:04', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-12-31 16:38:04', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-12-31 16:38:04', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 851 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-01 21:00:29');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-01 22:07:52');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-01 22:07:58');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-01 22:08:26');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-02 11:00:33');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-02 17:10:15');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-02 17:10:27');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-04 09:22:55');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-04 09:23:00');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-04 09:23:05');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-04 09:36:05');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 09:36:20');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-04 14:38:41');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 14:38:50');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 14:48:01');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-05 09:52:35');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-05 18:10:55');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-05 18:35:09');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-05 18:49:35');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-05 18:49:42');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-05 19:36:11');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-06 15:41:27');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-06 15:41:35');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-06 19:01:05');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-06 19:37:09');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-06 19:37:16');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-06 19:37:21');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-07 09:13:55');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 09:14:00');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 09:23:39');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-07 09:28:20');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 11:19:02');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-07 11:52:21');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-07 11:52:29');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 11:52:36');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-08 11:07:14');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-08 11:07:22');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-08 11:07:30');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-08 16:20:16');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-08 16:25:35');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-08 16:25:37');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-08 16:25:39');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-08 16:30:50');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-08 16:32:02');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-08 16:33:05');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-08 16:35:57');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-08 17:19:34');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-08 17:19:57');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-08 17:33:20');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-08 17:34:53');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-10 18:28:54');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-10 18:28:57');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-10 18:28:58');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-10 18:28:59');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-10 18:29:00');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-10 18:29:00');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-10 18:41:08');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-10 19:29:47');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-10 19:29:55');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-10 19:29:56');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-10 19:31:45');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-10 19:32:46');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-11 13:15:13');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-11 13:42:59');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-11 13:43:03');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-11 13:43:04');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-11 13:43:05');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-11 14:01:31');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-11 14:01:32');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-11 14:02:02');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-11 14:11:32');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-11 15:57:46');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-11 15:58:11');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-11 15:58:24');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-11 15:59:04');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-11 16:09:15');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-11 16:17:43');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-11 16:17:53');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-11 16:17:57');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-11 16:17:58');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-11 16:17:58');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-11 16:17:58');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-11 16:17:58');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-11 16:18:31');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-11 16:18:45');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-11 16:18:45');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-11 16:19:34');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-11 16:47:12');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-11 16:47:46');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-11 16:48:00');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-11 16:59:54');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-11 17:10:30');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-11 17:10:45');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-11 17:10:58');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-11 17:17:49');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-12 09:29:19');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-12 09:36:42');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-12 10:01:03');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-12 10:01:08');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-12 10:02:14');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-12 10:02:21');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-12 10:03:34');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-12 10:03:36');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-12 10:03:37');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-12 10:03:37');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-12 10:03:37');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-12 10:03:37');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-12 10:03:37');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-12 10:03:59');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-12 10:04:59');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-12 10:07:17');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-12 10:07:25');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-12 10:08:03');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-12 10:08:11');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-12 11:33:30');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-12 11:52:12');
INSERT INTO `sys_logininfor` VALUES (216, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-12 13:08:03');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-12 13:38:08');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-12 13:45:23');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-12 13:49:45');
INSERT INTO `sys_logininfor` VALUES (220, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-12 14:02:19');
INSERT INTO `sys_logininfor` VALUES (221, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-12 14:07:53');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-12 16:01:02');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-12 16:16:53');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '192.168.22.198', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-12 17:02:12');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '192.168.22.106', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-12 17:03:27');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '192.168.22.236', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-12 17:28:37');
INSERT INTO `sys_logininfor` VALUES (227, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '登录用户：user 不存在', '2022-01-12 18:17:10');
INSERT INTO `sys_logininfor` VALUES (228, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-12 18:19:41');
INSERT INTO `sys_logininfor` VALUES (229, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', NULL, '2022-01-12 18:20:27');
INSERT INTO `sys_logininfor` VALUES (230, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-12 18:23:59');
INSERT INTO `sys_logininfor` VALUES (231, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', NULL, '2022-01-12 18:27:33');
INSERT INTO `sys_logininfor` VALUES (232, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-12 18:28:39');
INSERT INTO `sys_logininfor` VALUES (233, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-01-12 18:29:44');
INSERT INTO `sys_logininfor` VALUES (234, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-12 18:30:10');
INSERT INTO `sys_logininfor` VALUES (235, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-01-12 18:32:03');
INSERT INTO `sys_logininfor` VALUES (236, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-01-12 18:42:59');
INSERT INTO `sys_logininfor` VALUES (237, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-01-12 18:51:59');
INSERT INTO `sys_logininfor` VALUES (238, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-12 18:54:22');
INSERT INTO `sys_logininfor` VALUES (239, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-12 18:54:50');
INSERT INTO `sys_logininfor` VALUES (240, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-01-12 18:56:29');
INSERT INTO `sys_logininfor` VALUES (241, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-01-12 18:59:54');
INSERT INTO `sys_logininfor` VALUES (242, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-01-12 19:02:06');
INSERT INTO `sys_logininfor` VALUES (243, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-01-12 19:09:47');
INSERT INTO `sys_logininfor` VALUES (244, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-01-12 19:10:53');
INSERT INTO `sys_logininfor` VALUES (245, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-12 19:36:41');
INSERT INTO `sys_logininfor` VALUES (246, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-12 19:49:29');
INSERT INTO `sys_logininfor` VALUES (247, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-12 19:50:40');
INSERT INTO `sys_logininfor` VALUES (248, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-12 19:56:43');
INSERT INTO `sys_logininfor` VALUES (249, 'user', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-12 19:57:16');
INSERT INTO `sys_logininfor` VALUES (250, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-13 17:28:53');
INSERT INTO `sys_logininfor` VALUES (251, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-14 11:13:41');
INSERT INTO `sys_logininfor` VALUES (252, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-14 13:33:57');
INSERT INTO `sys_logininfor` VALUES (253, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-14 13:34:02');
INSERT INTO `sys_logininfor` VALUES (254, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-14 13:59:07');
INSERT INTO `sys_logininfor` VALUES (255, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-14 14:00:09');
INSERT INTO `sys_logininfor` VALUES (256, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-14 14:00:47');
INSERT INTO `sys_logininfor` VALUES (257, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-14 14:01:53');
INSERT INTO `sys_logininfor` VALUES (258, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-14 14:02:07');
INSERT INTO `sys_logininfor` VALUES (259, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-14 14:56:28');
INSERT INTO `sys_logininfor` VALUES (260, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2022-01-14 16:25:33');
INSERT INTO `sys_logininfor` VALUES (261, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2022-01-14 16:25:56');
INSERT INTO `sys_logininfor` VALUES (262, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2022-01-14 16:26:02');
INSERT INTO `sys_logininfor` VALUES (263, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2022-01-14 16:26:21');
INSERT INTO `sys_logininfor` VALUES (264, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2022-01-14 16:26:25');
INSERT INTO `sys_logininfor` VALUES (265, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-14 16:28:07');
INSERT INTO `sys_logininfor` VALUES (266, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-14 16:28:33');
INSERT INTO `sys_logininfor` VALUES (267, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-14 18:21:33');
INSERT INTO `sys_logininfor` VALUES (268, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-14 18:21:48');
INSERT INTO `sys_logininfor` VALUES (269, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-14 18:21:53');
INSERT INTO `sys_logininfor` VALUES (270, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-14 18:22:06');
INSERT INTO `sys_logininfor` VALUES (271, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-14 19:21:24');
INSERT INTO `sys_logininfor` VALUES (272, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-14 19:46:00');
INSERT INTO `sys_logininfor` VALUES (273, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-14 20:06:50');
INSERT INTO `sys_logininfor` VALUES (274, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-17 18:12:50');
INSERT INTO `sys_logininfor` VALUES (275, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-17 18:13:13');
INSERT INTO `sys_logininfor` VALUES (276, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-17 18:13:16');
INSERT INTO `sys_logininfor` VALUES (277, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', 'Index: 0, Size: 0', '2022-01-17 19:05:26');
INSERT INTO `sys_logininfor` VALUES (278, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-17 19:06:37');
INSERT INTO `sys_logininfor` VALUES (279, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-17 19:06:48');
INSERT INTO `sys_logininfor` VALUES (280, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-17 19:07:34');
INSERT INTO `sys_logininfor` VALUES (281, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-17 19:07:36');
INSERT INTO `sys_logininfor` VALUES (282, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-17 19:07:37');
INSERT INTO `sys_logininfor` VALUES (283, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-17 19:07:45');
INSERT INTO `sys_logininfor` VALUES (284, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-17 19:07:49');
INSERT INTO `sys_logininfor` VALUES (285, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-17 19:07:50');
INSERT INTO `sys_logininfor` VALUES (286, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', 'Index: 0, Size: 0', '2022-01-17 19:07:56');
INSERT INTO `sys_logininfor` VALUES (287, 'xjl', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-17 19:14:12');
INSERT INTO `sys_logininfor` VALUES (288, 'xjl', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', 'Index: 0, Size: 0', '2022-01-17 19:15:03');
INSERT INTO `sys_logininfor` VALUES (289, 'xjl', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', 'Index: 0, Size: 0', '2022-01-17 19:16:44');
INSERT INTO `sys_logininfor` VALUES (290, 'xjl', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', 'Index: 0, Size: 0', '2022-01-17 19:18:01');
INSERT INTO `sys_logininfor` VALUES (291, 'xjl', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码错误', '2022-01-17 19:22:19');
INSERT INTO `sys_logininfor` VALUES (292, 'xjl', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', 'Index: 0, Size: 0', '2022-01-17 19:23:12');
INSERT INTO `sys_logininfor` VALUES (293, 'xjl', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-17 19:26:27');
INSERT INTO `sys_logininfor` VALUES (294, 'xjl', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', NULL, '2022-01-17 19:27:08');
INSERT INTO `sys_logininfor` VALUES (295, 'xjl', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', NULL, '2022-01-17 19:29:40');
INSERT INTO `sys_logininfor` VALUES (296, 'xjl', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', NULL, '2022-01-17 19:32:27');
INSERT INTO `sys_logininfor` VALUES (297, 'xjl', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', NULL, '2022-01-17 19:35:28');
INSERT INTO `sys_logininfor` VALUES (298, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', NULL, '2022-01-17 19:35:52');
INSERT INTO `sys_logininfor` VALUES (299, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-17 19:36:05');
INSERT INTO `sys_logininfor` VALUES (300, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', NULL, '2022-01-17 19:36:11');
INSERT INTO `sys_logininfor` VALUES (301, 'xjl', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', NULL, '2022-01-17 19:40:17');
INSERT INTO `sys_logininfor` VALUES (302, 'xjl', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', NULL, '2022-01-17 19:40:56');
INSERT INTO `sys_logininfor` VALUES (303, 'xjl', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-17 19:44:31');
INSERT INTO `sys_logininfor` VALUES (304, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-17 19:45:30');
INSERT INTO `sys_logininfor` VALUES (305, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-17 19:49:24');
INSERT INTO `sys_logininfor` VALUES (306, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-18 16:16:23');
INSERT INTO `sys_logininfor` VALUES (307, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-18 16:16:35');
INSERT INTO `sys_logininfor` VALUES (308, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-18 19:12:59');
INSERT INTO `sys_logininfor` VALUES (309, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-18 19:44:25');
INSERT INTO `sys_logininfor` VALUES (310, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-19 10:04:04');
INSERT INTO `sys_logininfor` VALUES (311, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-19 10:04:04');
INSERT INTO `sys_logininfor` VALUES (312, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-19 10:06:16');
INSERT INTO `sys_logininfor` VALUES (313, 'webdyc', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-19 10:07:43');
INSERT INTO `sys_logininfor` VALUES (314, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-19 10:08:41');
INSERT INTO `sys_logininfor` VALUES (315, 'webdyc', '192.168.22.198', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-19 10:13:59');
INSERT INTO `sys_logininfor` VALUES (316, 'webdyc', '192.168.22.130', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-19 10:16:12');
INSERT INTO `sys_logininfor` VALUES (317, 'webdyc', '192.168.22.130', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-19 10:23:07');
INSERT INTO `sys_logininfor` VALUES (318, 'webdyc', '192.168.22.130', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-19 10:23:54');
INSERT INTO `sys_logininfor` VALUES (319, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-19 10:28:55');
INSERT INTO `sys_logininfor` VALUES (320, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-19 10:29:04');
INSERT INTO `sys_logininfor` VALUES (321, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-19 10:35:27');
INSERT INTO `sys_logininfor` VALUES (322, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-19 10:35:37');
INSERT INTO `sys_logininfor` VALUES (323, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-19 10:39:52');
INSERT INTO `sys_logininfor` VALUES (324, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-19 10:40:06');
INSERT INTO `sys_logininfor` VALUES (325, 'webdyc', '192.168.22.198', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-19 11:31:27');
INSERT INTO `sys_logininfor` VALUES (326, 'webdyc', '192.168.22.198', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-19 11:31:37');
INSERT INTO `sys_logininfor` VALUES (327, 'webdyc', '192.168.22.198', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-19 11:31:52');
INSERT INTO `sys_logininfor` VALUES (328, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-19 13:28:53');
INSERT INTO `sys_logininfor` VALUES (329, 'admin', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-19 14:10:59');
INSERT INTO `sys_logininfor` VALUES (330, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-19 14:15:01');
INSERT INTO `sys_logininfor` VALUES (331, 'admin', '192.168.22.11', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-19 14:19:28');
INSERT INTO `sys_logininfor` VALUES (332, 'admin', '192.168.22.11', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-19 14:19:42');
INSERT INTO `sys_logininfor` VALUES (333, 'webdyc', '192.168.22.130', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-19 14:26:39');
INSERT INTO `sys_logininfor` VALUES (334, 'admin', '192.168.22.11', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-19 14:33:32');
INSERT INTO `sys_logininfor` VALUES (335, 'webdyc', '192.168.22.130', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-19 15:39:04');
INSERT INTO `sys_logininfor` VALUES (336, 'webdyc', '192.168.22.130', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-19 15:39:09');
INSERT INTO `sys_logininfor` VALUES (337, 'xjl', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-19 16:23:37');
INSERT INTO `sys_logininfor` VALUES (338, 'xjl', '192.168.22.198', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-19 16:30:03');
INSERT INTO `sys_logininfor` VALUES (339, 'webdyc', '192.168.22.130', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-19 16:34:12');
INSERT INTO `sys_logininfor` VALUES (340, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-19 17:29:13');
INSERT INTO `sys_logininfor` VALUES (341, 'webdyc', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-19 17:59:31');
INSERT INTO `sys_logininfor` VALUES (342, 'webdyc', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-19 18:07:04');
INSERT INTO `sys_logininfor` VALUES (343, 'xjl', '192.168.22.198', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-19 18:24:58');
INSERT INTO `sys_logininfor` VALUES (344, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-19 18:25:51');
INSERT INTO `sys_logininfor` VALUES (345, 'webdyc', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-19 18:55:26');
INSERT INTO `sys_logininfor` VALUES (346, 'webdyc', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-19 18:55:35');
INSERT INTO `sys_logininfor` VALUES (347, 'webdyc', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-19 18:56:39');
INSERT INTO `sys_logininfor` VALUES (348, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-19 19:13:35');
INSERT INTO `sys_logininfor` VALUES (349, 'webdyc', '192.168.23.127', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-19 19:39:55');
INSERT INTO `sys_logininfor` VALUES (350, 'webdyc', '192.168.23.127', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-19 19:40:03');
INSERT INTO `sys_logininfor` VALUES (351, 'webdyc', '192.168.22.130', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-19 19:45:10');
INSERT INTO `sys_logininfor` VALUES (352, 'webdyc', '192.168.22.130', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-19 19:45:10');
INSERT INTO `sys_logininfor` VALUES (353, 'webdyc', '192.168.22.130', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-19 19:45:15');
INSERT INTO `sys_logininfor` VALUES (354, 'webdyc', '192.168.22.130', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-19 19:45:15');
INSERT INTO `sys_logininfor` VALUES (355, 'webdyc', '192.168.22.130', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-20 09:45:53');
INSERT INTO `sys_logininfor` VALUES (356, 'webdyc', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-20 10:41:14');
INSERT INTO `sys_logininfor` VALUES (357, 'webdyc', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-20 10:43:21');
INSERT INTO `sys_logininfor` VALUES (358, 'webdyc', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码错误', '2022-01-20 10:59:11');
INSERT INTO `sys_logininfor` VALUES (359, 'webdyc', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '1', '验证码已失效', '2022-01-20 10:59:21');
INSERT INTO `sys_logininfor` VALUES (360, 'webdyc', '103.233.53.37', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-20 11:00:09');
INSERT INTO `sys_logininfor` VALUES (361, 'webdyc', '192.168.22.130', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-20 11:05:02');
INSERT INTO `sys_logininfor` VALUES (362, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-20 11:39:33');
INSERT INTO `sys_logininfor` VALUES (363, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-20 11:39:37');
INSERT INTO `sys_logininfor` VALUES (364, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-20 11:39:55');
INSERT INTO `sys_logininfor` VALUES (365, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-20 11:39:57');
INSERT INTO `sys_logininfor` VALUES (366, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-20 11:40:06');
INSERT INTO `sys_logininfor` VALUES (367, 'webdyc', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-20 11:43:38');
INSERT INTO `sys_logininfor` VALUES (368, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-20 13:55:53');
INSERT INTO `sys_logininfor` VALUES (369, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-01-20 13:55:53');
INSERT INTO `sys_logininfor` VALUES (370, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-20 14:38:22');
INSERT INTO `sys_logininfor` VALUES (371, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-20 15:43:16');
INSERT INTO `sys_logininfor` VALUES (372, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-20 15:43:29');
INSERT INTO `sys_logininfor` VALUES (373, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-20 16:00:41');
INSERT INTO `sys_logininfor` VALUES (374, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-20 16:38:43');
INSERT INTO `sys_logininfor` VALUES (375, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-20 16:38:48');
INSERT INTO `sys_logininfor` VALUES (376, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-20 17:20:05');
INSERT INTO `sys_logininfor` VALUES (377, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-21 10:04:16');
INSERT INTO `sys_logininfor` VALUES (378, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-21 10:05:27');
INSERT INTO `sys_logininfor` VALUES (379, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-21 10:05:34');
INSERT INTO `sys_logininfor` VALUES (380, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-01-21 18:49:25');
INSERT INTO `sys_logininfor` VALUES (381, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-21 18:49:53');
INSERT INTO `sys_logininfor` VALUES (382, 'webdyc', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-21 19:32:16');
INSERT INTO `sys_logininfor` VALUES (383, 'webdyc', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-22 09:10:01');
INSERT INTO `sys_logininfor` VALUES (384, 'webdyc', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-22 14:07:51');
INSERT INTO `sys_logininfor` VALUES (385, 'webdyc', '192.168.23.237', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-22 15:03:02');
INSERT INTO `sys_logininfor` VALUES (386, 'xjl', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-22 15:58:15');
INSERT INTO `sys_logininfor` VALUES (387, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-24 09:27:00');
INSERT INTO `sys_logininfor` VALUES (388, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-24 09:27:08');
INSERT INTO `sys_logininfor` VALUES (389, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-24 10:03:11');
INSERT INTO `sys_logininfor` VALUES (390, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-24 10:07:25');
INSERT INTO `sys_logininfor` VALUES (391, 'xjl', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-24 10:46:47');
INSERT INTO `sys_logininfor` VALUES (392, 'admin', '192.168.23.21', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-24 14:57:15');
INSERT INTO `sys_logininfor` VALUES (393, 'xjl', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-24 19:30:41');
INSERT INTO `sys_logininfor` VALUES (394, 'xjl', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-25 09:03:26');
INSERT INTO `sys_logininfor` VALUES (395, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-25 15:49:50');
INSERT INTO `sys_logininfor` VALUES (396, 'xjl', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-01-26 09:20:03');
INSERT INTO `sys_logininfor` VALUES (397, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-26 11:11:36');
INSERT INTO `sys_logininfor` VALUES (398, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-26 11:17:41');
INSERT INTO `sys_logininfor` VALUES (399, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-26 11:20:32');
INSERT INTO `sys_logininfor` VALUES (400, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-26 11:20:36');
INSERT INTO `sys_logininfor` VALUES (401, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-26 11:21:25');
INSERT INTO `sys_logininfor` VALUES (402, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-26 11:21:27');
INSERT INTO `sys_logininfor` VALUES (403, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-26 11:21:27');
INSERT INTO `sys_logininfor` VALUES (404, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-26 11:21:47');
INSERT INTO `sys_logininfor` VALUES (405, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-26 11:22:45');
INSERT INTO `sys_logininfor` VALUES (406, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-26 11:23:16');
INSERT INTO `sys_logininfor` VALUES (407, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-26 11:23:55');
INSERT INTO `sys_logininfor` VALUES (408, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-26 11:37:10');
INSERT INTO `sys_logininfor` VALUES (409, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-26 11:37:32');
INSERT INTO `sys_logininfor` VALUES (410, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-26 11:39:20');
INSERT INTO `sys_logininfor` VALUES (411, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-26 11:39:34');
INSERT INTO `sys_logininfor` VALUES (412, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-26 11:42:40');
INSERT INTO `sys_logininfor` VALUES (413, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-26 11:47:51');
INSERT INTO `sys_logininfor` VALUES (414, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-26 11:48:12');
INSERT INTO `sys_logininfor` VALUES (415, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-26 11:49:34');
INSERT INTO `sys_logininfor` VALUES (416, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-26 11:49:53');
INSERT INTO `sys_logininfor` VALUES (417, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-26 11:50:22');
INSERT INTO `sys_logininfor` VALUES (418, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-26 11:52:08');
INSERT INTO `sys_logininfor` VALUES (419, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-26 11:53:56');
INSERT INTO `sys_logininfor` VALUES (420, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-26 11:54:46');
INSERT INTO `sys_logininfor` VALUES (421, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-26 11:59:21');
INSERT INTO `sys_logininfor` VALUES (422, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-26 13:10:59');
INSERT INTO `sys_logininfor` VALUES (423, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-26 13:11:11');
INSERT INTO `sys_logininfor` VALUES (424, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-26 13:38:26');
INSERT INTO `sys_logininfor` VALUES (425, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-27 15:46:08');
INSERT INTO `sys_logininfor` VALUES (426, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-27 18:53:39');
INSERT INTO `sys_logininfor` VALUES (427, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-27 19:18:40');
INSERT INTO `sys_logininfor` VALUES (428, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-27 19:19:28');
INSERT INTO `sys_logininfor` VALUES (429, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-27 19:20:20');
INSERT INTO `sys_logininfor` VALUES (430, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-27 19:20:49');
INSERT INTO `sys_logininfor` VALUES (431, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-27 19:21:02');
INSERT INTO `sys_logininfor` VALUES (432, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-27 19:21:49');
INSERT INTO `sys_logininfor` VALUES (433, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-27 19:22:14');
INSERT INTO `sys_logininfor` VALUES (434, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-27 19:22:31');
INSERT INTO `sys_logininfor` VALUES (435, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-27 19:22:48');
INSERT INTO `sys_logininfor` VALUES (436, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-27 19:23:03');
INSERT INTO `sys_logininfor` VALUES (437, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-27 19:23:48');
INSERT INTO `sys_logininfor` VALUES (438, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-27 19:25:31');
INSERT INTO `sys_logininfor` VALUES (439, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-27 19:25:49');
INSERT INTO `sys_logininfor` VALUES (440, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-27 19:26:48');
INSERT INTO `sys_logininfor` VALUES (441, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-01-27 19:26:57');
INSERT INTO `sys_logininfor` VALUES (442, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-01-27 19:28:22');
INSERT INTO `sys_logininfor` VALUES (443, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-28 17:38:00');
INSERT INTO `sys_logininfor` VALUES (444, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-28 17:39:16');
INSERT INTO `sys_logininfor` VALUES (445, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-02-08 15:00:22');
INSERT INTO `sys_logininfor` VALUES (446, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-02-08 15:05:21');
INSERT INTO `sys_logininfor` VALUES (447, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-02-08 15:05:33');
INSERT INTO `sys_logininfor` VALUES (448, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-02-08 15:05:42');
INSERT INTO `sys_logininfor` VALUES (449, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-02-09 16:27:20');
INSERT INTO `sys_logininfor` VALUES (450, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-02-09 16:27:20');
INSERT INTO `sys_logininfor` VALUES (451, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-02-10 17:38:29');
INSERT INTO `sys_logininfor` VALUES (452, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-02-10 17:39:58');
INSERT INTO `sys_logininfor` VALUES (453, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-02-10 17:40:07');
INSERT INTO `sys_logininfor` VALUES (454, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-02-10 17:42:10');
INSERT INTO `sys_logininfor` VALUES (455, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-02-14 10:14:54');
INSERT INTO `sys_logininfor` VALUES (456, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-02-14 10:15:07');
INSERT INTO `sys_logininfor` VALUES (457, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-02-15 17:22:43');
INSERT INTO `sys_logininfor` VALUES (458, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-02-15 17:22:51');
INSERT INTO `sys_logininfor` VALUES (459, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-02-15 17:23:10');
INSERT INTO `sys_logininfor` VALUES (460, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-02-19 12:39:09');
INSERT INTO `sys_logininfor` VALUES (461, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-19 12:39:19');
INSERT INTO `sys_logininfor` VALUES (462, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2022-02-19 12:39:20');
INSERT INTO `sys_logininfor` VALUES (463, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-02-21 18:10:26');
INSERT INTO `sys_logininfor` VALUES (464, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-02-21 18:10:49');
INSERT INTO `sys_logininfor` VALUES (465, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2022-02-21 18:10:52');
INSERT INTO `sys_logininfor` VALUES (466, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-21 18:11:07');
INSERT INTO `sys_logininfor` VALUES (467, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2022-02-21 18:12:39');
INSERT INTO `sys_logininfor` VALUES (468, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-02-21 18:12:51');
INSERT INTO `sys_logininfor` VALUES (469, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2022-02-21 18:12:52');
INSERT INTO `sys_logininfor` VALUES (470, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-02-26 14:46:34');
INSERT INTO `sys_logininfor` VALUES (471, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-02-26 14:46:34');
INSERT INTO `sys_logininfor` VALUES (472, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-02-26 15:07:49');
INSERT INTO `sys_logininfor` VALUES (473, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-03-01 14:28:46');
INSERT INTO `sys_logininfor` VALUES (474, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-03-07 18:19:23');
INSERT INTO `sys_logininfor` VALUES (475, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-03-07 18:19:25');
INSERT INTO `sys_logininfor` VALUES (476, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-03-07 18:19:26');
INSERT INTO `sys_logininfor` VALUES (477, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码已失效', '2022-03-07 18:19:27');
INSERT INTO `sys_logininfor` VALUES (478, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-03-07 18:19:37');
INSERT INTO `sys_logininfor` VALUES (479, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-07 21:58:21');
INSERT INTO `sys_logininfor` VALUES (480, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-03-11 22:41:34');
INSERT INTO `sys_logininfor` VALUES (481, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-11 22:41:56');
INSERT INTO `sys_logininfor` VALUES (482, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-03-12 19:39:26');
INSERT INTO `sys_logininfor` VALUES (483, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 19:39:35');
INSERT INTO `sys_logininfor` VALUES (484, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '1', '验证码错误', '2022-03-25 10:52:25');
INSERT INTO `sys_logininfor` VALUES (485, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-03-25 10:52:37');
INSERT INTO `sys_logininfor` VALUES (486, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-26 17:44:32');
INSERT INTO `sys_logininfor` VALUES (487, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-30 16:25:59');
INSERT INTO `sys_logininfor` VALUES (488, 'webdyc', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2022-03-30 16:26:05');
INSERT INTO `sys_logininfor` VALUES (489, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-03-31 10:50:57');
INSERT INTO `sys_logininfor` VALUES (490, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-01 19:25:58');
INSERT INTO `sys_logininfor` VALUES (491, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-01 19:32:28');
INSERT INTO `sys_logininfor` VALUES (492, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-02 11:21:18');
INSERT INTO `sys_logininfor` VALUES (493, 'admin', '10.168.1.116', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-02 11:31:17');
INSERT INTO `sys_logininfor` VALUES (494, 'admin', '10.168.1.116', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-02 11:31:57');
INSERT INTO `sys_logininfor` VALUES (495, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-02 11:32:33');
INSERT INTO `sys_logininfor` VALUES (496, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-02 11:35:54');
INSERT INTO `sys_logininfor` VALUES (497, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2022-04-02 13:13:19');
INSERT INTO `sys_logininfor` VALUES (498, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-02 13:14:04');
INSERT INTO `sys_logininfor` VALUES (499, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-02 13:25:06');
INSERT INTO `sys_logininfor` VALUES (500, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2022-04-02 13:26:56');
INSERT INTO `sys_logininfor` VALUES (501, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-02 13:27:35');
INSERT INTO `sys_logininfor` VALUES (502, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-02 13:28:06');
INSERT INTO `sys_logininfor` VALUES (503, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-02 13:28:21');
INSERT INTO `sys_logininfor` VALUES (504, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-02 13:29:23');
INSERT INTO `sys_logininfor` VALUES (505, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-02 13:37:11');
INSERT INTO `sys_logininfor` VALUES (506, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-02 13:37:57');
INSERT INTO `sys_logininfor` VALUES (507, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-02 13:39:40');
INSERT INTO `sys_logininfor` VALUES (508, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-02 15:35:35');
INSERT INTO `sys_logininfor` VALUES (509, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2022-04-02 16:24:41');
INSERT INTO `sys_logininfor` VALUES (510, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-03 12:40:27');
INSERT INTO `sys_logininfor` VALUES (511, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-03 13:32:37');
INSERT INTO `sys_logininfor` VALUES (512, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-05 16:06:21');
INSERT INTO `sys_logininfor` VALUES (513, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-04-05 17:02:44');
INSERT INTO `sys_logininfor` VALUES (514, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-14 13:54:02');
INSERT INTO `sys_logininfor` VALUES (515, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-18 14:00:48');
INSERT INTO `sys_logininfor` VALUES (516, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-18 14:01:00');
INSERT INTO `sys_logininfor` VALUES (517, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-04-18 14:01:17');
INSERT INTO `sys_logininfor` VALUES (518, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-20 16:02:47');
INSERT INTO `sys_logininfor` VALUES (519, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-20 16:04:02');
INSERT INTO `sys_logininfor` VALUES (520, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-20 17:41:14');
INSERT INTO `sys_logininfor` VALUES (521, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-20 17:41:18');
INSERT INTO `sys_logininfor` VALUES (522, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-20 17:42:31');
INSERT INTO `sys_logininfor` VALUES (523, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-20 17:54:08');
INSERT INTO `sys_logininfor` VALUES (524, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-20 18:06:25');
INSERT INTO `sys_logininfor` VALUES (525, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-20 18:11:00');
INSERT INTO `sys_logininfor` VALUES (526, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-04-20 18:35:28');
INSERT INTO `sys_logininfor` VALUES (527, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-04-20 18:40:02');
INSERT INTO `sys_logininfor` VALUES (528, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-20 18:45:31');
INSERT INTO `sys_logininfor` VALUES (529, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-20 18:46:27');
INSERT INTO `sys_logininfor` VALUES (530, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-20 18:46:57');
INSERT INTO `sys_logininfor` VALUES (531, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-04-20 18:47:09');
INSERT INTO `sys_logininfor` VALUES (532, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-20 18:54:02');
INSERT INTO `sys_logininfor` VALUES (533, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-20 18:55:17');
INSERT INTO `sys_logininfor` VALUES (534, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-04-20 18:56:04');
INSERT INTO `sys_logininfor` VALUES (535, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-20 18:58:15');
INSERT INTO `sys_logininfor` VALUES (536, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-21 10:54:35');
INSERT INTO `sys_logininfor` VALUES (537, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 15:16:26');
INSERT INTO `sys_logininfor` VALUES (538, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:41');
INSERT INTO `sys_logininfor` VALUES (539, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:41');
INSERT INTO `sys_logininfor` VALUES (540, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:43');
INSERT INTO `sys_logininfor` VALUES (541, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:43');
INSERT INTO `sys_logininfor` VALUES (542, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:47');
INSERT INTO `sys_logininfor` VALUES (543, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:47');
INSERT INTO `sys_logininfor` VALUES (544, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:48');
INSERT INTO `sys_logininfor` VALUES (545, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:48');
INSERT INTO `sys_logininfor` VALUES (546, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:49');
INSERT INTO `sys_logininfor` VALUES (547, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:49');
INSERT INTO `sys_logininfor` VALUES (548, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:49');
INSERT INTO `sys_logininfor` VALUES (549, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:49');
INSERT INTO `sys_logininfor` VALUES (550, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:50');
INSERT INTO `sys_logininfor` VALUES (551, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:50');
INSERT INTO `sys_logininfor` VALUES (552, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:50');
INSERT INTO `sys_logininfor` VALUES (553, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:50');
INSERT INTO `sys_logininfor` VALUES (554, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:50');
INSERT INTO `sys_logininfor` VALUES (555, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:50');
INSERT INTO `sys_logininfor` VALUES (556, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:51');
INSERT INTO `sys_logininfor` VALUES (557, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:51');
INSERT INTO `sys_logininfor` VALUES (558, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:57');
INSERT INTO `sys_logininfor` VALUES (559, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:57');
INSERT INTO `sys_logininfor` VALUES (560, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:57');
INSERT INTO `sys_logininfor` VALUES (561, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:57');
INSERT INTO `sys_logininfor` VALUES (562, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:21:57');
INSERT INTO `sys_logininfor` VALUES (563, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:01');
INSERT INTO `sys_logininfor` VALUES (564, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:01');
INSERT INTO `sys_logininfor` VALUES (565, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:01');
INSERT INTO `sys_logininfor` VALUES (566, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:01');
INSERT INTO `sys_logininfor` VALUES (567, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:01');
INSERT INTO `sys_logininfor` VALUES (568, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:04');
INSERT INTO `sys_logininfor` VALUES (569, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:04');
INSERT INTO `sys_logininfor` VALUES (570, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:04');
INSERT INTO `sys_logininfor` VALUES (571, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:04');
INSERT INTO `sys_logininfor` VALUES (572, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:04');
INSERT INTO `sys_logininfor` VALUES (573, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:08');
INSERT INTO `sys_logininfor` VALUES (574, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:08');
INSERT INTO `sys_logininfor` VALUES (575, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:08');
INSERT INTO `sys_logininfor` VALUES (576, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:08');
INSERT INTO `sys_logininfor` VALUES (577, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:08');
INSERT INTO `sys_logininfor` VALUES (578, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:09');
INSERT INTO `sys_logininfor` VALUES (579, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:09');
INSERT INTO `sys_logininfor` VALUES (580, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:09');
INSERT INTO `sys_logininfor` VALUES (581, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:09');
INSERT INTO `sys_logininfor` VALUES (582, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:09');
INSERT INTO `sys_logininfor` VALUES (583, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:20');
INSERT INTO `sys_logininfor` VALUES (584, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:20');
INSERT INTO `sys_logininfor` VALUES (585, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:22');
INSERT INTO `sys_logininfor` VALUES (586, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:22');
INSERT INTO `sys_logininfor` VALUES (587, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:31');
INSERT INTO `sys_logininfor` VALUES (588, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:31');
INSERT INTO `sys_logininfor` VALUES (589, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:34');
INSERT INTO `sys_logininfor` VALUES (590, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:34');
INSERT INTO `sys_logininfor` VALUES (591, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:45');
INSERT INTO `sys_logininfor` VALUES (592, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:45');
INSERT INTO `sys_logininfor` VALUES (593, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:45');
INSERT INTO `sys_logininfor` VALUES (594, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:45');
INSERT INTO `sys_logininfor` VALUES (595, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:45');
INSERT INTO `sys_logininfor` VALUES (596, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:48');
INSERT INTO `sys_logininfor` VALUES (597, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:48');
INSERT INTO `sys_logininfor` VALUES (598, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:48');
INSERT INTO `sys_logininfor` VALUES (599, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:48');
INSERT INTO `sys_logininfor` VALUES (600, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:22:48');
INSERT INTO `sys_logininfor` VALUES (601, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:24:49');
INSERT INTO `sys_logininfor` VALUES (602, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:24:49');
INSERT INTO `sys_logininfor` VALUES (603, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:24:51');
INSERT INTO `sys_logininfor` VALUES (604, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:24:51');
INSERT INTO `sys_logininfor` VALUES (605, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:24:55');
INSERT INTO `sys_logininfor` VALUES (606, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:24:56');
INSERT INTO `sys_logininfor` VALUES (607, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:24:57');
INSERT INTO `sys_logininfor` VALUES (608, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:24:57');
INSERT INTO `sys_logininfor` VALUES (609, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:28:26');
INSERT INTO `sys_logininfor` VALUES (610, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:28:26');
INSERT INTO `sys_logininfor` VALUES (611, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:28:27');
INSERT INTO `sys_logininfor` VALUES (612, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:28:27');
INSERT INTO `sys_logininfor` VALUES (613, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:28:28');
INSERT INTO `sys_logininfor` VALUES (614, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:28:28');
INSERT INTO `sys_logininfor` VALUES (615, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:29:02');
INSERT INTO `sys_logininfor` VALUES (616, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:29:02');
INSERT INTO `sys_logininfor` VALUES (617, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:29:34');
INSERT INTO `sys_logininfor` VALUES (618, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:29:34');
INSERT INTO `sys_logininfor` VALUES (619, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:29:35');
INSERT INTO `sys_logininfor` VALUES (620, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:29:35');
INSERT INTO `sys_logininfor` VALUES (621, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:29:37');
INSERT INTO `sys_logininfor` VALUES (622, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:29:37');
INSERT INTO `sys_logininfor` VALUES (623, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:33:40');
INSERT INTO `sys_logininfor` VALUES (624, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:33:40');
INSERT INTO `sys_logininfor` VALUES (625, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:33:40');
INSERT INTO `sys_logininfor` VALUES (626, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:33:40');
INSERT INTO `sys_logininfor` VALUES (627, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:33:40');
INSERT INTO `sys_logininfor` VALUES (628, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:33:41');
INSERT INTO `sys_logininfor` VALUES (629, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:33:41');
INSERT INTO `sys_logininfor` VALUES (630, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:33:41');
INSERT INTO `sys_logininfor` VALUES (631, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:33:41');
INSERT INTO `sys_logininfor` VALUES (632, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:33:41');
INSERT INTO `sys_logininfor` VALUES (633, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:40:13');
INSERT INTO `sys_logininfor` VALUES (634, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:40:13');
INSERT INTO `sys_logininfor` VALUES (635, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:40:13');
INSERT INTO `sys_logininfor` VALUES (636, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:40:13');
INSERT INTO `sys_logininfor` VALUES (637, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:40:13');
INSERT INTO `sys_logininfor` VALUES (638, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:40:34');
INSERT INTO `sys_logininfor` VALUES (639, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:40:34');
INSERT INTO `sys_logininfor` VALUES (640, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:40:34');
INSERT INTO `sys_logininfor` VALUES (641, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:40:34');
INSERT INTO `sys_logininfor` VALUES (642, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:40:34');
INSERT INTO `sys_logininfor` VALUES (643, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:41:27');
INSERT INTO `sys_logininfor` VALUES (644, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:41:27');
INSERT INTO `sys_logininfor` VALUES (645, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:41:30');
INSERT INTO `sys_logininfor` VALUES (646, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:41:30');
INSERT INTO `sys_logininfor` VALUES (647, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:41:32');
INSERT INTO `sys_logininfor` VALUES (648, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:41:32');
INSERT INTO `sys_logininfor` VALUES (649, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:41:45');
INSERT INTO `sys_logininfor` VALUES (650, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:41:45');
INSERT INTO `sys_logininfor` VALUES (651, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:41:56');
INSERT INTO `sys_logininfor` VALUES (652, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:41:56');
INSERT INTO `sys_logininfor` VALUES (653, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:42:45');
INSERT INTO `sys_logininfor` VALUES (654, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:42:45');
INSERT INTO `sys_logininfor` VALUES (655, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:42:45');
INSERT INTO `sys_logininfor` VALUES (656, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:42:45');
INSERT INTO `sys_logininfor` VALUES (657, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:42:45');
INSERT INTO `sys_logininfor` VALUES (658, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:48:30');
INSERT INTO `sys_logininfor` VALUES (659, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:48:30');
INSERT INTO `sys_logininfor` VALUES (660, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:50:54');
INSERT INTO `sys_logininfor` VALUES (661, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:50:54');
INSERT INTO `sys_logininfor` VALUES (662, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:50:56');
INSERT INTO `sys_logininfor` VALUES (663, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:50:56');
INSERT INTO `sys_logininfor` VALUES (664, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:51:11');
INSERT INTO `sys_logininfor` VALUES (665, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:51:11');
INSERT INTO `sys_logininfor` VALUES (666, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:51:15');
INSERT INTO `sys_logininfor` VALUES (667, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:51:15');
INSERT INTO `sys_logininfor` VALUES (668, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:51:18');
INSERT INTO `sys_logininfor` VALUES (669, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:51:18');
INSERT INTO `sys_logininfor` VALUES (670, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:51:28');
INSERT INTO `sys_logininfor` VALUES (671, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:51:28');
INSERT INTO `sys_logininfor` VALUES (672, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:52:00');
INSERT INTO `sys_logininfor` VALUES (673, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:52:00');
INSERT INTO `sys_logininfor` VALUES (674, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:52:09');
INSERT INTO `sys_logininfor` VALUES (675, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:52:09');
INSERT INTO `sys_logininfor` VALUES (676, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:53:08');
INSERT INTO `sys_logininfor` VALUES (677, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:53:08');
INSERT INTO `sys_logininfor` VALUES (678, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:53:08');
INSERT INTO `sys_logininfor` VALUES (679, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:53:42');
INSERT INTO `sys_logininfor` VALUES (680, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:53:42');
INSERT INTO `sys_logininfor` VALUES (681, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:53:44');
INSERT INTO `sys_logininfor` VALUES (682, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:53:44');
INSERT INTO `sys_logininfor` VALUES (683, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:53:51');
INSERT INTO `sys_logininfor` VALUES (684, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:53:51');
INSERT INTO `sys_logininfor` VALUES (685, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:53:56');
INSERT INTO `sys_logininfor` VALUES (686, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:53:56');
INSERT INTO `sys_logininfor` VALUES (687, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:53:57');
INSERT INTO `sys_logininfor` VALUES (688, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:53:58');
INSERT INTO `sys_logininfor` VALUES (689, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:53:58');
INSERT INTO `sys_logininfor` VALUES (690, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:53:58');
INSERT INTO `sys_logininfor` VALUES (691, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:54:53');
INSERT INTO `sys_logininfor` VALUES (692, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:54:53');
INSERT INTO `sys_logininfor` VALUES (693, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:54:54');
INSERT INTO `sys_logininfor` VALUES (694, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:54:54');
INSERT INTO `sys_logininfor` VALUES (695, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:54:55');
INSERT INTO `sys_logininfor` VALUES (696, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:54:55');
INSERT INTO `sys_logininfor` VALUES (697, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:54:55');
INSERT INTO `sys_logininfor` VALUES (698, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:54:56');
INSERT INTO `sys_logininfor` VALUES (699, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:28');
INSERT INTO `sys_logininfor` VALUES (700, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:28');
INSERT INTO `sys_logininfor` VALUES (701, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:42');
INSERT INTO `sys_logininfor` VALUES (702, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:42');
INSERT INTO `sys_logininfor` VALUES (703, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:45');
INSERT INTO `sys_logininfor` VALUES (704, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:45');
INSERT INTO `sys_logininfor` VALUES (705, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:50');
INSERT INTO `sys_logininfor` VALUES (706, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:50');
INSERT INTO `sys_logininfor` VALUES (707, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:54');
INSERT INTO `sys_logininfor` VALUES (708, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:54');
INSERT INTO `sys_logininfor` VALUES (709, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:55');
INSERT INTO `sys_logininfor` VALUES (710, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:55');
INSERT INTO `sys_logininfor` VALUES (711, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:56');
INSERT INTO `sys_logininfor` VALUES (712, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:56');
INSERT INTO `sys_logininfor` VALUES (713, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:57');
INSERT INTO `sys_logininfor` VALUES (714, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:57');
INSERT INTO `sys_logininfor` VALUES (715, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:57');
INSERT INTO `sys_logininfor` VALUES (716, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:58');
INSERT INTO `sys_logininfor` VALUES (717, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:58');
INSERT INTO `sys_logininfor` VALUES (718, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:58');
INSERT INTO `sys_logininfor` VALUES (719, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:58');
INSERT INTO `sys_logininfor` VALUES (720, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:58');
INSERT INTO `sys_logininfor` VALUES (721, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:58');
INSERT INTO `sys_logininfor` VALUES (722, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:57:59');
INSERT INTO `sys_logininfor` VALUES (723, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:00');
INSERT INTO `sys_logininfor` VALUES (724, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:07');
INSERT INTO `sys_logininfor` VALUES (725, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:07');
INSERT INTO `sys_logininfor` VALUES (726, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:08');
INSERT INTO `sys_logininfor` VALUES (727, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:09');
INSERT INTO `sys_logininfor` VALUES (728, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:09');
INSERT INTO `sys_logininfor` VALUES (729, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:10');
INSERT INTO `sys_logininfor` VALUES (730, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:10');
INSERT INTO `sys_logininfor` VALUES (731, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:11');
INSERT INTO `sys_logininfor` VALUES (732, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:11');
INSERT INTO `sys_logininfor` VALUES (733, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:11');
INSERT INTO `sys_logininfor` VALUES (734, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:11');
INSERT INTO `sys_logininfor` VALUES (735, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:11');
INSERT INTO `sys_logininfor` VALUES (736, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:11');
INSERT INTO `sys_logininfor` VALUES (737, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:12');
INSERT INTO `sys_logininfor` VALUES (738, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:12');
INSERT INTO `sys_logininfor` VALUES (739, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:19');
INSERT INTO `sys_logininfor` VALUES (740, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:19');
INSERT INTO `sys_logininfor` VALUES (741, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:22');
INSERT INTO `sys_logininfor` VALUES (742, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:22');
INSERT INTO `sys_logininfor` VALUES (743, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:23');
INSERT INTO `sys_logininfor` VALUES (744, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:23');
INSERT INTO `sys_logininfor` VALUES (745, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:25');
INSERT INTO `sys_logininfor` VALUES (746, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:25');
INSERT INTO `sys_logininfor` VALUES (747, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:27');
INSERT INTO `sys_logininfor` VALUES (748, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:28');
INSERT INTO `sys_logininfor` VALUES (749, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:28');
INSERT INTO `sys_logininfor` VALUES (750, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:28');
INSERT INTO `sys_logininfor` VALUES (751, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:28');
INSERT INTO `sys_logininfor` VALUES (752, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:29');
INSERT INTO `sys_logininfor` VALUES (753, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:29');
INSERT INTO `sys_logininfor` VALUES (754, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:29');
INSERT INTO `sys_logininfor` VALUES (755, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:29');
INSERT INTO `sys_logininfor` VALUES (756, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:29');
INSERT INTO `sys_logininfor` VALUES (757, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:29');
INSERT INTO `sys_logininfor` VALUES (758, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:30');
INSERT INTO `sys_logininfor` VALUES (759, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:30');
INSERT INTO `sys_logininfor` VALUES (760, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:30');
INSERT INTO `sys_logininfor` VALUES (761, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:30');
INSERT INTO `sys_logininfor` VALUES (762, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:30');
INSERT INTO `sys_logininfor` VALUES (763, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:34');
INSERT INTO `sys_logininfor` VALUES (764, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:34');
INSERT INTO `sys_logininfor` VALUES (765, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:35');
INSERT INTO `sys_logininfor` VALUES (766, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:35');
INSERT INTO `sys_logininfor` VALUES (767, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:36');
INSERT INTO `sys_logininfor` VALUES (768, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:36');
INSERT INTO `sys_logininfor` VALUES (769, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:36');
INSERT INTO `sys_logininfor` VALUES (770, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:36');
INSERT INTO `sys_logininfor` VALUES (771, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:37');
INSERT INTO `sys_logininfor` VALUES (772, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:37');
INSERT INTO `sys_logininfor` VALUES (773, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 17:58:37');
INSERT INTO `sys_logininfor` VALUES (774, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:09:13');
INSERT INTO `sys_logininfor` VALUES (775, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:09:13');
INSERT INTO `sys_logininfor` VALUES (776, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:15:07');
INSERT INTO `sys_logininfor` VALUES (777, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:15:07');
INSERT INTO `sys_logininfor` VALUES (778, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:22:22');
INSERT INTO `sys_logininfor` VALUES (779, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:22:22');
INSERT INTO `sys_logininfor` VALUES (780, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:23:37');
INSERT INTO `sys_logininfor` VALUES (781, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:23:38');
INSERT INTO `sys_logininfor` VALUES (782, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:23:38');
INSERT INTO `sys_logininfor` VALUES (783, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:23:38');
INSERT INTO `sys_logininfor` VALUES (784, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:23:38');
INSERT INTO `sys_logininfor` VALUES (785, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:25:09');
INSERT INTO `sys_logininfor` VALUES (786, '', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:25:09');
INSERT INTO `sys_logininfor` VALUES (787, 'admin', '192.168.23.77', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-24 18:28:32');
INSERT INTO `sys_logininfor` VALUES (788, '879', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:35:11');
INSERT INTO `sys_logininfor` VALUES (789, '768', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:36:30');
INSERT INTO `sys_logininfor` VALUES (790, '123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:37:23');
INSERT INTO `sys_logininfor` VALUES (791, '123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:37:35');
INSERT INTO `sys_logininfor` VALUES (792, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:38:20');
INSERT INTO `sys_logininfor` VALUES (793, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-04-24 18:40:34');
INSERT INTO `sys_logininfor` VALUES (794, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-24 18:44:25');
INSERT INTO `sys_logininfor` VALUES (795, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-04-24 18:45:09');
INSERT INTO `sys_logininfor` VALUES (796, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-24 18:45:57');
INSERT INTO `sys_logininfor` VALUES (797, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-04-24 18:46:05');
INSERT INTO `sys_logininfor` VALUES (798, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-04-24 18:47:49');
INSERT INTO `sys_logininfor` VALUES (799, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-24 18:53:18');
INSERT INTO `sys_logininfor` VALUES (800, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-04-24 18:53:26');
INSERT INTO `sys_logininfor` VALUES (801, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-04-24 18:54:40');
INSERT INTO `sys_logininfor` VALUES (802, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-24 18:55:40');
INSERT INTO `sys_logininfor` VALUES (803, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-24 18:55:47');
INSERT INTO `sys_logininfor` VALUES (804, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-04-24 18:56:07');
INSERT INTO `sys_logininfor` VALUES (805, '11', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-24 18:58:06');
INSERT INTO `sys_logininfor` VALUES (806, '11', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:58:07');
INSERT INTO `sys_logininfor` VALUES (807, '213', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-24 18:58:19');
INSERT INTO `sys_logininfor` VALUES (808, '213123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:58:22');
INSERT INTO `sys_logininfor` VALUES (809, '213123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:58:23');
INSERT INTO `sys_logininfor` VALUES (810, '213123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:58:23');
INSERT INTO `sys_logininfor` VALUES (811, '213123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:58:24');
INSERT INTO `sys_logininfor` VALUES (812, '213123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:58:24');
INSERT INTO `sys_logininfor` VALUES (813, '213123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:58:24');
INSERT INTO `sys_logininfor` VALUES (814, '213123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:58:25');
INSERT INTO `sys_logininfor` VALUES (815, '213123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:58:25');
INSERT INTO `sys_logininfor` VALUES (816, '213123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:58:26');
INSERT INTO `sys_logininfor` VALUES (817, '213123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:58:26');
INSERT INTO `sys_logininfor` VALUES (818, '213123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:58:26');
INSERT INTO `sys_logininfor` VALUES (819, '213123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:58:26');
INSERT INTO `sys_logininfor` VALUES (820, '213123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:58:27');
INSERT INTO `sys_logininfor` VALUES (821, '213123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:58:27');
INSERT INTO `sys_logininfor` VALUES (822, '213123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:58:27');
INSERT INTO `sys_logininfor` VALUES (823, '213123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:58:28');
INSERT INTO `sys_logininfor` VALUES (824, '213123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:58:28');
INSERT INTO `sys_logininfor` VALUES (825, '213123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:58:28');
INSERT INTO `sys_logininfor` VALUES (826, '213123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 18:58:28');
INSERT INTO `sys_logininfor` VALUES (827, '123', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-24 18:59:38');
INSERT INTO `sys_logininfor` VALUES (828, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-04-24 19:00:33');
INSERT INTO `sys_logininfor` VALUES (829, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-04-24 19:01:23');
INSERT INTO `sys_logininfor` VALUES (830, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-04-24 19:03:01');
INSERT INTO `sys_logininfor` VALUES (831, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-04-24 19:03:11');
INSERT INTO `sys_logininfor` VALUES (832, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-04-24 19:03:34');
INSERT INTO `sys_logininfor` VALUES (833, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-04-24 19:11:19');
INSERT INTO `sys_logininfor` VALUES (834, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-04-24 19:11:33');
INSERT INTO `sys_logininfor` VALUES (835, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 7', '1', '验证码错误', '2022-04-27 20:56:45');
INSERT INTO `sys_logininfor` VALUES (836, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 7', '0', '登录成功', '2022-04-27 20:58:24');
INSERT INTO `sys_logininfor` VALUES (837, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-04-29 11:24:10');
INSERT INTO `sys_logininfor` VALUES (838, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-29 13:17:58');
INSERT INTO `sys_logininfor` VALUES (839, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-04-29 23:09:36');
INSERT INTO `sys_logininfor` VALUES (840, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-30 14:28:06');
INSERT INTO `sys_logininfor` VALUES (841, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '用户不存在/密码错误', '2022-05-07 12:01:56');
INSERT INTO `sys_logininfor` VALUES (842, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-05-07 12:02:03');
INSERT INTO `sys_logininfor` VALUES (843, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-05-07 12:02:11');
INSERT INTO `sys_logininfor` VALUES (844, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-05-07 14:11:50');
INSERT INTO `sys_logininfor` VALUES (845, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-05-07 14:15:16');
INSERT INTO `sys_logininfor` VALUES (846, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-05-07 14:15:26');
INSERT INTO `sys_logininfor` VALUES (847, '213', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-05-07 15:24:27');
INSERT INTO `sys_logininfor` VALUES (848, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-05-07 15:30:42');
INSERT INTO `sys_logininfor` VALUES (849, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-05-07 15:32:23');
INSERT INTO `sys_logininfor` VALUES (850, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-05-07 15:32:31');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2000 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2021-12-31 16:38:04', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2021-12-31 16:38:04', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2021-12-31 16:38:04', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2021-12-31 16:38:04', '', NULL, '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2021-12-31 16:38:04', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2021-12-31 16:38:04', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2021-12-31 16:38:04', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2021-12-31 16:38:04', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2021-12-31 16:38:04', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2021-12-31 16:38:04', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2021-12-31 16:38:04', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2021-12-31 16:38:04', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2021-12-31 16:38:04', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2021-12-31 16:38:04', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2021-12-31 16:38:04', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2021-12-31 16:38:04', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2021-12-31 16:38:04', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2021-12-31 16:38:04', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2021-12-31 16:38:04', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2021-12-31 16:38:04', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2021-12-31 16:38:04', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2021-12-31 16:38:04', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2021-12-31 16:38:04', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2021-12-31 16:38:04', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2021-12-31 16:38:04', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2021-12-31 16:38:04', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 184 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_user_role', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-04 14:40:06');
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-04 14:40:12');
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'td_sys_dict,tb_sys_user_role,tb_sys_user,tb_sys_role_office,tb_sys_role_menu,tb_sys_role,tb_sys_org_resources,tb_sys_office,tb_sys_menu,tb_sys_mdict,tb_sys_log,tb_sys_area,tb_agent_user_group,tb_agent_user,tb_agent_seat,tb_agent_group,tb_agent', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-04 15:14:37');
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/1', '127.0.0.1', '内网IP', '{tableIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-04 15:14:50');
INSERT INTO `sys_oper_log` VALUES (104, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-04 15:15:17');
INSERT INTO `sys_oper_log` VALUES (105, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_user', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-05 18:14:57');
INSERT INTO `sys_oper_log` VALUES (106, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/2,3,4,5,6,7,8,9,10,11', '127.0.0.1', '内网IP', '{tableIds=2,3,4,5,6,7,8,9,10,11}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-05 18:15:45');
INSERT INTO `sys_oper_log` VALUES (107, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/12,13,14,15,16,17,18,19', '127.0.0.1', '内网IP', '{tableIds=12,13,14,15,16,17,18,19}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-05 18:15:50');
INSERT INTO `sys_oper_log` VALUES (108, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_user', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-05 18:15:59');
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-05 18:18:03');
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-05 18:35:58');
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-05 18:37:33');
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-05 18:50:11');
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-05 18:56:23');
INSERT INTO `sys_oper_log` VALUES (114, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 1, 'java.io.IOException: 你的主机中的软件中止了一个已建立的连接。', '2022-01-05 19:13:18');
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 1, 'java.io.IOException: 你的主机中的软件中止了一个已建立的连接。', '2022-01-05 19:13:18');
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/20', '127.0.0.1', '内网IP', '{tableIds=20}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-05 19:13:34');
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'tb_sys_user', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-05 19:13:49');
INSERT INTO `sys_oper_log` VALUES (118, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-05 19:19:29');
INSERT INTO `sys_oper_log` VALUES (119, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-05 19:20:55');
INSERT INTO `sys_oper_log` VALUES (120, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-05 19:21:13');
INSERT INTO `sys_oper_log` VALUES (121, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/21', '127.0.0.1', '内网IP', '{tableIds=21}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-06 15:43:00');
INSERT INTO `sys_oper_log` VALUES (122, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'tb_sys_user', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-06 15:43:30');
INSERT INTO `sys_oper_log` VALUES (123, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'tb_sys_user', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-06 15:43:37');
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/23', '127.0.0.1', '内网IP', '{tableIds=23}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-06 15:43:45');
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/22', '127.0.0.1', '内网IP', '{tableIds=22}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-06 15:43:48');
INSERT INTO `sys_oper_log` VALUES (126, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'tb_sys_user', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-06 15:43:55');
INSERT INTO `sys_oper_log` VALUES (127, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-06 15:44:59');
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/tb_sys_user', '127.0.0.1', '内网IP', '{tableName=tb_sys_user}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-06 19:37:48');
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/24', '127.0.0.1', '内网IP', '{tableIds=24}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-06 19:37:52');
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'tb_sys_user', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-06 19:37:59');
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-06 19:38:04');
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/25', '127.0.0.1', '内网IP', '{tableIds=25}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-06 19:57:03');
INSERT INTO `sys_oper_log` VALUES (133, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'tb_sys_user', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-06 19:57:10');
INSERT INTO `sys_oper_log` VALUES (134, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-06 19:57:15');
INSERT INTO `sys_oper_log` VALUES (135, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/26', '127.0.0.1', '内网IP', '{tableIds=26}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-06 20:10:08');
INSERT INTO `sys_oper_log` VALUES (136, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'tb_sys_user', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-06 20:10:16');
INSERT INTO `sys_oper_log` VALUES (137, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-06 20:10:20');
INSERT INTO `sys_oper_log` VALUES (138, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/27', '127.0.0.1', '内网IP', '{tableIds=27}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-06 20:15:41');
INSERT INTO `sys_oper_log` VALUES (139, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'tb_sys_user', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-06 20:15:50');
INSERT INTO `sys_oper_log` VALUES (140, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'tb_sys_user', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-06 20:15:52');
INSERT INTO `sys_oper_log` VALUES (141, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/29', '127.0.0.1', '内网IP', '{tableIds=29}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-06 20:15:56');
INSERT INTO `sys_oper_log` VALUES (142, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/28', '127.0.0.1', '内网IP', '{tableIds=28}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-06 20:16:34');
INSERT INTO `sys_oper_log` VALUES (143, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'tb_sys_user', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-06 20:17:34');
INSERT INTO `sys_oper_log` VALUES (144, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-06 20:17:51');
INSERT INTO `sys_oper_log` VALUES (145, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/30', '127.0.0.1', '内网IP', '{tableIds=30}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-07 11:19:41');
INSERT INTO `sys_oper_log` VALUES (146, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'tb_sys_user', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-07 11:19:50');
INSERT INTO `sys_oper_log` VALUES (147, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-07 11:19:52');
INSERT INTO `sys_oper_log` VALUES (148, '代码生成', 3, 'com.littlemoth.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/31', '127.0.0.1', '内网IP', '{tableIds=31}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-12 16:01:15');
INSERT INTO `sys_oper_log` VALUES (149, '代码生成', 6, 'com.littlemoth.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'tb_sys_office,tb_sys_log,tb_sys_area,tb_mr_strategy,tb_mr_calltask,td_sys_dict,tb_agent_user_group,tb_sys_user_role,tb_agent_user,tb_sys_user,tb_agent_seat,tb_sys_role_office,tb_agent_group,tb_sys_role_menu,tb_agent,tb_sys_role,tb_sys_menu,tb_sys_org_resources,tb_sys_mdict', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-12 16:02:49');
INSERT INTO `sys_oper_log` VALUES (150, '代码生成', 3, 'com.littlemoth.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/38', '127.0.0.1', '内网IP', '{tableIds=38}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-12 16:09:08');
INSERT INTO `sys_oper_log` VALUES (151, '代码生成', 3, 'com.littlemoth.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/37', '127.0.0.1', '内网IP', '{tableIds=37}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-12 16:09:11');
INSERT INTO `sys_oper_log` VALUES (152, '代码生成', 8, 'com.littlemoth.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-12 16:09:23');
INSERT INTO `sys_oper_log` VALUES (153, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-12 16:17:36');
INSERT INTO `sys_oper_log` VALUES (154, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/32,33,34,35,36,39,40,41,42,43', '127.0.0.1', '内网IP', '{tableIds=32,33,34,35,36,39,40,41,42,43}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-12 16:31:21');
INSERT INTO `sys_oper_log` VALUES (155, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/44,45,46,47,48,49,50', '127.0.0.1', '内网IP', '{tableIds=44,45,46,47,48,49,50}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-12 16:31:26');
INSERT INTO `sys_oper_log` VALUES (156, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'tb_sys_menu,tb_sys_office', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-12 16:32:04');
INSERT INTO `sys_oper_log` VALUES (157, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-12 16:32:11');
INSERT INTO `sys_oper_log` VALUES (158, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-12 16:33:02');
INSERT INTO `sys_oper_log` VALUES (159, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/51,52', '127.0.0.1', '内网IP', '{tableIds=51,52}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-12 16:38:50');
INSERT INTO `sys_oper_log` VALUES (160, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'tb_sys_menu', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-12 16:40:45');
INSERT INTO `sys_oper_log` VALUES (161, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'tb_sys_office', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-12 16:40:51');
INSERT INTO `sys_oper_log` VALUES (162, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-12 16:40:56');
INSERT INTO `sys_oper_log` VALUES (163, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-12 16:44:04');
INSERT INTO `sys_oper_log` VALUES (164, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/54', '127.0.0.1', '内网IP', '{tableIds=54}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-12 16:59:55');
INSERT INTO `sys_oper_log` VALUES (165, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/53', '127.0.0.1', '内网IP', '{tableIds=53}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-12 16:59:57');
INSERT INTO `sys_oper_log` VALUES (166, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '192.168.22.106', '内网IP', 'tb_sys_user', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-12 17:04:02');
INSERT INTO `sys_oper_log` VALUES (167, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '192.168.22.106', '内网IP', '{}', NULL, 0, NULL, '2022-01-12 17:04:31');
INSERT INTO `sys_oper_log` VALUES (168, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/55', '127.0.0.1', '内网IP', '{tableIds=55}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-13 17:29:12');
INSERT INTO `sys_oper_log` VALUES (169, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'tb_sys_menu', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-13 17:29:20');
INSERT INTO `sys_oper_log` VALUES (170, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-13 17:29:46');
INSERT INTO `sys_oper_log` VALUES (171, '在线用户', 7, 'com.littlemoth.web.controller.system.SysRegisterController.forceLogout()', 'GET', 1, 'webdyc', NULL, '/monitor/online/eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6ImI1MjdjMDA4LWZmODMtNDQzNS04NWIwLWQwNmI3ZDcwMjU3NCJ9.rWPGioTeQzSLL6HpdsUBiowPIAkh2ut_bDvGIx7mrZatpeBw1meETup70PfRRiz2HrPWVElHGf7DllyM7-qSaQ', '127.0.0.1', '内网IP', '{tokenId=eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6ImI1MjdjMDA4LWZmODMtNDQzNS04NWIwLWQwNmI3ZDcwMjU3NCJ9.rWPGioTeQzSLL6HpdsUBiowPIAkh2ut_bDvGIx7mrZatpeBw1meETup70PfRRiz2HrPWVElHGf7DllyM7-qSaQ}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-26 13:38:01');
INSERT INTO `sys_oper_log` VALUES (172, '在线用户', 7, 'com.littlemoth.web.controller.system.SysRegisterController.forceLogout()', 'GET', 1, 'webdyc', NULL, '/monitor/online/eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6IjY1MGZlMTkzLWU2OGMtNDI4Ni1hYmMzLWU2YmM5OGVlZmYxZSJ9.Mo3698O-qdtZYTB1uavGlzQtR95DoWcqZwaGzaeLewDV26lgB5XynWPW2bdKXp3qECQvQkx_678BEdfnsNqe0g', '127.0.0.1', '内网IP', '{tokenId=eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6IjY1MGZlMTkzLWU2OGMtNDI4Ni1hYmMzLWU2YmM5OGVlZmYxZSJ9.Mo3698O-qdtZYTB1uavGlzQtR95DoWcqZwaGzaeLewDV26lgB5XynWPW2bdKXp3qECQvQkx_678BEdfnsNqe0g}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-27 15:45:36');
INSERT INTO `sys_oper_log` VALUES (173, '在线用户', 7, 'com.littlemoth.web.controller.system.SysRegisterController.forceLogout()', 'GET', 1, 'admin', NULL, '/monitor/online/eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6ImU1Yjc2NDFjLWM2NDktNGRlYi05ZDY4LTNlZDRiYjBmYTk0ZCJ9.xmpSaXOvoe5KDBjeFfW90eNRFarluhPiTuOjIO9gei1ghyhVBkJoSTEMjAvrr5Y11bjL1otrEloWyNqQMTj4cA', '127.0.0.1', '内网IP', '{tokenId=eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6ImU1Yjc2NDFjLWM2NDktNGRlYi05ZDY4LTNlZDRiYjBmYTk0ZCJ9.xmpSaXOvoe5KDBjeFfW90eNRFarluhPiTuOjIO9gei1ghyhVBkJoSTEMjAvrr5Y11bjL1otrEloWyNqQMTj4cA}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-27 18:53:14');
INSERT INTO `sys_oper_log` VALUES (174, '在线用户', 7, 'com.littlemoth.web.controller.system.SysRegisterController.forceLogout()', 'GET', 1, 'admin', NULL, '/monitor/online/eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6IjlhZTE4OWNiLTk1YjctNDZhYi1iOTM3LTExNzZiNjcxZjYzNCJ9.3KWUocynfkPNxfHVDB0Z--BS1G81uObZ257kzT_00hX9Fopn3ThtU8xEaJzJciLSjh7-sr6DYtTVWsFrC-Esig', '127.0.0.1', '内网IP', '{tokenId=eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6IjlhZTE4OWNiLTk1YjctNDZhYi1iOTM3LTExNzZiNjcxZjYzNCJ9.3KWUocynfkPNxfHVDB0Z--BS1G81uObZ257kzT_00hX9Fopn3ThtU8xEaJzJciLSjh7-sr6DYtTVWsFrC-Esig}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-27 19:18:09');
INSERT INTO `sys_oper_log` VALUES (175, '在线用户', 7, 'com.littlemoth.web.controller.system.SysRegisterController.forceLogout()', 'GET', 1, 'admin', NULL, '/monitor/online/eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6IjMwYWYwNWY0LWE2MDYtNDcwMC1hYTM4LTFiMWY5MzZlZTk3OSJ9.pY6yd-PjzFFAIzw6Mgz17SU6bBc-Af7gkXzff-ddeWF9WQ7BrkZEA17T-8efmsxclktwGqlQzZO64yjdFvHkiA', '127.0.0.1', '内网IP', '{tokenId=eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6IjMwYWYwNWY0LWE2MDYtNDcwMC1hYTM4LTFiMWY5MzZlZTk3OSJ9.pY6yd-PjzFFAIzw6Mgz17SU6bBc-Af7gkXzff-ddeWF9WQ7BrkZEA17T-8efmsxclktwGqlQzZO64yjdFvHkiA}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-08 15:05:04');
INSERT INTO `sys_oper_log` VALUES (176, '在线用户', 7, 'com.littlemoth.web.controller.system.SysRegisterController.forceLogout()', 'GET', 1, 'admin', NULL, '/monitor/online/eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6ImU2NzViNDNiLTcyMDctNGNkYy1iM2I0LWJjZjQ4YmJkNzc1OCJ9._LaSbLFOQI0ri_Gihx7A1qvFEo4G7J7LsYo_pXCE7-ZGS3UBKCO9v7TQeMQemiuyRgg2JvjpiC7fY9NEfEV7VA', '127.0.0.1', '内网IP', '{tokenId=eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6ImU2NzViNDNiLTcyMDctNGNkYy1iM2I0LWJjZjQ4YmJkNzc1OCJ9._LaSbLFOQI0ri_Gihx7A1qvFEo4G7J7LsYo_pXCE7-ZGS3UBKCO9v7TQeMQemiuyRgg2JvjpiC7fY9NEfEV7VA}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-08 15:05:46');
INSERT INTO `sys_oper_log` VALUES (177, '在线用户', 7, 'com.littlemoth.web.controller.system.SysRegisterController.forceLogout()', 'GET', 1, 'admin', NULL, '/monitor/online/eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6ImI2ZTY0MjI5LTdhNDAtNDU3NC1iOGYyLTY5MGZiZDJhOWUxMyJ9.sc_GqVawNp5jjjuB6mIVBX648lYowA_8ZmI08OvN6fDnm2HnzSD4Z8yYCFb3P2l9Zf4oXCMj0THduJ2xJtCEVA', '127.0.0.1', '内网IP', '{tokenId=eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6ImI2ZTY0MjI5LTdhNDAtNDU3NC1iOGYyLTY5MGZiZDJhOWUxMyJ9.sc_GqVawNp5jjjuB6mIVBX648lYowA_8ZmI08OvN6fDnm2HnzSD4Z8yYCFb3P2l9Zf4oXCMj0THduJ2xJtCEVA}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-10 10:40:40');
INSERT INTO `sys_oper_log` VALUES (178, '在线用户', 7, 'com.littlemoth.web.controller.system.SysRegisterController.forceLogout()', 'GET', 1, 'admin', NULL, '/monitor/online/eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6ImJjNGIxOTkwLTNhYmQtNGIzZi1hNjVjLWZkY2RkNWY5YjBlMyJ9.FiujqYhIZaZ3pJIK-wmV3PWyBqSUwdz4e8F8t5qRWa1NX2yiwCWYOqAdhg4GlMn2AhM9dNkIzGAZ-vpYE55y4A', '127.0.0.1', '内网IP', '{tokenId=eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6ImJjNGIxOTkwLTNhYmQtNGIzZi1hNjVjLWZkY2RkNWY5YjBlMyJ9.FiujqYhIZaZ3pJIK-wmV3PWyBqSUwdz4e8F8t5qRWa1NX2yiwCWYOqAdhg4GlMn2AhM9dNkIzGAZ-vpYE55y4A}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-26 15:01:08');
INSERT INTO `sys_oper_log` VALUES (179, '在线用户', 7, 'com.littlemoth.web.controller.system.SysRegisterController.forceLogout()', 'GET', 1, 'admin', NULL, '/monitor/online/eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6IjYxNzU0NDUyLTkyZTEtNDIzZi04MmYxLWYzZGEzYmI3MDRmMSJ9.Td4lXqSice9jN00o08bYESc-9MXhexUKiHckzeAHNt_sqjbiEZcPQSvavSDFlZLrlfdsgzR-f3QMOTD_oXRZUA', '127.0.0.1', '内网IP', '{tokenId=eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6IjYxNzU0NDUyLTkyZTEtNDIzZi04MmYxLWYzZGEzYmI3MDRmMSJ9.Td4lXqSice9jN00o08bYESc-9MXhexUKiHckzeAHNt_sqjbiEZcPQSvavSDFlZLrlfdsgzR-f3QMOTD_oXRZUA}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-03 13:32:19');
INSERT INTO `sys_oper_log` VALUES (180, '在线用户', 7, 'com.littlemoth.web.controller.system.SysRegisterController.forceLogout()', 'GET', 1, 'admin', NULL, '/monitor/online/eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6IjJmYjRhNzFiLTA1MTctNDhjMS1iYmQyLTAzYzc5YmZhMjJhZCJ9.y4Rsk4a0-JtEmvyiDsdgl9-pr-kXZ3AyNZ9CmLsGHDUpE8melKrlYyXcflY6M7DWRFaCODKhcN7lfd0NnncbTw', '127.0.0.1', '内网IP', '{tokenId=eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6IjJmYjRhNzFiLTA1MTctNDhjMS1iYmQyLTAzYzc5YmZhMjJhZCJ9.y4Rsk4a0-JtEmvyiDsdgl9-pr-kXZ3AyNZ9CmLsGHDUpE8melKrlYyXcflY6M7DWRFaCODKhcN7lfd0NnncbTw}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 18:45:23');
INSERT INTO `sys_oper_log` VALUES (181, '在线用户', 7, 'com.littlemoth.web.controller.system.SysRegisterController.forceLogout()', 'GET', 1, 'admin', NULL, '/monitor/online/eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6IjVkZjVlODQ4LTllZDEtNDNlNi1iMWM2LTI1YjkzZDQ1MWE5MiJ9.G69nh_Bm2N1RP1Gvn7zWujFYkMiePwFolSvUzVy5AuOGz_NhsbD4TnCcPXGI0DQjd4IurmwIteYSTajOe17DIA', '127.0.0.1', '内网IP', '{tokenId=eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6IjVkZjVlODQ4LTllZDEtNDNlNi1iMWM2LTI1YjkzZDQ1MWE5MiJ9.G69nh_Bm2N1RP1Gvn7zWujFYkMiePwFolSvUzVy5AuOGz_NhsbD4TnCcPXGI0DQjd4IurmwIteYSTajOe17DIA}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 18:53:55');
INSERT INTO `sys_oper_log` VALUES (182, '在线用户', 7, 'com.littlemoth.web.controller.system.SysRegisterController.forceLogout()', 'GET', 1, 'admin', NULL, '/monitor/online/eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6ImU2YWRhMDkxLTg5MTYtNDU5My04NzcwLTEyNGU1ODRkNDRhZSJ9.0QN_dcaF9V-HW47IOYu3w3MDxh2pz3y4zFkyRc_fOX4LKPfp89MnRQXsU9XF1a9xn9zb9jYl5NfhLYIj6naRcw', '127.0.0.1', '内网IP', '{tokenId=eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6ImU2YWRhMDkxLTg5MTYtNDU5My04NzcwLTEyNGU1ODRkNDRhZSJ9.0QN_dcaF9V-HW47IOYu3w3MDxh2pz3y4zFkyRc_fOX4LKPfp89MnRQXsU9XF1a9xn9zb9jYl5NfhLYIj6naRcw}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 18:56:41');
INSERT INTO `sys_oper_log` VALUES (183, '在线用户', 7, 'com.littlemoth.web.controller.system.SysRegisterController.forceLogout()', 'GET', 1, 'admin', NULL, '/monitor/online/eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6IjkzZWY4YzA1LWI0OGYtNDViNi1iZTRhLTZlZmEwNDZkMWRiMyJ9.9_5ogQu8CG0m3Gd12dDo4omeEgwJI3UgrFDHkxU8VfhS0pQfao_BEi9NJGYbNJdYhOn7zm1HB6Q4xfJ5p7JDwA', '127.0.0.1', '内网IP', '{tokenId=eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6IjkzZWY4YzA1LWI0OGYtNDViNi1iZTRhLTZlZmEwNDZkMWRiMyJ9.9_5ogQu8CG0m3Gd12dDo4omeEgwJI3UgrFDHkxU8VfhS0pQfao_BEi9NJGYbNJdYhOn7zm1HB6Q4xfJ5p7JDwA}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-07 15:14:11');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2021-12-31 16:38:04', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2021-12-31 16:38:04', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2021-12-31 16:38:04', '', NULL, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-05-07 15:32:32', 'admin', '2021-12-31 16:38:04', '', '2022-05-07 15:32:31', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-03-30 16:26:00', 'admin', '2021-12-31 16:38:04', '', '2022-03-30 16:25:59', '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for tb_agent
-- ----------------------------
DROP TABLE IF EXISTS `tb_agent`;
CREATE TABLE `tb_agent`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `seat_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '坐席编号',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '账号状态(enabled-启用中，disabled-禁用中)',
  `creator` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_user` int(11) NULL DEFAULT NULL,
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `is_del` bit(1) NULL DEFAULT NULL COMMENT '是否删除(0-否，1-是）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '坐席管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_agent_group
-- ----------------------------
DROP TABLE IF EXISTS `tb_agent_group`;
CREATE TABLE `tb_agent_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `agent_id` int(11) NULL DEFAULT NULL COMMENT '租户id',
  `group_id` int(11) NULL DEFAULT NULL COMMENT '坐席组id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '坐席与坐席组关系映射' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_agent_seat
-- ----------------------------
DROP TABLE IF EXISTS `tb_agent_seat`;
CREATE TABLE `tb_agent_seat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `seat_id` int(11) NULL DEFAULT NULL COMMENT '租户id',
  `seat_code` bigint(11) NULL DEFAULT NULL COMMENT '部门编号',
  `seat_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `creator` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_user` int(11) NULL DEFAULT NULL,
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `is_del` bit(1) NULL DEFAULT NULL COMMENT '是否删除(0-否，1-是）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '坐席组管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_agent_seat_group
-- ----------------------------
DROP TABLE IF EXISTS `tb_agent_seat_group`;
CREATE TABLE `tb_agent_seat_group`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `office_id` bigint(20) NULL DEFAULT NULL COMMENT '组织id',
  `seat_group_code` bigint(11) NULL DEFAULT NULL COMMENT '坐席组编号',
  `seat_group_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '坐席组名称',
  `line_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联的线路id，英文逗号分隔',
  `creator` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` int(11) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_del` bit(1) NULL DEFAULT NULL COMMENT '是否删除(0-否，1-是）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '坐席组' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_agent_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_agent_user`;
CREATE TABLE `tb_agent_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `agent_id` int(11) NULL DEFAULT NULL COMMENT '坐席组id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '坐席与用户关系映射' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_agent_user_group
-- ----------------------------
DROP TABLE IF EXISTS `tb_agent_user_group`;
CREATE TABLE `tb_agent_user_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `org_id` int(11) NULL DEFAULT NULL COMMENT '租户id',
  `seat_group_id` int(11) NULL DEFAULT NULL COMMENT '坐席组id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '坐席组与用户关系映射' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_mr_calltask
-- ----------------------------
DROP TABLE IF EXISTS `tb_mr_calltask`;
CREATE TABLE `tb_mr_calltask`  (
  `task_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务id\n',
  `office_id` bigint(20) NULL DEFAULT NULL COMMENT '组织id\n',
  `task_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务编码',
  `task_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称\n',
  `task_type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务类型	',
  `task_status` tinyint(255) NOT NULL COMMENT '任务状态  1 未执行，2 执行中， 3 暂停， 4 完成',
  `strategy_id` bigint(20) NOT NULL COMMENT '策略id',
  `robot_count` int(10) NULL DEFAULT NULL COMMENT '机器人数	',
  `summary_id` bigint(20) NULL DEFAULT NULL COMMENT '小结模板	',
  `blacklist_ids` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '黑名单ids',
  `remark` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '备注',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间	',
  `creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户	',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间	',
  `update_user` datetime(0) NULL DEFAULT NULL COMMENT '更新用户	',
  `is_del` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否删除	',
  `is_enable` tinyint(2) NOT NULL COMMENT '启用禁用，0禁用 1启用',
  `number_batch` bigint(20) NOT NULL COMMENT '号码批次id',
  PRIMARY KEY (`task_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_mr_calltask
-- ----------------------------
INSERT INTO `tb_mr_calltask` VALUES (1, 2, 'abc', 'asdf', 'type', 1, 1, 1, 1, '1', '1234', '2022-01-17 15:48:57', NULL, '2022-01-17 15:55:08', NULL, '0', 1, 1);

-- ----------------------------
-- Table structure for tb_mr_strategy
-- ----------------------------
DROP TABLE IF EXISTS `tb_mr_strategy`;
CREATE TABLE `tb_mr_strategy`  (
  `strategy_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '策略id	',
  `office_id` bigint(20) NULL DEFAULT NULL COMMENT '组织id	',
  `strategy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '策略名称\n策略名称\n',
  `strategy_type` tinyint(2) NOT NULL COMMENT '策略类型  1 外呼 ；2 协呼',
  `flow_id` bigint(20) NOT NULL COMMENT '话术id',
  `priority` int(10) NOT NULL COMMENT '优先级	',
  `seat_group_id` bigint(20) NOT NULL COMMENT '坐席组id	',
  `task_plan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务计划   corn表达式\n',
  `line_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '关联的线路id，英文逗号分隔,全部用ALL',
  `is_send_sms` tinyint(2) NOT NULL COMMENT '是否发送短信，0否 1是',
  `sms_template_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '短信模板id',
  `is_send_flash` tinyint(2) NOT NULL COMMENT '是否发送闪信，0否 1是',
  `flash_template_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '闪信模板id',
  `is_recall` tinyint(2) NOT NULL COMMENT '未接通时是否重呼，0否 1是',
  `recall_times` int(10) NULL DEFAULT NULL COMMENT '重呼次数	',
  `recall_interval` int(10) NULL DEFAULT NULL COMMENT '重呼间隔',
  `speak_type` tinyint(2) NOT NULL COMMENT '说话方式  1 tts  2 录音 3 tts+录音',
  `tone` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '音色',
  `volume` int(10) NULL DEFAULT NULL COMMENT '音量',
  `speed` int(10) NULL DEFAULT NULL COMMENT '语速',
  `long_no_reply` int(10) NULL DEFAULT NULL COMMENT '长时间未回复的时长	',
  `is_enable_black_list` tinyint(2) NOT NULL COMMENT '是否启用黑名单，0否 1是',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间\n',
  `creator` bigint(20) NULL DEFAULT NULL COMMENT '创建用户\n',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间\n',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '更新用户\n',
  `is_del` tinyint(2) NOT NULL COMMENT '是否删除  0否  1是',
  `is_enable` tinyint(2) NULL DEFAULT NULL COMMENT '启用禁用，0禁用 1启用',
  PRIMARY KEY (`strategy_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_mr_strategy
-- ----------------------------
INSERT INTO `tb_mr_strategy` VALUES (1, 1, '策略2', 1, 1, 1, 1, '123456', '123', 1, '123', 1, '123', 1, 1, 1, 1, '音色1', 1, 1, 1, 1, '2022-01-17 15:14:22', NULL, '2022-01-17 15:39:47', NULL, 0, 1);

-- ----------------------------
-- Table structure for tb_sys_area
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_area`;
CREATE TABLE `tb_sys_area`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `parent_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `sort` decimal(10, 0) NOT NULL COMMENT '排序',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区域编码',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区域类型',
  `creator` int(11) NOT NULL COMMENT '创建者',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_user` int(11) NOT NULL COMMENT '更新者',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `is_del` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标记 默认0  是否删除  0否  1是 ',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_area_parent_id`(`parent_id`) USING BTREE,
  INDEX `sys_area_is_del`(`is_del`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '区域表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_sys_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_log`;
CREATE TABLE `tb_sys_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '日志标题',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作方式',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '操作提交的数据',
  `exception` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '异常信息',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_log_creator`(`creator`) USING BTREE,
  INDEX `sys_log_request_uri`(`request_uri`(191)) USING BTREE,
  INDEX `sys_log_type`(`type`) USING BTREE,
  INDEX `sys_log_createtime`(`create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_sys_mdict
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_mdict`;
CREATE TABLE `tb_sys_mdict`  (
  `id` int(11) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `sort` decimal(10, 0) NOT NULL COMMENT '排序',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `creator` int(11) NOT NULL COMMENT '创建者',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_user` int(11) NOT NULL COMMENT '更新者',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `is_del` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标记 默认0  是否删除  0否  1是 ',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_mdict_parent_id`(`parent_id`) USING BTREE,
  INDEX `sys_mdict_is_del`(`is_del`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '多级字典表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_menu`;
CREATE TABLE `tb_sys_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `parent_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所有父级编号',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `redirect` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '重定向',
  `breadcrumb` tinyint(1) NULL DEFAULT 0 COMMENT '面包屑0是不展示1是展示',
  `keep_alive` tinyint(1) NULL DEFAULT 0 COMMENT '页面是否缓存 0是不缓存1是缓存',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '页面标题',
  `sort` decimal(10, 0) NULL DEFAULT NULL COMMENT '排序',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `href` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '链接',
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `hidden` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否在菜单中显示0是不展示1是展示',
  `permis` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `creator` int(11) NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` int(11) NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `is_del` bit(1) NULL DEFAULT b'0' COMMENT '删除标记 默认0  是否删除  0否  1是 ',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_menu_parent_id`(`parent_id`) USING BTREE,
  INDEX `sys_menu_is_del`(`is_del`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_sys_menu
-- ----------------------------
INSERT INTO `tb_sys_menu` VALUES (17, '', '0', NULL, '/', 'Layout', '/workplace', 0, 1, '工作台', 1, 'M', NULL, NULL, 'workplace', '1', NULL, NULL, NULL, NULL, '2022-01-26 15:22:07', NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (18, 'workplace', '17', NULL, '/workplace', '/workplace/index', '', 1, 0, '工作台', 1, 'C', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (19, '', '0', NULL, '/dashboard', 'Layout', '/dashboard/welcome', 0, 1, '仪表盘', 1, 'M', NULL, NULL, 'dashboard', '1', NULL, NULL, NULL, NULL, '2022-01-26 14:50:13', NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (20, 'Welcome', '19', NULL, 'welcome', '/dashboard/welcome/index', '', 1, 0, '欢迎首页', 1, 'C', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (21, 'analysis', '20', NULL, 'analysis', '/dashboard/analysis/index', '', 1, 0, '分析页', 1, 'C', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, b'1');
INSERT INTO `tb_sys_menu` VALUES (22, 'analysis', '19', NULL, 'analysis', '/dashboard/analysis/index', '', 1, 0, '分析页', 2, 'C', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (23, '', '0', NULL, '/tabel', 'Layout', '/tabel/tabelList', 0, 1, '案例模板', 1, 'M', NULL, NULL, 'anli', '0', NULL, NULL, NULL, NULL, '2022-01-26 15:23:01', NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (24, 'tabelList', '23', NULL, 'tabelList', '/tabel/tabelList', '', 0, 1, '表格模板', 1, 'C', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, '2022-01-24 11:56:41', NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (25, 'structureTabel', '23', NULL, 'structureTabel', '/tabel/structureTabel', '', 1, 0, '左右表格模板', 1, 'C', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (26, 'tabelInfo', '23', NULL, 'tabelInfo', '/tabel/tabelInfo', '', 1, 0, '详情模板', 1, 'M', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (27, '', '0', NULL, '/components', 'Layout', 'recorder', 0, 1, '组件', 1, 'M', NULL, NULL, 'components', '1', NULL, NULL, NULL, NULL, '2022-01-26 15:23:24', NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (28, 'recorder', '27', NULL, 'recorder', '/components/recorder/index', '', 1, 0, '录音', 1, 'M', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (29, 'tinymce', '27', NULL, 'tinymce', '/components/tinymce/index', '', 1, 0, '富文本编译器', 1, 'C', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (30, 'componentsDemo', '27', NULL, 'componentsDemo', '/components/componentsDemo/index', '', 1, 0, '小组件', 1, 'C', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, b'1');
INSERT INTO `tb_sys_menu` VALUES (31, 'dragDalog', '27', NULL, 'dragDalog', '/components/dragDalog/index', '', 1, 0, '可拖拽弹窗', 1, 'C', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (32, 'dragKanban', '27', NULL, 'dragKanban', '/components/dragKanban/index', '', 1, 0, '可拖拽看板', 1, 'C', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (33, '', '0', NULL, '/mapManage', 'Layout', 'mapManage/aMap', 0, 1, '地图管理', 1, 'M', NULL, NULL, 'map', '1', NULL, NULL, NULL, NULL, '2022-01-26 15:23:45', NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (34, 'aMap', '33', NULL, 'aMap', '/mapManage/aMap/index', '', 1, 0, '地图管理', 1, 'C', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (35, '', '0', NULL, '/questionnaire', 'Layout', '/questionnaire', 0, 1, '问卷管理', 1, 'M', NULL, NULL, 'questionnaire', '1', NULL, NULL, NULL, NULL, '2022-01-26 15:23:51', NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (36, 'questionnaire', '35', NULL, 'questionnaire', '/questionnaire/index', '', 1, 0, '问卷管理', 1, 'C', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (37, '', '0', NULL, '/flowDiagram', 'Layout', '/flowDiagram/x6Flow', 0, 1, '流程图', 1, 'M', NULL, NULL, 'flow', '1', NULL, NULL, NULL, NULL, '2022-01-26 15:24:02', NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (38, 'x6Flow', '37', NULL, 'x6Flow', '/flowDiagram/x6Flow/index', '', 1, 0, 'x6流程图', 1, 'C', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (39, 'logicFlow', '37', NULL, 'logicFlow', '/flowDiagram/logicFlow/index', '', 1, 0, 'logicFlow流程图', 1, 'C', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (40, '', '0', NULL, '/personalManage', 'Layout', '/personalManage/personal', 0, 1, '个人信息', 1, 'M', NULL, NULL, 'user', '1', NULL, NULL, NULL, NULL, '2022-01-26 15:24:10', NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (41, 'personal', '40', NULL, 'personal', '/personalManage/personal/index', '', 1, 0, '个人中心', 1, 'C', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (42, 'personalSetting', '40', NULL, 'personalSetting', '/personalManage/personalSetting/index', '', 1, 0, '个人设置', 1, 'C', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (43, '', '0', NULL, '/systemManage', 'Layout', '/systemManage/role', 0, 1, '系统管理', 1, 'M', NULL, NULL, 'system', '1', NULL, NULL, NULL, NULL, '2022-01-26 15:25:16', NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (44, 'role', '43', NULL, 'role', '/systemManage/role/index', '', 1, 0, '角色管理', 1, 'C', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, b'0');
INSERT INTO `tb_sys_menu` VALUES (45, 'menu', '43', NULL, 'menu', '/systemManage/menu/index', '', 1, 0, '菜单管理', 1, 'C', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, b'0');

-- ----------------------------
-- Table structure for tb_sys_office
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_office`;
CREATE TABLE `tb_sys_office`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `parent_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所有父级编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `office_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组织code',
  `useable` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否启用组织状态（0正常 1停用）',
  `sort` decimal(10, 0) NULL DEFAULT NULL COMMENT '排序',
  `area_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '归属区域',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区域编码',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '机构类型',
  `grade` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '机构等级',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `master` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话',
  `fax` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '传真',
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `creator` int(11) NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` int(11) NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `is_del` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标记 默认0  是否删除  0否  1是 ',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_office_parent_id`(`parent_id`) USING BTREE,
  INDEX `sys_office_is_del`(`is_del`) USING BTREE,
  INDEX `sys_office_type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '机构表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_sys_office
-- ----------------------------
INSERT INTO `tb_sys_office` VALUES (13, '0', '0,', '科技总部', 'OFFICE1484771147663802368', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2022-01-22 14:13:22', 2, '2022-01-25 09:41:29', '1111', b'0');
INSERT INTO `tb_sys_office` VALUES (14, '0', '0,', '科技总部', 'OFFICE1484771153980424192', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2022-01-22 14:13:23', 2, '2022-01-25 10:57:11', '1111888', b'0');
INSERT INTO `tb_sys_office` VALUES (15, '13', '0,13,', '科技总部', 'OFFICE1484771244006965248', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2022-01-22 14:13:45', 2, '2022-01-22 14:13:45', '1111', b'0');
INSERT INTO `tb_sys_office` VALUES (16, '15', '0,13,15,', '天彩科技总部', 'OFFICE1484771292744777728', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2022-01-22 14:13:57', 2, '2022-01-24 15:42:48', '1111', b'0');
INSERT INTO `tb_sys_office` VALUES (17, '16', '0,13,15,16,', '测试', 'OFFICE1485546672254615552', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-01-24 17:35:01', 1, '2022-01-24 17:35:01', 'xlk测试', b'0');
INSERT INTO `tb_sys_office` VALUES (18, '14', '0,14,', '测试11', 'OFFICE1485547300053843968', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-01-24 17:37:31', 1, '2022-01-24 17:37:31', 'xlk', b'1');
INSERT INTO `tb_sys_office` VALUES (19, '18', '0,14,18,', '3123777', 'OFFICE1485547467280744448', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-01-24 17:38:11', 1, '2022-01-25 10:58:41', '21312', b'1');
INSERT INTO `tb_sys_office` VALUES (20, '14', '0,14,', '测试详细', 'OFFICE1485549481008037888', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-01-24 17:46:11', 1, '2022-01-24 17:46:11', '12312', b'0');
INSERT INTO `tb_sys_office` VALUES (21, '14', '0,14,', '编辑测试', 'OFFICE1485549752085905408', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-01-24 17:47:16', 1, '2022-01-24 17:52:38', '编辑测试121312', b'0');
INSERT INTO `tb_sys_office` VALUES (22, '20', '0,14,20,', '细看', 'OFFICE1485550491613003776', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-01-24 17:50:12', 1, '2022-01-24 17:50:12', '1312321', b'0');
INSERT INTO `tb_sys_office` VALUES (23, '14', '0,14,', '测试1111', 'OFFICE1485577388480790528', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-01-24 19:37:05', 1, '2022-01-24 19:37:05', '111111', b'0');
INSERT INTO `tb_sys_office` VALUES (24, '0', '0,', '1及组织测试', 'OFFICE1485808041906405376', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-01-25 10:53:37', 1, '2022-01-25 10:53:37', 'xilk', b'0');
INSERT INTO `tb_sys_office` VALUES (25, '0', '0,', '测试一级组织添加', 'OFFICE1485808205618479104', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-01-25 10:54:16', 1, '2022-01-25 10:54:16', '12312', b'0');
INSERT INTO `tb_sys_office` VALUES (26, '0', '0,', '初始', 'OFFICE1485808989097689088', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-01-25 10:57:23', 1, '2022-01-25 10:57:23', '', b'0');
INSERT INTO `tb_sys_office` VALUES (27, '0', '0,', '777', 'OFFICE1485809432129437696', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-01-25 10:59:08', 1, '2022-01-25 10:59:08', '777', b'0');

-- ----------------------------
-- Table structure for tb_sys_office_copy1
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_office_copy1`;
CREATE TABLE `tb_sys_office_copy1`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `parent_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所有父级编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `sort` decimal(10, 0) NULL DEFAULT NULL COMMENT '排序',
  `area_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '归属区域',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区域编码',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '机构类型',
  `grade` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '机构等级',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `master` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话',
  `fax` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '传真',
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `useable` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否启用',
  `creator` int(11) NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` int(11) NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `is_del` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标记 默认0  是否删除  0否  1是 ',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_office_parent_id`(`parent_id`) USING BTREE,
  INDEX `sys_office_is_del`(`is_del`) USING BTREE,
  INDEX `sys_office_type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '机构表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_sys_office_copy1
-- ----------------------------
INSERT INTO `tb_sys_office_copy1` VALUES (1, '0', '1', '舜合通达数字网络科技有限公司', 0, '100000', '000000', '0', '0', '海淀区', '00000', 'xjl', '18888888888', '10000', 'xjl@163.com', '0', 1, '2022-01-19 10:43:59', 1, '2022-01-19 10:44:04', NULL, b'0');

-- ----------------------------
-- Table structure for tb_sys_org_resources
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_org_resources`;
CREATE TABLE `tb_sys_org_resources`  (
  `id` int(11) NOT NULL COMMENT '编号',
  `agent_count` int(11) NULL DEFAULT NULL COMMENT '坐席数',
  `concurrent_count` int(11) NULL DEFAULT NULL COMMENT '并发数',
  `qt_count` int(11) NULL DEFAULT NULL COMMENT '质检数量',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `creator` int(11) NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` int(11) NULL DEFAULT NULL COMMENT '更建者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注信息',
  `is_del` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标记 默认0  是否删除  0否  1是 ',
  `offer_id` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '组织资源 ' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_role`;
CREATE TABLE `tb_sys_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `office_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '归属机构',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `enname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '英文名称',
  `role_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色类型，执行某种类型的任务默认null',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据范围',
  `is_sys` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否系统数据',
  `useable` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否可用',
  `creator` int(11) NOT NULL COMMENT '创建者',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_user` int(11) NOT NULL COMMENT '更新者',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `is_del` bit(1) NULL DEFAULT b'0' COMMENT '删除标记 默认0  是否删除  0否  1是 ',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_role_is_del`(`is_del`) USING BTREE,
  INDEX `sys_role_enname`(`enname`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_sys_role
-- ----------------------------
INSERT INTO `tb_sys_role` VALUES (1, '10000', '超级用户', 'superAdmin', NULL, NULL, NULL, '', 111, '2022-01-13 15:24:12', 111, '2022-01-13 15:24:18', '测试', b'0');

-- ----------------------------
-- Table structure for tb_sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_role_menu`;
CREATE TABLE `tb_sys_role_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` int(11) NOT NULL COMMENT '角色编号',
  `menu_id` int(11) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色-菜单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_sys_role_menu
-- ----------------------------
INSERT INTO `tb_sys_role_menu` VALUES (1, 1, 1);

-- ----------------------------
-- Table structure for tb_sys_role_office
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_role_office`;
CREATE TABLE `tb_sys_role_office`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色编号',
  `office_id` int(11) NULL DEFAULT NULL COMMENT '机构编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色-机构' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_user`;
CREATE TABLE `tb_sys_user`  (
  `id` int(11) NOT NULL COMMENT '编号',
  `company_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '归属公司',
  `office_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '归属部门',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工号',
  `user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `useable` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否启用组织状态（0正常 1停用）',
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话',
  `is_desensitize` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '\0' COMMENT '是否脱敏  默认0  是否脱敏 0否  1是 ',
  `mobile` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机',
  `user_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '用户类型（0超级用户，1是普通用户）',
  `photo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否可登录',
  `fs_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否发送fs 默认0  0发送  1未发送 ',
  `creator` int(11) NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` int(11) NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `expiration_time` datetime(0) NULL DEFAULT NULL COMMENT '过期时间 ',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `is_del` bit(1) NULL DEFAULT b'0' COMMENT '删除标记 默认0  是否删除  0否  1是 ',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_user_office_id`(`office_id`) USING BTREE,
  INDEX `sys_user_company_id`(`company_id`) USING BTREE,
  INDEX `sys_user_update_time`(`update_time`) USING BTREE,
  INDEX `sys_user_is_del`(`is_del`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_sys_user
-- ----------------------------
INSERT INTO `tb_sys_user` VALUES (1, '1', '1', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '1', 'admin', NULL, '0', '1', '1', '0', '1', '0', 'https://webdyc.oss-cn-beijing.aliyuncs.com/moth-admin/logo.png', '1', '2022-01-06 18:56:39', '1', '1', 1, '2022-01-06 18:56:34', 1, '2022-01-06 18:57:26', '2022-01-06 18:57:35', '1', b'0');
INSERT INTO `tb_sys_user` VALUES (2, '1', '1', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '1', 'webdyc', NULL, '0', '1', '1', '0', '1', '0', 'https://webdyc.oss-cn-beijing.aliyuncs.com/moth-admin/logo.png', '1', '2022-01-06 18:56:39', '1', '1', 1, '2022-01-06 18:56:34', 1, '2022-01-06 18:57:26', '2022-01-06 18:57:35', '1', b'0');
INSERT INTO `tb_sys_user` VALUES (3, '1', '1', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '1', 'xjl', NULL, '0', '1', '1', '0', '1', '0', 'https://webdyc.oss-cn-beijing.aliyuncs.com/moth-admin/logo.png', '1', '2022-01-06 18:56:39', '1', '1', 1, '2022-01-06 18:56:34', 1, '2022-01-06 18:57:26', '2022-01-06 18:57:35', '1', b'0');
INSERT INTO `tb_sys_user` VALUES (4, '1', '1', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '1', 'xjk', NULL, '0', '1', '1', '0', '1', '0', 'https://webdyc.oss-cn-beijing.aliyuncs.com/moth-admin/logo.png', '1', '2022-01-06 18:56:39', '1', '1', 1, '2022-01-06 18:56:34', 1, '2022-01-06 18:57:26', '2022-01-06 18:57:35', '1', b'0');
INSERT INTO `tb_sys_user` VALUES (5, '1', '1', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '1', 'cxf', NULL, '0', '1', '1', '0', '1', '0', 'https://webdyc.oss-cn-beijing.aliyuncs.com/moth-admin/logo.png', '1', '2022-01-06 18:56:39', '1', '1', 1, '2022-01-06 18:56:34', 1, '2022-01-06 18:57:26', '2022-01-06 18:57:35', '1', b'0');
INSERT INTO `tb_sys_user` VALUES (6, '1', '1', '1$2a$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '1', '1', NULL, '0', '1', '1', '0', '1', '0', 'https://webdyc.oss-cn-beijing.aliyuncs.com/moth-admin/logo.png', '1', '2022-01-06 18:56:39', '1', '1', 1, '2022-01-06 18:56:34', 1, '2022-01-06 18:57:26', '2022-01-06 18:57:35', '1', b'0');
INSERT INTO `tb_sys_user` VALUES (7, '1', '1', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '1', '1', NULL, '0', '1', '1', '0', '1', '0', 'https://webdyc.oss-cn-beijing.aliyuncs.com/moth-admin/logo.png', '1', '2022-01-06 18:56:39', '1', '1', 1, '2022-01-06 18:56:34', 1, '2022-01-06 18:57:26', '2022-01-06 18:57:35', '1', b'0');
INSERT INTO `tb_sys_user` VALUES (8, '1', '1', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '1', '1', NULL, '0', '1', '1', '0', '1', '0', 'https://webdyc.oss-cn-beijing.aliyuncs.com/moth-admin/logo.png', '1', '2022-01-06 18:56:39', '1', '1', 1, '2022-01-06 18:56:34', 1, '2022-01-06 18:57:26', '2022-01-06 18:57:35', '1', b'0');
INSERT INTO `tb_sys_user` VALUES (9, '1', '1', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '1', '1', NULL, '0', '1', '1', '0', '1', '0', 'https://webdyc.oss-cn-beijing.aliyuncs.com/moth-admin/logo.png', '1', '2022-01-06 18:56:39', '1', '1', 1, '2022-01-06 18:56:34', 1, '2022-01-06 18:57:26', '2022-01-06 18:57:35', '1', b'0');
INSERT INTO `tb_sys_user` VALUES (10, '1', '1', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '1', '1', NULL, '0', '1', '1', '0', '1', '0', 'https://webdyc.oss-cn-beijing.aliyuncs.com/moth-admin/logo.png', '1', '2022-01-06 18:56:39', '1', '1', 1, '2022-01-06 18:56:34', 1, '2022-01-06 18:57:26', '2022-01-06 18:57:35', '1', b'0');
INSERT INTO `tb_sys_user` VALUES (11, '1', '1', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '1', '1', NULL, '0', '1', '1', '0', '1', '0', 'https://webdyc.oss-cn-beijing.aliyuncs.com/moth-admin/logo.png', '1', '2022-01-06 18:56:39', '1', '1', 1, '2022-01-06 18:56:34', 1, '2022-01-06 18:57:26', '2022-01-06 18:57:35', '1', b'0');
INSERT INTO `tb_sys_user` VALUES (12, '1', '1', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '1', '1', NULL, '0', '1', '1', '0', '1', '0', 'https://webdyc.oss-cn-beijing.aliyuncs.com/moth-admin/logo.png', '1', '2022-01-06 18:56:39', '1', '1', 1, '2022-01-06 18:56:34', 1, '2022-01-06 18:57:26', '2022-01-06 18:57:35', '1', b'0');
INSERT INTO `tb_sys_user` VALUES (13, '1', '1', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '1', '1', NULL, '0', '1', '1', '0', '1', '0', 'https://webdyc.oss-cn-beijing.aliyuncs.com/moth-admin/logo.png', '1', '2022-01-06 18:56:39', '1', '1', 1, '2022-01-06 18:56:34', 1, '2022-01-06 18:57:26', '2022-01-06 18:57:35', '1', b'0');

-- ----------------------------
-- Table structure for tb_sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_user_role`;
CREATE TABLE `tb_sys_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户编号',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户-组织-角色' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_sys_user_role
-- ----------------------------
INSERT INTO `tb_sys_user_role` VALUES (1, 1, 1);

-- ----------------------------
-- Table structure for td_sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `td_sys_dict`;
CREATE TABLE `td_sys_dict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据值',
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标签名',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '描述',
  `sort` decimal(10, 0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '父级编号',
  `creator` int(11) NOT NULL COMMENT '创建者',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_user` int(11) NOT NULL COMMENT '更新者',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `is_del` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标记 默认0  是否删除  0否  1是 ',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_dict_value`(`value`) USING BTREE,
  INDEX `sys_dict_label`(`label`) USING BTREE,
  INDEX `sys_dict_is_del`(`is_del`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典表' ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
