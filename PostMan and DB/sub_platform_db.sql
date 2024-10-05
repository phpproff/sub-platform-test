-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.31-0ubuntu0.20.04.2 - (Ubuntu)
-- Server OS:                    Linux
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table sub_platform_db.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sub_platform_db.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table sub_platform_db.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sub_platform_db.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2024_10_05_081244_create_websites_table', 1),
	(6, '2024_10_05_081253_create_posts_table', 1),
	(7, '2024_10_05_081258_create_subs_table', 1);

-- Dumping structure for table sub_platform_db.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sub_platform_db.password_resets: ~0 rows (approximately)

-- Dumping structure for table sub_platform_db.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sub_platform_db.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table sub_platform_db.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `website_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sub_platform_db.posts: ~20 rows (approximately)
INSERT INTO `posts` (`id`, `website_id`, `title`, `description`, `sent`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Molestiae illo eum voluptatibus suscipit dicta.', 'Placeat quibusdam id et ut alias modi. Earum aliquid consequatur rerum reiciendis corporis. Eveniet sunt et vero nihil. Magni deleniti dolorem aut nobis.', 0, '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(2, 1, 'Tenetur corrupti quia perspiciatis sunt dolores nihil.', 'Expedita laudantium nemo dignissimos. Non ducimus repellat ratione ab unde cum quo. Qui consequuntur ullam beatae cumque sapiente omnis sit.', 0, '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(3, 1, 'Ipsam optio sed vel officia inventore.', 'Ut qui magni totam ut totam adipisci aliquid. Dolorem laboriosam aspernatur beatae.', 0, '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(4, 1, 'Sit delectus quia dicta veritatis nulla quas dicta.', 'Ut esse mollitia maxime minus possimus quis ducimus. Laborum omnis est voluptatibus qui nihil. Quam qui velit repellendus eligendi.', 0, '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(5, 5, 'Voluptatem et ipsum quo reiciendis atque.', 'Ex id assumenda eos. Non et tempora nihil quia suscipit fugit. Soluta voluptatem cupiditate et dolorem.', 0, '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(6, 6, 'Impedit sint aliquid ullam aliquam laborum quasi voluptas rerum.', 'Dolor aut alias quod ea fugiat illo nulla. Sed totam sed qui perspiciatis ea. Blanditiis modi est ullam repellendus aspernatur impedit.', 0, '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(7, 7, 'Et ipsum aliquam commodi saepe enim.', 'Cumque vel ad laborum corporis ullam consectetur. Ducimus rerum adipisci dignissimos asperiores rerum.', 0, '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(8, 8, 'Nisi et deleniti quae.', 'Dolor iusto omnis nihil libero quo. Qui illum at non accusamus repudiandae. Ipsum enim ut assumenda eius voluptas. Labore voluptatem cumque voluptas cum nesciunt voluptatem autem.', 0, '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(9, 9, 'Quam non cupiditate sunt.', 'Voluptas excepturi rerum dolorem accusantium. Magni autem saepe alias recusandae omnis. Nesciunt reprehenderit ut facilis iure.', 0, '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(10, 10, 'Consequuntur pariatur libero quaerat itaque omnis similique.', 'Repellendus eos qui debitis perferendis. Est molestias aliquid quasi. Ut in quibusdam quas aut dicta dolorem assumenda.', 0, '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(11, 11, 'Sapiente dolore rerum quisquam aspernatur ab assumenda.', 'Quidem quis eum rerum sed sit. Quas iure assumenda cumque eaque aut. Praesentium ut quis numquam.', 0, '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(12, 12, 'Aspernatur eligendi optio quis ea.', 'Eos voluptatem ipsam molestiae consequuntur corrupti iure est saepe. Aut sint placeat consectetur eaque voluptate consequuntur recusandae. Doloremque illum tenetur ut nobis consequuntur a. Optio tempore saepe aspernatur provident non beatae dolores.', 0, '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(13, 13, 'Sint voluptatibus eos sapiente.', 'Non est dicta sed aliquam ullam et culpa. Rem at accusamus enim sint sed.', 0, '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(14, 14, 'Minus pariatur et dolorum aperiam illum tempore reprehenderit.', 'Hic maxime voluptates placeat tempora nobis. Sit delectus qui temporibus tempora mollitia. Aut quia ut reiciendis laborum hic tempore sapiente sunt.', 0, '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(15, 15, 'Occaecati numquam quibusdam aut sunt qui autem quibusdam.', 'Sit dolor quia aut qui laborum tenetur ratione. Incidunt quis repellat exercitationem dolor. Aut molestiae rem autem quisquam qui dolorem.', 0, '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(16, 16, 'Ut enim quibusdam cumque necessitatibus sed.', 'Sit doloribus porro autem hic. Maiores est incidunt exercitationem repellendus non ex.', 0, '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(17, 17, 'Distinctio perspiciatis quos laboriosam.', 'Iste velit debitis voluptatem dolores sapiente. Ut expedita omnis ut eligendi adipisci voluptate aspernatur. Maxime minus ut ex dolorem similique. Voluptas impedit quod non aut voluptas.', 0, '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(18, 18, 'Similique officia ut expedita quibusdam sint.', 'Iste consequatur error reiciendis earum ratione aut asperiores ut. Placeat reprehenderit sed velit qui. Excepturi veniam dicta sit.', 0, '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(19, 19, 'Molestiae incidunt est quasi enim.', 'Quas reprehenderit provident quam ullam dolores soluta odio. Nam sed qui et et aspernatur ut. Velit rerum tempore neque ut aspernatur et.', 0, '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(20, 20, 'Distinctio accusantium dolorem voluptates excepturi quae nobis molestias ut.', 'Soluta nihil qui repellat laboriosam magnam. Ut quibusdam qui qui ut dolor molestias odio. Vitae odio expedita maxime quis quam at. Et in ipsam laudantium velit in iusto.', 0, '2024-10-05 07:10:23', '2024-10-05 07:10:23');

-- Dumping structure for table sub_platform_db.subs
CREATE TABLE IF NOT EXISTS `subs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `website_id` bigint unsigned NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sub_platform_db.subs: ~0 rows (approximately)
INSERT INTO `subs` (`id`, `website_id`, `email`, `created_at`, `updated_at`) VALUES
	(1, 2, 'hamdan@abutaima.com', '2024-10-05 07:32:55', '2024-10-05 07:32:55');

-- Dumping structure for table sub_platform_db.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sub_platform_db.users: ~0 rows (approximately)

-- Dumping structure for table sub_platform_db.websites
CREATE TABLE IF NOT EXISTS `websites` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `websites_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sub_platform_db.websites: ~20 rows (approximately)
INSERT INTO `websites` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'metz.com', '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(2, 'greenfelder.com', '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(3, 'grimes.org', '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(4, 'ratke.org', '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(5, 'muller.net', '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(6, 'hintz.com', '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(7, 'okeefe.com', '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(8, 'simonis.com', '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(9, 'durgan.com', '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(10, 'beer.com', '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(11, 'schneider.com', '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(12, 'pagac.com', '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(13, 'schmitt.info', '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(14, 'watsica.biz', '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(15, 'witting.com', '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(16, 'hills.net', '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(17, 'sawayn.org', '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(18, 'yost.com', '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(19, 'gutkowski.net', '2024-10-05 07:10:23', '2024-10-05 07:10:23'),
	(20, 'bins.info', '2024-10-05 07:10:23', '2024-10-05 07:10:23');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
