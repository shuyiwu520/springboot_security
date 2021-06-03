/*
 Navicat Premium Data Transfer

 Source Server         : wuu
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : 127.0.0.1:3306
 Source Schema         : wuu_taiyi

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 03/06/2021 10:57:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
                          `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键',
                          `card` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证号',
                          `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
                          `gender` int(2) DEFAULT NULL COMMENT '性别',
                          `age` int(11) DEFAULT NULL COMMENT '年龄',
                          `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
                          `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '123456' COMMENT '登录密码',
                          `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色类型',
                          `create_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
                          `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                          `update_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新人',
                          `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
                          PRIMARY KEY (`id`, `card`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '测试者账号信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor`  (
                           `doctor_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键',
                           `doctor_card` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证号',
                           `doctor_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
                           `doctor_genrel` int(2) DEFAULT NULL COMMENT '性别',
                           `doctor_age` int(11) DEFAULT NULL COMMENT '年龄',
                           `doctor_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
                           `doctor_password` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '123456' COMMENT '登录密码',
                           `create_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
                           `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                           `update_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新人',
                           `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
                           PRIMARY KEY (`doctor_id`, `doctor_card`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '医生账号' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES (1, '371102001001', '陈晨', 1, 26, '13256789453', '123456', '吴蜀', '2021-04-30 16:42:58', NULL, NULL);

-- ----------------------------
-- Table structure for level_questionnaire
-- ----------------------------
DROP TABLE IF EXISTS `level_questionnaire`;
CREATE TABLE `level_questionnaire`  (
                                        `level_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '自增长主键',
                                        `questionnaire_key` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '等级名称',
                                        `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调查量表名类别，名称',
                                        `class1` int(4) DEFAULT NULL COMMENT '一级',
                                        `class2` int(4) DEFAULT NULL COMMENT '二级',
                                        `questionnaire_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '调查量表中包含的调查类型：1.单选顺序调查，2.多选顺序调查；3.跳转量表，问题跳转；4.问答型；5.模块跳转',
                                        `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                        PRIMARY KEY (`level_id`, `questionnaire_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '量表层级解析，以及量表名称' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
                          `card` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证号',
                          `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
                          `login_role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色类型：０．管理员，１．医生，２．患者',
                          `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '123456' COMMENT '密码',
                          `create_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
                          `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                          `update_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新人',
                          `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
                          PRIMARY KEY (`card`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户登录信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('27060001', '张琳', '1', '123456', '', '2021-05-23 00:41:02', '', '');
INSERT INTO `login` VALUES ('3711020001', '吴哲', '2', '123456', '', '2021-05-23 00:39:26', '', '');

-- ----------------------------
-- Table structure for outpatient
-- ----------------------------
DROP TABLE IF EXISTS `outpatient`;
CREATE TABLE `outpatient`  (
                               `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键',
                               `no` int(20) NOT NULL COMMENT '门诊编号',
                               `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '患者姓名',
                               `medical_card` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '就诊卡号',
                               `gender` int(2) NOT NULL DEFAULT 2 COMMENT '患者性别：1.男，2.女',
                               `age` int(11) NOT NULL COMMENT '患者年龄',
                               `doctor_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '挂号医生号',
                               `office` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '挂号科室编号',
                               `patient_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '患者类型',
                               `create_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'wuu' COMMENT '创建人，挂号员',
                               `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                               PRIMARY KEY (`id`, `no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '门诊挂号数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of outpatient
-- ----------------------------
INSERT INTO `outpatient` VALUES (1, 2716001, '吴哲', '3711020001', 2, 34, '371102001001', '4005', '抑郁症', 'wuu', '2021-05-24 10:03:53');
INSERT INTO `outpatient` VALUES (2, 2716002, '马鑫', '3711020002', 2, 34, '371102001001', '4005', '抑郁症', 'wuu', '2021-05-24 10:03:53');
INSERT INTO `outpatient` VALUES (3, 2716003, '刘田', '3711020003', 2, 34, '371102001003', '4005', '抑郁症', 'wuu', '2021-05-24 10:03:53');

-- ----------------------------
-- Table structure for patient
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient`  (
                            `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键',
                            `card` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证号',
                            `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
                            `genrel` int(2) DEFAULT NULL COMMENT '性别',
                            `age` int(11) DEFAULT NULL COMMENT '年龄',
                            `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色类型：０．管理员，１．医生，２．患者',
                            `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
                            `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '家庭住址',
                            `email` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱地址',
                            `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
                            `office` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '组织，病人所属科室',
                            `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '123456' COMMENT '组织，病人所属科室',
                            `create_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
                            `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                            `update_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新人',
                            `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
                            PRIMARY KEY (`id`, `card`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '测试者账号信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of patient
-- ----------------------------
INSERT INTO `patient` VALUES (2, '3711020001', '吴哲', 1, 34, '2', '13247648907', '山东省泰安市泰山区', '132134@qq.com', '备注', '4005', '123456', '吴蜀', '2021-05-22 23:47:21', '', '');
INSERT INTO `patient` VALUES (3, '3711020002', '马欣', 1, 34, '2', '13247648907', '山东省泰安市泰山区', '132134@qq.com', '备注', '4005', '123456', '吴蜀', '2021-05-22 23:47:21', '', '');

-- ----------------------------
-- Table structure for patient_questionenaire
-- ----------------------------
DROP TABLE IF EXISTS `patient_questionenaire`;
CREATE TABLE `patient_questionenaire`  (
                                           `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键',
                                           `card` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证号',
                                           `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
                                           `questionnaire_key` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调查量表名称',
                                           `questionnaire_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调查量表名称',
                                           `office` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '组织，病人所属科室',
                                           `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
                                           `create_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
                                           `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                           `update_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新人',
                                           `update_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
                                           PRIMARY KEY (`id`, `card`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '测试者要做的调查量表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of patient_questionenaire
-- ----------------------------
INSERT INTO `patient_questionenaire` VALUES (1, '3711020001', '吴哲', '1001', '艾森克人格个性问卷调查EPQA(成年人)', '4005', '备注', 'wuu', '2021-05-25 08:21:06', '', '');
INSERT INTO `patient_questionenaire` VALUES (2, '3711020001', '吴哲', '1002', '艾森克人格个性问卷调查EPQC(儿童)', '4005', '备注', 'wuu', '2021-05-25 08:21:07', '', '');
INSERT INTO `patient_questionenaire` VALUES (3, '3711020002', '马欣', '1001', '艾森克人格个性问卷调查EPQA(成年人)', '4005', '备注', 'wuu', '2021-05-25 08:21:07', '', '');

-- ----------------------------
-- Table structure for questionnaire
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire`;
CREATE TABLE `questionnaire`  (
                                  `question_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '自增长主键',
                                  `questionnaire_level_key` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调查量表编号',
                                  `questionnaire_key` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '问题在量表中的编号',
                                  `question` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调查量表中的问题',
                                  `questionnaire_options` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '问题选项列表',
                                  `questionnaire_score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '选项列表对应的分数',
                                  `questionnaire_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '问题的类型：1.单选；2.多选；3.跳转量表；4.简答；5.模块跳转量表',
                                  `create_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '选项列表对应的分数',
                                  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '状态（0中止 1正常 2关闭 3审核中）',
                                  PRIMARY KEY (`question_id`, `questionnaire_level_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '量表题目存储' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of questionnaire
-- ----------------------------
INSERT INTO `questionnaire` VALUES (1, '1001', '1', '你是否有许多不同的业余爱好？', '是|否', '１|2', '1', 'wuu', '2021-05-31 10:08:40', '1');
INSERT INTO `questionnaire` VALUES (2, '1001', '2', '你是否在做任何事情以前都要停下来仔细思考？', '是|否', '１|2', '1', 'wuu', '2021-05-31 10:08:40', '1');
INSERT INTO `questionnaire` VALUES (3, '1001', '3', '你的心境是否常有起伏？', '是|否', '１|2', '1', 'wuu', '2021-05-31 10:08:40', '1');
INSERT INTO `questionnaire` VALUES (4, '1001', '4', '你曾有过明知是别人的功劳而你去接受奖励的事吗？', '是|否', '１|2', '1', 'wuu', '2021-05-31 10:08:40', '1');
INSERT INTO `questionnaire` VALUES (5, '1002', '1', '你是否有许多不同的业余爱好？', '是,2;否,3', '１|2', '4', 'wuu', '2021-05-31 10:08:40', '1');
INSERT INTO `questionnaire` VALUES (6, '1002', '2', '你是否在做任何事情以前都要停下来仔细思考？', '是,4;否,5', '１|2', '4', 'wuu', '2021-05-31 10:08:40', '1');
INSERT INTO `questionnaire` VALUES (7, '1002', '3', '你是否在做任何事情以前都要停下来仔细思考？', '是,4;否,5', '１|2', '4', 'wuu', '2021-05-31 10:08:40', '1');

-- ----------------------------
-- Table structure for questionnaire_level
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire_level`;
CREATE TABLE `questionnaire_level`  (
                                        `level_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '自增长主键',
                                        `questionnaire_key` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '等级名称',
                                        `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调查量表名类别，名称',
                                        `class1` int(4) DEFAULT NULL COMMENT '一级',
                                        `class2` int(4) DEFAULT NULL COMMENT '二级',
                                        PRIMARY KEY (`level_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 187 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '量表层级解析，以及量表名称' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of questionnaire_level
-- ----------------------------
INSERT INTO `questionnaire_level` VALUES (1, '1001', '艾森克人格个性问卷调查EPQA(成年人)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (2, '1002', '艾森克人格个性问卷调查EPQC(儿童)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (3, '1003', '爱德华个性偏好表', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (4, '1004', '多相人格调查量表(MMPI)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (5, '1005', '儿童内-外控制源量表(NS)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (6, '1006', '工作激情程度检测', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (7, '1007', '霍兰德职业测试量表(HOLLAND)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (8, '1008', '机会把握能力测试', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (9, '1009', '进取性水平测试', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (10, '1010', '卡特尔16种人格因素测验(16PF)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (11, '1011', '控制圈(SOC)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (12, '1012', '情商EQ(QSEQ)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (13, '1013', '缺陷感量表（FIS)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (14, '1014', '人格诊断问卷（PDQ)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (15, '1015', '人际合作程度测验', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (16, '1016', '瑞文标准推理测试', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (17, '1017', '瑞文高级推理测试', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (18, '1018', '社交回避与苦恼量表（SAD)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (19, '1019', '师生关系困扰调查表', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (20, '1020', '特质应对方式问卷（TCSQ)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (21, '1021', '同学关系困扰调查表', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (22, '1022', '学生生活应激问卷', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (23, '1023', '职业核心竞争力量表', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (24, '1024', '职业兴趣问卷', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (25, '1025', '中学生心理健康量表（MSMH)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (26, '1026', '中学生学习动机测验问卷（MSSP)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (27, '1027', '中学生学习方法测验问卷（MSSM)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (28, '1028', '中学生一般人际关系测验问卷（MSRP)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (29, '1029', '中学生意志力测验问卷（MSMT)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (30, '1030', '状态－特质焦虑问卷（STAI)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (31, '1031', '自主程度测试', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (32, '1032', '自尊调查表', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (33, '1001', '艾森克人格个性问卷调查EPQA(成年人)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (34, '1002', '艾森克人格个性问卷调查EPQC(儿童)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (35, '1003', '爱德华个性偏好表', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (36, '1004', '多相人格调查量表(MMPI)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (37, '1005', '儿童内-外控制源量表(NS)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (38, '1006', '工作激情程度检测', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (39, '1007', '霍兰德职业测试量表(HOLLAND)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (40, '1008', '机会把握能力测试', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (41, '1009', '进取性水平测试', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (42, '1010', '卡特尔16种人格因素测验(16PF)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (43, '1011', '控制圈(SOC)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (44, '1012', '情商EQ(QSEQ)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (45, '1013', '缺陷感量表（FIS)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (46, '1014', '人格诊断问卷（PDQ)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (47, '1015', '人际合作程度测验', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (48, '1016', '瑞文标准推理测试', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (49, '1017', '瑞文高级推理测试', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (50, '1018', '社交回避与苦恼量表（SAD)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (51, '1019', '师生关系困扰调查表', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (52, '1020', '特质应对方式问卷（TCSQ)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (53, '1021', '同学关系困扰调查表', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (54, '1022', '学生生活应激问卷', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (55, '1023', '职业核心竞争力量表', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (56, '1024', '职业兴趣问卷', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (57, '1025', '中学生心理健康量表（MSMH)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (58, '1026', '中学生学习动机测验问卷（MSSP)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (59, '1027', '中学生学习方法测验问卷（MSSM)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (60, '1028', '中学生一般人际关系测验问卷（MSRP)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (61, '1029', '中学生意志力测验问卷（MSMT)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (62, '1030', '状态－特质焦虑问卷（STAI)', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (63, '1031', '自主程度测试', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (64, '1032', '自尊调查表', 0, 1000);
INSERT INTO `questionnaire_level` VALUES (65, '2001', '阿森斯失眠量表（AIS)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (66, '2002', '痴呆简易筛查量表（BSSD)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (67, '2003', '大体评定量表（GAS)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (68, '2004', '多伦多述情障碍量表（TAS)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (69, '2005', '儿童心理虐待与忽视量表', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (70, '2006', '护士用简明精神病量表（NBPRS)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (71, '2007', '护士用住院病人观察量表（NOSIE)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (72, '2008', '划字销字测验（RWEW)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (73, '2009', '患病行为问卷简明精神病量表（BPRS)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (74, '2010', '简易智力状态检查（MMSE)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (75, '2011', '交流恐惧自陈量表（PRCA)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (76, '2012', '戒断评定（JDZZ)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (77, '2013', '精神病态筛查表（PCLSV)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (78, '2014', '精神症状全面量表（CPRS)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (79, '2015', '酒精依赖诊断量表（SCID-AD)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (80, '2016', '康奈尔健康问卷（CMI)男性用表', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (81, '2017', '康奈尔健康问卷（CMI)女性用表', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (82, '2018', '抗抑郁药副反应量表（SERS)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (83, '2019', '恐怖程度测试老年临床评定量表（SCAG)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (84, '2020', '流调中心用抑郁量表（CESDS)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (85, '2021', '马氏量表（MACH', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (86, '2022', '密西根酒精依赖调查表（MAST)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (87, '2023', '强迫行为检查量表（CACR)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (88, '2024', '缺血指数量表（HIS)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (89, '2025', '人格障碍筛查问卷（CCMD)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (90, '2026', '社会功能缺陷量表（SDSS)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (91, '2027', '阳性症状量表（SAPS)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (92, '2028', '药物成瘾者生命质量测定量表（GHTS)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (93, '2029', '耶鲁－布朗强迫症状量表（Y-BOCS)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (94, '2030', '阴性症状量表（SANS)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (95, '2031', '与饮酒有关的心理控制源量表', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (96, '2032', '躁狂量表（BRMS)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (97, '2033', '治疗副反应量表（TESS)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (98, '2034', '中国4-6岁儿童忽视状况评价问卷', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (99, '2035', '锥体外系副反应量表（RSESE)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (100, '2036', '自卑感评定量表（JF)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (101, '2037', '自杀态度问卷（QSA)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (102, '2038', '自知力与治疗态度问卷', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (103, '2039', '综合性医院焦虑抑郁量表（HAD)', 0, 2000);
INSERT INTO `questionnaire_level` VALUES (104, '3001', 'A型行为量表（TABP)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (105, '3002', 'SCL-90项症状清单', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (106, '3003', '贝克焦虑量表（BAI)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (107, '3004', '贝克抑郁问卷（BDI)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (108, '3005', '大学生心理适应性测量问卷', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (109, '3006', '大学生心理调查量表（UPI)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (110, '3007', '多动症筛查量表（ADHD)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (111, '3008', '多维度健康状况心理控制源量表（MHLC)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (112, '3009', '儿童孤独症评定量表（CARS)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (113, '3010', '儿童行为量表（ACHENBACH)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (114, '3011', '儿童行为问卷（Conners)父母用量表', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (115, '3012', '儿童行为问卷（Conners)教师用量表', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (116, '3013', '儿童行为问卷－父母（RUTTER)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (117, '3014', '儿童行为问卷－教师（RUTTER)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (118, '3015', '儿童活动水平评定量表（WPARS)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (119, '3016', '儿童焦虑性情绪障碍筛査量表（SCARED)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (120, '3017', '儿童少年心理卫生状况筛查表（学龄版）', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (121, '3018', '儿童少年心理卫生状况筛查表（幼儿版）', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (122, '3019', '儿童社会期望量表（CSD)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (123, '3020', '儿童社交焦虑量表（SASC)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (124, '3021', '儿童抑郁障碍自评量表（DSRSC)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (125, '3022', '儿童自我意识量表（CS)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (126, '3023', '防御方式问卷（DSQ)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (127, '3024', '父母教养方式评价量表（EMBU)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (128, '3025', '个人评价问卷（PEI)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (129, '3026', '孤独量表（UCLA)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (130, '3027', '孤独量表CLS', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (131, '3028', '汉密顿焦虑量表（HAMA)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (132, '3029', '汉密顿抑郁量表（HRSD)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (133, '3030', '婚姻调适测定（LW)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (134, '3031', '婚姻心理控制源量表（MLCS)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (135, '3032', '婚姻质量问卷（ENRICH)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (136, '3033', '家庭功能评定（FAD)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (137, '3034', '家庭环境量表（FES-CV)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (138, '3035', '家庭亲密度和适应性量表（FACES)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (139, '3036', '简易应对方式量表（SCSQ)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (140, '3037', '健康状况问卷（SF-36)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (141, '3038', '交往焦虑量表（IAS)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (142, '3039', '焦虑自评量表（SAS)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (143, '3040', '惧怕否定评价量表（FNE)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (144, '3041', '考试焦虑量表恐怖强迫量表（MSRPOR)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (145, '3042', '老年抑郁量表（TGDS)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (146, '3043', '领悟社会支持量表（PSSS)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (147, '3044', '内－外在心理控制源量表（IELCS)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (148, '3045', '纽芬兰幸福度量表（MUNSH)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (149, '3046', '疲劳评定量表（FAI)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (150, '3047', '匹茨堡睡眠质量指数量表（PSQI)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (151, '3048', '青少年电子游戏成瘾量表（GAME)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (152, '3049', '青少年生活事件量表（ASLEC)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (153, '3050', '情感量表（HETT)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (154, '3051', '情绪－社会孤独问卷（ESLI)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (155, '3052', '人际信任量表（IT)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (156, '3053', '认知偏差问卷（TCBQ)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (157, '3054', '日常生活能力量表（ADL)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (158, '3055', '容纳他人量表（AO)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (159, '3056', '社会支持评定量表（SFZC)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (160, '3057', '社交焦虑量表（LSAS)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (161, '3058', '生活满意度评定量表（LSR)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (162, '3059', '生活满意度指数（LSIB)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (163, '3060', '生活满意度指数A(LSIA)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (164, '3061', '生活事件量表（LES)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (165, '3062', '生活质量综合评定问卷（GQLI)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (166, '3063', '网络成瘾自评量表', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (167, '3064', '小学生心理健康综合测量', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (168, '3065', '信任他人量表（SRC)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (169, '3066', '羞怯量表（SS)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (170, '3067', '阳性与阴性症状量表（PANSS)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (171, '3068', '抑郁程度测试抑郁体验问卷（DEQ)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (172, '3069', '抑郁状态问卷（DSI)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (173, '3070', '抑郁自评量表（SDS)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (174, '3071', '应付方式问卷', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (175, '3072', '子女教育心理控制源量表（PLOC)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (176, '3073', '自我描述问卷（SDQ)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (177, '3074', '总体幸福感量表（GWB)', 0, 3000);
INSERT INTO `questionnaire_level` VALUES (178, '4001', '1-3岁幼儿气质问卷', 0, 4000);
INSERT INTO `questionnaire_level` VALUES (179, '4002', '2-3岁儿童行为检查表（CBCL)', 0, 4000);
INSERT INTO `questionnaire_level` VALUES (180, '4003', '3-7岁儿童气质量表', 0, 4000);
INSERT INTO `questionnaire_level` VALUES (181, '4004', '3-7岁儿童气质问卷（NYLS)', 0, 4000);
INSERT INTO `questionnaire_level` VALUES (182, '4005', '4-8个月婴儿气质量表', 0, 4000);
INSERT INTO `questionnaire_level` VALUES (183, '4006', '8-12岁学龄儿童气质问卷', 0, 4000);
INSERT INTO `questionnaire_level` VALUES (184, '4007', '贝利婴儿发展量表（BSID)', 0, 4000);
INSERT INTO `questionnaire_level` VALUES (185, '4008', '儿童感觉统合能力发展评定量表（SITS)', 0, 4000);
INSERT INTO `questionnaire_level` VALUES (186, '4009', '新生儿20项行为神经评定（NBNA)', 0, 4000);

-- ----------------------------
-- Table structure for questionnaire_recoeds
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire_recoeds`;
CREATE TABLE `questionnaire_recoeds`  (
                                          `recoeds_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '自增长主键',
                                          `patient_card` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证号',
                                          `patient_id` int(11) NOT NULL COMMENT '病人表中的自增长主键',
                                          `questionnaire_level_key` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调查量表编号',
                                          `questionnaire_key` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '问题在量表中的编号',
                                          `options` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '问题选项列表',
                                          `score` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '选项列表对应的分数',
                                          `create_time` datetime(0) NOT NULL COMMENT '创建时间',
                                          PRIMARY KEY (`recoeds_id`, `patient_card`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '量表答案记录数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of questionnaire_recoeds
-- ----------------------------
INSERT INTO `questionnaire_recoeds` VALUES (1, '371102199830985711', 1, '1001', '1', '是', '2', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
                          `roles_card` int(4) NOT NULL AUTO_INCREMENT COMMENT '自增长主键',
                          `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称（1.系统管理员，2.医生；3.患者；4.主任医师）',
                          `power` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色类别',
                          `create_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
                          `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                          PRIMARY KEY (`roles_card`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
