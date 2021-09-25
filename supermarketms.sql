SET NAMES utf8mb4;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NULL DEFAULT NULL,
  `name` varchar(255) NULL DEFAULT NULL,
  `version` varchar(255) NULL DEFAULT NULL,
  `price` bigint(20) NULL DEFAULT NULL,
  `img` varchar(255) NULL DEFAULT NULL,
  `number` bigint(20) NULL DEFAULT NULL,
  `info` varchar(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);
-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '华为', '华为 HUAWEI P30', '8GB+64GB', 3288, 'p30_1', 21, '华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片全面屏屏内指纹版手机8GB 64GB天空之境');
INSERT INTO `product` VALUES (2, '华为', '华为 HUAWEI P30', '8GB+128GB', 3688, 'p30_1', 19, '华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片全面屏屏内指纹版手机8GB+128GB天空之境');
INSERT INTO `product` VALUES (3, '华为', '华为 HUAWEI P30', '8GB+256GB', 3988, 'p30_1', 22, '华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片全面屏屏内指纹版');
INSERT INTO `product` VALUES (4, '华为', '华为 HUAWEI P30 Pro', '8GB+256GB', 4788, 'p30pro_1', 11, '华为 HUAWEI P30 Pro 超感光徕卡四摄10倍混合变焦麒麟980芯片屏内指纹 8GB+256GB天空之境');
INSERT INTO `product` VALUES (5, '华为', '华为 HUAWEI P30', '8GB+128GB', 3288, 'p30_2', 23, '华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片全面屏屏内指纹版手机8GB+128GB极光色');
INSERT INTO `product` VALUES (6, '华为', '华为 HUAWEI Mate 40 Pro', '8GB+256GB', 6999, 'mate40pro_2', 11, '华为 HUAWEI Mate 40 Pro麒麟9000 SoC芯片 超感知徕卡电影影像 有线无线双超级快充8GB+256GB秋日胡杨');
INSERT INTO `product` VALUES (7, '华为', '华为 HUAWEI P30 Pro', '8GB+256GB', 4288, 'p30pro_2', 7, '华为 HUAWEI P30 Pro 超感光徕卡四摄10倍混合变焦麒麟980芯片屏内指纹 8GB+256GB极光色');
INSERT INTO `product` VALUES (8, '华为', '华为 HUAWEI P40', '8GB+128GB', 4488, 'p40_1', 26, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦 8GB+128GB零度白');
INSERT INTO `product` VALUES (9, '华为', '华为 HUAWEI P40', '8GB+256GB', 4988, 'p40_2', 22, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦 8GB+256GB晨曦金');
INSERT INTO `product` VALUES (10, '华为', '华为 HUAWEI P40', '8GB+128GB', 4488, 'p40_2', 11, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦 8GB+128GB晨曦金');
INSERT INTO `product` VALUES (11, '华为', '华为 HUAWEI P40 Pro', '8GB+256GB', 6488, 'p40pro_1', 10, '华为 HUAWEI P40 Pro 麒麟990 5G SoC芯片 5000万超感知徕卡四摄 50倍数字变焦 8GB+256GB亮黑色');
INSERT INTO `product` VALUES (12, '华为', '华为 HUAWEI P40 Pro', '8GB+512GB', 7388, 'p40pro_1', 9, '华为 HUAWEI P40 Pro 麒麟990 5G SoC芯片 5000万超感知徕卡四摄 50倍数字变焦 8GB+512GB亮黑色');
INSERT INTO `product` VALUES (13, '华为', '华为 HUAWEI P40 Pro', '8GB+512GB', 7388, 'p40pro_2', 12, '华为 HUAWEI P40 Pro 麒麟990 5G SoC芯片 5000万超感知徕卡四摄 50倍数字变焦 8GB+512GB深海蓝');
INSERT INTO `product` VALUES (14, '华为', '华为 HUAWEI P40 Pro', '8GB+256GB', 6488, 'p40pro_3', 10, '华为 HUAWEI P40 Pro 麒麟990 5G SoC芯片 5000万超感知徕卡四摄 50倍数字变焦 8GB+256GB冰霜银');
INSERT INTO `product` VALUES (15, '华为', '华为 HUAWEI P40 Pro+', '8GB+256GB', 7988, 'p40pro+_1', 5, '华为 HUAWEI P40 Pro+ 麒麟990 5G SoC芯片 5000万超感知徕卡五摄 100倍双目变焦 8GB+256GB陶瓷黑');
INSERT INTO `product` VALUES (16, '华为', '华为 HUAWEI Mate 30', '8GB+128GB', 4999, 'mate30_1', 22, '华为 HUAWEI Mate 30 5G 麒麟990 4000万超感光徕卡影像双超级快充8GB+128GB亮黑色');
INSERT INTO `product` VALUES (17, '华为', '华为 HUAWEI Mate 30', '8GB+128GB', 4999, 'mate30_2', 20, '华为 HUAWEI Mate 30 5G 麒麟990 4000万超感光徕卡影像双超级快充8GB+128GB丹霞橙');
INSERT INTO `product` VALUES (18, '华为', '华为 HUAWEI Mate 30 Pro', '8GB+128GB', 5899, 'mate30pro_1', 18, '华为 HUAWEI Mate 30 Pro 5G 麒麟990 OLED环幕屏双4000万徕卡电影四摄8GB+128GB丹霞橙');
INSERT INTO `product` VALUES (19, '华为', '华为 HUAWEI Mate 30 Pro', '8GB+128GB', 5899, 'mate30pro_2', 12, '华为 HUAWEI Mate 30 Pro 5G 麒麟990 OLED环幕屏双4000万徕卡电影四摄8GB+128GB罗兰紫');
INSERT INTO `product` VALUES (20, '华为', '华为 HUAWEI Mate 40 Pro', '8GB+256GB', 6999, 'mate40pro_1', 15, '华为 HUAWEI Mate 40 Pro麒麟9000 SoC芯片 超感知徕卡电影影像 有线无线双超级快充8GB+256GB亮黑色');
INSERT INTO `product` VALUES (21, '苹果', '苹果 Apple iPhone 11', '64GB', 4199, '11_1', 45, 'Apple iPhone 11 (A2223) 64GB 绿色');
INSERT INTO `product` VALUES (22, '苹果', '苹果 Apple iPhone 11', '128GB', 4599, '11_1', 42, 'Apple iPhone 11 (A2223) 128GB 绿色');
INSERT INTO `product` VALUES (23, '苹果', '苹果 Apple iPhone 11', '128GB', 4599, '11_2', 23, 'Apple iPhone 11 (A2223) 128GB 白色');
INSERT INTO `product` VALUES (24, '苹果', '苹果 Apple iPhone 11', '128GB', 4599, '11_3', 22, 'Apple iPhone 11 (A2223) 128GB 红色');
INSERT INTO `product` VALUES (25, '苹果', '苹果 Apple iPhone 11', '256GB', 5399, '11_3', 11, 'Apple iPhone 11 (A2223) 256GB 红色');
INSERT INTO `product` VALUES (26, '苹果', 'Apple iPhone 11 Pro', '64GB', 6899, '11pro_1', 12, 'Apple iPhone 11 Pro (A2217) 64GB 暗夜绿色');
INSERT INTO `product` VALUES (27, '苹果', 'Apple iPhone 11 Pro', '256GB', 8199, '11pro_1', 13, 'Apple iPhone 11 Pro (A2217) 256GB 暗夜绿色');
INSERT INTO `product` VALUES (28, '苹果', 'Apple iPhone 11 Pro', '512GB', 9999, '11pro_1', 12, 'Apple iPhone 11 Pro (A2217) 512GB 暗夜绿色');
INSERT INTO `product` VALUES (29, '苹果', 'Apple iPhone 11 Pro', '512GB', 9999, '11pro_2', 11, 'Apple iPhone 11 Pro (A2217) 512GB 银色');
INSERT INTO `product` VALUES (30, '苹果', 'Apple iPhone 11 Pro', '256GB', 8199, '11pro_2', 10, 'Apple iPhone 11 Pro (A2217) 256GB 银色');
INSERT INTO `product` VALUES (31, '苹果', 'Apple iPhone 11 Pro Max', '256GB', 8899, '11promax_1', 21, 'Apple iPhone 11 Pro Max (A2220) 256GB 暗夜绿色');
INSERT INTO `product` VALUES (32, '苹果', 'Apple iPhone 11 Pro Max', '64GB', 7599, '11promax_1', 18, 'Apple iPhone 11 Pro Max (A2220) 64GB 暗夜绿色');
INSERT INTO `product` VALUES (33, '苹果', 'Apple iPhone 12', '64GB', 6299, '12_1', 22, 'Apple iPhone 12 (A2404) 64GB 黑色');
INSERT INTO `product` VALUES (34, '苹果', 'Apple iPhone 12', '128GB', 6799, '12_1', 23, 'Apple iPhone 12 (A2404) 128GB 黑色');
INSERT INTO `product` VALUES (35, '苹果', 'Apple iPhone 12', '128GB', 6799, '12_2', 33, 'Apple iPhone 12 (A2404) 128GB 白色');
INSERT INTO `product` VALUES (36, '苹果', 'Apple iPhone 12', '256GB', 7599, '12_2', 22, 'Apple iPhone 12 (A2404) 256GB 白色');
INSERT INTO `product` VALUES (37, '苹果', 'Apple iPhone 12 Pro', '128GB', 8499, '12pro_1', 21, 'Apple iPhone 12 Pro (A2408) 128GB 银色');
INSERT INTO `product` VALUES (38, '苹果', 'Apple iPhone 12 Pro', '256GB', 9299, '12pro_1', 14, 'Apple iPhone 12 Pro (A2408) 256GB 银色');
INSERT INTO `product` VALUES (39, '苹果', 'Apple iPhone 12 Pro', '256GB', 9299, '12pro_2', 18, 'Apple iPhone 12 Pro (A2408) 256GB 金色');
INSERT INTO `product` VALUES (40, '苹果', 'Apple iPhone 12 Pro', '128GB', 8499, '12pro_2', 23, 'Apple iPhone 12 Pro (A2408) 256GB 金色');
INSERT INTO `product` VALUES (41, '苹果', 'Apple iPhone 12 Pro Max', '128GB', 9299, '12promax_1', 22, 'Apple iPhone 12 Pro Max (A2412) 128GB 海蓝色');
INSERT INTO `product` VALUES (42, '苹果', 'Apple iPhone 12 Pro Max', '256GB', 10099, '12promax_1', 11, 'Apple iPhone 12 Pro Max (A2412) 256GB 海蓝色');
INSERT INTO `product` VALUES (43, '苹果', 'Apple iPhone 12 Pro Max', '256GB', 10099, '12promax_2', 10, 'Apple iPhone 12 Pro Max (A2412) 256GB 金色');
INSERT INTO `product` VALUES (44, '苹果', 'Apple iPhone 12 Pro Max', '128GB', 9299, '12promax_2', 15, 'Apple iPhone 12 Pro Max (A2412) 128GB 金色');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NULL DEFAULT NULL,
  `username` varchar(255)  NULL DEFAULT NULL,
  `password` varchar(255) NULL DEFAULT NULL,
  `sex` varchar(255) NULL DEFAULT NULL,
  `age` int(10) NULL DEFAULT NULL,
  `phone` varchar(255)  NULL DEFAULT NULL,
  `type` varchar(255) NULL DEFAULT NULL,
  `address` varchar(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) 
);
-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '马宝国', 'mabaoguo', '666', '男', 19, '18584290926', '管理员', '中国');
INSERT INTO `user` VALUES (2, '熊二', 'xiongda', '666', '男', 18, '13652548545', '普通用户', '熊出没');
INSERT INTO `user` VALUES (3, '喜羊羊', 'xiyangyan', '666', '男', 20, '15452545454', '普通用户', '青青草原');
INSERT INTO `user` VALUES (4, '吉吉', 'jiji', '666', '男', 19, '13652548545', '普通用户', '熊出没');
INSERT INTO `user` VALUES (5, '霉霉', 'meimei', '666', '女', 29, '16548978545', '普通用户', '美国');
INSERT INTO `user` VALUES (6, '唐尼', 'tangni', '666', '男', 45, '15487542545', '普通用户', '美国');
INSERT INTO `user` VALUES (7, '美羊羊', 'meiyangyang', '666', '女', 18, '12548754524', '普通用户', '青青草原');
INSERT INTO `user` VALUES (8, '澜', 'lan', '666', '男', 18, '15487525454', '普通用户', '王者荣耀');
INSERT INTO `user` VALUES (9, '蔡文姬', 'caiwenji', '666', '女', 15, '15487963254', '普通用户', '王者荣耀');
INSERT INTO `user` VALUES (10, '李白', 'libai', '666', '男', 18, '16587954241', '普通用户', '王者荣耀');
INSERT INTO `user` VALUES (11, '王昭君', 'wangzhaojun', '666', '女', 18, '12547854587', '普通用户', '王者荣耀');
INSERT INTO `user` VALUES (12, '大乔', 'daqiao', '666', '女', 18, '12457845452', '普通用户', '王者荣耀');
INSERT INTO `user` VALUES (13, '孙策', 'sunce', '666', '男', 18, '12547896321', '普通用户', '王者荣耀');
INSERT INTO `user` VALUES (14, '小乔', 'xiaoqiao', '666', '女', 18, '12547859654', '普通用户', '王者荣耀');
INSERT INTO `user` VALUES (15, '霞', 'xia', '666', '男', 18, '15789654215', '普通用户', '英雄联盟');
INSERT INTO `user` VALUES (16, '洛', 'luo', '666', '女', 18, '15465232147', '普通用户', '英雄联盟');
INSERT INTO `user` VALUES (17, '蛮王', 'manwang', '666', '男', 18, '15498745424', '普通用户', '英雄联盟');
INSERT INTO `user` VALUES (18, '艾希', 'aixi', '666', '女', 18, '15487545421', '普通用户', '英雄联盟');
INSERT INTO `user` VALUES (19, '小舞', 'xiaowu', '666', '女', 18, '12546587458', '普通用户', '斗罗大陆');

DROP TABLE IF EXISTS `goodstable`;
CREATE TABLE `goodstable`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(255) NULL DEFAULT NULL,
  `goprice` double(10, 2) NULL DEFAULT NULL,
  `grprice` double(10, 2) NULL DEFAULT NULL,
  `gstore` int(255) NULL DEFAULT NULL,
  `logoImage` varchar(255) NULL DEFAULT NULL,
  `gpicture` varchar(255) NULL DEFAULT NULL,
  `goodstype_id` int(11) NULL DEFAULT NULL,
  `typename` varchar(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) 
);
-- ----------------------------
-- Records of goodstable
-- ----------------------------
INSERT INTO `goodstable` VALUES (1, '苹果', 8.00, 8.00, 495, NULL, 'apple1.jpg', 1, '水果');
INSERT INTO `goodstable` VALUES (2, '快乐水', 4.50, 4.50, 999, NULL, 'coke1.jpg', 2, '饮料');

-- ----------------------------
-- Table structure for goodstype
-- ----------------------------
DROP TABLE IF EXISTS `goodstype`;
CREATE TABLE `goodstype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) 
);
-- ----------------------------
-- Records of goodstype
-- ----------------------------
INSERT INTO `goodstype` VALUES (1, '水果');
INSERT INTO `goodstype` VALUES (2, '饮料');
