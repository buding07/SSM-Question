/*
 Navicat Premium Data Transfer

 Source Server         : 本地连接
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : ssm-question

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 05/09/2021 17:03:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer_paper
-- ----------------------------
DROP TABLE IF EXISTS `answer_paper`;
CREATE TABLE `answer_paper`  (
  `answer_paper_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `paper_id` int(11) NULL DEFAULT NULL COMMENT '试题id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '答题人id',
  `paper_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '试题类型',
  `paper_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '答案',
  PRIMARY KEY (`answer_paper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 128 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer_paper
-- ----------------------------
INSERT INTO `answer_paper` VALUES (45, 59, 16, '1', '101');
INSERT INTO `answer_paper` VALUES (46, 60, 16, '1', '104');
INSERT INTO `answer_paper` VALUES (47, 61, 16, '2', '107,109');
INSERT INTO `answer_paper` VALUES (48, 62, 16, '2', '111,115');
INSERT INTO `answer_paper` VALUES (49, 63, 16, '1', '117');
INSERT INTO `answer_paper` VALUES (50, 64, 16, '1', '121');
INSERT INTO `answer_paper` VALUES (51, 65, 16, '2', '124,126');
INSERT INTO `answer_paper` VALUES (52, 66, 12, '1', '130');
INSERT INTO `answer_paper` VALUES (53, 67, 12, '2', '131,133');
INSERT INTO `answer_paper` VALUES (54, 68, 12, '1', '135');
INSERT INTO `answer_paper` VALUES (55, 69, 12, '1', '137');
INSERT INTO `answer_paper` VALUES (56, 70, 12, '1', '141');
INSERT INTO `answer_paper` VALUES (57, 71, 12, '1', '144');
INSERT INTO `answer_paper` VALUES (58, 59, 12, '1', '102');
INSERT INTO `answer_paper` VALUES (59, 60, 12, '1', '106');
INSERT INTO `answer_paper` VALUES (60, 61, 12, '2', '108,109');
INSERT INTO `answer_paper` VALUES (61, 62, 12, '2', '110,115');
INSERT INTO `answer_paper` VALUES (62, 63, 12, '1', '117');
INSERT INTO `answer_paper` VALUES (63, 64, 12, '1', '121');
INSERT INTO `answer_paper` VALUES (64, 65, 12, '2', '125,126');
INSERT INTO `answer_paper` VALUES (65, 59, 10, '1', '102');
INSERT INTO `answer_paper` VALUES (66, 60, 10, '1', '103');
INSERT INTO `answer_paper` VALUES (67, 61, 10, '2', '107');
INSERT INTO `answer_paper` VALUES (68, 62, 10, '2', '112,113,114');
INSERT INTO `answer_paper` VALUES (69, 63, 10, '1', '119');
INSERT INTO `answer_paper` VALUES (70, 64, 10, '1', '123');
INSERT INTO `answer_paper` VALUES (71, 65, 10, '2', '125,127,128');
INSERT INTO `answer_paper` VALUES (72, 66, 10, '1', '129');
INSERT INTO `answer_paper` VALUES (73, 67, 10, '2', '133');
INSERT INTO `answer_paper` VALUES (74, 68, 10, '1', '136');
INSERT INTO `answer_paper` VALUES (75, 69, 10, '1', '137');
INSERT INTO `answer_paper` VALUES (76, 70, 10, '1', '141');
INSERT INTO `answer_paper` VALUES (77, 71, 10, '1', '144');
INSERT INTO `answer_paper` VALUES (78, 59, 11, '1', '101');
INSERT INTO `answer_paper` VALUES (79, 60, 11, '1', '104');
INSERT INTO `answer_paper` VALUES (80, 61, 11, '2', '109');
INSERT INTO `answer_paper` VALUES (81, 62, 11, '2', '110,111,112,113');
INSERT INTO `answer_paper` VALUES (82, 63, 11, '1', '118');
INSERT INTO `answer_paper` VALUES (83, 64, 11, '1', '123');
INSERT INTO `answer_paper` VALUES (84, 65, 11, '2', '125,126');
INSERT INTO `answer_paper` VALUES (85, 66, 11, '1', '129');
INSERT INTO `answer_paper` VALUES (86, 67, 11, '2', '133');
INSERT INTO `answer_paper` VALUES (87, 68, 11, '1', '136');
INSERT INTO `answer_paper` VALUES (88, 69, 11, '1', '139');
INSERT INTO `answer_paper` VALUES (89, 70, 11, '1', '143');
INSERT INTO `answer_paper` VALUES (90, 71, 11, '1', '147');
INSERT INTO `answer_paper` VALUES (91, 59, 2, '1', '102');
INSERT INTO `answer_paper` VALUES (92, 60, 2, '1', '105');
INSERT INTO `answer_paper` VALUES (93, 61, 2, '2', '109');
INSERT INTO `answer_paper` VALUES (94, 62, 2, '2', '110,111,115');
INSERT INTO `answer_paper` VALUES (95, 63, 2, '1', '116');
INSERT INTO `answer_paper` VALUES (96, 64, 2, '1', '120');
INSERT INTO `answer_paper` VALUES (97, 65, 2, '2', '124,126,127');
INSERT INTO `answer_paper` VALUES (98, 66, 2, '1', '130');
INSERT INTO `answer_paper` VALUES (99, 67, 2, '2', '134');
INSERT INTO `answer_paper` VALUES (100, 68, 2, '1', '136');
INSERT INTO `answer_paper` VALUES (101, 69, 2, '1', '139');
INSERT INTO `answer_paper` VALUES (102, 70, 2, '1', '142');
INSERT INTO `answer_paper` VALUES (103, 71, 2, '1', '145');
INSERT INTO `answer_paper` VALUES (104, 72, 21, '1', '148');
INSERT INTO `answer_paper` VALUES (105, 73, 21, '1', '151');
INSERT INTO `answer_paper` VALUES (106, 74, 21, '1', '155');
INSERT INTO `answer_paper` VALUES (107, 75, 21, '1', '159');
INSERT INTO `answer_paper` VALUES (108, 76, 21, '1', '166');
INSERT INTO `answer_paper` VALUES (109, 77, 23, '1', '167');
INSERT INTO `answer_paper` VALUES (110, 78, 23, '1', '169');
INSERT INTO `answer_paper` VALUES (111, 79, 23, '1', '173');
INSERT INTO `answer_paper` VALUES (112, 80, 23, '1', '177');
INSERT INTO `answer_paper` VALUES (113, 81, 23, '1', '180');
INSERT INTO `answer_paper` VALUES (114, 82, 23, '4', '数量太少，味道不好！');
INSERT INTO `answer_paper` VALUES (115, 59, 23, '1', '101');
INSERT INTO `answer_paper` VALUES (116, 60, 23, '1', '103');
INSERT INTO `answer_paper` VALUES (117, 61, 23, '2', '107,108');
INSERT INTO `answer_paper` VALUES (118, 62, 23, '2', '110,112');
INSERT INTO `answer_paper` VALUES (119, 63, 23, '1', '117');
INSERT INTO `answer_paper` VALUES (120, 64, 23, '1', '120');
INSERT INTO `answer_paper` VALUES (121, 65, 23, '2', '124,126');
INSERT INTO `answer_paper` VALUES (122, 66, 23, '1', '129');
INSERT INTO `answer_paper` VALUES (123, 67, 23, '2', '131');
INSERT INTO `answer_paper` VALUES (124, 68, 23, '1', '136');
INSERT INTO `answer_paper` VALUES (125, 69, 23, '1', '137');
INSERT INTO `answer_paper` VALUES (126, 70, 23, '1', '142');
INSERT INTO `answer_paper` VALUES (127, 71, 23, '1', '144');

-- ----------------------------
-- Table structure for answer_paper_choice
-- ----------------------------
DROP TABLE IF EXISTS `answer_paper_choice`;
CREATE TABLE `answer_paper_choice`  (
  `answer_choice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chioce_id` int(11) NULL DEFAULT NULL COMMENT '选项id',
  `paper_id` int(11) NULL DEFAULT NULL COMMENT '试题id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '答题人id',
  PRIMARY KEY (`answer_choice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 153 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer_paper_choice
-- ----------------------------
INSERT INTO `answer_paper_choice` VALUES (49, 101, 59, 16);
INSERT INTO `answer_paper_choice` VALUES (50, 104, 60, 16);
INSERT INTO `answer_paper_choice` VALUES (51, 107, 61, 16);
INSERT INTO `answer_paper_choice` VALUES (52, 109, 61, 16);
INSERT INTO `answer_paper_choice` VALUES (53, 111, 62, 16);
INSERT INTO `answer_paper_choice` VALUES (54, 115, 62, 16);
INSERT INTO `answer_paper_choice` VALUES (55, 117, 63, 16);
INSERT INTO `answer_paper_choice` VALUES (56, 121, 64, 16);
INSERT INTO `answer_paper_choice` VALUES (57, 124, 65, 16);
INSERT INTO `answer_paper_choice` VALUES (58, 126, 65, 16);
INSERT INTO `answer_paper_choice` VALUES (59, 130, 66, 12);
INSERT INTO `answer_paper_choice` VALUES (60, 131, 67, 12);
INSERT INTO `answer_paper_choice` VALUES (61, 133, 67, 12);
INSERT INTO `answer_paper_choice` VALUES (62, 135, 68, 12);
INSERT INTO `answer_paper_choice` VALUES (63, 137, 69, 12);
INSERT INTO `answer_paper_choice` VALUES (64, 141, 70, 12);
INSERT INTO `answer_paper_choice` VALUES (65, 144, 71, 12);
INSERT INTO `answer_paper_choice` VALUES (66, 102, 59, 12);
INSERT INTO `answer_paper_choice` VALUES (67, 106, 60, 12);
INSERT INTO `answer_paper_choice` VALUES (68, 108, 61, 12);
INSERT INTO `answer_paper_choice` VALUES (69, 109, 61, 12);
INSERT INTO `answer_paper_choice` VALUES (70, 110, 62, 12);
INSERT INTO `answer_paper_choice` VALUES (71, 115, 62, 12);
INSERT INTO `answer_paper_choice` VALUES (72, 117, 63, 12);
INSERT INTO `answer_paper_choice` VALUES (73, 121, 64, 12);
INSERT INTO `answer_paper_choice` VALUES (74, 125, 65, 12);
INSERT INTO `answer_paper_choice` VALUES (75, 126, 65, 12);
INSERT INTO `answer_paper_choice` VALUES (76, 102, 59, 10);
INSERT INTO `answer_paper_choice` VALUES (77, 103, 60, 10);
INSERT INTO `answer_paper_choice` VALUES (78, 107, 61, 10);
INSERT INTO `answer_paper_choice` VALUES (79, 112, 62, 10);
INSERT INTO `answer_paper_choice` VALUES (80, 113, 62, 10);
INSERT INTO `answer_paper_choice` VALUES (81, 114, 62, 10);
INSERT INTO `answer_paper_choice` VALUES (82, 119, 63, 10);
INSERT INTO `answer_paper_choice` VALUES (83, 123, 64, 10);
INSERT INTO `answer_paper_choice` VALUES (84, 125, 65, 10);
INSERT INTO `answer_paper_choice` VALUES (85, 127, 65, 10);
INSERT INTO `answer_paper_choice` VALUES (86, 128, 65, 10);
INSERT INTO `answer_paper_choice` VALUES (87, 129, 66, 10);
INSERT INTO `answer_paper_choice` VALUES (88, 133, 67, 10);
INSERT INTO `answer_paper_choice` VALUES (89, 136, 68, 10);
INSERT INTO `answer_paper_choice` VALUES (90, 137, 69, 10);
INSERT INTO `answer_paper_choice` VALUES (91, 141, 70, 10);
INSERT INTO `answer_paper_choice` VALUES (92, 144, 71, 10);
INSERT INTO `answer_paper_choice` VALUES (93, 101, 59, 11);
INSERT INTO `answer_paper_choice` VALUES (94, 104, 60, 11);
INSERT INTO `answer_paper_choice` VALUES (95, 109, 61, 11);
INSERT INTO `answer_paper_choice` VALUES (96, 110, 62, 11);
INSERT INTO `answer_paper_choice` VALUES (97, 111, 62, 11);
INSERT INTO `answer_paper_choice` VALUES (98, 112, 62, 11);
INSERT INTO `answer_paper_choice` VALUES (99, 113, 62, 11);
INSERT INTO `answer_paper_choice` VALUES (100, 118, 63, 11);
INSERT INTO `answer_paper_choice` VALUES (101, 123, 64, 11);
INSERT INTO `answer_paper_choice` VALUES (102, 125, 65, 11);
INSERT INTO `answer_paper_choice` VALUES (103, 126, 65, 11);
INSERT INTO `answer_paper_choice` VALUES (104, 129, 66, 11);
INSERT INTO `answer_paper_choice` VALUES (105, 133, 67, 11);
INSERT INTO `answer_paper_choice` VALUES (106, 136, 68, 11);
INSERT INTO `answer_paper_choice` VALUES (107, 139, 69, 11);
INSERT INTO `answer_paper_choice` VALUES (108, 143, 70, 11);
INSERT INTO `answer_paper_choice` VALUES (109, 147, 71, 11);
INSERT INTO `answer_paper_choice` VALUES (110, 102, 59, 2);
INSERT INTO `answer_paper_choice` VALUES (111, 105, 60, 2);
INSERT INTO `answer_paper_choice` VALUES (112, 109, 61, 2);
INSERT INTO `answer_paper_choice` VALUES (113, 110, 62, 2);
INSERT INTO `answer_paper_choice` VALUES (114, 111, 62, 2);
INSERT INTO `answer_paper_choice` VALUES (115, 115, 62, 2);
INSERT INTO `answer_paper_choice` VALUES (116, 116, 63, 2);
INSERT INTO `answer_paper_choice` VALUES (117, 120, 64, 2);
INSERT INTO `answer_paper_choice` VALUES (118, 124, 65, 2);
INSERT INTO `answer_paper_choice` VALUES (119, 126, 65, 2);
INSERT INTO `answer_paper_choice` VALUES (120, 127, 65, 2);
INSERT INTO `answer_paper_choice` VALUES (121, 130, 66, 2);
INSERT INTO `answer_paper_choice` VALUES (122, 134, 67, 2);
INSERT INTO `answer_paper_choice` VALUES (123, 136, 68, 2);
INSERT INTO `answer_paper_choice` VALUES (124, 139, 69, 2);
INSERT INTO `answer_paper_choice` VALUES (125, 142, 70, 2);
INSERT INTO `answer_paper_choice` VALUES (126, 145, 71, 2);
INSERT INTO `answer_paper_choice` VALUES (127, 148, 72, 21);
INSERT INTO `answer_paper_choice` VALUES (128, 151, 73, 21);
INSERT INTO `answer_paper_choice` VALUES (129, 155, 74, 21);
INSERT INTO `answer_paper_choice` VALUES (130, 159, 75, 21);
INSERT INTO `answer_paper_choice` VALUES (131, 166, 76, 21);
INSERT INTO `answer_paper_choice` VALUES (132, 167, 77, 23);
INSERT INTO `answer_paper_choice` VALUES (133, 169, 78, 23);
INSERT INTO `answer_paper_choice` VALUES (134, 173, 79, 23);
INSERT INTO `answer_paper_choice` VALUES (135, 177, 80, 23);
INSERT INTO `answer_paper_choice` VALUES (136, 180, 81, 23);
INSERT INTO `answer_paper_choice` VALUES (137, 101, 59, 23);
INSERT INTO `answer_paper_choice` VALUES (138, 103, 60, 23);
INSERT INTO `answer_paper_choice` VALUES (139, 107, 61, 23);
INSERT INTO `answer_paper_choice` VALUES (140, 108, 61, 23);
INSERT INTO `answer_paper_choice` VALUES (141, 110, 62, 23);
INSERT INTO `answer_paper_choice` VALUES (142, 112, 62, 23);
INSERT INTO `answer_paper_choice` VALUES (143, 117, 63, 23);
INSERT INTO `answer_paper_choice` VALUES (144, 120, 64, 23);
INSERT INTO `answer_paper_choice` VALUES (145, 124, 65, 23);
INSERT INTO `answer_paper_choice` VALUES (146, 126, 65, 23);
INSERT INTO `answer_paper_choice` VALUES (147, 129, 66, 23);
INSERT INTO `answer_paper_choice` VALUES (148, 131, 67, 23);
INSERT INTO `answer_paper_choice` VALUES (149, 136, 68, 23);
INSERT INTO `answer_paper_choice` VALUES (150, 137, 69, 23);
INSERT INTO `answer_paper_choice` VALUES (151, 142, 70, 23);
INSERT INTO `answer_paper_choice` VALUES (152, 144, 71, 23);

-- ----------------------------
-- Table structure for answer_question
-- ----------------------------
DROP TABLE IF EXISTS `answer_question`;
CREATE TABLE `answer_question`  (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `question_id` int(11) NULL DEFAULT NULL COMMENT '问卷id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '答卷人id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '答卷时间',
  PRIMARY KEY (`answer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer_question
-- ----------------------------
INSERT INTO `answer_question` VALUES (16, 17, 16, '2021-09-03 12:42:52');
INSERT INTO `answer_question` VALUES (17, 19, 12, '2021-09-03 12:43:42');
INSERT INTO `answer_question` VALUES (18, 17, 12, '2021-09-03 12:43:59');
INSERT INTO `answer_question` VALUES (19, 17, 10, '2021-09-03 15:35:55');
INSERT INTO `answer_question` VALUES (20, 19, 10, '2021-09-03 15:36:11');
INSERT INTO `answer_question` VALUES (21, 17, 11, '2021-09-03 15:38:14');
INSERT INTO `answer_question` VALUES (22, 19, 11, '2021-09-03 15:38:26');
INSERT INTO `answer_question` VALUES (23, 17, 2, '2021-09-03 15:40:34');
INSERT INTO `answer_question` VALUES (24, 19, 2, '2021-09-03 15:40:46');
INSERT INTO `answer_question` VALUES (25, 20, 21, '2021-09-05 14:51:02');
INSERT INTO `answer_question` VALUES (26, 21, 23, '2021-09-05 15:35:39');
INSERT INTO `answer_question` VALUES (27, 17, 23, '2021-09-05 15:36:22');
INSERT INTO `answer_question` VALUES (28, 19, 23, '2021-09-05 15:36:31');

-- ----------------------------
-- Table structure for sys_paper
-- ----------------------------
DROP TABLE IF EXISTS `sys_paper`;
CREATE TABLE `sys_paper`  (
  `paper_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '试题id',
  `question_id` int(11) NULL DEFAULT NULL COMMENT '问卷id',
  `paper_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '试题标题',
  `paper_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '试题类型 1 单选 2 多选 3 单文本 4 多文本',
  `paper_order` int(11) NULL DEFAULT NULL COMMENT '序号',
  PRIMARY KEY (`paper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_paper
-- ----------------------------
INSERT INTO `sys_paper` VALUES (59, 17, '您的性别?', '1', 1);
INSERT INTO `sys_paper` VALUES (60, 17, '你的学历？', '1', 2);
INSERT INTO `sys_paper` VALUES (61, 17, '您的爱好？', '2', 3);
INSERT INTO `sys_paper` VALUES (62, 17, '您的早点通常吃什么？', '2', 4);
INSERT INTO `sys_paper` VALUES (63, 17, '您每月大概消费多少？', '1', 5);
INSERT INTO `sys_paper` VALUES (64, 17, '您期望自己每月花费多少？', '1', 6);
INSERT INTO `sys_paper` VALUES (65, 17, '您通常的购物方式是哪些？', '2', 7);
INSERT INTO `sys_paper` VALUES (66, 19, '您的性别?', '1', 1);
INSERT INTO `sys_paper` VALUES (67, 19, '您目前年级？', '2', 2);
INSERT INTO `sys_paper` VALUES (68, 19, '您有过逃课吗？', '1', 3);
INSERT INTO `sys_paper` VALUES (69, 19, '您是否对老师的教学满意？', '1', 4);
INSERT INTO `sys_paper` VALUES (70, 19, '您的学校师资满意吗？', '1', 5);
INSERT INTO `sys_paper` VALUES (71, 19, '您对学校设置的课程是否满意？', '1', 6);
INSERT INTO `sys_paper` VALUES (72, 20, '您的性别?', '1', 1);
INSERT INTO `sys_paper` VALUES (73, 20, '您所在的企业属于哪种类型的？', '1', 2);
INSERT INTO `sys_paper` VALUES (74, 20, '您对目前的工作满意吗？', '1', 3);
INSERT INTO `sys_paper` VALUES (75, 20, '您对你目前的薪资满意吗？', '1', 4);
INSERT INTO `sys_paper` VALUES (76, 20, '您期望的薪资是多少？', '1', 5);
INSERT INTO `sys_paper` VALUES (77, 21, '您的性别?', '1', 1);
INSERT INTO `sys_paper` VALUES (78, 21, '你目前几年级？', '1', 2);
INSERT INTO `sys_paper` VALUES (79, 21, '您对食堂的饭菜数量满意吗？', '1', 3);
INSERT INTO `sys_paper` VALUES (80, 21, '您对学校食堂工作人员的态度满意吗？', '1', 4);
INSERT INTO `sys_paper` VALUES (81, 21, '您对学校食堂的卫生条件满意吗？', '1', 5);
INSERT INTO `sys_paper` VALUES (82, 21, '请填写您的建议?', '4', 6);

-- ----------------------------
-- Table structure for sys_paper_choice
-- ----------------------------
DROP TABLE IF EXISTS `sys_paper_choice`;
CREATE TABLE `sys_paper_choice`  (
  `chioce_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '选项id',
  `paper_id` int(11) NULL DEFAULT NULL COMMENT '试题id',
  `choice_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '选项标题',
  `choice_order` int(11) NULL DEFAULT NULL COMMENT '序号',
  PRIMARY KEY (`chioce_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 183 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_paper_choice
-- ----------------------------
INSERT INTO `sys_paper_choice` VALUES (101, 59, '男', 1);
INSERT INTO `sys_paper_choice` VALUES (102, 59, '女', 2);
INSERT INTO `sys_paper_choice` VALUES (103, 60, '初中', 1);
INSERT INTO `sys_paper_choice` VALUES (104, 60, '高中', 2);
INSERT INTO `sys_paper_choice` VALUES (105, 60, '大专', 3);
INSERT INTO `sys_paper_choice` VALUES (106, 60, '本科及以上', 4);
INSERT INTO `sys_paper_choice` VALUES (107, 61, '音乐', 1);
INSERT INTO `sys_paper_choice` VALUES (108, 61, '美术', 2);
INSERT INTO `sys_paper_choice` VALUES (109, 61, '体育', 3);
INSERT INTO `sys_paper_choice` VALUES (110, 62, '包子', 1);
INSERT INTO `sys_paper_choice` VALUES (111, 62, '米线', 2);
INSERT INTO `sys_paper_choice` VALUES (112, 62, '豆浆', 3);
INSERT INTO `sys_paper_choice` VALUES (113, 62, '鸡蛋', 4);
INSERT INTO `sys_paper_choice` VALUES (114, 62, '牛奶', 5);
INSERT INTO `sys_paper_choice` VALUES (115, 62, '面包', 6);
INSERT INTO `sys_paper_choice` VALUES (116, 63, '800元', 1);
INSERT INTO `sys_paper_choice` VALUES (117, 63, '1500元', 2);
INSERT INTO `sys_paper_choice` VALUES (118, 63, '2000元', 3);
INSERT INTO `sys_paper_choice` VALUES (119, 63, '3000及以上', 4);
INSERT INTO `sys_paper_choice` VALUES (120, 64, '500元', 1);
INSERT INTO `sys_paper_choice` VALUES (121, 64, '1000元', 2);
INSERT INTO `sys_paper_choice` VALUES (122, 64, '1500元', 3);
INSERT INTO `sys_paper_choice` VALUES (123, 64, '2000元及以上', 4);
INSERT INTO `sys_paper_choice` VALUES (124, 65, '路边小店', 1);
INSERT INTO `sys_paper_choice` VALUES (125, 65, '大型商场', 2);
INSERT INTO `sys_paper_choice` VALUES (126, 65, '淘宝', 3);
INSERT INTO `sys_paper_choice` VALUES (127, 65, '京东', 4);
INSERT INTO `sys_paper_choice` VALUES (128, 65, '实体品牌店', 5);
INSERT INTO `sys_paper_choice` VALUES (129, 66, '男', 1);
INSERT INTO `sys_paper_choice` VALUES (130, 66, '女', 2);
INSERT INTO `sys_paper_choice` VALUES (131, 67, '大一', 1);
INSERT INTO `sys_paper_choice` VALUES (132, 67, '大二', 2);
INSERT INTO `sys_paper_choice` VALUES (133, 67, '大三', 3);
INSERT INTO `sys_paper_choice` VALUES (134, 67, '大四', 4);
INSERT INTO `sys_paper_choice` VALUES (135, 68, '是', 1);
INSERT INTO `sys_paper_choice` VALUES (136, 68, '否', 2);
INSERT INTO `sys_paper_choice` VALUES (137, 69, '非常满意', 1);
INSERT INTO `sys_paper_choice` VALUES (138, 69, '满意', 2);
INSERT INTO `sys_paper_choice` VALUES (139, 69, '不满意', 3);
INSERT INTO `sys_paper_choice` VALUES (140, 69, '非常不满意', 4);
INSERT INTO `sys_paper_choice` VALUES (141, 70, '满意', 1);
INSERT INTO `sys_paper_choice` VALUES (142, 70, '一般', 2);
INSERT INTO `sys_paper_choice` VALUES (143, 70, '不满意', 3);
INSERT INTO `sys_paper_choice` VALUES (144, 71, '非常满意', 1);
INSERT INTO `sys_paper_choice` VALUES (145, 71, '满意', 2);
INSERT INTO `sys_paper_choice` VALUES (146, 71, '一般', 3);
INSERT INTO `sys_paper_choice` VALUES (147, 71, '不满意', 4);
INSERT INTO `sys_paper_choice` VALUES (148, 72, '男', 1);
INSERT INTO `sys_paper_choice` VALUES (149, 72, '女', 2);
INSERT INTO `sys_paper_choice` VALUES (150, 73, '上市公司', 1);
INSERT INTO `sys_paper_choice` VALUES (151, 73, '大型国企', 2);
INSERT INTO `sys_paper_choice` VALUES (152, 73, '事业单位', 3);
INSERT INTO `sys_paper_choice` VALUES (153, 73, '国家机关', 4);
INSERT INTO `sys_paper_choice` VALUES (154, 73, '私人企业', 5);
INSERT INTO `sys_paper_choice` VALUES (155, 74, '非常满意', 1);
INSERT INTO `sys_paper_choice` VALUES (156, 74, '满意', 2);
INSERT INTO `sys_paper_choice` VALUES (157, 74, '一般', 3);
INSERT INTO `sys_paper_choice` VALUES (158, 74, '不满意', 4);
INSERT INTO `sys_paper_choice` VALUES (159, 75, '非常满意', 1);
INSERT INTO `sys_paper_choice` VALUES (160, 75, '满意', 2);
INSERT INTO `sys_paper_choice` VALUES (161, 75, '一般', 3);
INSERT INTO `sys_paper_choice` VALUES (162, 75, '不满意', 4);
INSERT INTO `sys_paper_choice` VALUES (163, 76, '3000元', 1);
INSERT INTO `sys_paper_choice` VALUES (164, 76, '5000元', 2);
INSERT INTO `sys_paper_choice` VALUES (165, 76, '8000元', 3);
INSERT INTO `sys_paper_choice` VALUES (166, 76, '10000及以上', 4);
INSERT INTO `sys_paper_choice` VALUES (167, 77, '男', 1);
INSERT INTO `sys_paper_choice` VALUES (168, 77, '女', 2);
INSERT INTO `sys_paper_choice` VALUES (169, 78, '大一', 1);
INSERT INTO `sys_paper_choice` VALUES (170, 78, '大二', 2);
INSERT INTO `sys_paper_choice` VALUES (171, 78, '大三', 3);
INSERT INTO `sys_paper_choice` VALUES (172, 78, '大四', 4);
INSERT INTO `sys_paper_choice` VALUES (173, 79, '非常满意', 1);
INSERT INTO `sys_paper_choice` VALUES (174, 79, '满意', 2);
INSERT INTO `sys_paper_choice` VALUES (175, 79, '一般', 3);
INSERT INTO `sys_paper_choice` VALUES (176, 79, '不满意', 4);
INSERT INTO `sys_paper_choice` VALUES (177, 80, '非常满意', 1);
INSERT INTO `sys_paper_choice` VALUES (178, 80, '满意', 2);
INSERT INTO `sys_paper_choice` VALUES (179, 80, '不满意', 3);
INSERT INTO `sys_paper_choice` VALUES (180, 81, '非常满意', 1);
INSERT INTO `sys_paper_choice` VALUES (181, 81, '满意', 2);
INSERT INTO `sys_paper_choice` VALUES (182, 81, '不满意', 3);

-- ----------------------------
-- Table structure for sys_question
-- ----------------------------
DROP TABLE IF EXISTS `sys_question`;
CREATE TABLE `sys_question`  (
  `question_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '问卷id',
  `question_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '问卷标题',
  `question_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '问卷描述',
  `question_img` varbinary(255) NULL DEFAULT NULL COMMENT '图片',
  `question_order` int(11) NULL DEFAULT NULL COMMENT '序号',
  `question_status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '0：停用 1：启用',
  PRIMARY KEY (`question_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_question
-- ----------------------------
INSERT INTO `sys_question` VALUES (17, '大学生消费观调查', '大学生消费观调查大学生消费观调查大学生消费观调查大学生消费观调查大学生消费观调查大学生消费观调查大学生消费观调查大学生消费观调查大学生消费观调查', 0x2F737461746963496D672F65653734356561312D343037662D343636382D626232362D6166616436323266646462322E6A7067, 1, '1');
INSERT INTO `sys_question` VALUES (19, '大学生教学满意度调查', '大学生教学满意度调查大学生教学满意度调查大学生教学满意度调查大学生教学满意度调查大学生教学满意度调查大学生教学满意度调查', 0x2F737461746963496D672F35373464323563352D353165632D346636372D616331342D3966333430643766303339302E6A7067, 2, '1');
INSERT INTO `sys_question` VALUES (20, '员工工资满意度调查', '调查员工工资的满意度，希望大家积极配合、参与；', 0x2F737461746963496D672F39643138356434372D326662382D346233352D623136612D3961323766656262616239612E6A7067, 3, '1');
INSERT INTO `sys_question` VALUES (21, '学校食堂满意度调查', '学校食堂满意度调查。希望大家积极参与；', 0x2F737461746963496D672F66376563636132612D306235342D346333392D623866642D6234616261393832366637642E6A7067, 4, '1');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录账户',
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录密码',
  `phone` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '邮箱',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '用户状态 1：启用 0：停用',
  `is_admin` tinyint(4) NULL DEFAULT NULL COMMENT '是否是管理员 1：是 0：否',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '111', '18787171906', '731457003@qq.com', 1, 1);
INSERT INTO `sys_user` VALUES (9, 'lcy144', '1234', '18687116223', '3501754007@qq.com', 1, 0);
INSERT INTO `sys_user` VALUES (10, 'lcy2', '1234', '18687116223', '3501754007@qq.com', 1, NULL);
INSERT INTO `sys_user` VALUES (11, 'lcy3', '1234', '18687116223', '3501754007@qq.com', 1, NULL);
INSERT INTO `sys_user` VALUES (12, 'lcy1', '1234', '18687116223', '3501754007@qq.com', 1, NULL);
INSERT INTO `sys_user` VALUES (13, 'test', '444', '18687116223', '3501754007@qq.com', 1, NULL);
INSERT INTO `sys_user` VALUES (14, 'test2', '1234', '18687116223', '3501754007@qq.com', 1, NULL);
INSERT INTO `sys_user` VALUES (15, 'admin1', '111', NULL, NULL, 0, NULL);
INSERT INTO `sys_user` VALUES (16, 'system', '1234', NULL, NULL, 0, NULL);
INSERT INTO `sys_user` VALUES (17, 'test1', '111', NULL, NULL, 1, NULL);
INSERT INTO `sys_user` VALUES (18, 'test123', '1234', '1906', '3501754007@qq.com', 1, NULL);
INSERT INTO `sys_user` VALUES (20, 'test3', '1234', '18787171906', '3501754007@qq.com', 1, NULL);
INSERT INTO `sys_user` VALUES (21, 'test11', '1234', NULL, NULL, 1, NULL);
INSERT INTO `sys_user` VALUES (22, 'test1234', '111', '18787171909', '3501754007@qq.com', 1, NULL);
INSERT INTO `sys_user` VALUES (23, 'lcy111', '111', NULL, NULL, 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;
