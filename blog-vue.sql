/*
Navicat MySQL Data Transfer

Source Server         : xampp
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : blog-vue

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-12 06:50:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `last_user_id` int(10) unsigned NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_original` tinyint(1) NOT NULL DEFAULT '0',
  `is_draft` tinyint(1) NOT NULL DEFAULT '0',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0',
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `articles_slug_unique` (`slug`),
  KEY `articles_view_count_index` (`view_count`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', '8', '10', '10', 'quo-quis-natus-aut-deserunt-ciyhh', 'Quo quis natus aut deserunt.', 'quo quis natus aut deserunt.', '{\"raw\":\"Quis sunt est nihil iusto. Quia et adipisci excepturi explicabo. Atque quae odit praesentium commodi est eum ea.\",\"html\":\"<p>Quis sunt est nihil iusto. Quia et adipisci excepturi explicabo. Atque quae odit praesentium commodi est eum ea.<\\/p>\"}', 'https://lorempixel.com/640/480/?53382', 'Distinctio nobis voluptas unde dolor quo quidem.', '0', '0', '94', '2018-07-13 01:04:43', '2018-08-02 11:12:02', '2018-11-06 02:37:51', null);
INSERT INTO `articles` VALUES ('2', '2', '9', '9', 'ut-pariatur-similique-similique-illo-dicta-nemo-doloremque-accusamus-nam-laborum-rerum-rklfk', 'Ut pariatur similique similique illo dicta nemo doloremque accusamus nam laborum rerum.', 'ut pariatur similique similique illo dicta nemo doloremque accusamus nam laborum rerum.', '{\"raw\":\"Veritatis amet perspiciatis in ut doloribus. Laudantium ut est libero placeat. Nihil eum laborum praesentium.\",\"html\":\"<p>Veritatis amet perspiciatis in ut doloribus. Laudantium ut est libero placeat. Nihil eum laborum praesentium.<\\/p>\"}', 'https://lorempixel.com/640/480/?14037', 'Aspernatur maxime enim magni ea.', '0', '0', '7', '2018-07-15 03:42:18', '2018-08-02 11:12:02', '2018-08-02 11:12:03', null);
INSERT INTO `articles` VALUES ('3', '5', '11', '11', 'ducimus-non-in-earum-aut-error-ygoly', 'Ducimus non in earum aut error.', 'ducimus non in earum aut error.', '{\"raw\":\"Quisquam dignissimos dolor neque fuga et ut. Est dolorum iusto quis cum. Debitis veniam illo reiciendis vel veniam eveniet repellat.\",\"html\":\"<p>Quisquam dignissimos dolor neque fuga et ut. Est dolorum iusto quis cum. Debitis veniam illo reiciendis vel veniam eveniet repellat.<\\/p>\"}', 'https://lorempixel.com/640/480/?50836', 'Eum quae est accusamus consequatur similique consectetur consequuntur enim.', '0', '0', '77', '2018-07-10 03:40:16', '2018-08-02 11:12:02', '2018-08-08 04:16:09', null);
INSERT INTO `articles` VALUES ('4', '7', '1', '1', 'sint-suscipit-qc8qh', 'Sint suscipit.', 'sint suscipit.', '{\"raw\":\"Temporibus eos facere neque deleniti accusantium dolor. Est ab quae et placeat itaque. Excepturi impedit illo enim voluptatem nulla. Veniam dolore a magni itaque. Autem eos cupiditate nisi suscipit.\",\"html\":\"<p>Temporibus eos facere neque deleniti accusantium dolor. Est ab quae et placeat itaque. Excepturi impedit illo enim voluptatem nulla. Veniam dolore a magni itaque. Autem eos cupiditate nisi suscipit.<\\/p>\"}', 'https://lorempixel.com/640/480/?59147', 'In quo earum et ut explicabo eveniet.', '0', '0', '48', '2018-06-28 18:50:23', '2018-08-02 11:12:02', '2018-08-02 11:12:04', null);
INSERT INTO `articles` VALUES ('5', '5', '5', '5', 'porro-aut-aut-aperiam-aut-omnis-f2hg0', 'Porro aut aut aperiam aut omnis.', 'porro aut aut aperiam aut omnis.', '{\"raw\":\"Et amet et consequatur provident nihil. Nisi incidunt doloribus beatae quidem sapiente similique quasi repellat.\",\"html\":\"<p>Et amet et consequatur provident nihil. Nisi incidunt doloribus beatae quidem sapiente similique quasi repellat.<\\/p>\"}', 'https://lorempixel.com/640/480/?55345', 'Consectetur mollitia quidem iste animi delectus.', '0', '0', '25', '2018-07-07 12:16:47', '2018-08-02 11:12:02', '2018-08-02 11:12:03', null);
INSERT INTO `articles` VALUES ('6', '10', '4', '4', 'eum-ex-voluptatem-ad-ipsa-et-ylfop', 'Eum ex voluptatem ad ipsa et.', 'eum ex voluptatem ad ipsa et.', '{\"raw\":\"Tenetur ut et ipsum eum corrupti consectetur consequatur. Eos repellendus quasi minus. Vel debitis qui et tempora aut non optio.\",\"html\":\"<p>Tenetur ut et ipsum eum corrupti consectetur consequatur. Eos repellendus quasi minus. Vel debitis qui et tempora aut non optio.<\\/p>\"}', 'https://lorempixel.com/640/480/?63810', 'Dolorem veniam quam voluptates quam inventore consectetur.', '0', '0', '83', '2018-08-01 08:17:26', '2018-08-02 11:12:02', '2018-10-25 09:47:11', null);
INSERT INTO `articles` VALUES ('7', '6', '6', '6', 'explicabo-ut-repellendus-sequi-hah55', 'Explicabo ut repellendus sequi.', 'explicabo ut repellendus sequi.', '{\"raw\":\"Quia sed et eligendi quis temporibus. Rerum dignissimos tenetur molestias est laudantium. Fuga et ut sapiente tempora vitae error. Perspiciatis reiciendis autem adipisci temporibus eaque fugit aperiam.\",\"html\":\"<p>Quia sed et eligendi quis temporibus. Rerum dignissimos tenetur molestias est laudantium. Fuga et ut sapiente tempora vitae error. Perspiciatis reiciendis autem adipisci temporibus eaque fugit aperiam.<\\/p>\"}', 'https://lorempixel.com/640/480/?85866', 'Ea eum consequatur qui vel rerum.', '0', '0', '67', '2018-06-25 21:13:38', '2018-08-02 11:12:02', '2018-08-02 11:12:04', null);
INSERT INTO `articles` VALUES ('8', '4', '8', '8', 'tempora-pariatur-fuga-dolor-mblyi', 'Tempora pariatur fuga dolor.', 'tempora pariatur fuga dolor.', '{\"raw\":\"Incidunt dolore autem unde nemo. Sed occaecati beatae laborum eos unde neque. Quibusdam et cumque aliquid recusandae voluptate. Adipisci quod quis laborum et velit.\",\"html\":\"<p>Incidunt dolore autem unde nemo. Sed occaecati beatae laborum eos unde neque. Quibusdam et cumque aliquid recusandae voluptate. Adipisci quod quis laborum et velit.<\\/p>\"}', 'https://lorempixel.com/640/480/?87626', 'Ducimus facilis est omnis voluptatem autem corrupti.', '0', '0', '34', '2018-06-28 06:34:09', '2018-08-02 11:12:02', '2018-08-02 11:12:03', null);
INSERT INTO `articles` VALUES ('9', '6', '1', '1', 'qui-consectetur-quia-quod-1o4zn', 'Qui consectetur quia quod.', 'qui consectetur quia quod.', '{\"raw\":\"Sit voluptas qui velit a. Similique tenetur omnis voluptatem consequuntur illo impedit. Officiis ut quia eligendi tenetur accusantium. Quia cum et ex unde laboriosam ratione reprehenderit et.\",\"html\":\"<p>Sit voluptas qui velit a. Similique tenetur omnis voluptatem consequuntur illo impedit. Officiis ut quia eligendi tenetur accusantium. Quia cum et ex unde laboriosam ratione reprehenderit et.<\\/p>\"}', 'https://lorempixel.com/640/480/?69722', 'Nihil tempore perspiciatis placeat quibusdam doloribus facere similique.', '0', '0', '93', '2018-07-31 08:12:19', '2018-08-02 11:12:02', '2018-10-19 07:57:24', null);
INSERT INTO `articles` VALUES ('10', '7', '11', '11', 'fugit-odit-sit-ea-nihil-placeat-16t1a', 'Fugit odit sit ea nihil placeat.', 'fugit odit sit ea nihil placeat.', '{\"raw\":\"Eaque consequatur aut est totam. Ex perspiciatis sapiente ut ea qui voluptas. Quis est ab inventore similique sed autem et. Non debitis aut nesciunt nesciunt suscipit perspiciatis.\",\"html\":\"<p>Eaque consequatur aut est totam. Ex perspiciatis sapiente ut ea qui voluptas. Quis est ab inventore similique sed autem et. Non debitis aut nesciunt nesciunt suscipit perspiciatis.<\\/p>\"}', 'https://lorempixel.com/640/480/?58046', 'Fugit rem sed sed a qui.', '0', '0', '76', '2018-06-06 00:19:48', '2018-08-02 11:12:02', '2018-08-02 11:12:03', null);
INSERT INTO `articles` VALUES ('11', '8', '8', '8', 'et-placeat-recusandae-veniam-eligendi-vel-aspernatur-bqveo', 'Et placeat recusandae veniam eligendi vel aspernatur.', 'et placeat recusandae veniam eligendi vel aspernatur.', '{\"raw\":\"Saepe laudantium molestias recusandae amet doloremque quod. Quo quod quasi ut id deserunt rerum. Eum et voluptas pariatur rerum nesciunt. Quo vel et repellat quod repudiandae magnam.\",\"html\":\"<p>Saepe laudantium molestias recusandae amet doloremque quod. Quo quod quasi ut id deserunt rerum. Eum et voluptas pariatur rerum nesciunt. Quo vel et repellat quod repudiandae magnam.<\\/p>\"}', 'https://lorempixel.com/640/480/?98567', 'Aut placeat aut inventore molestiae sed est natus.', '0', '0', '76', '2018-07-22 06:16:39', '2018-08-02 11:12:02', '2018-08-02 11:12:03', null);
INSERT INTO `articles` VALUES ('12', '5', '5', '5', 'vero-repudiandae-necessitatibus-vero-cumque-quidem-ullam-ducimus-ad-sed-sit-voluptates-rtme5', 'Vero repudiandae necessitatibus vero cumque quidem ullam ducimus ad sed sit voluptates.', 'vero repudiandae necessitatibus vero cumque quidem ullam ducimus ad sed sit voluptates.', '{\"raw\":\"Et facere amet voluptate rerum tempora dolorum blanditiis dolores. Soluta et dolor suscipit repellendus doloribus. Qui cum id eveniet labore facere et inventore repudiandae. Quae rerum aliquid unde magni soluta repellendus fugiat.\",\"html\":\"<p>Et facere amet voluptate rerum tempora dolorum blanditiis dolores. Soluta et dolor suscipit repellendus doloribus. Qui cum id eveniet labore facere et inventore repudiandae. Quae rerum aliquid unde magni soluta repellendus fugiat.<\\/p>\"}', 'https://lorempixel.com/640/480/?15396', 'Et aperiam facilis sint est expedita.', '0', '0', '7', '2018-07-05 21:24:43', '2018-08-02 11:12:02', '2018-08-02 18:08:51', null);
INSERT INTO `articles` VALUES ('13', '5', '2', '2', 'et-aliquam-delectus-provident-a-ipsa-voluptatem-rem-sit-doloribus-non-unkat', 'Et aliquam delectus provident a ipsa voluptatem rem sit doloribus non.', 'et aliquam delectus provident a ipsa voluptatem rem sit doloribus non.', '{\"raw\":\"Alias quia occaecati non. Nam velit adipisci architecto est.\",\"html\":\"<p>Alias quia occaecati non. Nam velit adipisci architecto est.<\\/p>\"}', 'https://lorempixel.com/640/480/?28621', 'Exercitationem necessitatibus repellendus et et dignissimos sed.', '0', '0', '53', '2018-06-10 22:34:33', '2018-08-02 11:12:02', '2018-08-02 11:12:03', null);
INSERT INTO `articles` VALUES ('14', '7', '6', '6', 'eveniet-cupiditate-doloremque-xk1ec', 'Eveniet cupiditate doloremque.', 'eveniet cupiditate doloremque.', '{\"raw\":\"Nemo deleniti est odit voluptas architecto exercitationem nam rem. Ad natus inventore sit quis ipsa at asperiores. Velit nostrum consectetur saepe dolores consequuntur nulla. Odit voluptatibus voluptatibus pariatur ipsa rerum.\",\"html\":\"<p>Nemo deleniti est odit voluptas architecto exercitationem nam rem. Ad natus inventore sit quis ipsa at asperiores. Velit nostrum consectetur saepe dolores consequuntur nulla. Odit voluptatibus voluptatibus pariatur ipsa rerum.<\\/p>\"}', 'https://lorempixel.com/640/480/?56935', 'Provident ut dolorem sint cumque excepturi maiores reprehenderit.', '0', '0', '42', '2018-06-05 23:04:02', '2018-08-02 11:12:02', '2018-08-02 11:12:04', null);
INSERT INTO `articles` VALUES ('15', '2', '4', '4', 'quas-est-officia-est-voluptatum-dolor-aliquam-9gabk', 'Quas est officia est voluptatum dolor aliquam.', 'quas est officia est voluptatum dolor aliquam.', '{\"raw\":\"Adipisci repellendus ducimus hic ut quia. Tempore consequatur blanditiis quibusdam eligendi. Voluptatum sed et dignissimos veniam rerum.\",\"html\":\"<p>Adipisci repellendus ducimus hic ut quia. Tempore consequatur blanditiis quibusdam eligendi. Voluptatum sed et dignissimos veniam rerum.<\\/p>\"}', 'https://lorempixel.com/640/480/?58771', 'Aut aliquid ratione ut aut.', '0', '0', '46', '2018-08-01 06:32:30', '2018-08-02 11:12:02', '2018-08-02 11:12:04', null);
INSERT INTO `articles` VALUES ('16', '8', '1', '1', 'quae-officia-deserunt-error-eos-pd8ch', 'Quae officia deserunt error eos.', 'quae officia deserunt error eos.', '{\"raw\":\"Voluptatem illum nemo nihil amet doloremque ratione et. Nostrum nobis nihil perferendis quo aut sed temporibus. Ratione et beatae deserunt facere.\",\"html\":\"<p>Voluptatem illum nemo nihil amet doloremque ratione et. Nostrum nobis nihil perferendis quo aut sed temporibus. Ratione et beatae deserunt facere.<\\/p>\"}', 'https://lorempixel.com/640/480/?24936', 'In tempora quis tempora reiciendis.', '0', '0', '38', '2018-06-20 15:16:56', '2018-08-02 11:12:02', '2018-08-10 04:18:30', null);
INSERT INTO `articles` VALUES ('17', '10', '4', '4', 'quia-dolore-facere-ullam-rezxi', 'Quia dolore facere ullam.', 'quia dolore facere ullam.', '{\"raw\":\"Voluptatem rerum et voluptatem. Quia est cumque tempora deleniti voluptas recusandae provident. Qui culpa necessitatibus aut et. Corrupti officia omnis et.\",\"html\":\"<p>Voluptatem rerum et voluptatem. Quia est cumque tempora deleniti voluptas recusandae provident. Qui culpa necessitatibus aut et. Corrupti officia omnis et.<\\/p>\"}', 'https://lorempixel.com/640/480/?33768', 'Alias quo dolorum officia dolore temporibus quisquam ut.', '0', '0', '87', '2018-06-08 02:46:33', '2018-08-02 11:12:02', '2018-08-02 11:12:04', null);
INSERT INTO `articles` VALUES ('18', '4', '1', '1', 'natus-magnam-voluptatem-ab-delectus-debitis-sunt-nostrum-voluptates-animi-hic-est-repudiandae-wu9ot', 'Natus magnam voluptatem ab delectus debitis sunt nostrum voluptates animi hic est repudiandae.', 'natus magnam voluptatem ab delectus debitis sunt nostrum voluptates animi hic est repudiandae.', '{\"raw\":\"Voluptatem sequi sint facere autem iure tenetur. Harum perferendis libero quia explicabo inventore et a nemo. Adipisci ex aliquid blanditiis ipsam et. Tenetur rerum sapiente reiciendis fuga sequi aliquid quas.\",\"html\":\"<p>Voluptatem sequi sint facere autem iure tenetur. Harum perferendis libero quia explicabo inventore et a nemo. Adipisci ex aliquid blanditiis ipsam et. Tenetur rerum sapiente reiciendis fuga sequi aliquid quas.<\\/p>\"}', 'https://lorempixel.com/640/480/?95832', 'Qui est molestias similique aut quos sint numquam.', '0', '0', '67', '2018-07-15 18:47:10', '2018-08-02 11:12:02', '2018-08-02 11:12:03', null);
INSERT INTO `articles` VALUES ('19', '1', '5', '5', 'quia-occaecati-aut-vel-non-ri2qp', 'Quia occaecati aut vel non.', 'quia occaecati aut vel non.', '{\"raw\":\"Ipsum similique id adipisci omnis. Eius minima velit accusamus deleniti necessitatibus. Perferendis ex omnis ut aliquam rem tempora voluptatem.\",\"html\":\"<p>Ipsum similique id adipisci omnis. Eius minima velit accusamus deleniti necessitatibus. Perferendis ex omnis ut aliquam rem tempora voluptatem.<\\/p>\"}', 'https://lorempixel.com/640/480/?12660', 'Architecto sunt qui tempora qui itaque porro est.', '0', '0', '6', '2018-06-21 22:48:25', '2018-08-02 11:12:02', '2018-08-02 11:12:04', null);
INSERT INTO `articles` VALUES ('20', '6', '4', '4', 'quia-inventore-enim-odio-architecto-repudiandae-eligendi-itaque-quidem-aut-z6exm', 'Quia inventore enim odio architecto repudiandae eligendi itaque quidem aut.', 'quia inventore enim odio architecto repudiandae eligendi itaque quidem aut.', '{\"raw\":\"Quis at doloremque vel. Quia ut dolor quis nihil consectetur voluptates vel.\",\"html\":\"<p>Quis at doloremque vel. Quia ut dolor quis nihil consectetur voluptates vel.<\\/p>\"}', 'https://lorempixel.com/640/480/?48782', 'Pariatur blanditiis sit reprehenderit eligendi animi.', '0', '0', '18', '2018-07-31 12:30:02', '2018-08-02 11:12:02', '2018-08-02 11:12:04', null);

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '0', 'Norris Wyman', 'http://schimmel.com/nobis-repudiandae-ut-eaque', null, null, '2018-08-02 11:12:02', '2018-08-02 11:12:02');
INSERT INTO `categories` VALUES ('2', '0', 'Janie Trantow', 'http://hoppe.com/harum-quia-architecto-accusamus-accusantium-et.html', null, null, '2018-08-02 11:12:02', '2018-08-02 11:12:02');
INSERT INTO `categories` VALUES ('3', '0', 'Liza Hauck', 'http://maggio.info/sint-natus-et-illo-velit-iusto-voluptatem-ut.html', null, null, '2018-08-02 11:12:02', '2018-08-02 11:12:02');
INSERT INTO `categories` VALUES ('4', '0', 'Miss Nellie Ziemann', 'http://russel.info/numquam-vel-aut-aliquam-nesciunt-sint-et.html', null, null, '2018-08-02 11:12:02', '2018-08-02 11:12:02');
INSERT INTO `categories` VALUES ('5', '0', 'Lila Price', 'https://www.goldner.com/architecto-voluptatem-praesentium-quibusdam-cupiditate-numquam', null, null, '2018-08-02 11:12:02', '2018-08-02 11:12:02');
INSERT INTO `categories` VALUES ('6', '0', 'Margret Huels PhD', 'http://ritchie.com/eum-architecto-quo-deserunt-velit-officiis-earum', null, null, '2018-08-02 11:12:02', '2018-08-02 11:12:02');
INSERT INTO `categories` VALUES ('7', '0', 'Johnpaul Johns', 'http://www.abshire.com/dolorem-aliquid-ut-nulla-nihil-iure-magni', null, null, '2018-08-02 11:12:02', '2018-08-02 11:12:02');
INSERT INTO `categories` VALUES ('8', '0', 'Eliane Gutkowski PhD', 'http://klein.com/officiis-accusamus-ullam-eum-consequatur-ullam', null, null, '2018-08-02 11:12:02', '2018-08-02 11:12:02');
INSERT INTO `categories` VALUES ('9', '0', 'Domingo Schumm', 'http://daniel.com/', null, null, '2018-08-02 11:12:02', '2018-08-02 11:12:02');
INSERT INTO `categories` VALUES ('10', '0', 'Dr. Geovanny Schamberger PhD', 'http://hessel.org/laboriosam-quasi-ea-temporibus-aspernatur-voluptatem-et.html', null, null, '2018-08-02 11:12:02', '2018-08-02 11:12:02');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `commentable_id` int(10) unsigned NOT NULL,
  `commentable_type` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '6', '2', 'discussions', '{\"raw\":\"Est quisquam quas possimus qui sint quod. Saepe qui neque veritatis nemo vel aut magnam labore. Quos autem nobis quas quisquam sed dolores.\",\"html\":\"<p>Est quisquam quas possimus qui sint quod. Saepe qui neque veritatis nemo vel aut magnam labore. Quos autem nobis quas quisquam sed dolores.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('2', '5', '11', 'discussions', '{\"raw\":\"Corrupti illum tempora maxime ut. Neque et id dolorem nihil recusandae deleniti et. Reprehenderit mollitia rem voluptatibus ut est. Incidunt nihil aliquam itaque autem corporis tempore.\",\"html\":\"<p>Corrupti illum tempora maxime ut. Neque et id dolorem nihil recusandae deleniti et. Reprehenderit mollitia rem voluptatibus ut est. Incidunt nihil aliquam itaque autem corporis tempore.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('3', '11', '15', 'articles', '{\"raw\":\"Labore commodi non qui ab. Ex dolores neque magni iure autem. Laboriosam est velit voluptates voluptatum consequuntur neque. Aut quibusdam sunt debitis quaerat.\",\"html\":\"<p>Labore commodi non qui ab. Ex dolores neque magni iure autem. Laboriosam est velit voluptates voluptatum consequuntur neque. Aut quibusdam sunt debitis quaerat.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('4', '2', '10', 'articles', '{\"raw\":\"Omnis nostrum autem qui error ea est nihil. Accusamus placeat voluptatem sint ut voluptas sequi. Assumenda vero quos in velit quidem dolor voluptatem.\",\"html\":\"<p>Omnis nostrum autem qui error ea est nihil. Accusamus placeat voluptatem sint ut voluptas sequi. Assumenda vero quos in velit quidem dolor voluptatem.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('5', '6', '15', 'articles', '{\"raw\":\"Explicabo et repellat hic perspiciatis mollitia nam harum esse. Sequi voluptatem rerum et. Illum in eligendi error iusto illum veritatis ipsum. Eveniet qui sit provident voluptate magni repellendus cupiditate qui.\",\"html\":\"<p>Explicabo et repellat hic perspiciatis mollitia nam harum esse. Sequi voluptatem rerum et. Illum in eligendi error iusto illum veritatis ipsum. Eveniet qui sit provident voluptate magni repellendus cupiditate qui.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('6', '1', '15', 'articles', '{\"raw\":\"Qui ab omnis aut dolores at molestiae in. Consequuntur officia voluptas quo recusandae est dolores. Dolorem ut enim sint. Quo possimus tenetur quaerat sunt totam amet vero.\",\"html\":\"<p>Qui ab omnis aut dolores at molestiae in. Consequuntur officia voluptas quo recusandae est dolores. Dolorem ut enim sint. Quo possimus tenetur quaerat sunt totam amet vero.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('7', '1', '11', 'discussions', '{\"raw\":\"Dolor qui laborum doloribus porro rem. Consequatur facere aut sed nam molestiae eaque expedita perferendis. Totam suscipit qui rerum rerum. Nisi aperiam possimus provident quia quisquam reprehenderit ipsum.\",\"html\":\"<p>Dolor qui laborum doloribus porro rem. Consequatur facere aut sed nam molestiae eaque expedita perferendis. Totam suscipit qui rerum rerum. Nisi aperiam possimus provident quia quisquam reprehenderit ipsum.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('8', '8', '18', 'articles', '{\"raw\":\"Eum corrupti quidem ipsa vel quam. Asperiores possimus recusandae est qui et. Sit autem aliquam quas assumenda. Libero est cum et illum tempore voluptatem quis.\",\"html\":\"<p>Eum corrupti quidem ipsa vel quam. Asperiores possimus recusandae est qui et. Sit autem aliquam quas assumenda. Libero est cum et illum tempore voluptatem quis.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('9', '2', '8', 'articles', '{\"raw\":\"Et molestiae illo enim iste. Iste magnam aut consequatur iure aperiam. Quis quidem voluptatem cupiditate libero rerum. Voluptas id magnam a deserunt qui incidunt aut.\",\"html\":\"<p>Et molestiae illo enim iste. Iste magnam aut consequatur iure aperiam. Quis quidem voluptatem cupiditate libero rerum. Voluptas id magnam a deserunt qui incidunt aut.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('10', '3', '16', 'articles', '{\"raw\":\"Sit dolores amet dolorum amet officia. Perspiciatis quia a et sed et. Aut cumque saepe laudantium. Occaecati est labore culpa non. Non laudantium in unde dolor ea ratione maiores.\",\"html\":\"<p>Sit dolores amet dolorum amet officia. Perspiciatis quia a et sed et. Aut cumque saepe laudantium. Occaecati est labore culpa non. Non laudantium in unde dolor ea ratione maiores.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('11', '10', '9', 'articles', '{\"raw\":\"Nostrum aperiam molestiae tenetur et est placeat. Molestias voluptas fugiat porro ut. Sed repellat aliquam vel ut rerum.\",\"html\":\"<p>Nostrum aperiam molestiae tenetur et est placeat. Molestias voluptas fugiat porro ut. Sed repellat aliquam vel ut rerum.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('12', '8', '13', 'articles', '{\"raw\":\"Aut eum accusamus mollitia sunt. Quae cupiditate esse voluptatem debitis. Suscipit suscipit veritatis nihil explicabo.\",\"html\":\"<p>Aut eum accusamus mollitia sunt. Quae cupiditate esse voluptatem debitis. Suscipit suscipit veritatis nihil explicabo.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('13', '11', '20', 'discussions', '{\"raw\":\"Deserunt dolores repellendus velit quod id. Deserunt et aut consectetur ut est. Exercitationem voluptas in pariatur.\",\"html\":\"<p>Deserunt dolores repellendus velit quod id. Deserunt et aut consectetur ut est. Exercitationem voluptas in pariatur.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('14', '3', '4', 'articles', '{\"raw\":\"Et ipsum aperiam molestiae maiores. Soluta porro ipsa eum laudantium. Possimus aut incidunt voluptatem aut non eum sed.\",\"html\":\"<p>Et ipsum aperiam molestiae maiores. Soluta porro ipsa eum laudantium. Possimus aut incidunt voluptatem aut non eum sed.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('15', '2', '2', 'discussions', '{\"raw\":\"Consequatur impedit ut pariatur est exercitationem quibusdam quasi. Ad non esse et in fugiat ipsam nulla.\",\"html\":\"<p>Consequatur impedit ut pariatur est exercitationem quibusdam quasi. Ad non esse et in fugiat ipsam nulla.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('16', '7', '10', 'articles', '{\"raw\":\"Aut doloremque et ut. Nisi alias sint voluptatem voluptas nihil quis aperiam.\",\"html\":\"<p>Aut doloremque et ut. Nisi alias sint voluptatem voluptas nihil quis aperiam.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('17', '1', '3', 'discussions', '{\"raw\":\"Consequatur sint qui tenetur id amet nobis dolores dolores. Dolorem velit esse quisquam ad fugiat modi.\",\"html\":\"<p>Consequatur sint qui tenetur id amet nobis dolores dolores. Dolorem velit esse quisquam ad fugiat modi.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('18', '3', '15', 'articles', '{\"raw\":\"Est accusantium eius non non iusto atque. Nam adipisci veniam ut quia. Et mollitia impedit accusamus maxime voluptates molestiae rerum ipsum. Incidunt repellendus culpa ipsum quis sit magnam.\",\"html\":\"<p>Est accusantium eius non non iusto atque. Nam adipisci veniam ut quia. Et mollitia impedit accusamus maxime voluptates molestiae rerum ipsum. Incidunt repellendus culpa ipsum quis sit magnam.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('19', '7', '6', 'discussions', '{\"raw\":\"Quibusdam amet architecto quia placeat labore corrupti. Et sed sint quibusdam enim consequuntur rerum vel repellendus.\",\"html\":\"<p>Quibusdam amet architecto quia placeat labore corrupti. Et sed sint quibusdam enim consequuntur rerum vel repellendus.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('20', '10', '8', 'articles', '{\"raw\":\"Vitae alias officia repudiandae culpa aut. Qui ut facere soluta alias earum. Possimus a repellat explicabo sunt qui vitae possimus. Necessitatibus quasi nulla maxime consectetur ratione aut.\",\"html\":\"<p>Vitae alias officia repudiandae culpa aut. Qui ut facere soluta alias earum. Possimus a repellat explicabo sunt qui vitae possimus. Necessitatibus quasi nulla maxime consectetur ratione aut.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('21', '7', '5', 'articles', '{\"raw\":\"Earum esse delectus voluptatum omnis aperiam ut illum. Eum at aperiam atque et suscipit illum consequuntur. Sed vel sapiente deserunt qui voluptates.\",\"html\":\"<p>Earum esse delectus voluptatum omnis aperiam ut illum. Eum at aperiam atque et suscipit illum consequuntur. Sed vel sapiente deserunt qui voluptates.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('22', '2', '6', 'articles', '{\"raw\":\"Ipsa omnis voluptas cum sed quibusdam amet. Totam aperiam ut aperiam facilis similique iste rerum. Earum eos expedita iusto autem. Eum rerum ea temporibus voluptate eaque.\",\"html\":\"<p>Ipsa omnis voluptas cum sed quibusdam amet. Totam aperiam ut aperiam facilis similique iste rerum. Earum eos expedita iusto autem. Eum rerum ea temporibus voluptate eaque.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('23', '3', '2', 'discussions', '{\"raw\":\"Sunt autem iure non omnis eius aut et asperiores. Beatae aut voluptatum vel iste atque. Odit nihil molestiae id eos aperiam tenetur iure. Neque quia quas aut nulla eos. Dolores facere unde natus culpa nostrum a.\",\"html\":\"<p>Sunt autem iure non omnis eius aut et asperiores. Beatae aut voluptatum vel iste atque. Odit nihil molestiae id eos aperiam tenetur iure. Neque quia quas aut nulla eos. Dolores facere unde natus culpa nostrum a.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('24', '10', '6', 'articles', '{\"raw\":\"Et occaecati eligendi culpa perspiciatis. Perspiciatis consequatur at rerum voluptatem tempore. Voluptatum occaecati est molestias repellat ut qui aperiam. Aut repellendus sed sunt.\",\"html\":\"<p>Et occaecati eligendi culpa perspiciatis. Perspiciatis consequatur at rerum voluptatem tempore. Voluptatum occaecati est molestias repellat ut qui aperiam. Aut repellendus sed sunt.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('25', '2', '7', 'discussions', '{\"raw\":\"Ex commodi aut nulla ducimus recusandae quam. Beatae quia sit cum. Sed consequuntur quasi placeat eius quam iure aspernatur. Et dolor aspernatur quia quo amet recusandae sint.\",\"html\":\"<p>Ex commodi aut nulla ducimus recusandae quam. Beatae quia sit cum. Sed consequuntur quasi placeat eius quam iure aspernatur. Et dolor aspernatur quia quo amet recusandae sint.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('26', '5', '6', 'articles', '{\"raw\":\"Quia perspiciatis magnam earum vel officia tempore. Voluptatibus voluptatem praesentium dolores aut fugiat molestiae vel. Fugiat voluptatem mollitia optio aut et est qui. Asperiores at et quia quo omnis atque praesentium tempora.\",\"html\":\"<p>Quia perspiciatis magnam earum vel officia tempore. Voluptatibus voluptatem praesentium dolores aut fugiat molestiae vel. Fugiat voluptatem mollitia optio aut et est qui. Asperiores at et quia quo omnis atque praesentium tempora.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('27', '9', '15', 'articles', '{\"raw\":\"Quos quia nemo doloremque et non in. Ut alias dolore sit consectetur. Culpa molestias ut eaque omnis. Nulla est placeat accusantium nihil.\",\"html\":\"<p>Quos quia nemo doloremque et non in. Ut alias dolore sit consectetur. Culpa molestias ut eaque omnis. Nulla est placeat accusantium nihil.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('28', '7', '13', 'discussions', '{\"raw\":\"Quae nesciunt libero dolor nemo voluptatibus harum. Nulla aut est pariatur error. Aut inventore omnis aut quaerat. Voluptatibus adipisci corporis corporis exercitationem sunt nobis dolor.\",\"html\":\"<p>Quae nesciunt libero dolor nemo voluptatibus harum. Nulla aut est pariatur error. Aut inventore omnis aut quaerat. Voluptatibus adipisci corporis corporis exercitationem sunt nobis dolor.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('29', '8', '17', 'articles', '{\"raw\":\"A ut eaque in in officiis eaque ea nihil. Maxime quis id quia quia aut sit ut. Libero qui quam qui quia beatae. Modi est corrupti praesentium laudantium.\",\"html\":\"<p>A ut eaque in in officiis eaque ea nihil. Maxime quis id quia quia aut sit ut. Libero qui quam qui quia beatae. Modi est corrupti praesentium laudantium.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('30', '6', '19', 'discussions', '{\"raw\":\"Ex voluptatem quia velit quidem blanditiis quidem. Beatae ut placeat facilis velit. Enim nostrum ut sapiente eaque voluptas repellendus ut.\",\"html\":\"<p>Ex voluptatem quia velit quidem blanditiis quidem. Beatae ut placeat facilis velit. Enim nostrum ut sapiente eaque voluptas repellendus ut.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('31', '8', '16', 'discussions', '{\"raw\":\"Odio repellendus consequatur esse optio eaque. Nostrum cum est perferendis beatae doloribus et. Voluptatem quas est sint ipsa architecto porro. Dolor est ratione eum laboriosam accusamus. Distinctio iusto voluptate voluptatem dicta voluptas.\",\"html\":\"<p>Odio repellendus consequatur esse optio eaque. Nostrum cum est perferendis beatae doloribus et. Voluptatem quas est sint ipsa architecto porro. Dolor est ratione eum laboriosam accusamus. Distinctio iusto voluptate voluptatem dicta voluptas.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('32', '5', '3', 'articles', '{\"raw\":\"Ut aspernatur aperiam voluptas. Ut itaque voluptates ullam alias. Voluptas debitis voluptas est qui a soluta occaecati fuga. Et pariatur temporibus reiciendis laborum omnis ducimus.\",\"html\":\"<p>Ut aspernatur aperiam voluptas. Ut itaque voluptates ullam alias. Voluptas debitis voluptas est qui a soluta occaecati fuga. Et pariatur temporibus reiciendis laborum omnis ducimus.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('33', '4', '4', 'discussions', '{\"raw\":\"Nihil quam consectetur impedit non qui. Nobis sed veniam accusamus non sit velit. Ad quia tempore rerum soluta magni quia quidem.\",\"html\":\"<p>Nihil quam consectetur impedit non qui. Nobis sed veniam accusamus non sit velit. Ad quia tempore rerum soluta magni quia quidem.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('34', '3', '15', 'articles', '{\"raw\":\"Velit ipsam aut est enim aut aspernatur. Labore consequatur voluptatibus rem at aut. Laborum inventore dolores autem officiis earum amet. Similique nulla aspernatur sed qui excepturi adipisci.\",\"html\":\"<p>Velit ipsam aut est enim aut aspernatur. Labore consequatur voluptatibus rem at aut. Laborum inventore dolores autem officiis earum amet. Similique nulla aspernatur sed qui excepturi adipisci.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('35', '1', '7', 'discussions', '{\"raw\":\"In qui repudiandae eos et. Dicta voluptas magnam consequuntur aperiam. Quae expedita praesentium quaerat sed dolores. Accusantium voluptatem fugiat qui sint dolor nulla.\",\"html\":\"<p>In qui repudiandae eos et. Dicta voluptas magnam consequuntur aperiam. Quae expedita praesentium quaerat sed dolores. Accusantium voluptatem fugiat qui sint dolor nulla.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('36', '4', '9', 'discussions', '{\"raw\":\"Ut similique minus in dolor aperiam voluptatum. Delectus quo qui ab et illum aut dolores. Consequatur consequuntur ipsam est iusto consequatur.\",\"html\":\"<p>Ut similique minus in dolor aperiam voluptatum. Delectus quo qui ab et illum aut dolores. Consequatur consequuntur ipsam est iusto consequatur.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('37', '9', '15', 'discussions', '{\"raw\":\"Reiciendis quia amet molestias nihil culpa porro. Corrupti possimus soluta placeat fugiat voluptas delectus corrupti. Suscipit sequi eligendi voluptates deleniti perferendis. Tempore cum aut quis dignissimos asperiores qui.\",\"html\":\"<p>Reiciendis quia amet molestias nihil culpa porro. Corrupti possimus soluta placeat fugiat voluptas delectus corrupti. Suscipit sequi eligendi voluptates deleniti perferendis. Tempore cum aut quis dignissimos asperiores qui.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('38', '4', '3', 'articles', '{\"raw\":\"Ratione reprehenderit quos facere omnis magni quaerat. Quo est nostrum ullam qui voluptas.\",\"html\":\"<p>Ratione reprehenderit quos facere omnis magni quaerat. Quo est nostrum ullam qui voluptas.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('39', '5', '2', 'discussions', '{\"raw\":\"Quam dolores voluptas repellat sit omnis provident est. Natus sint recusandae totam accusamus mollitia. Culpa fugiat optio blanditiis sed. Sed similique vel et dolorum iusto.\",\"html\":\"<p>Quam dolores voluptas repellat sit omnis provident est. Natus sint recusandae totam accusamus mollitia. Culpa fugiat optio blanditiis sed. Sed similique vel et dolorum iusto.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('40', '4', '1', 'articles', '{\"raw\":\"Placeat deleniti nulla iste quisquam et eligendi dolorem. Voluptates magnam iusto et nisi inventore. Sunt reiciendis libero dignissimos rerum minima et eum.\",\"html\":\"<p>Placeat deleniti nulla iste quisquam et eligendi dolorem. Voluptates magnam iusto et nisi inventore. Sunt reiciendis libero dignissimos rerum minima et eum.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('41', '9', '11', 'discussions', '{\"raw\":\"Vitae vero ex voluptate pariatur fugit laudantium. Porro beatae sequi officiis et velit omnis minus. Consequuntur est rem quo veritatis.\",\"html\":\"<p>Vitae vero ex voluptate pariatur fugit laudantium. Porro beatae sequi officiis et velit omnis minus. Consequuntur est rem quo veritatis.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('42', '7', '15', 'articles', '{\"raw\":\"Omnis qui dolor reprehenderit et ipsum. Sit aperiam magnam consequatur quae voluptate fugiat. Facilis autem quasi optio qui veritatis pariatur impedit corporis.\",\"html\":\"<p>Omnis qui dolor reprehenderit et ipsum. Sit aperiam magnam consequatur quae voluptate fugiat. Facilis autem quasi optio qui veritatis pariatur impedit corporis.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('43', '9', '5', 'discussions', '{\"raw\":\"Quae nemo quae sint ipsam minima. Molestiae eum molestiae in et aut recusandae iusto.\",\"html\":\"<p>Quae nemo quae sint ipsam minima. Molestiae eum molestiae in et aut recusandae iusto.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('44', '7', '19', 'articles', '{\"raw\":\"Eius libero omnis libero rerum consequuntur. Accusamus blanditiis aut aliquid ad sint qui quod eaque. Est iure commodi optio ipsam sit libero.\",\"html\":\"<p>Eius libero omnis libero rerum consequuntur. Accusamus blanditiis aut aliquid ad sint qui quod eaque. Est iure commodi optio ipsam sit libero.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('45', '10', '20', 'articles', '{\"raw\":\"Sapiente delectus laborum quisquam dolores eos et nulla. Quasi libero velit id fugit dolores nihil. Consequatur tempore dolorem veniam repudiandae velit aliquam. Facilis non perferendis modi deserunt ipsa.\",\"html\":\"<p>Sapiente delectus laborum quisquam dolores eos et nulla. Quasi libero velit id fugit dolores nihil. Consequatur tempore dolorem veniam repudiandae velit aliquam. Facilis non perferendis modi deserunt ipsa.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('46', '1', '4', 'discussions', '{\"raw\":\"Possimus est sed ratione omnis vero aut. Ex voluptas cupiditate quidem fugit. Consequatur et quia optio facilis ratione sed eos. Distinctio sapiente occaecati possimus non.\",\"html\":\"<p>Possimus est sed ratione omnis vero aut. Ex voluptas cupiditate quidem fugit. Consequatur et quia optio facilis ratione sed eos. Distinctio sapiente occaecati possimus non.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('47', '1', '8', 'articles', '{\"raw\":\"Ipsa magnam consequatur similique. Voluptas magnam doloribus sit saepe assumenda numquam adipisci. Voluptas id sed non dolor commodi quibusdam aliquid.\",\"html\":\"<p>Ipsa magnam consequatur similique. Voluptas magnam doloribus sit saepe assumenda numquam adipisci. Voluptas id sed non dolor commodi quibusdam aliquid.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('48', '5', '4', 'articles', '{\"raw\":\"Ea est id sit itaque fugiat doloremque omnis. Delectus illum expedita quis consequatur quia. Alias officiis optio sit autem. Maxime at officia neque ducimus aut vel et et.\",\"html\":\"<p>Ea est id sit itaque fugiat doloremque omnis. Delectus illum expedita quis consequatur quia. Alias officiis optio sit autem. Maxime at officia neque ducimus aut vel et et.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('49', '7', '6', 'articles', '{\"raw\":\"Ut omnis assumenda quas possimus. Eaque inventore sit possimus nemo vero qui voluptas. Id nesciunt nisi incidunt eius corporis.\",\"html\":\"<p>Ut omnis assumenda quas possimus. Eaque inventore sit possimus nemo vero qui voluptas. Id nesciunt nisi incidunt eius corporis.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `comments` VALUES ('50', '7', '6', 'discussions', '{\"raw\":\"Optio ipsum quas rerum in. Accusantium qui et optio accusantium nihil dicta. Optio at incidunt fuga in totam dolore.\",\"html\":\"<p>Optio ipsum quas rerum in. Accusantium qui et optio accusantium nihil dicta. Optio at incidunt fuga in totam dolore.<\\/p>\"}', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);

-- ----------------------------
-- Table structure for discussions
-- ----------------------------
DROP TABLE IF EXISTS `discussions`;
CREATE TABLE `discussions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `last_user_id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of discussions
-- ----------------------------
INSERT INTO `discussions` VALUES ('1', '8', '8', 'Perferendis quia aut quam incidunt architecto.', '{\"raw\":\"Saepe corrupti sit et quae. Qui et aut ut voluptate et aut. Nihil ab et fugiat laboriosam tempore voluptate assumenda. Qui qui ex dolorum exercitationem molestiae mollitia.\",\"html\":\"<p>Saepe corrupti sit et quae. Qui et aut ut voluptate et aut. Nihil ab et fugiat laboriosam tempore voluptate assumenda. Qui qui ex dolorum exercitationem molestiae mollitia.<\\/p>\"}', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `discussions` VALUES ('2', '9', '9', 'Qui rem numquam enim quo illo sit.', '{\"raw\":\"Reprehenderit nobis nisi eum dolore velit. Dolorum quasi dolor est consequatur maiores. Est omnis quod ut nobis est dolorum quia. Dolorem rerum tenetur culpa fugit quis et.\",\"html\":\"<p>Reprehenderit nobis nisi eum dolore velit. Dolorum quasi dolor est consequatur maiores. Est omnis quod ut nobis est dolorum quia. Dolorem rerum tenetur culpa fugit quis et.<\\/p>\"}', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `discussions` VALUES ('3', '6', '6', 'Quia eos corporis alias sint veritatis quia.', '{\"raw\":\"Dignissimos necessitatibus ipsam nisi porro. Natus totam vel amet similique placeat perspiciatis dolores. Officia magni ratione vel qui nobis voluptatum id. Omnis qui pariatur fugit dolores quo.\",\"html\":\"<p>Dignissimos necessitatibus ipsam nisi porro. Natus totam vel amet similique placeat perspiciatis dolores. Officia magni ratione vel qui nobis voluptatum id. Omnis qui pariatur fugit dolores quo.<\\/p>\"}', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `discussions` VALUES ('4', '3', '3', 'Atque sit quod ipsam voluptate laudantium velit ipsam.', '{\"raw\":\"Itaque atque delectus rerum tenetur consequuntur. Praesentium occaecati harum unde explicabo praesentium atque quia et. Maxime aut eos quos quasi exercitationem.\",\"html\":\"<p>Itaque atque delectus rerum tenetur consequuntur. Praesentium occaecati harum unde explicabo praesentium atque quia et. Maxime aut eos quos quasi exercitationem.<\\/p>\"}', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `discussions` VALUES ('5', '4', '4', 'Quis esse nulla officiis.', '{\"raw\":\"Et quia doloremque veniam. Hic sequi repudiandae sit doloremque quis illo fuga est. Iusto possimus esse ducimus velit facere blanditiis saepe. Maiores eos sit architecto aliquam et iusto nesciunt.\",\"html\":\"<p>Et quia doloremque veniam. Hic sequi repudiandae sit doloremque quis illo fuga est. Iusto possimus esse ducimus velit facere blanditiis saepe. Maiores eos sit architecto aliquam et iusto nesciunt.<\\/p>\"}', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `discussions` VALUES ('6', '9', '9', 'Sed quia aliquid aperiam.', '{\"raw\":\"Ut numquam nostrum quis distinctio. Placeat numquam sed aut illo ut voluptatum ducimus. Adipisci et qui quia dolores aperiam. Illo tempora et corrupti error.\",\"html\":\"<p>Ut numquam nostrum quis distinctio. Placeat numquam sed aut illo ut voluptatum ducimus. Adipisci et qui quia dolores aperiam. Illo tempora et corrupti error.<\\/p>\"}', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `discussions` VALUES ('7', '11', '11', 'Laudantium atque dolores sunt error vel.', '{\"raw\":\"Modi consectetur reiciendis autem sit. Quia aut eum vel non fugiat voluptatem.\",\"html\":\"<p>Modi consectetur reiciendis autem sit. Quia aut eum vel non fugiat voluptatem.<\\/p>\"}', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `discussions` VALUES ('8', '9', '9', 'Soluta officia animi delectus sequi repellendus accusantium eum.', '{\"raw\":\"Suscipit tenetur quisquam delectus assumenda autem. Facere quaerat perferendis non id est aut.\",\"html\":\"<p>Suscipit tenetur quisquam delectus assumenda autem. Facere quaerat perferendis non id est aut.<\\/p>\"}', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `discussions` VALUES ('9', '7', '7', 'Qui enim iusto voluptatem laboriosam.', '{\"raw\":\"Veritatis accusantium et esse rem rerum quis repudiandae. Illum quia ut quasi repellat mollitia soluta autem. Pariatur corporis quasi tempore.\",\"html\":\"<p>Veritatis accusantium et esse rem rerum quis repudiandae. Illum quia ut quasi repellat mollitia soluta autem. Pariatur corporis quasi tempore.<\\/p>\"}', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `discussions` VALUES ('10', '7', '7', 'Assumenda quia voluptatum deserunt neque.', '{\"raw\":\"Amet aut animi quaerat impedit eum inventore. Officia perferendis fugit dolor. Architecto et eveniet quo voluptate placeat sit inventore.\",\"html\":\"<p>Amet aut animi quaerat impedit eum inventore. Officia perferendis fugit dolor. Architecto et eveniet quo voluptate placeat sit inventore.<\\/p>\"}', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `discussions` VALUES ('11', '10', '10', 'Similique dolorem nisi assumenda sit omnis.', '{\"raw\":\"Blanditiis velit odio temporibus vel qui voluptas id est. Hic minima quis sit tempora quo laborum ex. Ad perferendis id quia numquam quaerat. Quo aliquid corrupti voluptates adipisci.\",\"html\":\"<p>Blanditiis velit odio temporibus vel qui voluptas id est. Hic minima quis sit tempora quo laborum ex. Ad perferendis id quia numquam quaerat. Quo aliquid corrupti voluptates adipisci.<\\/p>\"}', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `discussions` VALUES ('12', '11', '11', 'Modi ut provident excepturi architecto.', '{\"raw\":\"Quis et aut ab molestias exercitationem voluptatum magni. Omnis aut sint voluptas ut. Ut sint rerum explicabo quisquam.\",\"html\":\"<p>Quis et aut ab molestias exercitationem voluptatum magni. Omnis aut sint voluptas ut. Ut sint rerum explicabo quisquam.<\\/p>\"}', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `discussions` VALUES ('13', '4', '4', 'Corrupti hic sint optio et molestiae repudiandae.', '{\"raw\":\"Unde eius ex rerum ducimus recusandae nihil velit. Tempora qui exercitationem at nam.\",\"html\":\"<p>Unde eius ex rerum ducimus recusandae nihil velit. Tempora qui exercitationem at nam.<\\/p>\"}', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `discussions` VALUES ('14', '8', '8', 'Totam corrupti nulla et aut doloribus omnis.', '{\"raw\":\"Rerum natus corrupti itaque est. Soluta magni sequi non aliquid sed fugit ullam. Vitae voluptatem molestias eligendi qui ut id. Quo corporis fugiat ut error quo. Sed error beatae laborum quia enim sequi voluptas.\",\"html\":\"<p>Rerum natus corrupti itaque est. Soluta magni sequi non aliquid sed fugit ullam. Vitae voluptatem molestias eligendi qui ut id. Quo corporis fugiat ut error quo. Sed error beatae laborum quia enim sequi voluptas.<\\/p>\"}', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `discussions` VALUES ('15', '4', '4', 'Aperiam aliquid et blanditiis reprehenderit omnis.', '{\"raw\":\"Voluptas impedit autem harum deserunt perferendis autem totam. Earum recusandae dolor cum quae quia voluptatum voluptatem vel. Temporibus quisquam error maxime.\",\"html\":\"<p>Voluptas impedit autem harum deserunt perferendis autem totam. Earum recusandae dolor cum quae quia voluptatum voluptatem vel. Temporibus quisquam error maxime.<\\/p>\"}', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `discussions` VALUES ('16', '7', '7', 'Aut accusamus quaerat vel nihil atque.', '{\"raw\":\"Labore minus eum velit et. Voluptas sit aut ut odit pariatur numquam. Nostrum consectetur architecto rerum est. Et explicabo dolore odio sed.\",\"html\":\"<p>Labore minus eum velit et. Voluptas sit aut ut odit pariatur numquam. Nostrum consectetur architecto rerum est. Et explicabo dolore odio sed.<\\/p>\"}', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `discussions` VALUES ('17', '6', '6', 'Voluptatum minus vero consequatur corrupti iure esse nihil qui.', '{\"raw\":\"Nemo autem voluptatibus doloribus dolore in dolor. Voluptatem labore at eum omnis quasi earum. Laudantium consectetur consectetur modi impedit.\",\"html\":\"<p>Nemo autem voluptatibus doloribus dolore in dolor. Voluptatem labore at eum omnis quasi earum. Laudantium consectetur consectetur modi impedit.<\\/p>\"}', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `discussions` VALUES ('18', '3', '3', 'Ipsam voluptatem quia laborum voluptas cupiditate.', '{\"raw\":\"Quae in voluptas inventore aut. Accusamus dolorem voluptatum eius sed. Sint odit iure alias ut.\",\"html\":\"<p>Quae in voluptas inventore aut. Accusamus dolorem voluptatum eius sed. Sint odit iure alias ut.<\\/p>\"}', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `discussions` VALUES ('19', '9', '9', 'Dolorem cupiditate repellat labore necessitatibus hic officia consequatur asperiores.', '{\"raw\":\"Impedit repellat nulla non aut placeat. In recusandae ad cumque et ab asperiores. Ex nesciunt sed veritatis consequatur architecto tempora facilis.\",\"html\":\"<p>Impedit repellat nulla non aut placeat. In recusandae ad cumque et ab asperiores. Ex nesciunt sed veritatis consequatur architecto tempora facilis.<\\/p>\"}', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `discussions` VALUES ('20', '6', '6', 'Eveniet id aspernatur placeat itaque optio est neque.', '{\"raw\":\"Quos soluta enim quia nihil tempore eum. Rem est non non qui eum commodi sed. Eos nihil consectetur ducimus voluptatem rerum illum. Et molestiae quo sit nihil voluptates.\",\"html\":\"<p>Quos soluta enim quia nihil tempore eum. Rem est non non qui eum commodi sed. Eos nihil consectetur ducimus voluptatem rerum illum. Et molestiae quo sit nihil voluptates.<\\/p>\"}', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for followers
-- ----------------------------
DROP TABLE IF EXISTS `followers`;
CREATE TABLE `followers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `follow_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of followers
-- ----------------------------

-- ----------------------------
-- Table structure for links
-- ----------------------------
DROP TABLE IF EXISTS `links`;
CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `links_name_index` (`name`),
  KEY `links_link_index` (`link`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of links
-- ----------------------------
INSERT INTO `links` VALUES ('1', 'Reagan Daugherty', 'http://www.morissette.com/molestiae-voluptate-non-ad-reiciendis-ut-dolores.html', 'https://lorempixel.com/640/480/?43300', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `links` VALUES ('2', 'Tracey Schneider MD', 'https://vonrueden.com/sed-voluptatem-ut-ut-sapiente-quasi-expedita.html', 'https://lorempixel.com/640/480/?26585', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `links` VALUES ('3', 'Zelda Blick Sr.', 'https://brown.com/maiores-optio-et-soluta-et.html', 'https://lorempixel.com/640/480/?73672', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `links` VALUES ('4', 'Stephen Goodwin', 'https://www.muller.info/deleniti-natus-sequi-consectetur-id-officiis-ut-magni', 'https://lorempixel.com/640/480/?98973', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `links` VALUES ('5', 'Mary Feeney', 'https://moore.com/sed-aut-rem-itaque-consequuntur-est-inventore.html', 'https://lorempixel.com/640/480/?89563', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `links` VALUES ('6', 'Hayley Quigley', 'https://www.nicolas.com/velit-sapiente-commodi-harum-omnis-debitis', 'https://lorempixel.com/640/480/?66781', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `links` VALUES ('7', 'Vinnie Greenholt', 'http://rutherford.com/et-dignissimos-qui-voluptatem-expedita', 'https://lorempixel.com/640/480/?63692', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `links` VALUES ('8', 'Marisol Klein', 'http://www.torp.com/', 'https://lorempixel.com/640/480/?18599', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `links` VALUES ('9', 'Prof. Andreanne Fay DVM', 'https://spinka.org/quis-fugit-atque-autem-esse-rerum-corrupti.html', 'https://lorempixel.com/640/480/?94543', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `links` VALUES ('10', 'Delphine Rutherford', 'http://www.rohan.com/', 'https://lorempixel.com/640/480/?45975', '1', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_06_01_000001_create_oauth_auth_codes_table', '1');
INSERT INTO `migrations` VALUES ('4', '2016_06_01_000002_create_oauth_access_tokens_table', '1');
INSERT INTO `migrations` VALUES ('5', '2016_06_01_000003_create_oauth_refresh_tokens_table', '1');
INSERT INTO `migrations` VALUES ('6', '2016_06_01_000004_create_oauth_clients_table', '1');
INSERT INTO `migrations` VALUES ('7', '2016_06_01_000005_create_oauth_personal_access_clients_table', '1');
INSERT INTO `migrations` VALUES ('8', '2016_09_02_065857_create_articles_table', '1');
INSERT INTO `migrations` VALUES ('9', '2016_09_02_065920_create_tags_table', '1');
INSERT INTO `migrations` VALUES ('10', '2016_09_02_065952_create_visitors_table', '1');
INSERT INTO `migrations` VALUES ('11', '2016_09_02_070119_create_categories_table', '1');
INSERT INTO `migrations` VALUES ('12', '2016_09_02_070132_create_discussions_table', '1');
INSERT INTO `migrations` VALUES ('13', '2016_09_02_070151_create_comments_table', '1');
INSERT INTO `migrations` VALUES ('14', '2016_09_13_022056_create_links_table', '1');
INSERT INTO `migrations` VALUES ('15', '2016_11_11_163610_create_taggables_table', '1');
INSERT INTO `migrations` VALUES ('16', '2016_12_11_153312_create_followers_table', '1');
INSERT INTO `migrations` VALUES ('17', '2016_12_12_171655_create_notifications_table', '1');
INSERT INTO `migrations` VALUES ('18', '2016_12_12_205419_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('19', '2017_04_14_013622_create_votes_table', '1');

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of notifications
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES ('1', null, 'PJ Blog Personal Access Client', 'fR3hMVCwqt2zn4oPlmCzniWqYso6RrH1NIvDj9op', 'http://localhost', '1', '0', '0', '2018-08-02 11:12:14', '2018-08-02 11:12:14');
INSERT INTO `oauth_clients` VALUES ('2', null, 'PJ Blog Password Grant Client', 'D2vusJ0d9AIDtZg1f9nAJ0rNOi7VFiBQ7M1gffO7', 'http://localhost', '0', '1', '0', '2018-08-02 11:12:14', '2018-08-02 11:12:14');
INSERT INTO `oauth_clients` VALUES ('3', null, 'PJ Blog Personal Access Client', 'CzpCIUaFrj3CuLiB0mLXowMnfOjFvbtjH3p1tTLJ', 'http://localhost', '1', '0', '0', '2018-08-02 18:04:25', '2018-08-02 18:04:25');
INSERT INTO `oauth_clients` VALUES ('4', null, 'PJ Blog Password Grant Client', 'Vf23qvkXscXKR46T9QreLZy4EKDHE8nQRSq77syP', 'http://localhost', '0', '1', '0', '2018-08-02 18:04:25', '2018-08-02 18:04:25');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES ('1', '1', '2018-08-02 11:12:14', '2018-08-02 11:12:14');
INSERT INTO `oauth_personal_access_clients` VALUES ('2', '3', '2018-08-02 18:04:25', '2018-08-02 18:04:25');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for taggables
-- ----------------------------
DROP TABLE IF EXISTS `taggables`;
CREATE TABLE `taggables` (
  `tag_id` int(10) unsigned NOT NULL,
  `taggable_id` int(10) unsigned NOT NULL,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `taggables_tag_id_index` (`tag_id`),
  KEY `taggables_taggable_id_index` (`taggable_id`),
  KEY `taggables_taggable_type_index` (`taggable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of taggables
-- ----------------------------

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_tag_unique` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', 'vel', 'Quasi qui aut libero.', 'Aut unde rerum reprehenderit fuga culpa facere iure.', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `tags` VALUES ('2', 'minus', 'Quaerat et rerum aut nostrum harum dolores eos.', 'Veritatis cum voluptatem ullam quia laborum tempora aut.', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `tags` VALUES ('3', 'tempore', 'Dolorem iure animi velit odio repudiandae et.', 'Voluptas nesciunt praesentium excepturi ut accusantium impedit.', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `tags` VALUES ('4', 'expedita', 'Veritatis repudiandae possimus repellat deleniti dolorem distinctio.', 'Aut dolorum nihil aut tempore laboriosam qui.', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);
INSERT INTO `tags` VALUES ('5', 'repellat', 'Mollitia et necessitatibus nesciunt recusandae.', 'Expedita suscipit fugiat quis nulla quis culpa perspiciatis.', '2018-08-02 11:12:02', '2018-08-02 11:12:02', null);

-- ----------------------------
-- Table structure for url_alias
-- ----------------------------
DROP TABLE IF EXISTS `url_alias`;
CREATE TABLE `url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of url_alias
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm_code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `github_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weibo_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weibo_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8 DEFAULT NULL,
  `email_notify_enabled` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_name_unique` (`name`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_confirm_code_unique` (`confirm_code`),
  KEY `users_email_notify_enabled_index` (`email_notify_enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', null, 'http://blogvue.me.vn/storage/avatar/2018/10/26/quEcCrfcVjGNRWvV5KEymu7tFj6psrSoAH5ZMclC.jpg', 'admin@admin.com', 'T0bnsRxoXw5OUShB57RRuB20mp8kmxudGat8t6pt5PbdcwktxgY6Q3EJldPWLy8f', '1', '1', '$2y$10$TvEGW0bUjxPOAjaG2gbfReY6aFw8HWdVvNhjp8iRhT9zIn6xn3XUC', null, null, null, null, null, null, null, 'yes', 'v5hWiIVTz8MGihPy0BBYFE1Il8H4ErMC7BKUE82UVYRLqtczD5gLIz4QrXUK', '2018-08-02 11:12:02', '2018-10-26 04:07:43', null, '');
INSERT INTO `users` VALUES ('22', 'admin1', null, null, 'admin1@admin.com', 'PT9p9PC70Q3LgYWGX8nK4tOExw9VcFVgwd4JHrfBhaG3Shauiec2KTU39L5vGBzV', '0', '0', '$2y$10$z4wO3XZ7j4sNypXsqzxrY.CR8XD8COKEqrNeLYPWmJ3f51SmovmNq', null, null, null, null, null, null, null, 'yes', null, '2018-11-08 16:24:12', '2018-11-08 16:24:12', null, 'subscribe');
INSERT INTO `users` VALUES ('23', 'admin2', 'admin2', null, 'admin2@admin.com', 'EIsyru9FF9H6klnNWnNBlidkZX7jd8xaecKD9kGVJRm2WdETY9RDpEI0Orgn8E4X', '0', '0', '$2y$10$c9SJrze9eHiF98Jia0bTvOB0MUlXQGbSoWqsRyS.X6hg3yq1yEZDy', null, null, null, null, null, null, null, 'yes', null, '2018-11-08 16:25:03', '2018-11-08 16:25:03', null, 'editor');

-- ----------------------------
-- Table structure for visitors
-- ----------------------------
DROP TABLE IF EXISTS `visitors`;
CREATE TABLE `visitors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) unsigned NOT NULL,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicks` int(10) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visitors_article_id_foreign` (`article_id`),
  CONSTRAINT `visitors_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of visitors
-- ----------------------------
INSERT INTO `visitors` VALUES ('1', '15', '68.98.223.19', 'CN', '33', '2018-08-02 11:12:04', '2018-08-02 11:12:04');
INSERT INTO `visitors` VALUES ('2', '19', '193.110.192.77', 'CN', '85', '2018-08-02 11:12:04', '2018-08-02 11:12:04');
INSERT INTO `visitors` VALUES ('3', '7', '216.221.107.77', 'CN', '40', '2018-08-02 11:12:04', '2018-08-02 11:12:04');
INSERT INTO `visitors` VALUES ('4', '7', '109.194.232.181', 'CN', '27', '2018-08-02 11:12:04', '2018-08-02 11:12:04');
INSERT INTO `visitors` VALUES ('5', '9', '143.250.168.189', 'CN', '42', '2018-08-02 11:12:04', '2018-08-02 11:12:04');
INSERT INTO `visitors` VALUES ('6', '2', '3.215.1.211', 'CN', '8', '2018-08-02 11:12:04', '2018-08-02 11:12:04');
INSERT INTO `visitors` VALUES ('7', '2', '42.202.118.45', 'CN', '18', '2018-08-02 11:12:04', '2018-08-02 11:12:04');
INSERT INTO `visitors` VALUES ('8', '15', '213.56.245.167', 'CN', '60', '2018-08-02 11:12:04', '2018-08-02 11:12:04');
INSERT INTO `visitors` VALUES ('9', '12', '71.251.184.216', 'CN', '94', '2018-08-02 11:12:04', '2018-08-02 11:12:04');
INSERT INTO `visitors` VALUES ('10', '4', '195.208.92.73', 'CN', '35', '2018-08-02 11:12:04', '2018-08-02 11:12:04');
INSERT INTO `visitors` VALUES ('11', '7', '24.249.135.195', 'CN', '45', '2018-08-02 11:12:04', '2018-08-02 11:12:04');
INSERT INTO `visitors` VALUES ('12', '16', '52.76.250.245', 'CN', '97', '2018-08-02 11:12:04', '2018-08-02 11:12:04');
INSERT INTO `visitors` VALUES ('13', '19', '201.195.254.120', 'CN', '93', '2018-08-02 11:12:04', '2018-08-02 11:12:04');
INSERT INTO `visitors` VALUES ('14', '9', '228.201.83.217', 'CN', '62', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('15', '18', '40.207.35.116', 'CN', '6', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('16', '7', '79.90.167.219', 'CN', '100', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('17', '16', '3.27.100.197', 'CN', '23', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('18', '8', '236.69.220.45', 'CN', '23', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('19', '18', '1.162.45.70', 'CN', '41', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('20', '5', '180.166.244.120', 'CN', '25', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('21', '6', '174.69.47.172', 'CN', '44', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('22', '11', '217.34.250.37', 'CN', '78', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('23', '20', '146.118.199.183', 'CN', '6', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('24', '1', '176.60.19.131', 'CN', '85', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('25', '10', '118.48.2.17', 'CN', '26', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('26', '17', '130.123.196.19', 'CN', '30', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('27', '6', '235.4.170.95', 'CN', '15', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('28', '16', '18.129.253.140', 'CN', '12', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('29', '11', '184.196.231.232', 'CN', '16', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('30', '3', '5.91.38.140', 'CN', '46', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('31', '13', '204.168.54.120', 'CN', '4', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('32', '6', '47.211.106.152', 'CN', '91', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('33', '4', '235.38.159.124', 'CN', '93', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('34', '1', '161.131.216.127', 'CN', '88', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('35', '17', '152.145.6.107', 'CN', '20', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('36', '7', '211.135.165.81', 'CN', '55', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('37', '17', '112.172.219.192', 'CN', '77', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('38', '13', '13.166.66.135', 'CN', '99', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('39', '17', '143.30.191.148', 'CN', '1', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('40', '20', '52.206.214.237', 'CN', '4', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('41', '16', '101.252.87.54', 'CN', '51', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('42', '11', '112.191.84.188', 'CN', '67', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('43', '17', '162.223.35.195', 'CN', '76', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('44', '18', '25.172.177.78', 'CN', '39', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('45', '17', '43.132.136.27', 'CN', '63', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('46', '2', '43.249.96.52', 'CN', '32', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('47', '3', '57.100.181.176', 'CN', '83', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('48', '6', '3.10.168.188', 'CN', '71', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('49', '11', '216.9.172.247', 'CN', '87', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('50', '14', '3.34.162.142', 'CN', '56', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('51', '14', '6.127.179.122', 'CN', '85', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('52', '8', '91.106.233.136', 'CN', '15', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('53', '19', '253.203.171.183', 'CN', '69', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('54', '3', '38.210.9.141', 'CN', '76', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('55', '13', '92.213.183.251', 'CN', '49', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('56', '7', '89.9.37.187', 'CN', '11', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('57', '18', '110.118.229.185', 'CN', '49', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('58', '15', '52.175.49.148', 'CN', '11', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('59', '19', '92.101.113.47', 'CN', '70', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('60', '9', '174.251.185.181', 'CN', '95', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('61', '18', '198.200.77.4', 'CN', '67', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('62', '16', '165.78.20.210', 'CN', '85', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('63', '1', '170.184.35.51', 'CN', '93', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('64', '11', '93.216.230.230', 'CN', '98', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('65', '10', '96.41.163.23', 'CN', '34', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('66', '16', '235.120.237.132', 'CN', '15', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('67', '4', '218.28.100.215', 'CN', '81', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('68', '15', '120.237.128.13', 'CN', '30', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('69', '10', '232.118.215.132', 'CN', '60', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('70', '2', '194.90.17.198', 'CN', '4', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('71', '11', '106.184.66.14', 'CN', '96', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('72', '15', '216.210.201.255', 'CN', '83', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('73', '11', '172.152.84.149', 'CN', '76', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('74', '20', '206.99.171.249', 'CN', '63', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('75', '8', '221.79.143.111', 'CN', '34', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('76', '10', '208.147.74.140', 'CN', '76', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('77', '1', '163.200.230.16', 'CN', '91', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('78', '17', '86.156.93.77', 'CN', '71', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('79', '2', '5.74.204.255', 'CN', '10', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('80', '13', '136.9.33.186', 'CN', '53', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('81', '20', '221.34.130.254', 'CN', '41', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('82', '12', '109.64.10.211', 'CN', '70', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('83', '2', '117.155.219.53', 'CN', '7', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('84', '20', '188.249.196.249', 'CN', '99', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('85', '20', '190.124.73.178', 'CN', '48', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('86', '14', '99.108.206.12', 'CN', '42', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('87', '20', '94.169.94.150', 'CN', '18', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('88', '19', '99.8.54.166', 'CN', '86', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('89', '15', '247.193.187.206', 'CN', '88', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('90', '9', '16.24.22.178', 'CN', '92', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('91', '17', '100.151.207.83', 'CN', '13', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('92', '7', '76.4.0.183', 'CN', '67', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('93', '12', '58.91.18.78', 'CN', '6', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('94', '17', '115.212.196.131', 'CN', '87', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('95', '16', '92.211.89.151', 'CN', '36', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('96', '19', '177.239.171.225', 'CN', '87', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('97', '19', '61.210.83.154', 'CN', '8', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('98', '4', '174.120.136.23', 'CN', '48', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('99', '15', '162.63.83.38', 'CN', '46', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('100', '19', '64.248.212.43', 'CN', '6', '2018-08-02 11:12:05', '2018-08-02 11:12:05');
INSERT INTO `visitors` VALUES ('101', '12', '127.0.0.1', null, '1', '2018-08-02 18:08:51', '2018-08-02 18:08:51');
INSERT INTO `visitors` VALUES ('102', '6', '127.0.0.1', null, '12', '2018-08-02 18:10:26', '2018-10-25 09:47:11');
INSERT INTO `visitors` VALUES ('103', '16', '127.0.0.1', null, '2', '2018-08-04 04:59:08', '2018-08-10 04:18:30');
INSERT INTO `visitors` VALUES ('104', '3', '127.0.0.1', null, '1', '2018-08-08 04:16:09', '2018-08-08 04:16:09');
INSERT INTO `visitors` VALUES ('105', '1', '127.0.0.1', null, '3', '2018-08-10 05:35:50', '2018-11-06 02:37:51');
INSERT INTO `visitors` VALUES ('106', '9', '127.0.0.1', null, '1', '2018-10-19 07:57:24', '2018-10-19 07:57:24');

-- ----------------------------
-- Table structure for votes
-- ----------------------------
DROP TABLE IF EXISTS `votes`;
CREATE TABLE `votes` (
  `user_id` int(10) unsigned NOT NULL,
  `votable_id` int(10) unsigned NOT NULL,
  `votable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('up_vote','down_vote') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'up_vote',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `votes_votable_type_index` (`votable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of votes
-- ----------------------------
INSERT INTO `votes` VALUES ('1', '49', 'App\\Comment', 'down_vote', '2018-10-04 18:12:32', '2018-10-04 18:12:32');
INSERT INTO `votes` VALUES ('1', '26', 'App\\Comment', 'down_vote', '2018-10-04 18:12:34', '2018-10-04 18:12:34');
