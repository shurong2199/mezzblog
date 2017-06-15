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

 Date: 15/06/2017 11:39:06
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
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$30000$YiZwIX8cAhZd$SDdZCcjecrQbBlW4zJtKVCp0e528/TOBFH85a6mE7LU=', '2017-06-15 02:09:48.193769', 1, 'admin', '', '', 'example@example.com', 1, 1, '2017-06-13 10:31:55.440105');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Records of blog_blogcategory
-- ----------------------------
BEGIN;
INSERT INTO `blog_blogcategory` VALUES (1, 'ai investing', 'ai-investing', 1);
INSERT INTO `blog_blogcategory` VALUES (2, 'ai investment platform', 'ai-investment-platform', 1);
INSERT INTO `blog_blogcategory` VALUES (3, 'ai trading', 'ai-trading', 1);
INSERT INTO `blog_blogcategory` VALUES (4, 'artificial intelligence', 'artificial-intelligence', 1);
INSERT INTO `blog_blogcategory` VALUES (5, 'Blog', 'blog', 1);
INSERT INTO `blog_blogcategory` VALUES (6, 'bullish', 'bullish', 1);
INSERT INTO `blog_blogcategory` VALUES (7, 'Kai', 'kai', 1);
INSERT INTO `blog_blogcategory` VALUES (8, 'kai score', 'kai-score', 1);
INSERT INTO `blog_blogcategory` VALUES (9, 'Kavout', 'kavout', 1);
INSERT INTO `blog_blogcategory` VALUES (10, 'Market Analysis', 'market-analysis', 1);
INSERT INTO `blog_blogcategory` VALUES (11, 'Stock Picks', 'stock-picks', 1);
INSERT INTO `blog_blogcategory` VALUES (12, 'stocks', 'stocks', 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Records of blog_blogpost
-- ----------------------------
BEGIN;
INSERT INTO `blog_blogpost` VALUES (3, 0, '', 0, 0, 0, 'What is an AI investment platform?', 'what-is-an-ai-investment-platform', '', 'If the adoption of artificial intelligence and machine learning within leading hedge funds is any indication, the AI-driven hedge fund is on the rise.', 1, '2017-06-15 02:30:12.693022', '2017-06-15 02:30:12.693022', 2, '2017-06-15 02:30:12.690285', NULL, NULL, 1, '<p class=\"p1\"><span class=\"s1\">If the adoption of artificial intelligence and machine learning within leading hedge funds is any indication, the AI-driven hedge fund is on the rise.</span></p>\n<p class=\"p1\"><span class=\"s1\">With $32 billion under management, Two Sigma Investments is known for using AI and machine learning as a key part of their strategy. In fact, being a finance professional is not even<a href=\"http://www.nanalyze.com/2016/04/machine-learning-for-stock-trading-strategies/\"> <span class=\"s2\">a requirement to work at this firm</span></a>.</span></p>\n<p class=\"p1\"><span class=\"s1\">As another instance, Bridgewater Associates, which has $150 billion in assets under management, started a new AI unit led by David Ferrucci who led the development of IBM’s Watson. After working at IBM for 17 years,<a href=\"http://www.nanalyze.com/2016/04/machine-learning-for-stock-trading-strategies/\"> <span class=\"s2\">he was poached by Bridgewater in 2012</span></a>.</span></p>\n<p class=\"p1\"><span class=\"s1\">But what about the AI investment platform? Unlike the AI-driven hedge fund, the use of an AI investment platform puts the power back into the investor’s hands to perform their own investment research and trading intelligently and armed with deep and comprehensive data.</span></p>\n<p class=\"p1\"><span class=\"s1\">Investing can be an intimidating experience when you feel that you don’t have the full picture about the markets and a sense of a stock’s value, growth and momentum based on a deep and historical analysis of equity data, trading volume, quotes, past SEC filings and other data.</span></p>\n<p class=\"p1\"><span class=\"s1\">In essence, knowledge is power and often, many brokerages and hedge funds claim to have a superior knowledge of the markets and an ability to unearth prospective investment opportunities that investors potentially can’t on their own.</span></p>\n<p class=\"p1\"><span class=\"s1\">But their claims and ability aren’t necessarily rooted in their intelligence alone -- what these sophisticated institutions do have is <i>access</i> to superior knowledge and data.</span></p>\n<p class=\"p1\"><span class=\"s1\">And few technologies can compare to AI and machine learning in terms of their ability to analyse millions of data points in seconds and cover an incredibly deep and comprehensive range of current and historical stock data.</span></p>\n<p class=\"p1\"><span class=\"s1\">For too long, however, no real and easy to understand interface was available to investors of all levels that could give access to the same AI-driven investment research and analysis as the larger players.</span></p>\n<p class=\"p1\"><span class=\"s1\">It’s one of reasons we created Kavout, the first free AI investment platform and Kai, the core artificial intelligence (AI) and machine learning system that powers our platform. We knew that institutions on Wall Street were already building artificial intelligence tools to outperform the market.<span class=\"Apple-converted-space\">  </span>Our aim was to give access to the same technologies used by leading investors to enable investors of all find the best investment opportunities -- and do it in a way that made AI simple, easy and intuitive to use.</span></p>\n<p class=\"p1\"><span class=\"s1\">We also knew that an AI investment platform could do a lot of heavy lifting in terms of investment research and this heavy lifting is often what holds back the average analyst from finding key investment opportunities. For instance, whereas a typical analyst can only keep track of a few dozen stocks at a time, Kai reviews its recommendations of more than 7,600 U.S. stocks 24/7. Whereas traditional analysts often rely on simple statistical models and gut feelings to identify investment opportunities, Kai is objective and uses the power of predictive analytics and big data to help investors identify the most attractive investments.</span></p>\n<p class=\"p1\"><span class=\"s1\">In essence, the AI investment platform is much about empowering the individual investor as it is about finding much more efficient and intelligent approaches to arming investors with critical knowledge and data about the markets and key investments.</span></p>', 1, '', 1, 1);
INSERT INTO `blog_blogpost` VALUES (4, 0, '', 0, 0, 0, 'AI investing vs traditional investing', 'ai-investing-vs-traditional-investing', '', 'Dramatic improvements in computing power are changing the investment world, with algorithmic traders and investors increasingly influential across markets and money managers scrambling to hire computer scientists. AI is at the forefront of this trend.', 1, '2017-06-15 02:34:17.116953', '2017-06-15 02:34:17.116953', 2, '2017-06-15 02:34:17.114553', NULL, NULL, 1, '<p class=\"p1\">Dramatic improvements in computing power are changing the investment world, with algorithmic traders and investors increasingly influential across markets and money managers scrambling to hire computer scientists. AI is at the forefront of this trend.</p>\n<p class=\"p1\"><span class=\"s1\">But where does that leave traditional investing approaches and analyst-driven investment research?</span></p>\n<p class=\"p1\"><span class=\"s1\">With traditional investing, the onus is on the individual analyst or team of analysts to research key stocks.</span></p>\n<p class=\"p1\"><span class=\"s1\">Traditional analysis often has a valuable human filter meaning analysts can interpret historical data, news and social data and make sophisticated and nuanced predictions related to key investment opportunities. AI investing approaches can also do this but the debate is still on whether a human or AI analyst is better at discovering patterns and trends from unstructured and noisy data.</span></p>\n<p class=\"p1\"><span class=\"s1\">The key advantage that AI systems may have is their ability to analyse that much more data, leaving nearly no stone unturned -- a feat that would be difficult for any analyst, even if they worked over 80 hours a week.</span></p>\n<p class=\"p1\"><span class=\"s1\">However, human filters may also subject financial data to subjectivity, including reliance on gut feelings when it comes to identifying investment opportunities and skewed ratings due to biases and conflicts of interests.</span></p>\n<p class=\"p1\"><span class=\"s1\">With AI investing, an intelligent machine does the research, analysis and predictions. In the case of Kai, the core artificial intelligence (AI) and machine learning system that powers Kavout, the sole focus is on on uncovering the most profitable investments regardless of sector, industry trends or whether it’s a small cap or large cap stock. And because Kai is not subject to human subjectivity, it treats each stock with the same level of analysis, depth and comprehensiveness of analysis.</span></p>\n<p class=\"p1\"><span class=\"s1\">Unlike in traditional investing, AI investing approaches to investment research are exhaustive because unlike teams of analysts, AI and machine learning systems never stop working. For instance, whereas a typical analyst can only keep track of a few dozen stocks at a time due to their limited working time during the week, Kai reviews its recommendations of more than 7,600 U.S. stocks 24/7.  In addition, Kai gets smarter every second: continuously learning and adapting to the changing market landscape with each search, analysis and prediction.</span></p>\n<p class=\"p1\"><span class=\"s1\">When it comes to efficiency, accuracy and speed, AI investing approaches clearly come out on top. AI investing methods also win on the level of depth, comprehensiveness and objectivity they apply to researching and analysing each and every stock.</span></p>\n<p class=\"p1\"><span class=\"s1\">Whether AI investing methods can spot and predict larger trends is up for debate -- human intelligence still plays a role in understanding certain key market sentimentalities and trends.</span></p>\n<p class=\"p1\"><span class=\"s1\">But those insights can only get better if they have a strong foundation to stand on -- an area where AI clearly shines.</span></p>', 1, '', 1, 1);
INSERT INTO `blog_blogpost` VALUES (5, 0, '', 0, 0, 0, 'Can AI Investing Outsmart the Markets?', 'can-ai-investing-outsmart-the-markets', '', 'Every day, computers make many millions of electronic trades by performing nuanced calculations aimed at carving out even the slightest advantage in terms of speed and efficiency. Increasingly, however, more significant trading decisions are being made by smarter, more autonomous algorithms.', 1, '2017-06-15 02:36:07.009716', '2017-06-15 02:36:07.009716', 2, '2017-06-15 02:36:07.006969', NULL, NULL, 1, '<p class=\"p1\">Every day, computers make many millions of electronic trades by performing nuanced calculations aimed at carving out even the slightest advantage in terms of speed and efficiency. Increasingly, however, more significant trading decisions are being made by smarter, more autonomous algorithms.</p>\n<p class=\"p1\"><span class=\"s1\">Wall Street has had its eyes on artificial intelligence (AI) technologies for years and for a good reason. In part due to its superhuman thought processes and analytical capabilities, AI investing holds within it the promise of predicting which investments will outperform the market.</span></p>\n<p class=\"p1\"><span class=\"s1\">And it’s no coincidence that many of the large hedge funds and investment banks on Wall Street are starting to hire top talent in artificial intelligence and machine learning. In 2015, Bridgewater Associates, who manage over<a href=\"http://www.nanalyze.com/2016/04/machine-learning-for-stock-trading-strategies/\"> <span class=\"s2\">$150 billion in assets</span></a>, started a new artificial intelligence unit led by David Ferrucci who led the development of IBM’s Watson.</span></p>\n<p class=\"p1\"><span class=\"s1\">Today, Goldman Sachs has<a href=\"http://www.businessinsider.com/goldman-sachs-has-more-engineers-than-facebook-2015-4?IR=T\"><span class=\"s2\"> more engineers than Facebook</span></a>.<span class=\"Apple-converted-space\">  </span>No doubt that the big players know that there is much more to be gained in the markets by investing in artificial intelligence and machine learning.</span></p>\n<p class=\"p1\"><span class=\"s1\">But can AI investing truly outsmart the markets? When so much of intelligent investment decisions rests on more complete knowledge of the markets, objectivity in assessing opportunities and quantitative prowess, AI can give a serious edge to investors.</span></p>\n<p class=\"p1\"><span class=\"s1\">In essence, an AI-driven investment strategy arms investors with a superhuman-like capabilities in making more successful predictions about key investment opportunities. Using AI and big data is also often the equivalent of a drawing from a personal team of data scientists who can crunch millions of data points in seconds.</span></p>\n<p class=\"p1\"><span class=\"s1\">Further, AI investing approaches rely on intelligent AI systems that continuously learn, adapt to the changing market landscape and get smarter every second. Unlike human analysts, AI systems never stop working, never get distracted and never miss critical information in the clamor of the market.</span></p>\n<p class=\"p1\"><span class=\"s1\">AI-driven approaches to investing have a particular edge in making sense of unstructured yet highly valuable data — this goes beyond super fast computing and number crunching to identifying patterns and making predictions on seemingly chaotic and unrelated data. As discussed in a<a href=\"https://www.technologyreview.com/s/600695/will-ai-powered-hedge-funds-outsmart-the-market/\"> <span class=\"s2\">recent MIT Technology Review article</span></a>, “one of the most promising uses of relatively new AI techniques may be processing unstructured natural language data in the form of news articles, company reports, and social media posts, in an effort to glean insights into the future performance of companies, currencies, commodities, or financial instruments.”</span></p>\n<p class=\"p1\"><span class=\"s1\">The real truth, however, on whether AI investing can outsmart the markets is in the numbers.</span></p>\n<p class=\"p1\"><span class=\"s1\">According to research firm, Eurekahedge, funds that deploy AI trading algorithms have<a href=\"http://www.bloomberg.com/enterprise/blog/volatility-favors-the-artificially-intelligent-hedge-fund/\"> <span class=\"s2\">surpassed average industry returns every year</span></a> for the past seven years, excluding 2012.</span></p>\n<p class=\"p1\"><span class=\"s1\">Further, the Newedge CTA Index, the benchmark for funds that use automated computer programs to trade options, futures and other derivatives, rose 4.4 percent in January 2016.<span class=\"Apple-converted-space\">  </span>Meanwhile, the<a href=\"http://www.bloomberg.com/enterprise/blog/volatility-favors-the-artificially-intelligent-hedge-fund/\"> <span class=\"s2\">broader hedge fund industry lost 2.76 percent in the same period</span></a>.</span></p>\n<p class=\"p1\"><span class=\"s1\">After extensive testing of its AI system using more than ten years worth of historical data, the AI-driven hedge fund Aidyia claims that it has averaged a very healthy<a href=\"http://qz.com/389647/artificial-intelligence-is-the-next-big-thing-for-hedge-funds-seeking-an-edge/\"> <span class=\"s2\">25% year-on-year return</span></a>.</span></p>\n<p class=\"p1\"><span class=\"s1\">Through Kavout’s AI-driven Kai Score system, correlations between stocks’ attributes and their future performance are computed within seconds. To date, stocks picked by Kai Score have backtested very positively and continue to significantly outperform key benchmarks.</span></p>\n<p class=\"p1\"><span class=\"s1\">Ultimately, AI investing is not immaculate and not to be confused with setting one’s investments on autopilot. As Chief Scientist Anthony Ledford of Man AHL said,<span class=\"Apple-converted-space\">  </span>“it’s important to remember how<a href=\"https://www.technologyreview.com/s/600695/will-ai-powered-hedge-funds-outsmart-the-market/\"> <span class=\"s2\">humbling the market can be</span></a>”.<span class=\"Apple-converted-space\">  </span>In the case of AI-driven investing, there is always still a risk of the making the wrong move based on incorrect or incomplete information.</span></p>\n<p class=\"p1\"><span class=\"s1\">Still, going into the markets with deeper and more comprehensive knowledge never hurts.</span></p>', 1, '', 1, 1);
INSERT INTO `blog_blogpost` VALUES (6, 0, '', 0, 0, 0, 'August 15th: Pre-Labor Day Market Outlook and Top Kai Score Stock Picks by Kavout\'s Chief Investment Officer', 'august-15th-pre-labor-day-market-outlook-and-top-kai-score-stock-picks-by-kavouts-chief-investment-officer', '', 'The stock market has quietly made new all-time highs this summer and market volatility has quietly moved to historic lows.  U.S. interest rates are near record lows, but the Fed\'s goal of raising rates is constantly being restrained by global issues such as negative rates in Europe, Brexit and China’s weakness.', 1, '2017-06-15 02:37:59.947857', '2017-06-15 02:37:59.947857', 2, '2017-06-15 02:37:59.945369', NULL, NULL, 1, '<p class=\"p1\">The stock market has quietly made new all-time highs this summer and market volatility has quietly moved to historic lows.  U.S. interest rates are near record lows, but the Fed\'s goal of raising rates is constantly being restrained by global issues such as negative rates in Europe, Brexit and China’s weakness.</p>\n<p class=\"p1\">This is making me feel pretty bullish for the remainder of the year.  I expect the market to continue to be quiet as the summer winds down, so I was just <a href=\"https://www.kavout.com/features/k-rank/\">checking for some mega-cap stocks with Kai ratings of 9</a>.</p>\n<p class=\"p1\">The next couple of weeks are a good time to get your buy list ready for the after Labor Day rally that may ensue.</p>\n<p class=\"p1\">I was pleasantly surprised when I found Kai 9 ratings for four of the top ten market cap stocks in America including GOOG, AMZN, JNJ and WMT.  How\'s that for a little mega-cap diversified portfolio with big tech, e-commerce, healthcare and big retail?</p>\n<p class=\"p1\"><em>Keith Kline is the Chief Investment Officer at <a href=\"https://www.kavout.com\">Kavout</a>. He has over 25 years of trading experience across a broad range of asset classes. Keith has worked at the Philadelphia Options Exchange, where he established one of the largest global interest rate derivative desks with The Bank of New York. He also traded a multi-hundred million dollar long/short portfolio at Susquehanna Investment Group (SIG). He later headed a derivatives trading desk at a commodity hedge fund that was acquired by The Carlyle Group. Keith started the Wall Street Preparatory Academy in 2013.</em></p>', 1, '', 1, 1);
INSERT INTO `blog_blogpost` VALUES (7, 0, '', 0, 0, 0, 'August 16th: Kavout’s Chief Investment Officer on Market Trends, Negative Yielding and Top Kai Score Stock Picks', 'august-16th-kavouts-chief-investment-officer-on-market-trends-negative-yielding-and-top-kai-score-stock-picks', '', 'The U.S. stock market continues its slow, quiet August rally today with the broad market continuing to make new highs.  As I mentioned earlier this week, this is a function of the perception that the Fed will not be able to raise rates in any meaningful way due to the negative ten year rates in Germany, Japan, and others.  There is now $13 trillion invested in negative yielding government bonds, which could easily begin to flow into U.S. equities if this rally continues.  These negative yielding global government bonds are going to prevent the Fed from raising rates in any meaningful way anytime soon.  This leaves U.S. interest rates at historic lows, but not at the panic negative yields of many other countries around the world.  These factors are very positive for U.S. equities.', 1, '2017-06-15 02:39:13.934131', '2017-06-15 02:39:13.934131', 2, '2017-06-15 02:39:13.931181', NULL, NULL, 1, '<p><span style=\"\">The U.S. stock market continues its slow, quiet August rally today with the broad market continuing to make new highs.  As I <a href=\"http://blog.kavout.com/?p=27\">mentioned earlier this week</a>, this is a function of the perception that the Fed will not be able to raise rates in any meaningful way due to the negative ten year rates in Germany, Japan, and others.  There is now $13 trillion invested in negative yielding government bonds, which could easily begin to flow into U.S. equities if this rally continues.  These negative yielding global government bonds are going to prevent the Fed from raising rates in any meaningful way anytime soon.  This leaves U.S. interest rates at historic lows, but not at the panic negative yields of many other countries around the world.  These factors are very positive for U.S. equities.</span></p>\n<p><img alt=\"kavout\" class=\"aligncenter wp-image-44\" height=\"237\" src=\"http://blog.kavout.com/wp-content/uploads/2016/08/kavout-2-300x131.png\" width=\"540\"></p>\n<p><span style=\"\">Not surprisingly, the VIX is trading around 11.5 which is nearing historic lows.  On one hand, this indicates a total lack of fear in the market, but on the other hand, some may consider it a contra-indicator and a precursor of an impending correction.   I usually recommend buying some volatility protection when the VIX is low, but I have seen the VIX stay low for years at a time.  </span></p>\n<p><img alt=\"kavout\" class=\"aligncenter wp-image-45\" height=\"286\" src=\"http://blog.kavout.com/wp-content/uploads/2016/08/kavout-3-300x172.png\" width=\"500\"></p>\n<p><span style=\"\">So, what to do?  I went to <a href=\"http://blog.kavout.com/?p=27\">Kavout.com</a> and searched for mega-cap stocks with Kai scores of 9.  I was very pleased to see that I could assemble a highly diversified four stock portfolio with a combined market cap of $1.5 trillion with GOOGL, AMZN, JNJ and WMT.  This gives me exposure to big tech, big e-commerce, big healthcare and big retail.   This is a high quality and highly diversified portfolio that I believe will perform very nicely over the next six months.  This portfolio also diversifies over quality, value, growth and momentum.  </span></p>\n<p><span style=\"\">GOOGLE and JNJ have 9 Kai ratings for quality, WMT has an 8 rating for value and AMZN has a 9 rating for growth and momentum.  Diversifying across industries and across value, growth and quality?  That’s what I call a great portfolio.  I would start setting this trade up in the next week or two and prepare for the post Labor Day rally.</span></p>\n<p><span style=\"\">If you are in the camp of thinking a low VIX is a bearish sign for the market, then I would add an inexpensive volatility hedge to this portfolio.  This can be done with March VIX futures or simply spend less money and just buy some March VIX calls.  But, and this is very important, don’t make the rookie mistake of buying volatility ETF’s like VXX.  There is a very technical reason why these ETF’s dramatically underperform which I will expound on in detail in a later article.  </span></p>\n<p><span style=\"\">So, buy a $1.5 trillion stock portfolio and hedge it with some volatility protection.   Now that’s how the pros trade.  Long a bull market, but protect it with a low-price volatility hedge.  </span></p>\n<p><em>Keith Kline is the Chief Investment Officer at <a href=\"https://www.kavout.com\">Kavout</a>. He has over 25 years of trading experience across a broad range of asset classes. Keith has worked at the Philadelphia Options Exchange, where he established one of the largest global interest rate derivative desks with The Bank of New York. He also traded a multi-hundred million dollar long/short portfolio at Susquehanna Investment Group (SIG). He later headed a derivatives trading desk at a commodity hedge fund that was acquired by The Carlyle Group. Keith started the Wall Street Preparatory Academy in 2013.</em></p>', 1, '', 1, 1);
INSERT INTO `blog_blogpost` VALUES (8, 0, '', 0, 0, 0, 'Pre-Labour Day Insight\'s From Kavout\'s CIO: Time to Put on the \"Johnny Wag\" Portfolio', 'pre-labour-day-insights-from-kavouts-cio-time-to-put-on-the-johnny-wag-portfolio', '', 'Two weeks ago on Kavout\'s blog, I suggested putting on a portfolio consisting of four mega cap Kai Score rated 9 stocks before Labor Day.', 1, '2017-06-15 02:40:07.763189', '2017-06-15 02:40:07.763189', 2, '2017-06-15 02:40:07.760692', NULL, NULL, 1, '<p><span style=\"\">Two weeks ago on <a href=\"http://blog.kavout.com/?p=27\">Kavout\'s blog</a>, I suggested putting on a portfolio consisting of four mega cap Kai Score rated 9 stocks before Labor Day.</span></p>\n<p><span style=\"\">I call this the Johnny WAG portfolio because it consists of Johnny John (Johnson &amp; Johnson) JNJ, </span><b>W</b><span style=\"\">MT, </span><b>A</b><span style=\"\">MZN and </span><b>G</b><span style=\"\">OOGL.  This portfolio and the market in general has been quiet as predicted but this could all change when everyone gets back from vacation after Labor Day.</span></p>\n<p>Last Friday, Janet Yellen indicated in her Jackson Hole speech that the U.S. economy was starting to grow fast enough to warrant another rate hike in the near future.  This was followed up by a plea from global central bankers to increase stimulus programs around the world.  Many of these countries currently have negative interest rates and they fear that their economies are stagnating and gripped by deflationary pressures.</p>\n<p><span style=\"\">This dichotomy between Janet Yellen’s view of the economy and other central bankers’ views is surely going to restrain any ambition Yellen has to raising rates in any significant way.  So, as I discussed two weeks ago, this should lead to a fairly robust U.S. economy, combined with low interest rates.  This is bullish for U.S. stocks.  I also anticipate significant reallocation of funds out of negative yielding foreign bonds into a bullish U.S. stock market.</span></p>\n<p>So, the time could be right to put on the Johnny WAG portfolio this week.</p>\n<p><em>Keith Kline is the Chief Investment Officer at <a href=\"https://www.kavout.com/\">Kavout</a>. He has over 25 years of trading experience across a broad range of asset classes. Keith has worked at the Philadelphia Options Exchange, where he established one of the largest global interest rate derivative desks with The Bank of New York. He also traded a multi-hundred million dollar long/short portfolio at Susquehanna Investment Group (SIG). He later headed a derivatives trading desk at a commodity hedge fund that was acquired by The Carlyle Group. Keith started the Wall Street Preparatory Academy in 2013.</em></p>', 1, '', 1, 1);
INSERT INTO `blog_blogpost` VALUES (9, 0, '', 0, 0, 0, 'How Do Interest Rates Affect Equity Prices?', 'how-do-interest-rates-affect-equity-prices', '', 'This a short description on the theoretical relationship between interest rates and equity prices.  The basic idea is that low interest rates make it cheaper to borrow and spend money.  High interest rates make it more expensive to borrow and spend money.  When people are borrowing and spending money (low rates) corporate profits go up, and stock prices increase.  When people are not borrowing and spending (high rates) corporate profits go down, and stock prices decrease.', 1, '2017-06-15 02:40:47.234963', '2017-06-15 02:40:47.234963', 2, '2017-06-15 02:40:47.232692', NULL, NULL, 1, '<p>This a short description on the theoretical relationship between interest rates and equity prices.  The basic idea is that low interest rates make it cheaper to borrow and spend money.  High interest rates make it more expensive to borrow and spend money.  When people are borrowing and spending money (low rates) corporate profits go up, and stock prices increase.  When people are not borrowing and spending (high rates) corporate profits go down, and stock prices decrease.</p>\n<p>The second idea is that low rates make bonds less attractive to own vs. equities, and high interest rates make bonds more attractive to own vs. equities.  Most investors own a combination of equities and bonds in their portfolios.  As interest rates rise the return investors can earn on fixed income products increase making bonds look more attractive than taking the risk of owning equities.  When interest rates decline the opposite happens.  Thus, high interest rates lead to less demand for equities, and less demand leads to lower prices.</p>\n<p>The third theory is that equities are priced at the discounted value of all their future cash flows.  If a company’s future cash flows are discounted at a low interest rate, the present value will be higher.  If the cash flows are discounted at a high interest rate, the present value will be lower.  Thus low interest rates translate into high equity prices, and high interest rates translate into low equity prices.</p>', 1, '', 1, 1);
INSERT INTO `blog_blogpost` VALUES (10, 0, '', 0, 0, 0, 'Fiscal Policy 101', 'fiscal-policy-101', '', 'Hello everyone! This is a very short and simple primer on fiscal policy, and how it can affect the economy.  Fiscal policy is defined as the means by which a government adjusts its spending and tax rate to influence a nation’s economy.  The deficit is the year to year amount of money that a government spends over the amount of money it takes in as tax revenue.  A surplus is the year to year amount of money that a government takes in as tax revenue over the amount of money it spends.  So, the government can decide to run a deficit or a surplus each and every year.  The National Debt is the total amount of money that the government is currently borrowing.  This number is the current amount of all outstanding U.S. Treasury obligations.', 1, '2017-06-15 02:41:30.957288', '2017-06-15 02:41:30.957288', 2, '2017-06-15 02:41:30.954416', NULL, NULL, 1, '<p>Hello everyone! This is a very short and simple primer on fiscal policy, and how it can affect the economy.  <strong>Fiscal policy</strong> is defined as the means by which a government adjusts its spending and tax rate to influence a nation’s economy.  <strong>The deficit</strong> is the year to year amount of money that a government spends over the amount of money it takes in as tax revenue.  A <strong>surplus</strong> is the year to year amount of money that a government takes in as tax revenue over the amount of money it spends.  So, the government can decide to run a deficit or a surplus each and every year.  The <strong>National Debt </strong>is the total amount of money that the government is currently borrowing.  This number is the current amount of all outstanding U.S. Treasury obligations.</p>\n<p>In The United States, Congress and The President control the level of government spending each year by passing a budget into law.  The size of this budget can have a short term impact on the economy.  But, if the government decides to spend more money than the tax receipts they take in (almost always the case) then the government must borrow money.  The mechanism by which the government borrows is by selling U.S. Treasury bonds to world investors.  In essence, the government decides to increase its debt in order to spend more money now.  This is what pundits and politicians call “borrowing from the next generation”.  Remember, the government has to pay back these loans in the future.  This increased government spending theoretically stimulates a weak economy, which is exactly what most world leaders did in 2009.</p>\n<p>On the other hand, Congress and The President could decide to lower tax rates on the population, which is the second part of fiscal policy.  A lower tax rate stimulates the economy because people pay less taxes, and thus have more money to spend and invest.  A higher tax rate dampens economic activity because people pay higher taxes, and thus have less money to spend and invest.  In this country there is a very stark theoretical difference of opinion between Democrats and Republicans.  Democrats believe the best way to stimulate the economy is to raise tax rates and increase government spending.  Republicans believe the best way to stimulate the economy is to lower tax rates and reduce government spending.  In 2009 the government decided to borrow and spend money and not reduce taxes, which is why I said the government decided to borrow money to fight a credit crisis.</p>', 1, '', 1, 1);
INSERT INTO `blog_blogpost` VALUES (11, 0, '', 0, 0, 0, 'Is the Fed Hillary\'s Trump Card?', 'is-the-fed-hillarys-trump-card', '', 'This Sunday Hillary Clinton and Donald Trump will face off in their second Presidential Debate.  Post-debate polls indicate that Hillary handily won the debate and has now extended her lead to 4 or 5 percentage points.  Betting web sites indicate that she is approximately 75% to win the election.  Do the financial markets have a preferred candidate?  Should you as an investor be concerned about the election?', 1, '2017-06-15 02:42:11.061340', '2017-06-15 02:42:11.061340', 2, '2017-06-15 02:42:11.058871', NULL, NULL, 1, '<p>This Sunday Hillary Clinton and Donald Trump will face off in their second Presidential Debate.  Post-debate polls indicate that Hillary handily won the debate and has now extended her lead to 4 or 5 percentage points.  Betting web sites indicate that she is approximately 75% to win the election.  <strong>Do the financial markets have a preferred candidate?  Should you as an investor be concerned about the election?</strong></p>\n<p>In order to answer these questions we need to turn our attention to Janet Yellen and The Federal Reserve.  Much of 2016 has been dominated by The Fed’s desire to push interest rates up from the historical low levels of 0%.  These low interest rates have been the <a href=\"http://blog.kavout.com/?p=61\" target=\"_blank\">key driver to a 7 year bull market in equities</a>.  In fact most experts agree that 0% interest rates (as well as fiscal stimulus/quantitative easing) saved the world from the brink of meltdown in 2009.  But did these extreme measures “save” the world or just “delay” the inevitable?</p>\n<p style=\"text-align: left;\">Despite your personal opinions about Donald Trump, he did say one thing in the first debate that I believe is absolutely true.  He said that the U.S. economy is in a <a href=\"http://money.cnn.com/2016/09/06/investing/donald-trump-fed-false-economy/\">massive bubble</a> because of the unnaturally low interest rates.  The key thing to understand is that the financial crisis of 2008-2009 was a credit crisis, and government leaders attempted to save the world<a href=\"http://blog.kavout.com/?p=63\" target=\"_blank\"> by borrowing even more money. </a> This strategy doesn’t make logical sense, has never worked, and will never work.  You can see from the price action of equities this year that every time The Fed has talked about raising rates the stock markets have had a dramatic selloff.  In fact, at the end of 2015 The Fed was hoping to raise rates 4 or 5 times this year, and has only been able to do so once.  The equity markets understands that current prices are precariously perched upon low interest rates.</p>\n<p>So, if you are an investor, who should you be rooting for?  Without question you should be rooting for Hillary Clinton.  Remember, Janet Yellen was appointed by Barack Obama, and despite her claim of being politically neutral, you better believe <a href=\"http://www.usnews.com/news/articles/2016-09-28/federal-reserve-under-fire-for-ties-to-democrats\">she is a Democrat</a>. The state of equity markets around the world are completely in her hands.  You can be sure that if Hillary wins Janet Yellen will not do anything to upset equity markets.  A large stock market decline would make the newly elected president look very bad, and Hillary will not allow that.  On the other hand, if Trump wins you can expect sharp interest rate hikes and an equity decline.  There is nothing more Democrats would love to do than embarrass Trump, and point out how Republicans are terrible for the economy.  Remember, the 2020 Presidential election starts the day after the 2016 election.</p>\n<p>So, my investing advice is to watch the polls very closely.  If Trump starts to catch up, or even takes the lead, I would take an extremely cautious investment approach.  If Hillary stays ahead, I think the bull market is alive and well.</p>\n<p>What do you guys think? Stay tuned for a post about the debate on Sunday!</p>', 1, '', 1, 1);
INSERT INTO `blog_blogpost` VALUES (12, 0, '', 0, 0, 0, 'It’s Deja Vu All Over Again', 'its-deja-vu-all-over-again', '', 'I feel like I’ve seen this movie before.  The Federal Reserve is on its kick to raise rates again.  The market expects a rate hike of .25% in December, and down goes the stock market.  It’s the same old story.  The Fed thinks we have inflation, but the rest of the world knows we have deflation.', 1, '2017-06-15 02:43:15.312208', '2017-06-15 02:43:15.312208', 2, '2017-06-15 02:43:15.309300', NULL, NULL, 1, '<p>I feel like I’ve seen this movie before.  The Federal Reserve is on its kick to raise rates again.  The market expects a rate hike of .25% in December, and down goes the stock market.  It’s the same old story.  The Fed thinks we have inflation, but the rest of the world knows we have deflation.</p>\n<p>This Fed mission has sent the Dollar Index (<a href=\"http://www.marketwatch.com/investing/index/dxy\">DXY</a>) to new highs, and the <a href=\"http://data.cnbc.com/quotes/US10Y\">U.S. 10-year treasury</a> is at 1.75%.  This interest rate is at odds with the 0% rate in Germany and Japan, and is a very bad sign for U.S. stocks.  The <a href=\"http://money.cnn.com/data/markets/dow/\">Dow Jones Industrial Average</a> is trading below the psychologically important 18,000 mark as I type this, and the SPY’s are solidly below the 50 day moving average.  In fact, last night I received a <a href=\"https://www.rt.com/business/362618-stock-market-severe-fall/\">RED ALERT</a> stock market warning from HSBC.</p>\n<p>These stock selloffs have happened every time The Fed has tried to raise rates this year.  Most of the time The Fed has relented and pushed back the date of their next hike.  What will The Fed do this time?  Nobody knows, but there is one thing to be sure of.  If The Fed stands their ground, then stocks will be lower in December.</p>', 1, '', 1, 1);
INSERT INTO `blog_blogpost` VALUES (13, 0, '', 0, 0, 0, 'Capitalism Trumps Socialism', 'capitalism-trumps-socialism', '', 'WHAT HAPPENED LAST NIGHT!!!!????', 1, '2017-06-15 02:44:10.757037', '2017-06-15 02:44:10.757037', 2, '2017-06-15 02:44:10.754650', NULL, NULL, 1, '<p>WHAT HAPPENED LAST NIGHT!!!!????</p>\n<p>This is the question you may be asking yourself this morning.  Is America just a racist country?  Are we going to become totally isolationist?  Did we start building The Wall yet?  Did we just elect a cartoon character?</p>\n<p>No, No, No, and No.</p>\n<p></p>\n<p>The answer is that the American people chose capitalism over socialism.  Despite what you hear in the news, the American people understand that this economy is a government constructed mirage.  The 4.9% unemployment rate is a mirage.  Dow 18,000 is a mirage.  0% interest rates are a mirage.</p>\n<p>If you stayed up until 3:30 am last night like me, you would have witnessed an 800 point collapse in the Dow Jones Industrial Average.  The market is down only 200 points right now, but it is going to be a volatile day.  So, from an investing stand point, it is very important to understand why.  It is NOT because Trump is going to start trade wars.  It is NOT because Trump is going to alienate our allies.  It is NOT because Trump is going to start bombing everyone.</p>\n<p>The reason the market is down is because The Fed is now going to start raising rates aggressively.  Janet Yellen is a Democrat, and like I told you before the election the Democrats start their 2020 election campaign today.  They will be unified in their strategy to make Trump look bad.  The 10 year U.S. Treasury Bonds are approaching 2% this morning, which is a 6 month high.  This is the place you need to focus your investing energy for the rest of the year.</p>\n<p>Now, make no mistake.  Trump is a Capitalist, and Capitalism is GOOD for the stock market.  Corporate regulations will be reduced, taxes will be reduced, and in the long term this economy will take off.  But, first the mirage economy we have now will have to be broken down.  It has to be torn down and rebuilt.  And that is what Trump will do.  So in the short term I expect to see a sizable decline in U.S. equity prices.  I would recommend a very conservative portfolio for the next 3 to 6 months.  But, at some point in 2017, there will be an amazing buying opportunity.  I would move to cash today and wait for this buying opportunity.</p>', 1, '', 1, 1);
INSERT INTO `blog_blogpost` VALUES (14, 0, '', 0, 0, 0, 'PARTY LIKE IT’S 1999', 'party-like-its-1999', '', 'Did we seriously just have a high flying tech stock IPO at $17 and immediately rally 50% (Snapchat… http://www.cnbc.com/2017/03/02/snapchat-snap-open-trading-price-stock-ipo-first-day.html?) Do we really have a market where investors are dying to buy a new tech company with no earnings? Are we once again valuing companies at over $5 billion on the hopes that they will one day make money? Does this sound familiar to anyone?', 1, '2017-06-15 02:44:51.322160', '2017-06-15 02:44:51.322160', 2, '2017-06-15 02:44:51.319335', NULL, NULL, 1, '<p>Did we seriously just have a high flying tech stock IPO at $17 and immediately rally 50% (Snapchat… <a href=\"http://www.cnbc.com/2017/03/02/snapchat-snap-open-trading-price-stock-ipo-first-day.html\">http://www.cnbc.com/2017/03/02/snapchat-snap-open-trading-price-stock-ipo-first-day.html</a>?) Do we really have a market where investors are dying to buy a new tech company with no earnings? Are we once again valuing companies at over $5 billion on the hopes that they will one day make money? Does this sound familiar to anyone?</p>\n<p>Ironically, this raging bull market and out of control IPO euphoria is happening exactly 17 years to the month, from the beginning of the great NASDAQ crash of 2000. At the end of 1999 investors couldn’t get enough “tech” in their portfolios. They couldn’t wait to buy IPO’s, AT ANY PRICE, because they just go up. Investors laughed at valuations back then. It was a new world where valuations didn’t matter. In case you don’t remember how that turned out here is a graph.</p>\n<p><img class=\"alignnone wp-image-103 \" height=\"272\" src=\"http://blog.kavout.com/wp-content/uploads/2017/03/图片1-1-300x130.jpg\" width=\"628\"></p>\n<p>The NASDAQ peaked on March 1, 2000 and declined over 80% during the next 2 ½ years. I remember those years well. 1999 was an amazing party. My friends and I were making 10 times more money than we expected. We pulled our calculators out every day to check how big our bonuses were going to be. Then it all ended.</p>\n<p>Here is the lesson: EUPHORIA IS NOT A REASON TO INVEST</p>\n<p>If you have been following my articles you know that my opinion is that we are currently experiencing the triple “NO INVEST” signal. High euphoria, high valuations, and rising interest rates. Well, we just experienced the fourth sell signal. A high flying tech IPO with no earnings.</p>\n<p>I am 100% in cash right now because I am disciplined. I don’t care about missing a rally. I only invest when the odds are in my favor. But, if you just can’t take it anymore and you need to get into this market make sure you also buy some protection. You can currently buy at the money put options on SPY for June expiration for about $2.50. These puts will cost you about 1%, but give you 3 months of peace. I assume you want to get into this market to make more than a 1% return. So, go ahead and buy you favorite stocks (it doesn’t really matter right now because everything goes up) but spend 1% of that return for some protection. You can even buy SNAP because it will probably go higher for a while. But make sure you buy protection.</p>\n<p>Buying stock and buying puts is a fairly safe way to capture the upside of a raging bull market, but give you protection if the party ends. Then you can take Prince’s advice at sit back and Party Likes It’s 1999.</p>', 1, '', 1, 1);
INSERT INTO `blog_blogpost` VALUES (15, 0, '', 0, 0, 0, '76,800', '76800', '', 'As you know I have been a professional trader for 25 years.  As a professional trader I have to know EVERYTHING.  I have to know the p/e ratio for hundreds of stocks, the volatility of hundreds of stocks, sentiment indicators, global macroeconomics, global politics, and much more.  I estimate that I have spent at least 12 hours a day, 5 days a week for 25 years reading news articles, company press releases, and analyst reports.', 1, '2017-06-15 02:45:29.974544', '2017-06-15 02:45:29.974544', 2, '2017-06-15 02:45:29.971824', NULL, NULL, 1, '<p>As you know I have been a professional trader for 25 years.  As a professional trader I have to know EVERYTHING.  I have to know the p/e ratio for hundreds of stocks, the volatility of hundreds of stocks, sentiment indicators, global macroeconomics, global politics, and much more.  I estimate that I have spent at least 12 hours a day, 5 days a week for 25 years reading news articles, company press releases, and analyst reports.</p>\n<p><strong>THAT IS 76,800 HOURS.</strong></p>\n<p>But it was all worth it.  I have been extremely successful. That’s what you have to do to “beat the market”.  It’s really hard.</p>\n<p>But the world has changed.  When I started trading there was no internet.  I read a stack of newspapers in the morning.  Then later the internet allowed me to get rid of the newspapers and read my computer all day.  Then mobile technology allowed me to read my phone all day.</p>\n<p>The newest technology is <strong>ARTIFICIAL INTELLIGENCE. </strong> All the large banks have teams of AI engineers creating technology so they can beat the market. They are spending billions of dollars on this technology because they know that information and the markets now move at the speed of light.</p>\n<p>So you probably think that this makes it impossible for you to compete against the “big guys”?  Not so fast.</p>\n<p>One company has decided to help the “little guy”.  Kavout.com has created a trading system to “democratize artificial intelligence”.  Here is what I now read every morning:</p>\n<p><img alt=\"Screen Shot 2017-05-27 at 1.55.05 PM\" class=\"wp-image-111 aligncenter\" height=\"392\" src=\"http://blog.kavout.com/wp-content/uploads/2017/05/Screen-Shot-2017-05-27-at-1.55.05-PM-300x263.png\" width=\"447\"></p>\n<p>KAI is Kavout’s artificial intelligence computer that does all the reading for you.  The computer scans through millions of data points 24 hours a day, and summarizes all that information into one number called the KAI SCORE.  Stocks with scores 7,8,9 are expected to outperform the market while stocks with scores 1,2,3 are expected to underperform.  It’s that simple.  Kai can make sense of more data in one minute than I could with 12 hours of reading.  And Kai never gets tired.</p>\n<p>Here is an example:  AAPL has earnings tomorrow.  I can read for hours, or:</p>\n<p><img alt=\"Picture2\" class=\"wp-image-112 aligncenter\" height=\"561\" src=\"http://blog.kavout.com/wp-content/uploads/2017/05/Picture2-262x300.png\" width=\"490\"></p>\n<p>BOOM! That’s it.  All the information I need plus:  KAI gives me a score of 7.  KAI has all the information, and it knows how to interpret the information.  It is amazing.  If I had KAI when I started trading I could have saved myself <strong>76,800 HOURS.</strong></p>', 1, '', 1, 1);
INSERT INTO `blog_blogpost` VALUES (17, 0, '', 0, 0, 0, 'FUZZY MATH', 'fuzzy-math', '', 'Last Friday saw a very positive employment report, with job creation of 211,000 and the unemployment rate dropping to 4.4%.  As usual, the Labor Force Participation rate moved higher, and the United States now has 94.4 million able-bodied adults not even looking for a job.  Remember, the unemployment rate only counts people looking for a job.  So, the only thing this very low unemployment rate is going to do is allow the FED to raise interest rates faster.', 1, '2017-06-15 03:38:33.622678', '2017-06-15 03:38:33.622678', 2, '2017-06-15 03:38:33.603993', NULL, NULL, 1, '<p>Last Friday saw a very positive employment report, with job creation of 211,000 and the unemployment rate dropping to 4.4%.  As usual, the Labor Force Participation rate moved higher, and the United States now has 94.4 million able-bodied adults not even looking for a job.  Remember, the unemployment rate only counts people looking for a job.  So, the only thing this very low unemployment rate is going to do is allow the FED to raise interest rates faster.</p>\n<p>Over the weekend, France elected a new President.  Emmanuel Macron defeated Marine Le Pen in a victory for Liberals around the world.  Macron will keep France in the European Union, and fears of an EU collapse have subsided.  This victory was widely expected and market reactions are muted.</p>\n<p>It is kind of a slow market, and we are heading into the summer season, so I don’t really have any great ideas.  So what to do?  I’m heading right to Kavout.com and I’m looking for ideas from Kai.</p>\n<p><img alt=\"Picture1\" class=\" wp-image-115 aligncenter\" height=\"307\" src=\"http://blog.kavout.com/wp-content/uploads/2017/05/Picture1-1-300x241.png\" width=\"382\"></p>\n<p>Let’s see if Kai has any ideas.  I scanned mega cap stocks rated 9.  As I look down the list I see the “usual suspects”; MSFT, AMZN, GOOG, FB.  I’m kind of bored with these names, but next on the list is something really interesting.  AT&amp;T (T) is rated a 9.  I always liked T because of its 5% dividend yield and it’s near captive customer base.  Let’s take a look at the chart:</p>\n<p style=\"text-align: center;\"><img alt=\"Picture2\" class=\"alignnone wp-image-116\" height=\"175\" src=\"http://blog.kavout.com/wp-content/uploads/2017/05/Picture2-1-300x142.png\" width=\"370\"></p>\n<p>Stock is down this year, which is really interesting.  I would have no idea what to do with this chart.  This is one of the times that I love Kai.  The chart looks weak, but Kai has spotted something that I don’t see.  I’m going in for some AT&amp;T this week.  Kai says it’s a 9 and I think this is a good price, plus the 5% dividend yield looks juicy.</p>', 1, '', 1, 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Records of blog_blogpost_categories
-- ----------------------------
BEGIN;
INSERT INTO `blog_blogpost_categories` VALUES (4, 3, 2);
INSERT INTO `blog_blogpost_categories` VALUES (5, 3, 4);
INSERT INTO `blog_blogpost_categories` VALUES (6, 3, 5);
INSERT INTO `blog_blogpost_categories` VALUES (7, 3, 7);
INSERT INTO `blog_blogpost_categories` VALUES (8, 3, 9);
INSERT INTO `blog_blogpost_categories` VALUES (9, 4, 2);
INSERT INTO `blog_blogpost_categories` VALUES (10, 4, 4);
INSERT INTO `blog_blogpost_categories` VALUES (11, 4, 5);
INSERT INTO `blog_blogpost_categories` VALUES (12, 4, 7);
INSERT INTO `blog_blogpost_categories` VALUES (13, 4, 12);
INSERT INTO `blog_blogpost_categories` VALUES (14, 5, 1);
INSERT INTO `blog_blogpost_categories` VALUES (15, 5, 3);
INSERT INTO `blog_blogpost_categories` VALUES (16, 5, 4);
INSERT INTO `blog_blogpost_categories` VALUES (17, 5, 5);
INSERT INTO `blog_blogpost_categories` VALUES (18, 5, 7);
INSERT INTO `blog_blogpost_categories` VALUES (19, 5, 9);
INSERT INTO `blog_blogpost_categories` VALUES (20, 5, 12);
INSERT INTO `blog_blogpost_categories` VALUES (21, 6, 3);
INSERT INTO `blog_blogpost_categories` VALUES (22, 6, 5);
INSERT INTO `blog_blogpost_categories` VALUES (23, 6, 7);
INSERT INTO `blog_blogpost_categories` VALUES (24, 6, 9);
INSERT INTO `blog_blogpost_categories` VALUES (25, 6, 10);
INSERT INTO `blog_blogpost_categories` VALUES (26, 6, 11);
INSERT INTO `blog_blogpost_categories` VALUES (27, 7, 7);
INSERT INTO `blog_blogpost_categories` VALUES (28, 7, 8);
INSERT INTO `blog_blogpost_categories` VALUES (29, 7, 9);
INSERT INTO `blog_blogpost_categories` VALUES (30, 7, 10);
INSERT INTO `blog_blogpost_categories` VALUES (31, 7, 11);
INSERT INTO `blog_blogpost_categories` VALUES (32, 8, 1);
INSERT INTO `blog_blogpost_categories` VALUES (33, 8, 2);
INSERT INTO `blog_blogpost_categories` VALUES (34, 8, 6);
INSERT INTO `blog_blogpost_categories` VALUES (35, 8, 7);
INSERT INTO `blog_blogpost_categories` VALUES (36, 8, 9);
INSERT INTO `blog_blogpost_categories` VALUES (37, 9, 5);
INSERT INTO `blog_blogpost_categories` VALUES (38, 10, 5);
INSERT INTO `blog_blogpost_categories` VALUES (39, 11, 5);
INSERT INTO `blog_blogpost_categories` VALUES (40, 12, 10);
INSERT INTO `blog_blogpost_categories` VALUES (41, 12, 12);
INSERT INTO `blog_blogpost_categories` VALUES (42, 13, 5);
INSERT INTO `blog_blogpost_categories` VALUES (43, 14, 5);
INSERT INTO `blog_blogpost_categories` VALUES (44, 15, 5);
INSERT INTO `blog_blogpost_categories` VALUES (46, 17, 5);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;;

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
INSERT INTO `django_admin_log` VALUES (12, '2017-06-15 02:23:05.592197', '3', 'ai trading', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (13, '2017-06-15 02:23:18.038520', '4', 'artificial intelligence', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (14, '2017-06-15 02:23:30.286751', '5', 'Blog', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (15, '2017-06-15 02:23:40.594664', '6', 'bullish', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (16, '2017-06-15 02:23:49.984577', '7', 'Kai', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (17, '2017-06-15 02:23:59.392770', '8', 'kai score', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (18, '2017-06-15 02:24:12.368866', '9', 'Kavout', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (19, '2017-06-15 02:24:21.876375', '10', 'Market Analysis', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (20, '2017-06-15 02:24:31.389787', '11', 'Stock Picks', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (21, '2017-06-15 02:24:50.742317', '12', 'stocks', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (22, '2017-06-15 02:26:34.485391', '2', 'Pre-Labour Day Insight’s From Kavout’s CIO: Time to Put on the “Johnny Wag” Portfolio', 3, '', 17, 1);
INSERT INTO `django_admin_log` VALUES (23, '2017-06-15 02:26:34.495715', '1', 'FUZZY MATH', 3, '', 17, 1);
INSERT INTO `django_admin_log` VALUES (24, '2017-06-15 02:30:12.706824', '3', 'What is an AI investment platform?', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (25, '2017-06-15 02:34:17.131478', '4', 'AI investing vs traditional investing', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (26, '2017-06-15 02:36:07.023579', '5', 'Can AI Investing Outsmart the Markets?', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (27, '2017-06-15 02:37:59.962089', '6', 'August 15th: Pre-Labor Day Market Outlook and Top Kai Score Stock Picks by Kavout\'s Chief Investment Officer', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (28, '2017-06-15 02:39:13.958055', '7', 'August 16th: Kavout’s Chief Investment Officer on Market Trends, Negative Yielding and Top Kai Score Stock Picks', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (29, '2017-06-15 02:40:07.774938', '8', 'Pre-Labour Day Insight\'s From Kavout\'s CIO: Time to Put on the \"Johnny Wag\" Portfolio', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (30, '2017-06-15 02:40:47.247945', '9', 'How Do Interest Rates Affect Equity Prices?', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (31, '2017-06-15 02:41:30.968944', '10', 'Fiscal Policy 101', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (32, '2017-06-15 02:42:11.072250', '11', 'Is the Fed Hillary\'s Trump Card?', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (33, '2017-06-15 02:43:15.323490', '12', 'It’s Deja Vu All Over Again', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (34, '2017-06-15 02:44:10.768650', '13', 'Capitalism Trumps Socialism', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (35, '2017-06-15 02:44:51.334460', '14', 'PARTY LIKE IT’S 1999', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (36, '2017-06-15 02:45:29.984962', '15', '76,800', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (37, '2017-06-15 02:46:12.119232', '16', 'FUZZY MATH', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (38, '2017-06-15 02:46:58.486151', '16', 'FUZZY MATH', 2, '[{\"changed\": {\"fields\": [\"publish_date\", \"content\", \"keywords\"]}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (39, '2017-06-15 02:47:27.670320', '16', 'FUZZY MATH', 2, '[{\"changed\": {\"fields\": [\"content\", \"keywords\"]}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (40, '2017-06-15 02:50:11.047020', '16', 'FUZZY MATH', 2, '[{\"changed\": {\"fields\": [\"publish_date\", \"content\", \"keywords\"]}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (41, '2017-06-15 02:50:42.667205', '16', 'FUZZY MATH', 2, '[{\"changed\": {\"fields\": [\"publish_date\", \"content\", \"keywords\"]}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (42, '2017-06-15 02:51:13.163749', '16', 'FUZZY MATH', 2, '[{\"changed\": {\"fields\": [\"publish_date\", \"content\", \"keywords\"]}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (43, '2017-06-15 02:51:34.868165', '16', 'FUZZY MATH', 2, '[{\"changed\": {\"fields\": [\"publish_date\", \"content\", \"keywords\"]}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (44, '2017-06-15 02:52:01.438047', '16', 'FUZZY MATH', 2, '[{\"changed\": {\"fields\": [\"publish_date\", \"content\", \"keywords\"]}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (45, '2017-06-15 02:52:27.285878', '16', 'FUZZY MATH', 2, '[{\"changed\": {\"fields\": [\"publish_date\", \"content\", \"keywords\"]}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (46, '2017-06-15 02:52:54.518469', '16', 'FUZZY MATH', 2, '[{\"changed\": {\"fields\": [\"publish_date\", \"content\", \"keywords\"]}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (47, '2017-06-15 03:03:58.010451', '16', 'FUZZY MATH', 2, '[{\"changed\": {\"fields\": [\"publish_date\", \"content\", \"keywords\"]}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (48, '2017-06-15 03:05:56.719973', '16', 'FUZZY MATH', 2, '[{\"changed\": {\"fields\": [\"publish_date\", \"content\", \"keywords\"]}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (49, '2017-06-15 03:37:59.154030', '16', 'FUZZY MATH', 3, '', 17, 1);
INSERT INTO `django_admin_log` VALUES (50, '2017-06-15 03:38:33.639082', '17', 'FUZZY MATH', 1, '[{\"added\": {}}]', 17, 1);
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
INSERT INTO `django_session` VALUES ('cpjnns3iyximg2f8vqchmhhnphyldjya', 'MjViNzhjOGUzM2U2NjViYzkwODBlNDYzMzdkNmM2NDA0MGYxZTBjNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoibWV6emFuaW5lLmNvcmUuYXV0aF9iYWNrZW5kcy5NZXp6YW5pbmVCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzA2OGVmN2M3NzQxNmQ4ZTgxMTkyYjc4NzgyNzY3MjBhNDVjMmFlMCJ9', '2017-06-29 02:09:48.231792');
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
