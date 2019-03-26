/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

USE `omeka_s`;

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting`
  DISABLE KEYS */;

INSERT INTO `setting`
VALUES ('administrator_email', '\"torf-flag@llgc.org.uk\"'),

       ## These values exist else where.
       #        ('annotation_studio_default_moderation_status', '\"open\"'),
       #        ('annotation_studio_elucidate_server', '\"https:\\/\\/crowd.library.wales\\/annotation\\/w3c\\/\"'),
       #        ('annotation_studio_resource_template', '\"https:\\/\\/nlw-omeka.digtest.co.uk\\/wilko\\/nlw\\/\"'),
       #        ('annotation_studio_site_domain', '\"https:\\/\\/crowd.library.wales\\/\"'),
       #        ('annotation_studio_use_elucidate_proxy', '\"0\"'),
       #        ('annotation_studio_use_open_seadragon', '\"1\"'),

       ## Need to manually create a new default site.
       #       ('default_site', '\"10\"'),

       ## Elucidate configuration somewhere else now.
       #        ('elucidate_generator_value', '\"omekaelucidatevalue\"'),
       #        ('elucidate_import_omeka_items', '\"0\"'),
       #        ('elucidate_item_endpoint', '\"topics\"'),
       #        ('elucidate_proxy_url', '\"http:\\/\\/elucidate:8080\\/annotation\\/w3c\\/\"'),
       #        ('elucidate_search_by_id', '\"0\"'),
       #        ('elucidate_search_field_is_property', '\"1\"'),
       #        ('elucidate_search_field_name', '\"1\"'),
       #        ('elucidate_search_has_virtual', '\"0\"'),
       #        ('elucidate_search_search_https', '\"1\"'),
       #        ('elucidate_search_search_uri', '\"\"'),
       #        ('elucidate_search_search_using_class', '\"0\"'),
       #        ('elucidate_search_virtual_prefix', '\"\"'),
       #        ('elucidate_server_url', '\"http:\\/\\/elucidate:8080\\/annotation\\/w3c\\/\"'),

       ## Future work to enable i18n
       #       ('i18n', '{\"enabled\":true}'),
       ('locale', '\"\"'),

       ## Basic site details
       ('installation_title', '\"NLW\"'),
       ('media_type_whitelist',
        '[\"application\\/msword\",\"application\\/ogg\",\"application\\/pdf\",\"application\\/rtf\",\"application\\/vnd.ms-access\",\"application\\/vnd.ms-excel\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.ms-project\",\"application\\/vnd.ms-write\",\"application\\/vnd.oasis.opendocument.chart\",\"application\\/vnd.oasis.opendocument.database\",\"application\\/vnd.oasis.opendocument.formula\",\"application\\/vnd.oasis.opendocument.graphics\",\"application\\/vnd.oasis.opendocument.presentation\",\"application\\/vnd.oasis.opendocument.spreadsheet\",\"application\\/vnd.oasis.opendocument.text\",\"application\\/x-gzip\",\"application\\/x-ms-wmp\",\"application\\/x-msdownload\",\"application\\/x-shockwave-flash\",\"application\\/x-tar\",\"application\\/zip\",\"audio\\/midi\",\"audio\\/mp4\",\"audio\\/mpeg\",\"audio\\/ogg\",\"audio\\/x-aac\",\"audio\\/x-aiff\",\"audio\\/x-ms-wma\",\"audio\\/x-ms-wax\",\"audio\\/x-realaudio\",\"audio\\/x-wav\",\"image\\/bmp\",\"image\\/gif\",\"image\\/jpeg\",\"image\\/pjpeg\",\"image\\/png\",\"image\\/tiff\",\"image\\/x-icon\",\"text\\/css\",\"text\\/plain\",\"text\\/richtext\",\"video\\/divx\",\"video\\/mp4\",\"video\\/mpeg\",\"video\\/ogg\",\"video\\/quicktime\",\"video\\/webm\",\"video\\/x-ms-asf\",\"video\\/x-msvideo\",\"video\\/x-ms-wmv\"]'),
       ('pagination_per_page', '\"25\"'),
       ('property_label_information', '\"none\"'),
       ('publicuser',
        '{\"__global__\":{\"user_profiles_enabled\":\"0\",\"user_profiles_resource_template\":\"\",\"email_blacklist\":\"\",\"user_activation_subject\":\"User activation for %s\",\"user_activation_copy\":\"Greetings!\\r\\n\\r\\nA user has been created for you on %5$s at %1$s\\r\\n\\r\\nYour username is your email: %2$s\\r\\n\\r\\nClick this link to set a password and begin using Omeka S:\\r\\n%3$s\\r\\n\\r\\nYour activation link will expire on %4$s. If you have not completed the user activation process by the time the link expires, you will need to request another activation email from your site administrator.\",\"user_reset_password_subject\":\"Reset your password for %s\",\"user_reset_password_copy\":\"Greetings, %1$s!\\r\\n\\r\\nIt seems you have forgotten your password for %5$s at %2$s\\r\\n\\r\\nTo reset your password, click this link:\\r\\n%3$s\\r\\n\\r\\nYour reset link will expire on %4$s.\"},\"war-tribunal-records\":{\"war-tribunal-records_user_register\":\"1\",\"war-tribunal-records_user_active\":\"0\",\"war-tribunal-records_redirect\":\"\\/\",\"war-tribunal-records_user_role\":\"Transcriber\"},\"test-jan\":{\"test-jan_user_register\":\"0\",\"test-jan_user_active\":\"0\",\"test-jan_redirect\":\"\",\"test-jan_user_role\":\"global_admin\"},\"livingstone\":{\"livingstone_user_register\":\"1\",\"livingstone_user_active\":\"1\",\"livingstone_redirect\":\"\\/\",\"livingstone_user_role\":\"Transcriber\"},\"home\":{\"home_user_register\":\"0\",\"home_user_active\":\"0\",\"home_redirect\":\"\",\"home_user_role\":\"global_admin\"},\"kyffin\":{\"kyffin_user_register\":\"1\",\"kyffin_user_active\":\"1\",\"kyffin_redirect\":\"\\/\",\"kyffin_user_role\":\"Transcriber\"},\"dcharries\":{\"dcharries_user_register\":\"1\",\"dcharries_user_active\":\"1\",\"dcharries_redirect\":\"\\/\",\"dcharries_user_role\":\"Transcriber\"},\"livingstone2\":{\"livingstone2_user_register\":\"1\",\"livingstone2_user_active\":\"1\",\"livingstone2_redirect\":\"\",\"livingstone2_user_role\":\"global_admin\"},\"livingstone3\":{\"livingstone3_user_register\":\"1\",\"livingstone3_user_active\":\"1\",\"livingstone3_redirect\":\"\",\"livingstone3_user_role\":\"global_admin\"},\"gle2\":{\"gle2_user_register\":\"1\",\"gle2_user_active\":\"1\",\"gle2_redirect\":\"\",\"gle2_user_role\":\"global_admin\"}}'),
       ('recaptcha_secret_key', '\"\"'),
       ('recaptcha_site_key', '\"\"'),
       ('use_htmlpurifier', '\"0\"'),
       ('extension_whitelist',
        '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
       ('google_analytics_key', '\"UA-10859855-2\"'),
       ('disable_file_validation', '\"0\"'),

       ## From Madoc database
       ('version_notifications', '\"0\"'),
       ('disable_jsonld_embed', '\"1\"'),
       ('time_zone', '\"Europe\\/London\"'),
       ('version', '\"1.3.0\"');
/*!40000 ALTER TABLE `setting`
  ENABLE KEYS */;
UNLOCK TABLES;
