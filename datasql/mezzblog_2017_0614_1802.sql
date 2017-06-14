/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost:3306
 Source Schema         : mezzblog

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 14/06/2017 17:52:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add group', 1, 'add_group');
INSERT INTO `auth_permission` VALUES (2, 'Can change group', 1, 'change_group');
INSERT INTO `auth_permission` VALUES (3, 'Can delete group', 1, 'delete_group');
INSERT INTO `auth_permission` VALUES (4, 'Can add user', 2, 'add_user');
INSERT INTO `auth_permission` VALUES (5, 'Can change user', 2, 'change_user');
INSERT INTO `auth_permission` VALUES (6, 'Can delete user', 2, 'delete_user');
INSERT INTO `auth_permission` VALUES (7, 'Can add permission', 3, 'add_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can change permission', 3, 'change_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can delete permission', 3, 'delete_permission');
INSERT INTO `auth_permission` VALUES (10, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (11, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (12, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (13, 'Can add redirect', 5, 'add_redirect');
INSERT INTO `auth_permission` VALUES (14, 'Can change redirect', 5, 'change_redirect');
INSERT INTO `auth_permission` VALUES (15, 'Can delete redirect', 5, 'delete_redirect');
INSERT INTO `auth_permission` VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (19, 'Can add site', 7, 'add_site');
INSERT INTO `auth_permission` VALUES (20, 'Can change site', 7, 'change_site');
INSERT INTO `auth_permission` VALUES (21, 'Can delete site', 7, 'delete_site');
INSERT INTO `auth_permission` VALUES (22, 'Can add Setting', 8, 'add_setting');
INSERT INTO `auth_permission` VALUES (23, 'Can change Setting', 8, 'change_setting');
INSERT INTO `auth_permission` VALUES (24, 'Can delete Setting', 8, 'delete_setting');
INSERT INTO `auth_permission` VALUES (25, 'Can add Site permission', 9, 'add_sitepermission');
INSERT INTO `auth_permission` VALUES (26, 'Can change Site permission', 9, 'change_sitepermission');
INSERT INTO `auth_permission` VALUES (27, 'Can delete Site permission', 9, 'delete_sitepermission');
INSERT INTO `auth_permission` VALUES (28, 'Can add Keyword', 10, 'add_keyword');
INSERT INTO `auth_permission` VALUES (29, 'Can change Keyword', 10, 'change_keyword');
INSERT INTO `auth_permission` VALUES (30, 'Can delete Keyword', 10, 'delete_keyword');
INSERT INTO `auth_permission` VALUES (31, 'Can add assigned keyword', 11, 'add_assignedkeyword');
INSERT INTO `auth_permission` VALUES (32, 'Can change assigned keyword', 11, 'change_assignedkeyword');
INSERT INTO `auth_permission` VALUES (33, 'Can delete assigned keyword', 11, 'delete_assignedkeyword');
INSERT INTO `auth_permission` VALUES (34, 'Can add Comment', 12, 'add_threadedcomment');
INSERT INTO `auth_permission` VALUES (35, 'Can change Comment', 12, 'change_threadedcomment');
INSERT INTO `auth_permission` VALUES (36, 'Can delete Comment', 12, 'delete_threadedcomment');
INSERT INTO `auth_permission` VALUES (37, 'Can add Rating', 13, 'add_rating');
INSERT INTO `auth_permission` VALUES (38, 'Can change Rating', 13, 'change_rating');
INSERT INTO `auth_permission` VALUES (39, 'Can delete Rating', 13, 'delete_rating');
INSERT INTO `auth_permission` VALUES (40, 'Can add Page', 14, 'add_page');
INSERT INTO `auth_permission` VALUES (41, 'Can change Page', 14, 'change_page');
INSERT INTO `auth_permission` VALUES (42, 'Can delete Page', 14, 'delete_page');
INSERT INTO `auth_permission` VALUES (43, 'Can add Link', 15, 'add_link');
INSERT INTO `auth_permission` VALUES (44, 'Can change Link', 15, 'change_link');
INSERT INTO `auth_permission` VALUES (45, 'Can delete Link', 15, 'delete_link');
INSERT INTO `auth_permission` VALUES (46, 'Can add Rich text page', 16, 'add_richtextpage');
INSERT INTO `auth_permission` VALUES (47, 'Can change Rich text page', 16, 'change_richtextpage');
INSERT INTO `auth_permission` VALUES (48, 'Can delete Rich text page', 16, 'delete_richtextpage');
INSERT INTO `auth_permission` VALUES (49, 'Can add Blog post', 17, 'add_blogpost');
INSERT INTO `auth_permission` VALUES (50, 'Can change Blog post', 17, 'change_blogpost');
INSERT INTO `auth_permission` VALUES (51, 'Can delete Blog post', 17, 'delete_blogpost');
INSERT INTO `auth_permission` VALUES (52, 'Can add Blog Category', 18, 'add_blogcategory');
INSERT INTO `auth_permission` VALUES (53, 'Can change Blog Category', 18, 'change_blogcategory');
INSERT INTO `auth_permission` VALUES (54, 'Can delete Blog Category', 18, 'delete_blogcategory');
INSERT INTO `auth_permission` VALUES (55, 'Can add Form field entry', 19, 'add_fieldentry');
INSERT INTO `auth_permission` VALUES (56, 'Can change Form field entry', 19, 'change_fieldentry');
INSERT INTO `auth_permission` VALUES (57, 'Can delete Form field entry', 19, 'delete_fieldentry');
INSERT INTO `auth_permission` VALUES (58, 'Can add Field', 20, 'add_field');
INSERT INTO `auth_permission` VALUES (59, 'Can change Field', 20, 'change_field');
INSERT INTO `auth_permission` VALUES (60, 'Can delete Field', 20, 'delete_field');
INSERT INTO `auth_permission` VALUES (61, 'Can add Form', 21, 'add_form');
INSERT INTO `auth_permission` VALUES (62, 'Can change Form', 21, 'change_form');
INSERT INTO `auth_permission` VALUES (63, 'Can delete Form', 21, 'delete_form');
INSERT INTO `auth_permission` VALUES (64, 'Can add Form entry', 22, 'add_formentry');
INSERT INTO `auth_permission` VALUES (65, 'Can change Form entry', 22, 'change_formentry');
INSERT INTO `auth_permission` VALUES (66, 'Can delete Form entry', 22, 'delete_formentry');
INSERT INTO `auth_permission` VALUES (67, 'Can add Image', 23, 'add_galleryimage');
INSERT INTO `auth_permission` VALUES (68, 'Can change Image', 23, 'change_galleryimage');
INSERT INTO `auth_permission` VALUES (69, 'Can delete Image', 23, 'delete_galleryimage');
INSERT INTO `auth_permission` VALUES (70, 'Can add Gallery', 24, 'add_gallery');
INSERT INTO `auth_permission` VALUES (71, 'Can change Gallery', 24, 'change_gallery');
INSERT INTO `auth_permission` VALUES (72, 'Can delete Gallery', 24, 'delete_gallery');
INSERT INTO `auth_permission` VALUES (73, 'Can add Twitter query', 25, 'add_query');
INSERT INTO `auth_permission` VALUES (74, 'Can change Twitter query', 25, 'change_query');
INSERT INTO `auth_permission` VALUES (75, 'Can delete Twitter query', 25, 'delete_query');
INSERT INTO `auth_permission` VALUES (76, 'Can add Tweet', 26, 'add_tweet');
INSERT INTO `auth_permission` VALUES (77, 'Can change Tweet', 26, 'change_tweet');
INSERT INTO `auth_permission` VALUES (78, 'Can delete Tweet', 26, 'delete_tweet');
INSERT INTO `auth_permission` VALUES (79, 'Can add log entry', 27, 'add_logentry');
INSERT INTO `auth_permission` VALUES (80, 'Can change log entry', 27, 'change_logentry');
INSERT INTO `auth_permission` VALUES (81, 'Can delete log entry', 27, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (82, 'Can add comment', 28, 'add_comment');
INSERT INTO `auth_permission` VALUES (83, 'Can change comment', 28, 'change_comment');
INSERT INTO `auth_permission` VALUES (84, 'Can delete comment', 28, 'delete_comment');
INSERT INTO `auth_permission` VALUES (85, 'Can moderate comments', 28, 'can_moderate');
INSERT INTO `auth_permission` VALUES (86, 'Can add comment flag', 29, 'add_commentflag');
INSERT INTO `auth_permission` VALUES (87, 'Can change comment flag', 29, 'change_commentflag');
INSERT INTO `auth_permission` VALUES (88, 'Can delete comment flag', 29, 'delete_commentflag');
COMMIT;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
BEGIN;
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$30000$YiZwIX8cAhZd$SDdZCcjecrQbBlW4zJtKVCp0e528/TOBFH85a6mE7LU=', '2017-06-13 11:18:17.157082', 1, 'admin', '', '', 'example@example.com', 1, 1, '2017-06-13 10:31:55.440105');
COMMIT;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Table structure for blog_blogcategory
-- ----------------------------
DROP TABLE IF EXISTS `blog_blogcategory`;
CREATE TABLE `blog_blogcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blogcategory_site_id_42b9c96d_fk_django_site_id` (`site_id`),
  CONSTRAINT `blog_blogcategory_site_id_42b9c96d_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Records of blog_blogcategory
-- ----------------------------
BEGIN;
INSERT INTO `blog_blogcategory` VALUES (1, 'ai investing', 'ai-investing', 1);
INSERT INTO `blog_blogcategory` VALUES (2, 'ai investment platform', 'ai-investment-platform', 1);
COMMIT;

-- ----------------------------
-- Table structure for blog_blogpost
-- ----------------------------
DROP TABLE IF EXISTS `blog_blogpost`;
CREATE TABLE `blog_blogpost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments_count` int(11) NOT NULL,
  `keywords_string` varchar(500) NOT NULL,
  `rating_count` int(11) NOT NULL,
  `rating_sum` int(11) NOT NULL,
  `rating_average` double NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  `_meta_title` varchar(500) DEFAULT NULL,
  `description` longtext NOT NULL,
  `gen_description` tinyint(1) NOT NULL,
  `created` datetime(6) DEFAULT NULL,
  `updated` datetime(6) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `publish_date` datetime(6) DEFAULT NULL,
  `expiry_date` datetime(6) DEFAULT NULL,
  `short_url` varchar(200) DEFAULT NULL,
  `in_sitemap` tinyint(1) NOT NULL,
  `content` longtext NOT NULL,
  `allow_comments` tinyint(1) NOT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blogpost_site_id_7995688f_fk_django_site_id` (`site_id`),
  KEY `blog_blogpost_user_id_12ed6b16_fk_auth_user_id` (`user_id`),
  KEY `blog_blogpost_publish_date_703abc16_uniq` (`publish_date`),
  CONSTRAINT `blog_blogpost_site_id_7995688f_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `blog_blogpost_user_id_12ed6b16_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Records of blog_blogpost
-- ----------------------------
BEGIN;
INSERT INTO `blog_blogpost` VALUES (1, 0, '', 0, 0, 0, 'FUZZY MATH', 'fuzzy-math', '', 'Last Friday saw a very positive employment report, with job creation of 211,000 and the unemployment rate dropping to 4.4%.  As usual, the Labor Force Participation rate moved higher, and the United States now has 94.4 million able-bodied adults not even looking for a job.  Remember, the unemployment rate only counts people looking for a job.  So, the only thing this very low unemployment rate is going to do is allow the FED to raise interest rates faster.', 1, '2017-06-13 16:44:07.390851', '2017-06-14 02:11:01.575026', 2, '2017-06-13 16:44:07.370599', NULL, 'unset', 1, '<p>Last Friday saw a very positive employment report, with job creation of 211,000 and the unemployment rate dropping to 4.4%.  As usual, the Labor Force Participation rate moved higher, and the United States now has 94.4 million able-bodied adults not even looking for a job.  Remember, the unemployment rate only counts people looking for a job.  So, the only thing this very low unemployment rate is going to do is allow the FED to raise interest rates faster.</p>\n<p>Over the weekend, France elected a new President.  Emmanuel Macron defeated Marine Le Pen in a victory for Liberals around the world.  Macron will keep France in the European Union, and fears of an EU collapse have subsided.  This victory was widely expected and market reactions are muted.</p>\n<p>It is kind of a slow market, and we are heading into the summer season, so I don’t really have any great ideas.  So what to do?  I’m heading right to Kavout.com and I’m looking for ideas from Kai.</p>\n<p>Let’s see if Kai has any ideas.  I scanned mega cap stocks rated 9.  As I look down the list I see the “usual suspects”; MSFT, AMZN, GOOG, FB.  I’m kind of bored with these names, but next on the list is something really interesting.  AT&amp;T (T) is rated a 9.  I always liked T because of its 5% dividend yield and it’s near captive customer base. </p>\n<p>Stock is down this year, which is really interesting.  I would have no idea what to do with this chart.  This is one of the times that I love Kai.  The chart looks weak, but Kai has spotted something that I don’t see.  I’m going in for some AT&amp;T this week.  Kai says it’s a 9 and I think this is a good price, plus the 5% dividend yield looks juicy.</p>', 1, '', 1, 1);
INSERT INTO `blog_blogpost` VALUES (2, 0, '', 0, 0, 0, 'Pre-Labour Day Insight’s From Kavout’s CIO: Time to Put on the “Johnny Wag” Portfolio', 'pre-labour-day-insights-from-kavouts-cio-time-to-put-on-the-johnny-wag-portfolio', '', 'Two weeks ago on Kavout’s blog, I suggested putting on a portfolio consisting of four mega cap Kai Score rated 9 stocks before Labor Day.', 1, '2017-06-13 17:13:01.559077', '2017-06-13 17:57:43.988799', 2, '2017-06-13 17:13:01.555437', NULL, 'unset', 1, '<p><span>Two weeks ago on <a href=\"http://blog.kavout.com/?p=27\">Kavout’s blog</a>, I suggested putting on a portfolio consisting of four mega cap Kai Score rated 9 stocks before Labor Day.</span></p>\n<p><span>I call this the Johnny WAG portfolio because it consists of Johnny John (Johnson &amp; Johnson) JNJ, </span><b>W</b><span>MT, </span><b>A</b><span>MZN and </span><b>G</b><span>OOGL.  This portfolio and the market in general has been quiet as predicted but this could all change when everyone gets back from vacation after Labor Day.</span></p>\n<p>Last Friday, Janet Yellen indicated in her Jackson Hole speech that the U.S. economy was starting to grow fast enough to warrant another rate hike in the near future.  This was followed up by a plea from global central bankers to increase stimulus programs around the world.  Many of these countries currently have negative interest rates and they fear that their economies are stagnating and gripped by deflationary pressures.</p>\n<p><span>This dichotomy between Janet Yellen’s view of the economy and other central bankers’ views is surely going to restrain any ambition Yellen has to raising rates in any significant way.  So, as I discussed two weeks ago, this should lead to a fairly robust U.S. economy, combined with low interest rates.  This is bullish for U.S. stocks.  I also anticipate significant reallocation of funds out of negative yielding foreign bonds into a bullish U.S. stock market.</span></p>\n<p>So, the time could be right to put on the Johnny WAG portfolio this week.</p>\n<p><em>Keith Kline is the Chief Investment Officer at <a href=\"https://www.kavout.com/\">Kavout</a>. He has over 25 years of trading experience across a broad range of asset classes. Keith has worked at the Philadelphia Options Exchange, where he established one of the largest global interest rate derivative desks with The Bank of New York. He also traded a multi-hundred million dollar long/short portfolio at Susquehanna Investment Group (SIG). He later headed a derivatives trading desk at a commodity hedge fund that was acquired by The Carlyle Group. Keith started the Wall Street Preparatory Academy in 2013.</em></p>', 1, '', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for blog_blogpost_categories
-- ----------------------------
DROP TABLE IF EXISTS `blog_blogpost_categories`;
CREATE TABLE `blog_blogpost_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blogpost_id` int(11) NOT NULL,
  `blogcategory_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_blogpost_categories_blogpost_id_a64d32c5_uniq` (`blogpost_id`,`blogcategory_id`),
  KEY `blog_blogpost_c_blogcategory_id_f6695246_fk_blog_blogcategory_id` (`blogcategory_id`),
  CONSTRAINT `blog_blogpost_c_blogcategory_id_f6695246_fk_blog_blogcategory_id` FOREIGN KEY (`blogcategory_id`) REFERENCES `blog_blogcategory` (`id`),
  CONSTRAINT `blog_blogpost_categorie_blogpost_id_daeea608_fk_blog_blogpost_id` FOREIGN KEY (`blogpost_id`) REFERENCES `blog_blogpost` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Records of blog_blogpost_categories
-- ----------------------------
BEGIN;
INSERT INTO `blog_blogpost_categories` VALUES (1, 1, 1);
INSERT INTO `blog_blogpost_categories` VALUES (2, 2, 1);
INSERT INTO `blog_blogpost_categories` VALUES (3, 2, 2);
COMMIT;

-- ----------------------------
-- Table structure for blog_blogpost_related_posts
-- ----------------------------
DROP TABLE IF EXISTS `blog_blogpost_related_posts`;
CREATE TABLE `blog_blogpost_related_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_blogpost_id` int(11) NOT NULL,
  `to_blogpost_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_blogpost_related_posts_from_blogpost_id_3bd0f49f_uniq` (`from_blogpost_id`,`to_blogpost_id`),
  KEY `blog_blogpost_relate_to_blogpost_id_35f7acdd_fk_blog_blogpost_id` (`to_blogpost_id`),
  CONSTRAINT `blog_blogpost_rela_from_blogpost_id_27ea4c18_fk_blog_blogpost_id` FOREIGN KEY (`from_blogpost_id`) REFERENCES `blog_blogpost` (`id`),
  CONSTRAINT `blog_blogpost_relate_to_blogpost_id_35f7acdd_fk_blog_blogpost_id` FOREIGN KEY (`to_blogpost_id`) REFERENCES `blog_blogpost` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Table structure for conf_setting
-- ----------------------------
DROP TABLE IF EXISTS `conf_setting`;
CREATE TABLE `conf_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` varchar(2000) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `conf_setting_site_id_b235f7ed_fk_django_site_id` (`site_id`),
  CONSTRAINT `conf_setting_site_id_b235f7ed_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Records of conf_setting
-- ----------------------------
BEGIN;
INSERT INTO `conf_setting` VALUES (1, 'ADMIN_MENU_COLLAPSED', 'False', 1);
INSERT INTO `conf_setting` VALUES (2, 'AKISMET_API_KEY', '', 1);
INSERT INTO `conf_setting` VALUES (3, 'BITLY_ACCESS_TOKEN', '', 1);
INSERT INTO `conf_setting` VALUES (4, 'BLOG_POST_PER_PAGE', '5', 1);
INSERT INTO `conf_setting` VALUES (5, 'COMMENTS_ACCOUNT_REQUIRED', 'False', 1);
INSERT INTO `conf_setting` VALUES (6, 'COMMENTS_DEFAULT_APPROVED', 'True', 1);
INSERT INTO `conf_setting` VALUES (7, 'COMMENTS_DISQUS_API_PUBLIC_KEY', '', 1);
INSERT INTO `conf_setting` VALUES (8, 'COMMENTS_DISQUS_API_SECRET_KEY', '', 1);
INSERT INTO `conf_setting` VALUES (9, 'COMMENTS_DISQUS_SHORTNAME', '', 1);
INSERT INTO `conf_setting` VALUES (10, 'COMMENTS_NOTIFICATION_EMAILS', '', 1);
INSERT INTO `conf_setting` VALUES (11, 'COMMENTS_NUM_LATEST', '5', 1);
INSERT INTO `conf_setting` VALUES (12, 'COMMENTS_REMOVED_VISIBLE', 'True', 1);
INSERT INTO `conf_setting` VALUES (13, 'COMMENTS_UNAPPROVED_VISIBLE', 'True', 1);
INSERT INTO `conf_setting` VALUES (14, 'GOOGLE_ANALYTICS_ID', '', 1);
INSERT INTO `conf_setting` VALUES (15, 'MAX_PAGING_LINKS', '10', 1);
INSERT INTO `conf_setting` VALUES (16, 'RATINGS_ACCOUNT_REQUIRED', 'False', 1);
INSERT INTO `conf_setting` VALUES (17, 'RICHTEXT_FILTER_LEVEL', '1', 1);
INSERT INTO `conf_setting` VALUES (18, 'SEARCH_PER_PAGE', '10', 1);
INSERT INTO `conf_setting` VALUES (19, 'SITE_TAGLINE', 'The AI-Driven Investment Platform', 1);
INSERT INTO `conf_setting` VALUES (20, 'SITE_TITLE', 'Kavout', 1);
INSERT INTO `conf_setting` VALUES (21, 'TAG_CLOUD_SIZES', '4', 1);
INSERT INTO `conf_setting` VALUES (22, 'TWITTER_ACCESS_TOKEN_KEY', '', 1);
INSERT INTO `conf_setting` VALUES (23, 'TWITTER_ACCESS_TOKEN_SECRET', '', 1);
INSERT INTO `conf_setting` VALUES (24, 'TWITTER_CONSUMER_KEY', '', 1);
INSERT INTO `conf_setting` VALUES (25, 'TWITTER_CONSUMER_SECRET', '', 1);
INSERT INTO `conf_setting` VALUES (26, 'TWITTER_DEFAULT_NUM_TWEETS', '3', 1);
INSERT INTO `conf_setting` VALUES (27, 'TWITTER_DEFAULT_QUERY', 'from:stephen_mcd mezzanine', 1);
INSERT INTO `conf_setting` VALUES (28, 'TWITTER_DEFAULT_QUERY_TYPE', 'search', 1);
COMMIT;

-- ----------------------------
-- Table structure for core_sitepermission
-- ----------------------------
DROP TABLE IF EXISTS `core_sitepermission`;
CREATE TABLE `core_sitepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `core_sitepermission_user_id_0a3cbb11_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Table structure for core_sitepermission_sites
-- ----------------------------
DROP TABLE IF EXISTS `core_sitepermission_sites`;
CREATE TABLE `core_sitepermission_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitepermission_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_sitepermission_sites_sitepermission_id_e3e7353a_uniq` (`sitepermission_id`,`site_id`),
  KEY `core_sitepermission_sites_site_id_38038b76_fk_django_site_id` (`site_id`),
  CONSTRAINT `core_sitepe_sitepermission_id_d33bc79e_fk_core_sitepermission_id` FOREIGN KEY (`sitepermission_id`) REFERENCES `core_sitepermission` (`id`),
  CONSTRAINT `core_sitepermission_sites_site_id_38038b76_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;;

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
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
BEGIN;
INSERT INTO `django_admin_log` VALUES (1, '2017-06-13 11:16:44.784450', '2', 'kavout', 1, '[{\"added\": {}}]', 2, 1);
INSERT INTO `django_admin_log` VALUES (2, '2017-06-13 11:17:38.161356', '2', 'kavout', 2, '[{\"changed\": {\"fields\": [\"is_superuser\"]}}, {\"added\": {\"name\": \"Site permission\", \"object\": \"SitePermission object\"}}]', 2, 1);
INSERT INTO `django_admin_log` VALUES (3, '2017-06-13 11:18:35.396723', '2', 'kavout', 3, '', 2, 1);
INSERT INTO `django_admin_log` VALUES (4, '2017-06-13 16:40:28.514289', '1', 'ai investing', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (5, '2017-06-13 16:44:07.404448', '1', 'FUZZY MATH', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (6, '2017-06-13 17:12:28.575518', '2', 'ai investment platform', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (7, '2017-06-13 17:13:01.571989', '2', 'Pre-Labour Day Insight’s From Kavout’s CIO: Time to Put on the “Johnny Wag” Portfolio', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (8, '2017-06-13 17:35:48.128450', '8', 'Gallery', 3, '', 14, 1);
INSERT INTO `django_admin_log` VALUES (9, '2017-06-13 17:37:31.898759', '2', 'About', 3, '', 14, 1);
INSERT INTO `django_admin_log` VALUES (10, '2017-06-13 17:37:34.942510', '1', 'Blog', 3, '', 14, 1);
INSERT INTO `django_admin_log` VALUES (11, '2017-06-13 17:37:39.138626', '3', 'Contact', 3, '', 14, 1);
COMMIT;

-- ----------------------------
-- Table structure for django_comment_flags
-- ----------------------------
DROP TABLE IF EXISTS `django_comment_flags`;
CREATE TABLE `django_comment_flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` varchar(30) NOT NULL,
  `flag_date` datetime(6) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_comment_flags_user_id_537f77a7_uniq` (`user_id`,`comment_id`,`flag`),
  KEY `django_comment_flags_comment_id_d8054933_fk_django_comments_id` (`comment_id`),
  KEY `django_comment_flags_327a6c43` (`flag`),
  CONSTRAINT `django_comment_flags_comment_id_d8054933_fk_django_comments_id` FOREIGN KEY (`comment_id`) REFERENCES `django_comments` (`id`),
  CONSTRAINT `django_comment_flags_user_id_f3f81f0a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Table structure for django_comments
-- ----------------------------
DROP TABLE IF EXISTS `django_comments`;
CREATE TABLE `django_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_pk` longtext NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(254) NOT NULL,
  `user_url` varchar(200) NOT NULL,
  `comment` longtext NOT NULL,
  `submit_date` datetime(6) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `django_commen_content_type_id_c4afe962_fk_django_content_type_id` (`content_type_id`),
  KEY `django_comments_site_id_9dcf666e_fk_django_site_id` (`site_id`),
  KEY `django_comments_user_id_a0a440a1_fk_auth_user_id` (`user_id`),
  KEY `django_comments_submit_date_514ed2d9_uniq` (`submit_date`),
  CONSTRAINT `django_commen_content_type_id_c4afe962_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_comments_site_id_9dcf666e_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `django_comments_user_id_a0a440a1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (27, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (1, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (18, 'blog', 'blogcategory');
INSERT INTO `django_content_type` VALUES (17, 'blog', 'blogpost');
INSERT INTO `django_content_type` VALUES (8, 'conf', 'setting');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (9, 'core', 'sitepermission');
INSERT INTO `django_content_type` VALUES (28, 'django_comments', 'comment');
INSERT INTO `django_content_type` VALUES (29, 'django_comments', 'commentflag');
INSERT INTO `django_content_type` VALUES (20, 'forms', 'field');
INSERT INTO `django_content_type` VALUES (19, 'forms', 'fieldentry');
INSERT INTO `django_content_type` VALUES (21, 'forms', 'form');
INSERT INTO `django_content_type` VALUES (22, 'forms', 'formentry');
INSERT INTO `django_content_type` VALUES (24, 'galleries', 'gallery');
INSERT INTO `django_content_type` VALUES (23, 'galleries', 'galleryimage');
INSERT INTO `django_content_type` VALUES (11, 'generic', 'assignedkeyword');
INSERT INTO `django_content_type` VALUES (10, 'generic', 'keyword');
INSERT INTO `django_content_type` VALUES (13, 'generic', 'rating');
INSERT INTO `django_content_type` VALUES (12, 'generic', 'threadedcomment');
INSERT INTO `django_content_type` VALUES (15, 'pages', 'link');
INSERT INTO `django_content_type` VALUES (14, 'pages', 'page');
INSERT INTO `django_content_type` VALUES (16, 'pages', 'richtextpage');
INSERT INTO `django_content_type` VALUES (5, 'redirects', 'redirect');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'sites', 'site');
INSERT INTO `django_content_type` VALUES (25, 'twitter', 'query');
INSERT INTO `django_content_type` VALUES (26, 'twitter', 'tweet');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2017-06-13 10:31:52.051375');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2017-06-13 10:31:52.445551');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2017-06-13 10:31:52.517941');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2017-06-13 10:31:52.548623');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2017-06-13 10:31:52.622048');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2017-06-13 10:31:52.652522');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2017-06-13 10:31:52.681490');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2017-06-13 10:31:52.691985');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2017-06-13 10:31:52.720274');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2017-06-13 10:31:52.722764');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2017-06-13 10:31:52.734858');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0008_alter_user_username_max_length', '2017-06-13 10:31:52.764521');
INSERT INTO `django_migrations` VALUES (13, 'sites', '0001_initial', '2017-06-13 10:31:52.786091');
INSERT INTO `django_migrations` VALUES (14, 'blog', '0001_initial', '2017-06-13 10:31:53.350274');
INSERT INTO `django_migrations` VALUES (15, 'blog', '0002_auto_20150527_1555', '2017-06-13 10:31:53.374494');
INSERT INTO `django_migrations` VALUES (16, 'conf', '0001_initial', '2017-06-13 10:31:53.413493');
INSERT INTO `django_migrations` VALUES (17, 'core', '0001_initial', '2017-06-13 10:31:53.503557');
INSERT INTO `django_migrations` VALUES (18, 'core', '0002_auto_20150414_2140', '2017-06-13 10:31:53.543963');
INSERT INTO `django_migrations` VALUES (19, 'django_comments', '0001_initial', '2017-06-13 10:31:53.722097');
INSERT INTO `django_migrations` VALUES (20, 'django_comments', '0002_update_user_email_field_length', '2017-06-13 10:31:53.754451');
INSERT INTO `django_migrations` VALUES (21, 'django_comments', '0003_add_submit_date_index', '2017-06-13 10:31:53.787342');
INSERT INTO `django_migrations` VALUES (22, 'pages', '0001_initial', '2017-06-13 10:31:53.952452');
INSERT INTO `django_migrations` VALUES (23, 'forms', '0001_initial', '2017-06-13 10:31:54.219782');
INSERT INTO `django_migrations` VALUES (24, 'forms', '0002_auto_20141227_0224', '2017-06-13 10:31:54.245871');
INSERT INTO `django_migrations` VALUES (25, 'forms', '0003_emailfield', '2017-06-13 10:31:54.289070');
INSERT INTO `django_migrations` VALUES (26, 'forms', '0004_auto_20150517_0510', '2017-06-13 10:31:54.329447');
INSERT INTO `django_migrations` VALUES (27, 'forms', '0005_auto_20151026_1600', '2017-06-13 10:31:54.356084');
INSERT INTO `django_migrations` VALUES (28, 'galleries', '0001_initial', '2017-06-13 10:31:54.467742');
INSERT INTO `django_migrations` VALUES (29, 'galleries', '0002_auto_20141227_0224', '2017-06-13 10:31:54.500048');
INSERT INTO `django_migrations` VALUES (30, 'generic', '0001_initial', '2017-06-13 10:31:54.838576');
INSERT INTO `django_migrations` VALUES (31, 'generic', '0002_auto_20141227_0224', '2017-06-13 10:31:54.870572');
INSERT INTO `django_migrations` VALUES (32, 'pages', '0002_auto_20141227_0224', '2017-06-13 10:31:54.942342');
INSERT INTO `django_migrations` VALUES (33, 'pages', '0003_auto_20150527_1555', '2017-06-13 10:31:54.987004');
INSERT INTO `django_migrations` VALUES (34, 'redirects', '0001_initial', '2017-06-13 10:31:55.112410');
INSERT INTO `django_migrations` VALUES (35, 'sessions', '0001_initial', '2017-06-13 10:31:55.135192');
INSERT INTO `django_migrations` VALUES (36, 'sites', '0002_alter_domain_unique', '2017-06-13 10:31:55.188869');
INSERT INTO `django_migrations` VALUES (37, 'twitter', '0001_initial', '2017-06-13 10:31:55.246827');
COMMIT;

-- ----------------------------
-- Table structure for django_redirect
-- ----------------------------
DROP TABLE IF EXISTS `django_redirect`;
CREATE TABLE `django_redirect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `old_path` varchar(200) NOT NULL,
  `new_path` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_redirect_site_id_ac5dd16b_uniq` (`site_id`,`old_path`),
  KEY `django_redirect_91a0b591` (`old_path`),
  CONSTRAINT `django_redirect_site_id_c3e37341_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('o5lhlle30zd4x6ycqgj0kiv32frckbt5', 'MjViNzhjOGUzM2U2NjViYzkwODBlNDYzMzdkNmM2NDA0MGYxZTBjNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoibWV6emFuaW5lLmNvcmUuYXV0aF9iYWNrZW5kcy5NZXp6YW5pbmVCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzA2OGVmN2M3NzQxNmQ4ZTgxMTkyYjc4NzgyNzY3MjBhNDVjMmFlMCJ9', '2017-06-27 11:18:17.190501');
COMMIT;

-- ----------------------------
-- Table structure for django_site
-- ----------------------------
DROP TABLE IF EXISTS `django_site`;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Records of django_site
-- ----------------------------
BEGIN;
INSERT INTO `django_site` VALUES (1, '127.0.0.1:8000', 'Default');
COMMIT;

-- ----------------------------
-- Table structure for forms_field
-- ----------------------------
DROP TABLE IF EXISTS `forms_field`;
CREATE TABLE `forms_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_order` int(11) DEFAULT NULL,
  `label` varchar(200) NOT NULL,
  `field_type` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `choices` varchar(1000) NOT NULL,
  `default` varchar(2000) NOT NULL,
  `placeholder_text` varchar(100) NOT NULL,
  `help_text` varchar(100) NOT NULL,
  `form_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_field_form_id_9ca5dc7e_fk_forms_form_page_ptr_id` (`form_id`),
  CONSTRAINT `forms_field_form_id_9ca5dc7e_fk_forms_form_page_ptr_id` FOREIGN KEY (`form_id`) REFERENCES `forms_form` (`page_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Table structure for forms_fieldentry
-- ----------------------------
DROP TABLE IF EXISTS `forms_fieldentry`;
CREATE TABLE `forms_fieldentry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `value` varchar(2000) DEFAULT NULL,
  `entry_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_fieldentry_entry_id_c4fdc570_fk_forms_formentry_id` (`entry_id`),
  CONSTRAINT `forms_fieldentry_entry_id_c4fdc570_fk_forms_formentry_id` FOREIGN KEY (`entry_id`) REFERENCES `forms_formentry` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Table structure for forms_form
-- ----------------------------
DROP TABLE IF EXISTS `forms_form`;
CREATE TABLE `forms_form` (
  `page_ptr_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `button_text` varchar(50) NOT NULL,
  `response` longtext NOT NULL,
  `send_email` tinyint(1) NOT NULL,
  `email_from` varchar(254) NOT NULL,
  `email_copies` varchar(200) NOT NULL,
  `email_subject` varchar(200) NOT NULL,
  `email_message` longtext NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `forms_form_page_ptr_id_d3bcbf3a_fk_pages_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Table structure for forms_formentry
-- ----------------------------
DROP TABLE IF EXISTS `forms_formentry`;
CREATE TABLE `forms_formentry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_time` datetime(6) NOT NULL,
  `form_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_formentry_form_id_d0f23912_fk_forms_form_page_ptr_id` (`form_id`),
  CONSTRAINT `forms_formentry_form_id_d0f23912_fk_forms_form_page_ptr_id` FOREIGN KEY (`form_id`) REFERENCES `forms_form` (`page_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Table structure for galleries_gallery
-- ----------------------------
DROP TABLE IF EXISTS `galleries_gallery`;
CREATE TABLE `galleries_gallery` (
  `page_ptr_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `zip_import` varchar(100) NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `galleries_gallery_page_ptr_id_8562ba87_fk_pages_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Table structure for galleries_galleryimage
-- ----------------------------
DROP TABLE IF EXISTS `galleries_galleryimage`;
CREATE TABLE `galleries_galleryimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_order` int(11) DEFAULT NULL,
  `file` varchar(200) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_g_gallery_id_af12d3f5_fk_galleries_gallery_page_ptr_id` (`gallery_id`),
  CONSTRAINT `galleries_g_gallery_id_af12d3f5_fk_galleries_gallery_page_ptr_id` FOREIGN KEY (`gallery_id`) REFERENCES `galleries_gallery` (`page_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Table structure for generic_assignedkeyword
-- ----------------------------
DROP TABLE IF EXISTS `generic_assignedkeyword`;
CREATE TABLE `generic_assignedkeyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_order` int(11) DEFAULT NULL,
  `object_pk` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `keyword_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `generic_assig_content_type_id_3dd89a7f_fk_django_content_type_id` (`content_type_id`),
  KEY `generic_assignedkeywor_keyword_id_44c17f9d_fk_generic_keyword_id` (`keyword_id`),
  CONSTRAINT `generic_assig_content_type_id_3dd89a7f_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `generic_assignedkeywor_keyword_id_44c17f9d_fk_generic_keyword_id` FOREIGN KEY (`keyword_id`) REFERENCES `generic_keyword` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Table structure for generic_keyword
-- ----------------------------
DROP TABLE IF EXISTS `generic_keyword`;
CREATE TABLE `generic_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `generic_keyword_site_id_c5be0acc_fk_django_site_id` (`site_id`),
  CONSTRAINT `generic_keyword_site_id_c5be0acc_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Table structure for generic_rating
-- ----------------------------
DROP TABLE IF EXISTS `generic_rating`;
CREATE TABLE `generic_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(11) NOT NULL,
  `rating_date` datetime(6) DEFAULT NULL,
  `object_pk` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `generic_ratin_content_type_id_eaf475fa_fk_django_content_type_id` (`content_type_id`),
  KEY `generic_rating_user_id_60020469_fk_auth_user_id` (`user_id`),
  CONSTRAINT `generic_ratin_content_type_id_eaf475fa_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `generic_rating_user_id_60020469_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Table structure for generic_threadedcomment
-- ----------------------------
DROP TABLE IF EXISTS `generic_threadedcomment`;
CREATE TABLE `generic_threadedcomment` (
  `comment_ptr_id` int(11) NOT NULL,
  `rating_count` int(11) NOT NULL,
  `rating_sum` int(11) NOT NULL,
  `rating_average` double NOT NULL,
  `by_author` tinyint(1) NOT NULL,
  `replied_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`comment_ptr_id`),
  KEY `D5c2cbe5d32cde8f103bcc4ab6ba0d0b` (`replied_to_id`),
  CONSTRAINT `D5c2cbe5d32cde8f103bcc4ab6ba0d0b` FOREIGN KEY (`replied_to_id`) REFERENCES `generic_threadedcomment` (`comment_ptr_id`),
  CONSTRAINT `generic_threadedco_comment_ptr_id_e208ed60_fk_django_comments_id` FOREIGN KEY (`comment_ptr_id`) REFERENCES `django_comments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Table structure for pages_link
-- ----------------------------
DROP TABLE IF EXISTS `pages_link`;
CREATE TABLE `pages_link` (
  `page_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `pages_link_page_ptr_id_37d469f7_fk_pages_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Table structure for pages_page
-- ----------------------------
DROP TABLE IF EXISTS `pages_page`;
CREATE TABLE `pages_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords_string` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  `_meta_title` varchar(500) DEFAULT NULL,
  `description` longtext NOT NULL,
  `gen_description` tinyint(1) NOT NULL,
  `created` datetime(6) DEFAULT NULL,
  `updated` datetime(6) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `publish_date` datetime(6) DEFAULT NULL,
  `expiry_date` datetime(6) DEFAULT NULL,
  `short_url` varchar(200) DEFAULT NULL,
  `in_sitemap` tinyint(1) NOT NULL,
  `_order` int(11) DEFAULT NULL,
  `in_menus` varchar(100) DEFAULT NULL,
  `titles` varchar(1000) DEFAULT NULL,
  `content_model` varchar(50) DEFAULT NULL,
  `login_required` tinyint(1) NOT NULL,
  `parent_id` int(11),
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_page_parent_id_133fa4d3_fk_pages_page_id` (`parent_id`),
  KEY `pages_page_site_id_47a43e5b_fk_django_site_id` (`site_id`),
  KEY `pages_page_publish_date_eb7c8d46_uniq` (`publish_date`),
  CONSTRAINT `pages_page_parent_id_133fa4d3_fk_pages_page_id` FOREIGN KEY (`parent_id`) REFERENCES `pages_page` (`id`),
  CONSTRAINT `pages_page_site_id_47a43e5b_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Table structure for pages_richtextpage
-- ----------------------------
DROP TABLE IF EXISTS `pages_richtextpage`;
CREATE TABLE `pages_richtextpage` (
  `page_ptr_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `pages_richtextpage_page_ptr_id_8ca99b83_fk_pages_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Table structure for twitter_query
-- ----------------------------
DROP TABLE IF EXISTS `twitter_query`;
CREATE TABLE `twitter_query` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `value` varchar(140) NOT NULL,
  `interested` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Records of twitter_query
-- ----------------------------
BEGIN;
INSERT INTO `twitter_query` VALUES (1, 'search', 'from:stephen_mcd mezzanine', 1);
COMMIT;

-- ----------------------------
-- Table structure for twitter_tweet
-- ----------------------------
DROP TABLE IF EXISTS `twitter_tweet`;
CREATE TABLE `twitter_tweet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remote_id` varchar(50) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `text` longtext,
  `profile_image_url` varchar(200) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `retweeter_profile_image_url` varchar(200) DEFAULT NULL,
  `retweeter_user_name` varchar(100) DEFAULT NULL,
  `retweeter_full_name` varchar(100) DEFAULT NULL,
  `query_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `twitter_tweet_query_id_bd42b699_fk_twitter_query_id` (`query_id`),
  CONSTRAINT `twitter_tweet_query_id_bd42b699_fk_twitter_query_id` FOREIGN KEY (`query_id`) REFERENCES `twitter_query` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

SET FOREIGN_KEY_CHECKS = 1;
