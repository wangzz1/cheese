/*
Navicat MySQL Data Transfer

Source Server         : testdjango
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : cheeseonline

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-05-06 15:44:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES ('2', '机构账号');
INSERT INTO `auth_group` VALUES ('1', '网站管理员');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES ('1', '1', '25');
INSERT INTO `auth_group_permissions` VALUES ('2', '1', '26');
INSERT INTO `auth_group_permissions` VALUES ('3', '1', '27');
INSERT INTO `auth_group_permissions` VALUES ('4', '1', '28');
INSERT INTO `auth_group_permissions` VALUES ('5', '1', '29');
INSERT INTO `auth_group_permissions` VALUES ('6', '1', '30');
INSERT INTO `auth_group_permissions` VALUES ('7', '1', '31');
INSERT INTO `auth_group_permissions` VALUES ('8', '1', '32');
INSERT INTO `auth_group_permissions` VALUES ('9', '1', '33');
INSERT INTO `auth_group_permissions` VALUES ('10', '1', '37');
INSERT INTO `auth_group_permissions` VALUES ('11', '1', '38');
INSERT INTO `auth_group_permissions` VALUES ('12', '1', '39');
INSERT INTO `auth_group_permissions` VALUES ('13', '1', '40');
INSERT INTO `auth_group_permissions` VALUES ('14', '1', '41');
INSERT INTO `auth_group_permissions` VALUES ('15', '1', '42');
INSERT INTO `auth_group_permissions` VALUES ('16', '1', '45');
INSERT INTO `auth_group_permissions` VALUES ('17', '1', '49');
INSERT INTO `auth_group_permissions` VALUES ('18', '1', '62');
INSERT INTO `auth_group_permissions` VALUES ('19', '1', '63');
INSERT INTO `auth_group_permissions` VALUES ('20', '1', '64');
INSERT INTO `auth_group_permissions` VALUES ('21', '1', '65');
INSERT INTO `auth_group_permissions` VALUES ('22', '1', '69');
INSERT INTO `auth_group_permissions` VALUES ('23', '1', '71');
INSERT INTO `auth_group_permissions` VALUES ('24', '1', '72');
INSERT INTO `auth_group_permissions` VALUES ('25', '1', '76');
INSERT INTO `auth_group_permissions` VALUES ('35', '2', '25');
INSERT INTO `auth_group_permissions` VALUES ('36', '2', '26');
INSERT INTO `auth_group_permissions` VALUES ('37', '2', '27');
INSERT INTO `auth_group_permissions` VALUES ('38', '2', '28');
INSERT INTO `auth_group_permissions` VALUES ('39', '2', '29');
INSERT INTO `auth_group_permissions` VALUES ('40', '2', '30');
INSERT INTO `auth_group_permissions` VALUES ('41', '2', '31');
INSERT INTO `auth_group_permissions` VALUES ('26', '2', '32');
INSERT INTO `auth_group_permissions` VALUES ('27', '2', '33');
INSERT INTO `auth_group_permissions` VALUES ('28', '2', '40');
INSERT INTO `auth_group_permissions` VALUES ('34', '2', '41');
INSERT INTO `auth_group_permissions` VALUES ('30', '2', '42');
INSERT INTO `auth_group_permissions` VALUES ('33', '2', '62');
INSERT INTO `auth_group_permissions` VALUES ('31', '2', '63');
INSERT INTO `auth_group_permissions` VALUES ('29', '2', '64');
INSERT INTO `auth_group_permissions` VALUES ('32', '2', '72');

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('11', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('13', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('14', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('16', 'Can add 用户信息', '6', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('17', 'Can change 用户信息', '6', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete 用户信息', '6', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 邮箱验证码', '7', 'add_emailverfiyrecord');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 邮箱验证码', '7', 'change_emailverfiyrecord');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 邮箱验证码', '7', 'delete_emailverfiyrecord');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 轮播图', '8', 'add_banner');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 轮播图', '8', 'change_banner');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 轮播图', '8', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 课程', '9', 'add_course');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 课程', '9', 'change_course');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 课程', '9', 'delete_course');
INSERT INTO `auth_permission` VALUES ('28', 'Can add 章节', '10', 'add_lesson');
INSERT INTO `auth_permission` VALUES ('29', 'Can change 章节', '10', 'change_lesson');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete 章节', '10', 'delete_lesson');
INSERT INTO `auth_permission` VALUES ('31', 'Can add 视频', '11', 'add_video');
INSERT INTO `auth_permission` VALUES ('32', 'Can change 视频', '11', 'change_video');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete 视频', '11', 'delete_video');
INSERT INTO `auth_permission` VALUES ('34', 'Can add 城市', '12', 'add_citydict');
INSERT INTO `auth_permission` VALUES ('35', 'Can change 城市', '12', 'change_citydict');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete 城市', '12', 'delete_citydict');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 课程机构', '13', 'add_courseorg');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 课程机构', '13', 'change_courseorg');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 课程机构', '13', 'delete_courseorg');
INSERT INTO `auth_permission` VALUES ('40', 'Can add 教师', '14', 'add_teacher');
INSERT INTO `auth_permission` VALUES ('41', 'Can change 教师', '14', 'change_teacher');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete 教师', '14', 'delete_teacher');
INSERT INTO `auth_permission` VALUES ('43', 'Can add 课程评论', '15', 'add_coursecomments');
INSERT INTO `auth_permission` VALUES ('44', 'Can change 课程评论', '15', 'change_coursecomments');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete 课程评论', '15', 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES ('46', 'Can add 用户收藏', '16', 'add_userfavorite');
INSERT INTO `auth_permission` VALUES ('47', 'Can change 用户收藏', '16', 'change_userfavorite');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete 用户收藏', '16', 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 用户消息', '17', 'add_usermessage');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 用户消息', '17', 'change_usermessage');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 用户消息', '17', 'delete_usermessage');
INSERT INTO `auth_permission` VALUES ('52', 'Can add 用户课程', '18', 'add_usercourse');
INSERT INTO `auth_permission` VALUES ('53', 'Can change 用户课程', '18', 'change_usercourse');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete 用户课程', '18', 'delete_usercourse');
INSERT INTO `auth_permission` VALUES ('55', 'Can add 用户博客', '19', 'add_userblog');
INSERT INTO `auth_permission` VALUES ('56', 'Can change 用户博客', '19', 'change_userblog');
INSERT INTO `auth_permission` VALUES ('57', 'Can delete 用户博客', '19', 'delete_userblog');
INSERT INTO `auth_permission` VALUES ('58', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('59', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('60', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('61', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('62', 'Can view 课程', '9', 'view_course');
INSERT INTO `auth_permission` VALUES ('63', 'Can view 章节', '10', 'view_lesson');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 视频', '11', 'view_video');
INSERT INTO `auth_permission` VALUES ('65', 'Can view 课程评论', '15', 'view_coursecomments');
INSERT INTO `auth_permission` VALUES ('66', 'Can view 用户博客', '19', 'view_userblog');
INSERT INTO `auth_permission` VALUES ('67', 'Can view 用户课程', '18', 'view_usercourse');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 用户收藏', '16', 'view_userfavorite');
INSERT INTO `auth_permission` VALUES ('69', 'Can view 用户消息', '17', 'view_usermessage');
INSERT INTO `auth_permission` VALUES ('70', 'Can view 城市', '12', 'view_citydict');
INSERT INTO `auth_permission` VALUES ('71', 'Can view 课程机构', '13', 'view_courseorg');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 教师', '14', 'view_teacher');
INSERT INTO `auth_permission` VALUES ('73', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('74', 'Can view 轮播图', '8', 'view_banner');
INSERT INTO `auth_permission` VALUES ('75', 'Can view 邮箱验证码', '7', 'view_emailverfiyrecord');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 用户信息', '6', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('77', 'Can add Bookmark', '20', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('78', 'Can change Bookmark', '20', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete Bookmark', '20', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('80', 'Can add User Setting', '21', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('81', 'Can change User Setting', '21', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('82', 'Can delete User Setting', '21', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('83', 'Can add User Widget', '22', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('84', 'Can change User Widget', '22', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('85', 'Can delete User Widget', '22', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('86', 'Can view Bookmark', '20', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('87', 'Can view User Setting', '21', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('88', 'Can view User Widget', '22', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('89', 'Can add log entry', '23', 'add_log');
INSERT INTO `auth_permission` VALUES ('90', 'Can change log entry', '23', 'change_log');
INSERT INTO `auth_permission` VALUES ('91', 'Can delete log entry', '23', 'delete_log');
INSERT INTO `auth_permission` VALUES ('92', 'Can view log entry', '23', 'view_log');
INSERT INTO `auth_permission` VALUES ('93', 'Can add captcha store', '24', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('94', 'Can change captcha store', '24', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete captcha store', '24', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('96', 'Can view captcha store', '24', 'view_captchastore');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('105', 'KATP', 'katp', 'bde25742ead7cb78ce17dbdbbb843ec42d195314', '2018-05-06 12:03:48.575000');
INSERT INTO `captcha_captchastore` VALUES ('106', 'CUZK', 'cuzk', '72e20a208810508ca0761186dbdf97c57973d270', '2018-05-06 12:04:18.704000');
INSERT INTO `captcha_captchastore` VALUES ('107', 'PGIS', 'pgis', '368fdc713e033622c7b39b981aeca11210f0deb5', '2018-05-06 12:04:19.671000');

-- ----------------------------
-- Table structure for courses_course
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `degree` varchar(2) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_org_id` int(11),
  `tag` varchar(20) NOT NULL,
  `teacher_id` int(11),
  `teacher_tell` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_11456c5a` (`course_org_id`),
  KEY `courses_course_d9614d40` (`teacher_id`),
  CONSTRAINT `courses_cour_course_org_id_4d2c4aab_fk_organization_courseorg_id` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`),
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
INSERT INTO `courses_course` VALUES ('1', '小学数学', '小学数学', '小学数学小学数学', 'cj', '0', '8', '0', 'courses/2018/05/xiaoxueshuxue.jpg', '12', '2018-04-30 12:03:00.000000', '2', '数学', '1', '欢迎新同学~');
INSERT INTO `courses_course` VALUES ('2', '小学语文', '小学语文', '鹅鹅鹅，曲项向天歌，白毛浮绿水，红掌拨清波', 'cj', '10', '3', '1', 'courses/2018/05/testimg.png', '41', '2018-05-02 23:54:00.000000', '2', '', null, '');
INSERT INTO `courses_course` VALUES ('3', '小学英语', '小学英语', '小学英语小学英语小学英语', 'cj', '20', '6', '7', 'courses/2018/05/testimg_0zCKxkj.png', '6', '2018-05-02 23:59:00.000000', '2', '', null, '');
INSERT INTO `courses_course` VALUES ('4', '思想品德', '思想品德', '思想品德思想品德思想品德', 'cj', '20', '5', '1', 'courses/2018/05/testimg_gjLSWUX.png', '3', '2018-05-02 23:59:00.000000', '2', '', null, '');
INSERT INTO `courses_course` VALUES ('5', '中学物理', '中学物理中学物理中学物理', '中学物理中学物理中学物理', 'zj', '30', '2', '0', 'courses/2018/05/testimg_JwwanAp.png', '0', '2018-05-03 00:00:00.000000', '2', '', null, '');
INSERT INTO `courses_course` VALUES ('6', '中学化学', '中学化学', '中学化学中学化学中学化学', 'zj', '40', '0', '0', 'courses/2018/05/testimg_taiKWpf.png', '0', '2018-05-03 00:01:00.000000', '2', '', null, '');
INSERT INTO `courses_course` VALUES ('7', '中学历史', '中学历史', '中学历史中学历史中学历史', 'zj', '40', '0', '0', 'courses/2018/05/testimg_diRWwhu.png', '0', '2018-05-03 00:01:00.000000', '2', '', null, '');
INSERT INTO `courses_course` VALUES ('8', '中学政治', '中学政治', '中学政治中学政治中学政治', 'zj', '60', '0', '0', 'courses/2018/05/testimg_xoncOwN.png', '0', '2018-05-03 00:02:00.000000', '2', '', null, '');
INSERT INTO `courses_course` VALUES ('9', '中学地理', '中学地理', '中学地理中学地理中学地理', 'zj', '50', '0', '0', 'courses/2018/05/testimg_XDw3pSD.png', '0', '2018-05-03 00:02:00.000000', '2', '', null, '');
INSERT INTO `courses_course` VALUES ('10', '中学生物', '中学生物', '中学生物中学生物中学生物', 'zj', '50', '0', '0', 'courses/2018/05/testimg_hh8CoKv.png', '0', '2018-05-03 00:02:00.000000', '2', '', null, '');
INSERT INTO `courses_course` VALUES ('11', 'TED精选演讲', 'TED精选演讲', 'TED精选演讲TED精选演讲TED精选演讲', 'zj', '40', '112', '20', 'courses/2018/05/uF.jpg', '333', '2018-05-03 00:03:00.000000', '1', '电视节目', null, '');
INSERT INTO `courses_course` VALUES ('12', '超级演说家第一季', '超级演说家第一季', '超级演说家第一季超级演说家第一季超级演说家第一季', 'zj', '80', '18', '0', 'courses/2018/05/yanshuo.jpg', '239', '2018-05-03 00:04:00.000000', '3', '电视节目', null, '');
INSERT INTO `courses_course` VALUES ('13', '微积分', '微积分', '微积分微积分微积分', 'gj', '100', '20', '0', 'courses/2018/05/testimg_uglptGH.png', '0', '2018-05-03 00:06:00.000000', '2', '大学', null, '');
INSERT INTO `courses_course` VALUES ('14', '线性代数', '线性代数', '线性代数线性代数线性代数', 'gj', '80', '3', '0', 'courses/2018/05/testimg_l4MM7TQ.png', '30', '2018-05-03 00:06:00.000000', '2', '大学', null, '');
INSERT INTO `courses_course` VALUES ('15', '泛函分析', '泛函分析', '泛函分析泛函分析泛函分析', 'gj', '30', '0', '0', 'courses/2018/05/testimg_DZuymid.png', '30', '2018-05-03 00:07:00.000000', '2', '大学', null, '');
INSERT INTO `courses_course` VALUES ('16', '量子力学', '量子力学', '量子力学量子力学量子力学', 'gj', '40', '0', '0', 'courses/2018/05/testimg_kQA5yJ8.png', '38', '2018-05-03 00:07:00.000000', '2', '', null, '');
INSERT INTO `courses_course` VALUES ('17', 'TED与人工智能', 'TED与人工智能', 'TED与人工智能TED与人工智能', 'zj', '0', '6', '0', 'courses/2018/05/ttt.jpg', '7', '2018-05-03 22:19:00.000000', '1', 'TED', null, 'TED');

-- ----------------------------
-- Table structure for courses_lesson
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
INSERT INTO `courses_lesson` VALUES ('1', '2013-08-01期 林志颖未婚有子遭吐槽', '2018-05-03 11:50:00.000000', '12');
INSERT INTO `courses_lesson` VALUES ('2', '2013-08-08期 乐嘉下跪', '2018-05-03 11:51:00.000000', '12');
INSERT INTO `courses_lesson` VALUES ('3', '2013-08-15 鲁豫回应新恋情', '2018-05-03 11:52:00.000000', '12');
INSERT INTO `courses_lesson` VALUES ('4', '2013-08-22期 乐嘉自曝家室', '2018-05-03 11:53:00.000000', '12');
INSERT INTO `courses_lesson` VALUES ('7', '一年级上册', '2018-05-03 11:57:00.000000', '1');
INSERT INTO `courses_lesson` VALUES ('8', '一年级下册', '2018-05-03 11:58:00.000000', '1');
INSERT INTO `courses_lesson` VALUES ('9', '二年级上册', '2018-05-03 11:58:00.000000', '1');
INSERT INTO `courses_lesson` VALUES ('10', '二年级下册', '2018-05-03 11:58:00.000000', '1');
INSERT INTO `courses_lesson` VALUES ('11', '三年级上册', '2018-05-03 11:58:00.000000', '1');
INSERT INTO `courses_lesson` VALUES ('12', '三年级下册', '2018-05-03 11:58:00.000000', '1');
INSERT INTO `courses_lesson` VALUES ('15', '区块链', '2018-05-04 00:45:00.000000', '11');
INSERT INTO `courses_lesson` VALUES ('16', '人脉', '2018-05-04 00:47:00.000000', '11');

-- ----------------------------
-- Table structure for courses_video
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(300) DEFAULT NULL,
  `my_url` varchar(100),
  PRIMARY KEY (`id`),
  KEY `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` (`lesson_id`),
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_video
-- ----------------------------
INSERT INTO `courses_video` VALUES ('1', '1.准备课', '2018-05-03 11:58:00.000000', '7', 'https://www.renjiaoshe.com/xiaoxueshuxue.html', null);
INSERT INTO `courses_video` VALUES ('2', '2.位置', '2018-05-03 12:01:00.000000', '7', 'https://www.renjiaoshe.com/xiaoxueshuxue.html', null);
INSERT INTO `courses_video` VALUES ('3', '3.1~5的认识和加减法', '2018-05-03 12:01:00.000000', '7', 'https://www.renjiaoshe.com/xiaoxueshuxue.html', null);
INSERT INTO `courses_video` VALUES ('4', '4.认识图形', '2018-05-03 12:01:00.000000', '7', 'https://www.renjiaoshe.com/xiaoxueshuxue.html', null);
INSERT INTO `courses_video` VALUES ('5', '5.6~10的认识和加减法', '2018-05-03 12:01:00.000000', '7', 'https://www.renjiaoshe.com/xiaoxueshuxue.html', null);
INSERT INTO `courses_video` VALUES ('6', '6.认识钟表', '2018-05-03 12:02:00.000000', '7', 'https://www.renjiaoshe.com/xiaoxueshuxue.html', null);
INSERT INTO `courses_video` VALUES ('7', '7.20以内进位加减法', '2018-05-03 12:02:00.000000', '7', 'https://www.renjiaoshe.com/xiaoxueshuxue.html', null);
INSERT INTO `courses_video` VALUES ('8', '1.认识图形', '2018-05-03 12:02:00.000000', '8', 'https://www.renjiaoshe.com/xiaoxueshuxue.html', null);
INSERT INTO `courses_video` VALUES ('9', '2.20以内加减法', '2018-05-03 12:03:00.000000', '8', 'https://www.renjiaoshe.com/xiaoxueshuxue.html', null);
INSERT INTO `courses_video` VALUES ('10', '3.分类与整理', '2018-05-03 12:03:00.000000', '8', 'https://www.renjiaoshe.com/xiaoxueshuxue.html', null);
INSERT INTO `courses_video` VALUES ('11', '4.100以内数的认识', '2018-05-03 12:03:00.000000', '8', 'https://www.renjiaoshe.com/xiaoxueshuxue.html', null);
INSERT INTO `courses_video` VALUES ('12', '5.认识人民币', '2018-05-03 12:03:00.000000', '8', 'https://www.renjiaoshe.com/xiaoxueshuxue.html', null);
INSERT INTO `courses_video` VALUES ('13', '6.100以内加法和减法', '2018-05-03 12:03:00.000000', '8', 'https://www.renjiaoshe.com/xiaoxueshuxue.html', null);
INSERT INTO `courses_video` VALUES ('14', '7.找规律', '2018-05-03 12:04:00.000000', '8', 'https://www.renjiaoshe.com/xiaoxueshuxue.html', null);
INSERT INTO `courses_video` VALUES ('15', '8.总复习', '2018-05-03 12:04:00.000000', '8', 'https://www.renjiaoshe.com/xiaoxueshuxue.html', null);
INSERT INTO `courses_video` VALUES ('21', 'TED-区块链如何彻底的改变经济现状', '2018-05-04 00:45:00.000000', '15', '', 'courses/2018/05/TED-区块链如何彻底的改变经济现状_标清.mp4');
INSERT INTO `courses_video` VALUES ('22', 'TED演讲 人脉就是机遇, 我们该如何扩大社交圈', '2018-05-04 00:47:00.000000', '16', '', 'courses/2018/05/TED演讲_人脉就是机遇_我们该如何扩大社交圈_标清.mp4');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2018-04-30 00:25:28.666000', '2', 'zhangxiaoer', '1', 'Added.', '6', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('24', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('9', 'courses', 'course');
INSERT INTO `django_content_type` VALUES ('10', 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES ('11', 'courses', 'video');
INSERT INTO `django_content_type` VALUES ('15', 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES ('19', 'operation', 'userblog');
INSERT INTO `django_content_type` VALUES ('18', 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES ('16', 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES ('17', 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES ('12', 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES ('13', 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES ('14', 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('8', 'users', 'banner');
INSERT INTO `django_content_type` VALUES ('7', 'users', 'emailverfiyrecord');
INSERT INTO `django_content_type` VALUES ('6', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('20', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('23', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('21', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('22', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-04-30 00:22:10.078000');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2018-04-30 00:22:11.242000');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2018-04-30 00:22:15.116000');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2018-04-30 00:22:16.043000');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2018-04-30 00:22:16.080000');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2018-04-30 00:22:16.137000');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2018-04-30 00:22:16.182000');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2018-04-30 00:22:16.231000');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2018-04-30 00:22:16.285000');
INSERT INTO `django_migrations` VALUES ('10', 'users', '0001_initial', '2018-04-30 00:22:22.503000');
INSERT INTO `django_migrations` VALUES ('11', 'admin', '0001_initial', '2018-04-30 00:22:24.405000');
INSERT INTO `django_migrations` VALUES ('12', 'admin', '0002_logentry_remove_auto_add', '2018-04-30 00:22:24.596000');
INSERT INTO `django_migrations` VALUES ('13', 'courses', '0001_initial', '2018-04-30 00:22:27.289000');
INSERT INTO `django_migrations` VALUES ('14', 'operation', '0001_initial', '2018-04-30 00:22:33.865000');
INSERT INTO `django_migrations` VALUES ('15', 'organization', '0001_initial', '2018-04-30 00:22:36.630000');
INSERT INTO `django_migrations` VALUES ('16', 'sessions', '0001_initial', '2018-04-30 00:22:37.533000');
INSERT INTO `django_migrations` VALUES ('17', 'users', '0002_banner_emailverfiyrecord', '2018-04-30 00:22:38.150000');
INSERT INTO `django_migrations` VALUES ('18', 'users', '0003_auto_20180429_2346', '2018-04-30 00:22:38.297000');
INSERT INTO `django_migrations` VALUES ('19', 'xadmin', '0001_initial', '2018-04-30 00:33:38.898000');
INSERT INTO `django_migrations` VALUES ('20', 'xadmin', '0002_log', '2018-04-30 01:36:12.791000');
INSERT INTO `django_migrations` VALUES ('21', 'xadmin', '0003_auto_20160715_0100', '2018-04-30 01:36:13.815000');
INSERT INTO `django_migrations` VALUES ('22', 'captcha', '0001_initial', '2018-04-30 23:50:27.508000');
INSERT INTO `django_migrations` VALUES ('23', 'users', '0004_auto_20180430_2350', '2018-04-30 23:50:28.513000');
INSERT INTO `django_migrations` VALUES ('24', 'organization', '0002_courseorg_catrgory', '2018-05-01 20:47:27.831000');
INSERT INTO `django_migrations` VALUES ('25', 'organization', '0003_auto_20180502_0005', '2018-05-02 00:05:52.193000');
INSERT INTO `django_migrations` VALUES ('26', 'courses', '0002_course_course_org', '2018-05-02 00:51:55.583000');
INSERT INTO `django_migrations` VALUES ('27', 'organization', '0004_teacher_image', '2018-05-02 17:55:20.292000');
INSERT INTO `django_migrations` VALUES ('28', 'courses', '0003_course_tag', '2018-05-03 02:39:01.704000');
INSERT INTO `django_migrations` VALUES ('29', 'courses', '0004_video_url', '2018-05-03 11:57:20.180000');
INSERT INTO `django_migrations` VALUES ('30', 'courses', '0005_course_teacher', '2018-05-03 12:28:14.967000');
INSERT INTO `django_migrations` VALUES ('31', 'courses', '0006_course_teacher_tell', '2018-05-03 14:14:06.586000');
INSERT INTO `django_migrations` VALUES ('32', 'courses', '0007_video_my_url', '2018-05-03 22:34:15.116000');
INSERT INTO `django_migrations` VALUES ('33', 'courses', '0008_auto_20180503_2236', '2018-05-03 22:36:32.208000');
INSERT INTO `django_migrations` VALUES ('34', 'users', '0005_auto_20180504_1654', '2018-05-04 16:54:31.619000');
INSERT INTO `django_migrations` VALUES ('35', 'users', '0006_auto_20180504_1828', '2018-05-04 18:29:04.526000');
INSERT INTO `django_migrations` VALUES ('36', 'users', '0007_auto_20180505_1813', '2018-05-05 18:13:54.653000');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('0c2nty1jnmguju0dt48k1uuytmr2o64d', 'ZWQwNDg0YTdhYzI4ZjI3NzA5Mjg0MTE2MWQ3YjZiZWQ1OTJmMWM5Mzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijk2MzRjZDBlODljZGNlODBlMGVkZGE2NDVhMGFkNjAxNTdjZGFiNGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQifQ==', '2018-05-15 16:44:29.095000');
INSERT INTO `django_session` VALUES ('a0ab3opbo79b7ejutwl439mywty8qrhb', 'NGYxZGU0NjY4MzI0MWQyZDcwZjZkMzdjNGY0ZThkYTJjNjUxN2Y2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjE3MTYzZTRjZjZiNmJhODk4MGYxYzYwZTJlM2NlNzMxOGU3ZGYzMzMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-05-17 19:50:37.849000');
INSERT INTO `django_session` VALUES ('ar9qu6lx75vxpgjomcegrjc8ev82ua3j', 'NGYxZGU0NjY4MzI0MWQyZDcwZjZkMzdjNGY0ZThkYTJjNjUxN2Y2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjE3MTYzZTRjZjZiNmJhODk4MGYxYzYwZTJlM2NlNzMxOGU3ZGYzMzMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-05-19 00:24:33.041000');
INSERT INTO `django_session` VALUES ('ddp0l428d5ni2smci20ns8fd5fv97w0x', 'OWQwZGVmM2FjYjdkZWNmNDMwNWE1NjcwZDM1MTBhNjNjNDE4NzdiNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sib3JnYW5pemF0aW9uIiwiY291cnNlb3JnIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiIxNzE2M2U0Y2Y2YjZiYTg5ODBmMWM2MGUyZTNjZTczMThlN2RmMzMzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCJ9', '2018-05-15 20:40:22.119000');
INSERT INTO `django_session` VALUES ('doowlsgp3ludws10wsipgnx1a5sehnw3', 'ZDI4MmY0YmU2N2UyOTFjN2FhOTE3ZDBhNmFjZjU5ZDU5YzZjZDVmNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiIxNzE2M2U0Y2Y2YjZiYTg5ODBmMWM2MGUyZTNjZTczMThlN2RmMzMzIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-05-17 14:16:04.103000');
INSERT INTO `django_session` VALUES ('f64s4u6jxaay3npfdqbx29qqcxjc8bb8', 'NGYxZGU0NjY4MzI0MWQyZDcwZjZkMzdjNGY0ZThkYTJjNjUxN2Y2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjE3MTYzZTRjZjZiNmJhODk4MGYxYzYwZTJlM2NlNzMxOGU3ZGYzMzMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-05-17 23:11:12.401000');
INSERT INTO `django_session` VALUES ('iy14x3uqsk9zsm7saibt0w7yy1z3pkl8', 'NGYxZGU0NjY4MzI0MWQyZDcwZjZkMzdjNGY0ZThkYTJjNjUxN2Y2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjE3MTYzZTRjZjZiNmJhODk4MGYxYzYwZTJlM2NlNzMxOGU3ZGYzMzMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-05-18 18:10:26.953000');
INSERT INTO `django_session` VALUES ('qn72ultpew4773975fgewftb107fgba2', 'NGYxZGU0NjY4MzI0MWQyZDcwZjZkMzdjNGY0ZThkYTJjNjUxN2Y2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjE3MTYzZTRjZjZiNmJhODk4MGYxYzYwZTJlM2NlNzMxOGU3ZGYzMzMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-05-16 02:04:31.730000');
INSERT INTO `django_session` VALUES ('un8wrkbagxrgkwyedjnk8lefaez96tjh', 'NDc2MDUwMjFiZjcwMzE3MTNlYWQ5ZWQ3ZjNhMzcxMGVjMDUyNTI5Nzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsImNvdXJzZSJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiMWMwM2I0NjhmZDlmN2U0NmRlYzkzMjlhYmM5MzhjMDYyYjZjY2NmYSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQifQ==', '2018-05-20 03:15:23.580000');
INSERT INTO `django_session` VALUES ('uq990pwoqal4fz5zvdjyqw95ni7tpfz1', 'NGYxZGU0NjY4MzI0MWQyZDcwZjZkMzdjNGY0ZThkYTJjNjUxN2Y2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjE3MTYzZTRjZjZiNmJhODk4MGYxYzYwZTJlM2NlNzMxOGU3ZGYzMzMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-05-19 19:11:01.723000');
INSERT INTO `django_session` VALUES ('y3hh3nuoiydz6809o2fip03hm16timpl', 'MjY1NjgxZmNhYTc3MzBhOGNiNjM0M2M3MDcwZmViYjQ3YmM2OWZkYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJvcmdhbml6YXRpb24iLCJ0ZWFjaGVyIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiIxNzE2M2U0Y2Y2YjZiYTg5ODBmMWM2MGUyZTNjZTczMThlN2RmMzMzIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-05-18 02:19:38.008000');
INSERT INTO `django_session` VALUES ('yq6bou21ndikbjnqr51gin7emy257ly0', 'OWQwZGVmM2FjYjdkZWNmNDMwNWE1NjcwZDM1MTBhNjNjNDE4NzdiNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sib3JnYW5pemF0aW9uIiwiY291cnNlb3JnIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiIxNzE2M2U0Y2Y2YjZiYTg5ODBmMWM2MGUyZTNjZTczMThlN2RmMzMzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCJ9', '2018-05-16 18:20:37.894000');

-- ----------------------------
-- Table structure for operation_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` (`course_id`),
  KEY `operation_coursecomment_user_id_f5ff70b3_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_coursecomment_user_id_f5ff70b3_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------
INSERT INTO `operation_coursecomments` VALUES ('1', 'eyiassad', '2018-05-03 17:33:57.550000', '1', '1');
INSERT INTO `operation_coursecomments` VALUES ('2', '太难了吧！！！！！！', '2018-05-03 17:34:27.675000', '1', '1');
INSERT INTO `operation_coursecomments` VALUES ('3', '老师讲的太差了', '2018-05-03 17:42:31.956000', '1', '1');
INSERT INTO `operation_coursecomments` VALUES ('4', '还可以', '2018-05-03 17:49:24.384000', '1', '1');

-- ----------------------------
-- Table structure for operation_userblog
-- ----------------------------
DROP TABLE IF EXISTS `operation_userblog`;
CREATE TABLE `operation_userblog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userblog_user_id_1e5a2b88_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_userblog_user_id_1e5a2b88_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userblog
-- ----------------------------

-- ----------------------------
-- Table structure for operation_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` (`course_id`),
  KEY `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
INSERT INTO `operation_usercourse` VALUES ('1', '2018-05-03 02:06:00.000000', '12', '1');
INSERT INTO `operation_usercourse` VALUES ('2', '2018-05-03 02:17:00.000000', '12', '2');
INSERT INTO `operation_usercourse` VALUES ('3', '2018-05-03 02:17:00.000000', '12', '5');

-- ----------------------------
-- Table structure for operation_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------

-- ----------------------------
-- Table structure for operation_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usermessage
-- ----------------------------
INSERT INTO `operation_usermessage` VALUES ('1', '1', '第一次与你相遇，却像是久别重逢', '1', '2018-05-04 22:58:00.000000');
INSERT INTO `operation_usermessage` VALUES ('2', '7', '第一次与你相遇，却像是久别重逢', '1', '2018-05-06 02:40:20.745000');
INSERT INTO `operation_usermessage` VALUES ('3', '8', '第一次与你相遇，却像是久别重逢', '1', '2018-05-06 11:59:48.089000');

-- ----------------------------
-- Table structure for organization_citydict
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
INSERT INTO `organization_citydict` VALUES ('1', '北京', '北京市', '2018-05-01 20:03:00.000000');
INSERT INTO `organization_citydict` VALUES ('2', '上海', '上海市', '2018-05-01 20:04:00.000000');
INSERT INTO `organization_citydict` VALUES ('3', '石家庄', '石家庄', '2018-05-01 20:04:00.000000');
INSERT INTO `organization_citydict` VALUES ('4', '武汉', '武汉', '2018-05-01 20:04:00.000000');
INSERT INTO `organization_citydict` VALUES ('5', '保定', '保定', '2018-05-01 20:05:00.000000');
INSERT INTO `organization_citydict` VALUES ('6', '广州', '广州', '2018-05-01 20:05:00.000000');
INSERT INTO `organization_citydict` VALUES ('7', '杭州', '杭州', '2018-05-01 20:05:00.000000');
INSERT INTO `organization_citydict` VALUES ('8', '成都', '成都', '2018-05-01 20:05:00.000000');
INSERT INTO `organization_citydict` VALUES ('9', '美国', '美国', '2018-05-01 20:14:00.000000');
INSERT INTO `organization_citydict` VALUES ('10', '合肥', '合肥', '2018-05-01 20:23:00.000000');

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int(11) NOT NULL,
  `catrgory` varchar(20) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_course_city_id_4a842f85_fk_organization_citydict_id` (`city_id`),
  CONSTRAINT `organization_course_city_id_4a842f85_fk_organization_citydict_id` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
INSERT INTO `organization_courseorg` VALUES ('1', 'TED', 'TED（指technology, entertainment, design在英语中的缩写，即技术、娱乐、设计）是美国的一家私有非营利机构，该机构以它组织的TED大会著称，这个会议的宗旨是“传播一切值得传播的创意”。TED诞生于1984年，其发起人是理查德·索·乌曼。2001年起，克里斯·安德森接管TED，创立了种子基金会（The Sapling Foundation），并运营TED大会。\r\nTED的演讲视频十分深刻，值得一看', '20', '0', 'org/2018/05/TED.jpg', '美国', '2018-05-01 20:14:00.000000', '9', 'shzz', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('2', '开讲啦', '由中央电视台综合频道（CCTV-1）和唯众传媒联合制作的《开讲啦》是中国首档青年电视公开课，创办于2012年。每期节目由一位知名人士讲述自己的故事，分享他们对于生活和生命的感悟，给予中国青年现实的讨论和心灵的滋养。讨论青年们的人生问题，同时也在讨论青春中国的社会问题。\r\n节目每期有八至十位来自全国各大高校的青年代表，向演讲嘉宾提问互动，300位大学生作为观众现场分享这场有思考、有疑问、有价值观、有锋芒的思想碰撞。他们对人生有思考，对未来有疑问，他们思想新锐，观点先锋，是中国未来的中坚力量。每期演讲嘉宾选择的主题，均为当下年轻人心中的问号，讲述青年最关心、最困惑的话题。', '13', '0', 'org/2018/05/开讲啦.jpg', '北京', '2018-05-01 20:19:00.000000', '1', 'shzz', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('3', '超级演说家', '《超级演说家》是安徽卫视联合能量传播推出的中国首档原创新锐语言竞技真人秀节目，第一季、第二季由陈鲁豫、李咏、林志颖（后由陈建斌接替）、乐嘉担任评委，从2015年3月28日《超级演说家》第三季开始导师阵容调整为陈鲁豫、乐嘉、金星、窦文涛。', '2', '0', 'org/2018/05/yanshuojia.jpg', '合肥', '2018-05-01 20:23:00.000000', '10', 'jyjg', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('4', '中华好诗词', '《中华好诗词》是河北电视台自主研发的一档文化类季播节目。节目以弘扬中国传统诗词文化为宗旨，以寓教于乐为目标，集知识性和娱乐性于一体，通过全媒体的传播方式，是一档观众喜闻乐见、社会反响的品牌节目。\r\n《中华好诗词》以大力弘扬中国传统诗词文化为宗旨，集知识性和娱乐性于一体，运用闯关、益智、综艺等多种电视化包装手段，通过寓教于乐的轻松形式，打造出一档广大观众喜闻乐见的文化普及类节目。希望借由节目的播出，能够掀起全民诵读传统诗词经典的热潮，让广大观众自然而然地受到中华民族人文精神的熏陶和感召，自觉地承担起传承中华文明、弘扬民族精神、实现中国梦的历史重任。', '1', '0', 'org/2018/05/haoshici.jpg', '石家庄', '2018-05-01 20:24:00.000000', '3', 'jyjg', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('5', 'test1', 'test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1', '0', '0', 'org/2018/05/demoorg.jpg', '保定', '2018-05-01 20:25:00.000000', '5', 'gr', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('6', 'test2', 'test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2', '0', '0', 'org/2018/05/demoorg_gqFopQD.jpg', '保定', '2018-05-01 20:37:00.000000', '5', 'gr', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('7', 'test3', 'test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3', '0', '0', 'org/2018/05/demoorg_nwDqkhU.jpg', '广州', '2018-05-01 20:38:00.000000', '6', 'gr', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('8', 'test4', 'test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4test4', '0', '0', 'org/2018/05/demoorg_5tQ1vpx.jpg', '武汉', '2018-05-01 20:38:00.000000', '4', 'gr', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('9', 'test5', 'test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5', '0', '0', 'org/2018/05/demoorg_Es5ptmP.jpg', '杭州', '2018-05-01 20:39:00.000000', '7', 'gr', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('10', 'test6', 'test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6test6', '0', '0', 'org/2018/05/demoorg_LslJeYK.jpg', '上海', '2018-05-01 20:39:00.000000', '2', 'gr', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('11', 'test7', 'test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7', '0', '0', 'org/2018/05/demoorg_XFSGwAR.jpg', '北京', '2018-05-01 20:39:00.000000', '1', 'gr', '0', '0');

-- ----------------------------
-- Table structure for organization_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `work_years` int(11) NOT NULL,
  `points` varchar(300) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teache_org_id_cd000a1a_fk_organization_courseorg_id` (`org_id`),
  CONSTRAINT `organization_teache_org_id_cd000a1a_fk_organization_courseorg_id` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
INSERT INTO `organization_teacher` VALUES ('1', '撒贝宁', '5', '“我觉得北大还行”', '44', '0', '2018-05-02 00:44:00.000000', '2', 'teacher/2018/05/sabeining.jpg');
INSERT INTO `organization_teacher` VALUES ('2', '马云', '3', '“我最后悔的事就是创建了阿里巴巴”', '2', '0', '2018-05-02 00:46:00.000000', '2', 'teacher/2018/05/mayun.jpg');
INSERT INTO `organization_teacher` VALUES ('3', '李咏', '2', '大波浪', '4', '0', '2018-05-04 02:14:00.000000', '3', 'teacher/2018/05/liyong.jpg');
INSERT INTO `organization_teacher` VALUES ('4', '陈鲁豫', '2', '中国内地主持人', '43', '0', '2018-05-04 02:16:00.000000', '3', 'teacher/2018/05/luyu.jpg');
INSERT INTO `organization_teacher` VALUES ('5', '林志颖', '1', '知名苹果粉丝', '401', '20', '2018-05-04 02:17:00.000000', '3', 'teacher/2018/05/linzhiying.jpg');

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES ('1', 'ad1', 'banner/2018/05/advertise1.jpg', '', '100', '2018-05-05 18:14:00.000000');
INSERT INTO `users_banner` VALUES ('2', 'ad2', 'banner/2018/05/advertise2.jpg', '', '100', '2018-05-05 18:14:00.000000');
INSERT INTO `users_banner` VALUES ('3', 'ad3', 'banner/2018/05/advtise3.jpg', '', '100', '2018-05-05 18:14:00.000000');
INSERT INTO `users_banner` VALUES ('4', 'ad4', 'banner/2018/05/advtise4.jpg', '', '100', '2018-05-05 18:14:00.000000');
INSERT INTO `users_banner` VALUES ('5', 'ad5', 'banner/2018/05/advtise5.jpg', '', '100', '2018-05-05 18:14:00.000000');

-- ----------------------------
-- Table structure for users_emailverfiyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverfiyrecord`;
CREATE TABLE `users_emailverfiyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(30) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_emailverfiyrecord
-- ----------------------------
INSERT INTO `users_emailverfiyrecord` VALUES ('1', '111', 'yzm@qq.com', 'register', '2018-04-30 11:38:00.000000');
INSERT INTO `users_emailverfiyrecord` VALUES ('2', '0exxpwAUTEM5sgplCBSN', '', 'register', '2018-05-01 01:40:02.900000');
INSERT INTO `users_emailverfiyrecord` VALUES ('3', '5MVdl6ANwmMgnueKwunk', '379954976@qq.com', 'register', '2018-05-01 01:55:53.974000');
INSERT INTO `users_emailverfiyrecord` VALUES ('4', 'hfXCQpT1GjKj2IIAiz2B', '379954976@qq.com', 'register', '2018-05-01 01:59:54.193000');
INSERT INTO `users_emailverfiyrecord` VALUES ('5', 'NchFO3PIuBwNQO1AOAjH', '379954976@qq.com', 'register', '2018-05-01 15:41:31.156000');
INSERT INTO `users_emailverfiyrecord` VALUES ('6', 'EIny1CSSLLAGx9fUfBBx', '379954976@qq.com', 'register', '2018-05-01 16:43:33.154000');
INSERT INTO `users_emailverfiyrecord` VALUES ('7', 'ByCWYEorVG74eiZnpMJo', '379954976@qq.com', 'register', '2018-05-01 17:03:29.848000');
INSERT INTO `users_emailverfiyrecord` VALUES ('8', 'K2AEzXrzjSsJUaTJb785', 'samawz@foxmail.com', 'register', '2018-05-06 02:40:20.818000');
INSERT INTO `users_emailverfiyrecord` VALUES ('9', 'yHh5R6nNE3Hh0ua5xtCo', '632332271@qq.com', 'register', '2018-05-06 11:59:48.178000');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$24000$W6LQDcDvS3w2$aZ3QWG4pKcqTIfLuWjgteNaSb6K8la2/yYIdzVESP40=', '2018-05-06 12:17:32.224000', '1', 'wangzhe', '', '', '666@qq.com', '1', '1', '2018-05-03 00:24:00.000000', 'wangzhe', '2018-05-04', 'male', '我从河北省来', '18888888888', 'image/2018/05/txxx_EITsl2N.png');
INSERT INTO `users_userprofile` VALUES ('2', 'pbkdf2_sha256$24000$wAQF8AJFN6K4$UHaUX+O/VgGS33+LL/yHbsPP0WRQS3PwOuciHZ5v+T4=', '2018-05-06 12:15:45.263000', '0', 'zhangxiaoer', '小二', '张', 'zhangxiaoer@qq.com', '1', '1', '2018-04-30 00:24:00.000000', '小张', null, 'female', '北京市', '', 'image/2018/05/dj.png');
INSERT INTO `users_userprofile` VALUES ('5', 'pbkdf2_sha256$24000$mV6WJXqR3vp8$d9648GyZoUkbwj5KPk2erc/7xaitqIwvEB1vNgjf7Y4=', null, '0', 'zhangxiaoyi', '', '', '379954976@qq.com', '0', '1', '2018-05-01 17:03:00.000000', '山不在高', null, 'female', '哈利路亚', '', 'image/2018/05/dva.png');
INSERT INTO `users_userprofile` VALUES ('6', 'pbkdf2_sha256$24000$XWmaMdKCBgkv$u1xfyA70nmilMryQFzsvHv7T1+iNJlWaBm/C3WjHdC0=', null, '0', 'admin02', '', '', '', '1', '1', '2018-05-06 02:21:00.000000', '管理员1号', null, 'female', '唐山', '', 'image/default.png');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofil_userprofile_id_a4496a80_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------
INSERT INTO `users_userprofile_groups` VALUES ('2', '2', '2');
INSERT INTO `users_userprofile_groups` VALUES ('1', '6', '1');

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_permissions_userprofile_id_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `users_userprofil_userprofile_id_34544737_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2018-04-30 11:38:21.822000', '127.0.0.1', '1', 'EmailVerfiyRecord object', 'create', '已添加', '7', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2018-04-30 12:05:06.381000', '127.0.0.1', '1', '小学数学', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2018-05-01 20:04:21.119000', '127.0.0.1', '1', 'CityDict object', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2018-05-01 20:04:34.430000', '127.0.0.1', '2', 'CityDict object', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2018-05-01 20:04:58.710000', '127.0.0.1', '3', 'CityDict object', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2018-05-01 20:05:11.485000', '127.0.0.1', '4', 'CityDict object', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2018-05-01 20:05:19.535000', '127.0.0.1', '5', 'CityDict object', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2018-05-01 20:05:37.395000', '127.0.0.1', '6', 'CityDict object', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2018-05-01 20:05:50.998000', '127.0.0.1', '7', 'CityDict object', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2018-05-01 20:05:55.970000', '127.0.0.1', '8', 'CityDict object', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2018-05-01 20:14:48.936000', '127.0.0.1', '9', '美国', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2018-05-01 20:15:54.516000', '127.0.0.1', '1', 'CourseOrg object', 'create', '已添加', '13', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2018-05-01 20:21:37.557000', '127.0.0.1', '2', '开讲啦', 'create', '已添加', '13', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2018-05-01 20:23:37.653000', '127.0.0.1', '10', '合肥', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2018-05-01 20:24:07.667000', '127.0.0.1', '3', '超级演说家', 'create', '已添加', '13', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2018-05-01 20:25:26.031000', '127.0.0.1', '4', '中华好诗词', 'create', '已添加', '13', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2018-05-01 20:37:29.820000', '127.0.0.1', '5', 'test1', 'create', '已添加', '13', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2018-05-01 20:37:59.500000', '127.0.0.1', '6', 'test2', 'create', '已添加', '13', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2018-05-01 20:38:25.276000', '127.0.0.1', '7', 'test3', 'create', '已添加', '13', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2018-05-01 20:38:47.592000', '127.0.0.1', '8', 'test4', 'create', '已添加', '13', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2018-05-01 20:39:20.361000', '127.0.0.1', '9', 'test5', 'create', '已添加', '13', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2018-05-01 20:39:47.937000', '127.0.0.1', '10', 'test6', 'create', '已添加', '13', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2018-05-01 20:40:21.812000', '127.0.0.1', '11', 'test7', 'create', '已添加', '13', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2018-05-02 00:45:19.660000', '127.0.0.1', '1', 'Teacher object', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2018-05-02 00:47:53.523000', '127.0.0.1', '2', '马云', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2018-05-02 00:53:28.502000', '127.0.0.1', '1', '小学数学', 'change', '已修改 course_org 。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2018-05-02 17:57:13.629000', '127.0.0.1', '2', '马云', 'change', '已修改 image 。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2018-05-02 17:59:06.678000', '127.0.0.1', '1', '撒贝宁', 'change', '已修改 image 。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('29', '2018-05-02 18:12:24.402000', '127.0.0.1', '1', '小学数学', 'change', '已修改 image 。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('30', '2018-05-02 23:59:23.114000', '127.0.0.1', '2', '小学语文', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('31', '2018-05-02 23:59:57.076000', '127.0.0.1', '3', '小学英语', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('32', '2018-05-03 00:00:45.950000', '127.0.0.1', '4', '思想品德', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('33', '2018-05-03 00:01:18.138000', '127.0.0.1', '5', '中学物理', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('34', '2018-05-03 00:01:48.682000', '127.0.0.1', '6', '中学化学', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('35', '2018-05-03 00:02:12.324000', '127.0.0.1', '7', '中学历史', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('36', '2018-05-03 00:02:35.981000', '127.0.0.1', '8', '中学政治', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('37', '2018-05-03 00:02:55.945000', '127.0.0.1', '9', '中学地理', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('38', '2018-05-03 00:03:13.064000', '127.0.0.1', '10', '中学生物', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('39', '2018-05-03 00:04:40.373000', '127.0.0.1', '11', 'TED精选演讲', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('40', '2018-05-03 00:06:00.586000', '127.0.0.1', '12', '超级演说家第一季', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('41', '2018-05-03 00:06:50.181000', '127.0.0.1', '13', '微积分', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('42', '2018-05-03 00:07:19.233000', '127.0.0.1', '14', '线性代数', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('43', '2018-05-03 00:07:43.044000', '127.0.0.1', '15', '泛函分析', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('44', '2018-05-03 00:09:11.003000', '127.0.0.1', '16', '量子力学', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('45', '2018-05-03 00:52:35.972000', '127.0.0.1', '12', '超级演说家第一季', 'change', '已修改 click_nums 。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('46', '2018-05-03 00:52:49.825000', '127.0.0.1', '11', 'TED精选演讲', 'change', '已修改 click_nums 。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('47', '2018-05-03 02:07:12.443000', '127.0.0.1', '1', 'UserCourse object', 'create', '已添加', '18', '1');
INSERT INTO `xadmin_log` VALUES ('48', '2018-05-03 02:14:11.619000', '127.0.0.1', '1', 'wangzhe', 'change', '已修改 last_login，nick_name，address 和 image 。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('49', '2018-05-03 02:16:42.246000', '127.0.0.1', '5', '379954976@qq.com', 'change', '已修改 nick_name，address 和 image 。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('50', '2018-05-03 02:17:13.918000', '127.0.0.1', '2', 'zhangxiaoer', 'change', '已修改 image 。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('51', '2018-05-03 02:17:45.041000', '127.0.0.1', '2', 'UserCourse object', 'create', '已添加', '18', '1');
INSERT INTO `xadmin_log` VALUES ('52', '2018-05-03 02:17:55.183000', '127.0.0.1', '3', 'UserCourse object', 'create', '已添加', '18', '1');
INSERT INTO `xadmin_log` VALUES ('53', '2018-05-03 02:48:12.002000', '127.0.0.1', '13', '微积分', 'change', '已修改 tag 。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('54', '2018-05-03 02:48:18.201000', '127.0.0.1', '15', '泛函分析', 'change', '已修改 tag 。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('55', '2018-05-03 02:48:24.933000', '127.0.0.1', '14', '线性代数', 'change', '已修改 tag 。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('56', '2018-05-03 02:48:38.698000', '127.0.0.1', '13', '微积分', 'change', '没有字段被修改。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('57', '2018-05-03 02:48:52.130000', '127.0.0.1', '12', '超级演说家第一季', 'change', '已修改 tag 。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('58', '2018-05-03 02:48:59.882000', '127.0.0.1', '11', 'TED精选演讲', 'change', '已修改 tag 。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('59', '2018-05-03 11:51:53.542000', '127.0.0.1', '1', '2013-08-01期', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('60', '2018-05-03 11:52:32.908000', '127.0.0.1', '2', '2013-08-08期 乐嘉下跪', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('61', '2018-05-03 11:53:46.047000', '127.0.0.1', '3', '2013-08-15 鲁豫回应新恋情', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('62', '2018-05-03 11:54:16.192000', '127.0.0.1', '4', '2013-08-22期 乐嘉自曝家室', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('63', '2018-05-03 11:54:51.264000', '127.0.0.1', '1', '2013-08-01期 林志颖未婚有子遭吐槽', 'change', '已修改 name 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('64', '2018-05-03 11:55:59.615000', '127.0.0.1', '5', '1.准备课', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('65', '2018-05-03 11:56:03.528000', '127.0.0.1', '6', '2.位置', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('66', '2018-05-03 11:57:30.743000', '127.0.0.1', '5', '1.准备课', 'delete', '', '10', '1');
INSERT INTO `xadmin_log` VALUES ('67', '2018-05-03 11:57:35.674000', '127.0.0.1', '6', '2.位置', 'delete', '', '10', '1');
INSERT INTO `xadmin_log` VALUES ('68', '2018-05-03 11:58:03.114000', '127.0.0.1', '7', '一年级上册', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('69', '2018-05-03 11:58:08.513000', '127.0.0.1', '8', '一年级下册', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('70', '2018-05-03 11:58:15.826000', '127.0.0.1', '9', '二年级上册', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('71', '2018-05-03 11:58:20.557000', '127.0.0.1', '10', '二年级下册', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('72', '2018-05-03 11:58:25.065000', '127.0.0.1', '11', '三年级上册', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('73', '2018-05-03 11:58:30.190000', '127.0.0.1', '12', '三年级下册', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('74', '2018-05-03 11:59:58.431000', '127.0.0.1', '1', '1.准备课', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('75', '2018-05-03 12:00:25.324000', '127.0.0.1', '1', '1.准备课', 'change', '已修改 url 。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('76', '2018-05-03 12:01:13.231000', '127.0.0.1', '2', '2.位置', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('77', '2018-05-03 12:01:33.060000', '127.0.0.1', '3', '3.1~5的认识和加减法', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('78', '2018-05-03 12:01:42.288000', '127.0.0.1', '4', '4.认识图形', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('79', '2018-05-03 12:02:05.015000', '127.0.0.1', '5', '5.6~10的认识和加减法', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('80', '2018-05-03 12:02:14.826000', '127.0.0.1', '6', '6.认识钟表', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('81', '2018-05-03 12:02:30.964000', '127.0.0.1', '7', '7.20以内进位加减法', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('82', '2018-05-03 12:03:05.485000', '127.0.0.1', '8', '1.认识图形', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('83', '2018-05-03 12:03:15.528000', '127.0.0.1', '9', '2.20以内加减法', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('84', '2018-05-03 12:03:29.243000', '127.0.0.1', '10', '3.分类与整理', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('85', '2018-05-03 12:03:45.595000', '127.0.0.1', '11', '4.100以内数的认识', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('86', '2018-05-03 12:03:53.589000', '127.0.0.1', '12', '5.认识人民币', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('87', '2018-05-03 12:04:08.577000', '127.0.0.1', '13', '6.100以内加法和减法', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('88', '2018-05-03 12:04:15.993000', '127.0.0.1', '14', '7.找规律', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('89', '2018-05-03 12:04:22.281000', '127.0.0.1', '15', '8.总复习', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('90', '2018-05-03 12:29:40.969000', '127.0.0.1', '1', '小学数学', 'change', '已修改 teacher 和 tag 。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('91', '2018-05-03 14:16:03.670000', '127.0.0.1', '1', '小学数学', 'change', '已修改 teacher_tell 。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('92', '2018-05-03 21:11:02.063000', '127.0.0.1', '1', 'wangzhe', 'change', '已修改 last_login，date_joined 和 gender 。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('93', '2018-05-03 22:22:06.477000', '127.0.0.1', '17', 'TED与人工智能', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('94', '2018-05-03 22:22:37.642000', '127.0.0.1', '13', 'AI改变生活', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('95', '2018-05-03 22:35:53.516000', '127.0.0.1', '16', 'AI改变生活', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('96', '2018-05-03 22:36:56.957000', '127.0.0.1', '16', 'AI改变生活', 'change', '已修改 my_url 。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('97', '2018-05-03 23:02:25.815000', '127.0.0.1', '14', '如何掌控时间', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('98', '2018-05-03 23:02:51.094000', '127.0.0.1', '17', '适合掌控时间', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('99', '2018-05-03 23:03:02.199000', '127.0.0.1', '17', '如何掌控时间', 'change', '已修改 name 。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('100', '2018-05-03 23:03:32.668000', '127.0.0.1', '16', 'AI改变生活', 'delete', '', '11', '1');
INSERT INTO `xadmin_log` VALUES ('101', '2018-05-03 23:04:00.532000', '127.0.0.1', '18', 'AI改变生活', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('102', '2018-05-03 23:10:17.783000', '127.0.0.1', '17', '如何掌控时间', 'delete', '', '11', '1');
INSERT INTO `xadmin_log` VALUES ('103', '2018-05-03 23:17:36.690000', '127.0.0.1', '18', 'AI改变生活', 'change', '没有字段被修改。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('104', '2018-05-03 23:17:42.111000', '127.0.0.1', '18', 'AI改变生活', 'delete', '', '11', '1');
INSERT INTO `xadmin_log` VALUES ('105', '2018-05-03 23:18:18.454000', '127.0.0.1', '19', '如何掌控自由时间', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('106', '2018-05-03 23:18:36.057000', '127.0.0.1', '20', 'AI改变生活', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('107', '2018-05-04 00:44:36.138000', '127.0.0.1', '14', '如何掌控时间', 'delete', '', '10', '1');
INSERT INTO `xadmin_log` VALUES ('108', '2018-05-04 00:44:44.186000', '127.0.0.1', '13', 'AI改变生活', 'delete', '', '10', '1');
INSERT INTO `xadmin_log` VALUES ('109', '2018-05-04 00:45:37.689000', '127.0.0.1', '15', '区块链', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('110', '2018-05-04 00:46:44.258000', '127.0.0.1', '21', 'TED-区块链如何彻底的改变经济现状', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('111', '2018-05-04 00:47:14.688000', '127.0.0.1', '16', '人脉', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('112', '2018-05-04 00:47:32.878000', '127.0.0.1', '22', 'TED演讲 人脉就是机遇, 我们该如何扩大社交圈', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('113', '2018-05-04 02:16:18.569000', '127.0.0.1', '3', '李咏', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('114', '2018-05-04 02:17:24.986000', '127.0.0.1', '4', '陈鲁豫', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('115', '2018-05-04 02:19:37.652000', '127.0.0.1', '5', '林志颖', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('116', '2018-05-04 22:59:53.967000', '127.0.0.1', '1', 'UserMessage object', 'create', '已添加', '17', '1');
INSERT INTO `xadmin_log` VALUES ('117', '2018-05-05 18:14:26.246000', '127.0.0.1', '1', 'Banner object', 'create', '已添加', '8', '1');
INSERT INTO `xadmin_log` VALUES ('118', '2018-05-05 18:14:35.373000', '127.0.0.1', '2', 'Banner object', 'create', '已添加', '8', '1');
INSERT INTO `xadmin_log` VALUES ('119', '2018-05-05 18:14:41.701000', '127.0.0.1', '3', 'Banner object', 'create', '已添加', '8', '1');
INSERT INTO `xadmin_log` VALUES ('120', '2018-05-05 18:14:48.059000', '127.0.0.1', '4', 'Banner object', 'create', '已添加', '8', '1');
INSERT INTO `xadmin_log` VALUES ('121', '2018-05-05 18:14:54.930000', '127.0.0.1', '5', 'Banner object', 'create', '已添加', '8', '1');
INSERT INTO `xadmin_log` VALUES ('122', '2018-05-05 18:15:01.166000', '127.0.0.1', '1', 'Banner object', 'change', '已修改 title 。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('123', '2018-05-06 02:15:01.688000', '127.0.0.1', '1', '网站管理员', 'create', '已添加', '3', '1');
INSERT INTO `xadmin_log` VALUES ('124', '2018-05-06 02:20:38.354000', '127.0.0.1', '5', 'zhangxiaoyi', 'change', '已修改 username 。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('125', '2018-05-06 02:21:54.733000', '127.0.0.1', '6', 'admin02', 'create', '已添加', '6', '1');
INSERT INTO `xadmin_log` VALUES ('126', '2018-05-06 02:22:50.439000', '127.0.0.1', '6', 'admin02', 'change', '已修改 nick_name 和 address 。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('127', '2018-05-06 02:26:00.485000', '127.0.0.1', '2', '机构账号', 'create', '已添加', '3', '1');
INSERT INTO `xadmin_log` VALUES ('128', '2018-05-06 02:26:35.687000', '127.0.0.1', '6', 'admin02', 'change', '已修改 groups 。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('129', '2018-05-06 02:26:45.637000', '127.0.0.1', '6', 'admin02', 'change', '已修改 is_staff 。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('130', '2018-05-06 02:27:13.904000', '127.0.0.1', '2', 'zhangxiaoer', 'change', '已修改 groups 和 is_staff 。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('131', '2018-05-06 12:16:22.350000', '127.0.0.1', null, '', 'delete', '批量删除 1 个 用户信息', null, '1');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');
INSERT INTO `xadmin_usersettings` VALUES ('2', 'site-theme', '/static/xadmin/css/themes/bootstrap-xadmin.css', '1');
INSERT INTO `xadmin_usersettings` VALUES ('3', 'dashboard:home:pos', '', '2');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
