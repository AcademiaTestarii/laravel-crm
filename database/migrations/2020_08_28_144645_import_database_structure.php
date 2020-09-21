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
            "RENAME TABLE activitate TO activities;"
        );

        \Illuminate\Support\Facades\DB::statement("
         ALTER TABLE activities CHANGE `folowers` `followers` int(10) unsigned DEFAULT null;
        ");

        \Illuminate\Support\Facades\DB::statement("
         ALTER TABLE activities CHANGE `cursuri` `classes` int(10) unsigned DEFAULT null;
        ");

        \Illuminate\Support\Facades\DB::statement("
       ALTER TABLE activities CHANGE `absolventi` `graduates` int(10) unsigned DEFAULT null;
        ");

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE activities CHANGE `recomandari` `recommandations` int(10) unsigned DEFAULT null;
        ");

        \Illuminate\Support\Facades\DB::statement(
            "RENAME TABLE date_cursuri TO class_dates;"
        );

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE class_dates CHANGE `id_curs` `class_id` int(6) DEFAULT null;
        ");

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE class_dates CHANGE `data` `date` DATE DEFAULT null;
        ");

        \Illuminate\Support\Facades\DB::statement(
            "RENAME TABLE cursant_curs TO class_students;"
        );

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE class_students CHANGE `id_cursant` `student_id` int(6) unsigned;
        ");

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE class_students CHANGE `id_curs` `class_id` int(6) unsigned;
        ");

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE class_students CHANGE `modalitate_plata` `payment_method` text default null;
        ");

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE class_students CHANGE `tip_plata` `payment_type` text default null;
        ");

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE class_students CHANGE `data_inscriere` `sign_up_date` TIMESTAMP;
        ");

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE class_students CHANGE `factura` `invoice` TEXT default null;
        ");

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE class_students CHANGE `rata1` `payment1` int(11) unsigned default 0 null;
        ");

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE class_students CHANGE `rata2` `payment2` int(11) unsigned default 0 null;
        ");

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE class_students CHANGE `rata3` `payment3` int(11) unsigned default 0 null;
        ");

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE class_students CHANGE `integral` `payment_full` int(11) unsigned default 0 null;
        ");

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE class_students CHANGE `notita` `note` text default null;
        ");

        \Illuminate\Support\Facades\DB::statement(
            "RENAME TABLE trainer_curs TO class_trainers;"
        );

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE class_trainers CHANGE `id_trainer` `trainer_id` int(6);
        ");

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE class_trainers CHANGE `id_curs` `class_id` int(6);
        ");

        \Illuminate\Support\Facades\DB::statement(
            "RENAME TABLE cursuri TO classes;"
        );

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE classes CHANGE 
     `parent` `main_class_id` int(6) unsigned default 0 null,
      CHANGE `titlu` `title` text default null,
     CHANGE `descriere_scurta` `short_description` text default null,
     CHANGE `descriere` `description` text default null,
    CHANGE  `start_inscriere` `registration_start_date` DATE default null,
    CHANGE  `end_inscriere` `registration_end_date` DATE default null,
    CHANGE `cursanti` `students` int(6) unsigned default 0 null,
    CHANGE `pret` `price` int(6) unsigned default 0 null,
    CHANGE `pret_redus` `discount_price` int(11)  default 0 null,
    CHANGE   `cui` `for_whom_description` text default null,
     CHANGE  `ce` `about_description` text default null,
     CHANGE  `costuri` `cost_description` text default null,
    CHANGE   `resurse` `resources_description` mediumtext default null,
    CHANGE   `structura` `structure_description` text default null,
    CHANGE   `cerinte` `requirements_description` text default null,
    CHANGE   `early` `early_description` text default null,
     CHANGE  `loyality` `loyality_description` text default null,
     CHANGE  `friends` `friends_description` text default null,
     CHANGE  `discount` `discount_description` text default null,
     CHANGE  `programa` `schedule` text default null,
     CHANGE  `pdf_programa` `schedule_pdf` text default null,
     CHANGE  `imagine` `image` text default null,
     CHANGE  `activ` `is_active` int(1) unsigned default 0 null,
     CHANGE  `planificat` `is_planned` int(1) unsigned default 0 null,
     CHANGE  `bucuresti` `is_bucharest_located` int(1) unsigned default 0 null,
     CHANGE  `desfasurare` `deployment` text default null
        ");

        \Illuminate\Support\Facades\DB::statement(
            "RENAME TABLE comentarii TO comments;"
        );

        \Illuminate\Support\Facades\DB::statement(
            "alter TABLE comments DROP PRIMARY KEY,
 CHANGE `id_comentariu` `id` int(10) unsigned not null auto_increment,
     ADD CONSTRAINT `comments_id_pk` PRIMARY KEY (`id`)"
        );

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE comments 
     CHANGE `id_articol` `article_id` int(10) unsigned null,
     CHANGE `id_reply` `reply_id` int(10) unsigned null,
    CHANGE `nume` `name` mediumtext default null,
    CHANGE `comentariu` `comment` text default null,
    CHANGE `activ` `is_active` int(10) unsigned default 1,
    CHANGE `adaugat` `added_on` TIMESTAMP
        ");

        \Illuminate\Support\Facades\DB::statement(
            "RENAME TABLE continut TO content;"
        );

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE content 
     CHANGE `nume` `name` text null,
     CHANGE `titlu` `title` text null
        ");

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE db_module 
     CHANGE `nume` `last_name` text not null,
     CHANGE `prenume` `first_name` text not null,
     CHANGE `profesie` `occupation` text not null,
     CHANGE `telefon` `phone` text not null,
     CHANGE `data` `date_of_birth` text not null,
     CHANGE `educatie` `education` text not null,
     CHANGE `limbi-straine` `foreign_languages` text not null,
     CHANGE `perioada` `period` text not null,
     CHANGE `modul` `module` int(11) not null,
     CHANGE `engleza` `english` int(11) not null,
     CHANGE `tip_plata` `payment_type` int(11) not null,
     CHANGE `mod_plata` `payment_method` int(11) not null
        ");


        \Illuminate\Support\Facades\DB::statement(
            "alter TABLE feedback DROP PRIMARY KEY,
 CHANGE `id_feedback` `id` int(10) unsigned not null auto_increment,
     ADD CONSTRAINT `feedback_id_pk` PRIMARY KEY (`id`)"
        );

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE feedback 
     CHANGE `id_cursant` `student_id` int(10) unsigned default null,
     CHANGE `id_curs` `class_id` int(10) unsigned default null,
    CHANGE `acordat` `granted_on` TIMESTAMP
        ");

        \Illuminate\Support\Facades\DB::statement(
            "RENAME TABLE facturi TO invoices;"
        );

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE invoices 
     CHANGE `id_cursant` `student_id` int(10) unsigned default null,
     CHANGE `id_curs` `class_id` int(10) unsigned default null,
    CHANGE `factura` `invoice` TEXT default null,
    CHANGE `achitata` `is_paid` INT(10) unsigned DEFAULT 0 null,
    CHANGE `data_emiterii` `issued_on` DATETIME null
        ");

        \Illuminate\Support\Facades\DB::statement(
            "RENAME TABLE curs_main TO main_classes;"
        );

        \Illuminate\Support\Facades\DB::statement(
            "alter TABLE main_classes DROP PRIMARY KEY,
 CHANGE `id_curs_main` `id` int(10) unsigned not null auto_increment,
     ADD CONSTRAINT `main_classes_id_pk` PRIMARY KEY (`id`)"
        );

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE main_classes 
     CHANGE `titlu_main` `title` TEXT  null,
     CHANGE `activ_main` `is_active` int(10) unsigned default 1,
    CHANGE `nou` `is_new` int(10) unsigned default 0
        ");

        \Illuminate\Support\Facades\DB::statement(
            "RENAME TABLE noutati TO news;"
        );

        \Illuminate\Support\Facades\DB::statement(
            "alter TABLE news DROP PRIMARY KEY,
        CHANGE `id_noutate` `id` int(11) unsigned not null auto_increment,
        ADD CONSTRAINT `news_id_pk` PRIMARY KEY (`id`)"
        );

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE news 
     CHANGE `titlu` `title` mediumtext null,
     CHANGE `cuvinte_cheie` `keywords` mediumtext null,
     CHANGE `data_articol` `date` DATE default null,
     CHANGE `adaugat` `added_on` timestamp,
     CHANGE `active` `is_active` tinyint(4) unsigned DEFAULT '0',
     CHANGE `vizualizari` `views` int(10) unsigned DEFAULT NULL
        ");


        \Illuminate\Support\Facades\DB::statement(
            "RENAME TABLE imagini_noutati TO news_images;"
        );

        \Illuminate\Support\Facades\DB::statement(
            "alter TABLE news_images DROP PRIMARY KEY,
        CHANGE `id_imagine` `id` int(10) unsigned not null auto_increment,
        ADD CONSTRAINT `news_images_id_pk` PRIMARY KEY (`id`)"
        );

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE news_images 
     CHANGE `imagine` `image` mediumtext null,
     CHANGE `id_noutate` `news_id` int(10) unsigned DEFAULT NULL,
     CHANGE `imagine_principala` `is_default` int(11) unsigned DEFAULT '1'
        ");

        \Illuminate\Support\Facades\DB::statement(
            "RENAME TABLE parteneri TO partners;"
        );

        \Illuminate\Support\Facades\DB::statement(
            "alter TABLE partners DROP PRIMARY KEY,
        CHANGE `id_parteneri` `id` int(11) unsigned not null auto_increment,
        ADD CONSTRAINT `partners_id_pk` PRIMARY KEY (`id`)"
        );

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE partners 
     CHANGE `nume_parteneri`  `name` text null,
     CHANGE `logo_parteneri` `logo` text,
     CHANGE `descriere_parteneri` `description` text,
     CHANGE `link_parteneri` `url` text
        ");

        \Illuminate\Support\Facades\DB::statement(
            "RENAME TABLE perioade TO periods;"
        );

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE periods 
     CHANGE `modul`  `module_id` int(11) NOT NULL,
     CHANGE `perioada` `period` varchar(200) NOT NULL DEFAULT ''
        ");

        \Illuminate\Support\Facades\DB::statement(
            "RENAME TABLE cursanti TO students;"
        );

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE students 
     CHANGE `nume`   `last_name` text,
     CHANGE `prenume`   `first_name` text,
     CHANGE `data_nastere`  `date_of_birth` date DEFAULT NULL,
     CHANGE `pozitie` `job_title` text,
     CHANGE `companie` `company` text,
     CHANGE `telefon` `phone` text,
     CHANGE `educatie`  `education` text,
     CHANGE `engleza`  `english` text,
     CHANGE `alta_limba`     `other_language` text,
     CHANGE `poza` `photo` text,
     CHANGE `adresa` `address` text,
     CHANGE `localitate` `city` text,
     CHANGE `judet` `county` text,
     CHANGE `data_inregistrare` `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
     CHANGE `parola` `password` varchar(32) DEFAULT NULL,
     CHANGE `cod_confirmare` `confirmation_code` varchar(12) DEFAULT NULL,
     CHANGE `cod_resetare` `reset_code` varchar(12) DEFAULT NULL,
     CHANGE `activitate` `activity` datetime DEFAULT NULL,
     CHANGE `resetare` `reset` datetime DEFAULT NULL,
     CHANGE `activ` `is_active` int(1) unsigned NOT NULL DEFAULT '0',
     CHANGE `notificari` `notifications` int(1) unsigned NOT NULL DEFAULT '1',
     CHANGE `promotii` `promotions` int(1) unsigned NOT NULL DEFAULT '1'
        ");


        \Illuminate\Support\Facades\DB::statement(
            "RENAME table subcontinut TO subcontent;"
        );

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE subcontent 
     CHANGE `id_continut`  `content_id` int(6) DEFAULT NULL,
     CHANGE `titlu` `title` text,
     CHANGE `imagine` `image` text
        ");


        \Illuminate\Support\Facades\DB::statement(
            "RENAME table testimoniale TO testimonials;"
        );

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE testimonials 
     CHANGE `nume`    `name` text,
     CHANGE `pozitie`   `position` text,
     CHANGE `curs`   `class` int(6) unsigned DEFAULT '0',
     CHANGE `created` `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
     CHANGE `active`    `is_active` tinyint(1) unsigned DEFAULT '0'
        ");

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE trainer 
     CHANGE `nume`   `name` text,
     CHANGE `telefon`   `phone` text,
     CHANGE `titlu`  `title` text,
     CHANGE `poza`  `picture` varchar(256) DEFAULT NULL,
     CHANGE `staff`    `is_staff` int(1) unsigned DEFAULT '0'
        ");

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE trash 
     CHANGE `mod_plata`  `payment_method` int(10) unsigned DEFAULT NULL,
     CHANGE `id_curs`  `class_id` int(10) unsigned DEFAULT NULL
        ");

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE users 
     CHANGE `fname`    `first_name` varchar(255) NOT NULL DEFAULT '',
     CHANGE `lname`  `last_name` varchar(255)  NOT NULL DEFAULT ''
        ");

        \Illuminate\Support\Facades\DB::statement(
            "RENAME table useri_inscrisi TO users_signed_up;"
        );

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE users_signed_up 
     CHANGE `perioada`  `period` text NOT NULL,
     CHANGE `modul`   `module` int(11) NOT NULL,
     CHANGE `mod_plata`  `payment_method` int(11) NOT NULL
        ");

        \Illuminate\Support\Facades\DB::statement(
            "alter TABLE wp_posts DROP PRIMARY KEY,
        CHANGE `ID` `id` bigint(20) unsigned not null auto_increment,
        ADD CONSTRAINT `wp_posts_id_pk` PRIMARY KEY (`id`)"
        );

        \Illuminate\Support\Facades\DB::statement("
     ALTER TABLE  wp_posts
     CHANGE `nume`   `last_name` mediumtext  NOT NULL,
     CHANGE `prenume`     `first_name` mediumtext  NOT NULL,
     CHANGE `telefon`    `phone` varchar(200)  NOT NULL DEFAULT '',
     CHANGE `perioada`   `period` mediumtext NOT NULL
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
