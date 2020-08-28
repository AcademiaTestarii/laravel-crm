<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ImportDatabaseStructure extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        \Illuminate\Support\Facades\DB::statement(
            "DROP TABLE IF EXISTS `activities`;"
        );

        \Illuminate\Support\Facades\DB::statement("
        CREATE TABLE `activities` (
          `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
          `followers` int(10) unsigned DEFAULT NULL,
          `classes` int(10) unsigned DEFAULT NULL,
          `graduates` int(10) unsigned DEFAULT NULL,
          `recommandations` int(10) unsigned DEFAULT NULL,
          PRIMARY KEY (`id`)
        ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `class_dates`;
        ");

        \Illuminate\Support\Facades\DB::statement("
                CREATE TABLE `class_dates` (
          `id` int(6) NOT NULL AUTO_INCREMENT,
          `class_id` int(6) DEFAULT NULL,
          `date` date DEFAULT NULL,
          PRIMARY KEY (`id`)
        ) ENGINE=MyISAM DEFAULT CHARSET=utf8;
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `class_students`;
        ");

        \Illuminate\Support\Facades\DB::statement("
        CREATE TABLE `class_students` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(6) unsigned NOT NULL,
  `class_id` int(6) unsigned NOT NULL,
  `payment_method` text,
  `payment_type` text,
  `sign_up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `invoice` text,
  `payment1` int(11) unsigned DEFAULT '0',
  `payment2` int(11) unsigned DEFAULT '0',
  `payment3` int(11) unsigned DEFAULT '0',
  `payment_full` int(11) unsigned DEFAULT '0',
  `note` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `class_trainers`;
        ");

        \Illuminate\Support\Facades\DB::statement("
        CREATE TABLE `class_trainers` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `trainer_id` int(6) NOT NULL,
  `class_id` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `classes`;
        ");
        \Illuminate\Support\Facades\DB::statement("
        CREATE TABLE `classes` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `main_class_id` int(6) unsigned DEFAULT '0',
  `title` text,
  `short_description` text,
  `description` text,
  `registration_start_date` date DEFAULT NULL,
  `registration_end_date` date DEFAULT NULL,
  `students` int(6) unsigned DEFAULT '0',
  `price` int(6) unsigned DEFAULT '0',
  `discount_price` int(11) DEFAULT '0',
  `for_whom_description` text,
  `about_description` text,
  `cost_description` text,
  `resources_description` mediumtext,
  `structure_description` text,
  `requirements_description` text,
  `early_description` text,
  `loyality_description` text,
  `friends_description` text,
  `discount_description` text,
  `schedule` text,
  `schedule_pdf` text,
  `image` text,
  `weekend` int(1) unsigned DEFAULT '0',
  `is_active` int(1) unsigned DEFAULT '0',
  `is_planned` int(1) unsigned DEFAULT '0',
  `is_bucharest_located` int(1) unsigned DEFAULT '1',
  `deployment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `comments`;
        ");

        \Illuminate\Support\Facades\DB::statement("
        CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) unsigned DEFAULT NULL,
  `reply_id` int(10) unsigned DEFAULT NULL,
  `name` mediumtext,
  `email` mediumtext,
  `comment` text,
  `is_active` int(10) unsigned DEFAULT '1',
  `added_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `content`;
        ");

        \Illuminate\Support\Facades\DB::statement("
        CREATE TABLE `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `title` text,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `db_module`;
        ");
        \Illuminate\Support\Facades\DB::statement("
        CREATE TABLE `db_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` text NOT NULL,
  `first_name` text NOT NULL,
  `email` text NOT NULL,
  `occupation` text NOT NULL,
  `phone` text NOT NULL,
  `date_of_birth` text NOT NULL,
  `education` text NOT NULL,
  `foreign_languages` text NOT NULL,
  `period` text NOT NULL,
  `module` int(11) NOT NULL,
  `english` int(11) NOT NULL,
  `office` int(11) NOT NULL,
  `web` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `gdpr` int(11) DEFAULT NULL,
  `newsletter` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `feedback`;
        ");

        \Illuminate\Support\Facades\DB::statement("
        CREATE TABLE `feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(10) unsigned DEFAULT NULL,
  `class_id` int(10) unsigned DEFAULT NULL,
  `staff` int(10) unsigned DEFAULT NULL,
  `score` int(2) unsigned DEFAULT '0',
  `organization_jira_zephyr_plus` text,
  `organization_jira_zephyr_minus` text,
  `test_cases_plus` text,
  `test_cases_minus` text,
  `defects_plus` text,
  `defects_minus` text,
  `traceability_plus` text,
  `traceability_minus` text,
  `link` varchar(12) DEFAULT NULL,
  `granted_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `invoices`;
        ");

        \Illuminate\Support\Facades\DB::statement("
        CREATE TABLE `invoices` (
  `id` int(10) unsigned DEFAULT NULL,
  `class_id` int(10) unsigned DEFAULT NULL,
  `student_id` int(10) unsigned DEFAULT NULL,
  `invoice` text,
  `is_paid` int(10) unsigned DEFAULT '0',
  `issued_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `main_classes`;
        ");
        \Illuminate\Support\Facades\DB::statement("
        CREATE TABLE `main_classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text,
  `is_active` int(10) unsigned DEFAULT '1',
  `order` int(10) unsigned DEFAULT '0',
  `is_new` int(10) unsigned DEFAULT '0',
  `url_string_short` text,
  `url_string_full` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
        ");

        \Illuminate\Support\Facades\DB::statement("
DROP TABLE IF EXISTS `news`;
        ");

        \Illuminate\Support\Facades\DB::statement("
        CREATE TABLE `news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` mediumtext,
  `text` mediumtext,
  `keywords` mediumtext,
  `date` date DEFAULT NULL,
  `added_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` tinyint(4) unsigned DEFAULT '0',
  `views` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `news_images`;
        ");
        \Illuminate\Support\Facades\DB::statement("
        
CREATE TABLE `news_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` mediumtext CHARACTER SET latin1,
  `news_id` int(10) unsigned DEFAULT NULL,
  `is_default` int(11) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `partners`;
        ");

        \Illuminate\Support\Facades\DB::statement("
        
CREATE TABLE `partners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `logo` text,
  `description` text,
  `url` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `periods`;
        ");

        \Illuminate\Support\Facades\DB::statement("
        CREATE TABLE `periods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `period` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `slider`;
        ");

        \Illuminate\Support\Facades\DB::statement("
        
CREATE TABLE `slider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `description1` text,
  `description2` text,
  `link` varchar(256) DEFAULT NULL,
  `button` varchar(256) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` int(1) unsigned DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='home page slider';
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `students`;
        ");

        \Illuminate\Support\Facades\DB::statement("
        CREATE TABLE `students` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `last_name` text,
  `first_name` text,
  `email` text,
  `date_of_birth` date DEFAULT NULL,
  `job_title` text,
  `company` text,
  `phone` text,
  `education` text,
  `english` text,
  `other_language` text,
  `ms_office` text,
  `web` text,
  `photo` text,
  `cnp` text,
  `address` text,
  `city` text,
  `county` text,
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `password` varchar(32) DEFAULT NULL,
  `confirmation_code` varchar(12) DEFAULT NULL,
  `reset_code` varchar(12) DEFAULT NULL,
  `activity` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `is_active` int(1) unsigned NOT NULL DEFAULT '0',
  `notifications` int(1) unsigned NOT NULL DEFAULT '1',
  `promotions` int(1) unsigned NOT NULL DEFAULT '1',
  `newsletter` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `subcontent`;
        ");

        \Illuminate\Support\Facades\DB::statement("
        CREATE TABLE `subcontent` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `content_id` int(6) DEFAULT NULL,
  `title` text,
  `text` text,
  `image` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `testimonials`;
        ");

        \Illuminate\Support\Facades\DB::statement("
        CREATE TABLE `testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `position` text,
  `testimonial` text,
  `class` int(6) unsigned DEFAULT '0',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `trainer`;
        ");

        \Illuminate\Support\Facades\DB::statement("
        
CREATE TABLE `trainer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `phone` text,
  `email` text,
  `linkedin` text,
  `title` text,
  `bio` text,
  `picture` varchar(256) DEFAULT NULL,
  `is_staff` int(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
        ");

        \Illuminate\Support\Facades\DB::statement("
DROP TABLE IF EXISTS `trash`;
        ");

        \Illuminate\Support\Facades\DB::statement("
CREATE TABLE `trash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` text,
  `status` int(10) unsigned DEFAULT NULL,
  `payment_method` int(10) unsigned DEFAULT NULL,
  `class_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `users`;
        ");

        \Illuminate\Support\Facades\DB::statement("
        CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `first_name` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `last_name` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `users_signed_up`;
        ");

        \Illuminate\Support\Facades\DB::statement("
        CREATE TABLE `users_signed_up` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `period` text NOT NULL,
  `status` int(11) NOT NULL,
  `module` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
        ");

        \Illuminate\Support\Facades\DB::statement("
        DROP TABLE IF EXISTS `wp_posts`;
        ");

        \Illuminate\Support\Facades\DB::statement("
        CREATE TABLE `wp_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `last_name` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `first_name` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `phone` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_title` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `period` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
        ");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
