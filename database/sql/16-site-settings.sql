LOCK TABLES `site_setting` WRITE;
/*!40000 ALTER TABLE `site_setting`
  DISABLE KEYS */;
INSERT INTO `site_setting`
VALUES ('theme_settings_default', 8, '{\"nav_depth\":\"0\",\"logo\":\"\",\"footer\":\"Powered by Omeka S\"}'),
       ('theme_settings_default', 10,
        '{\"nav_depth\":\"1\",\"logo\":\"4\",\"footer\":\"Powered by LLGC Crowdsourcing Platform \'Crowd Wales\'\"}'),
       ('theme_settings_livingstone-evans', 1,
        '{\"project_name\":\"Cardiganshire First World War Tribunal (Appeals) Records\",\"masthead_title\":\"Cardiganshire First World War Tribunal (Appeals) Records\",\"masthead_description\":\"Help us to unlock the hidden histories of the First World War contained in these documents\",\"masthead_image_source_url\":\"#\",\"masthead_image_source_description\":\"CTB\\/3\\/3\\/1\",\"masthead_background\":\"1\",\"main_collection\":\"213\",\"footer\":\"\",\"use_openseadragon\":\"0\"}'),
       ('theme_settings_livingstone-evans', 6,
        '{\"project_name\":\"Livingstone Evans Photography\",\"footer\":\"\",\"use_openseadragon\":\"0\"}'),
       ('theme_settings_livingstone-evans', 8,
        '{\"project_name\":\"Ffotograffiaeth Livingstone Evans Photography\",\"footer\":\"\",\"use_openseadragon\":\"1\"}'),
       ('theme_settings_livingstone-evans', 11,
        '{\"project_name\":\"Kyffin Diaries\",\"footer\":\"<style>\\r\\n.region__item { \\r\\n    outline-width:6px;\\r\\n    outline-color: #2148bc; \\r\\n    background-color: rgba(33, 72, 188, 0.1);\\r\\n}\\r\\n<\\/style>\",\"use_openseadragon\":\"1\"}'),
       ('theme_settings_livingstone-evans', 12,
        '{\"project_name\":\"The DC Harries Portraits\",\"footer\":\"\",\"use_openseadragon\":\"1\"}'),
       ('theme_settings_livingstone-evans', 13,
        '{\"project_name\":\"Ffotograffiaeth Livingstone Evans Photography 2\",\"footer\":\"\",\"use_openseadragon\":\"1\"}'),
       ('theme_settings_livingstone-evans', 14,
        '{\"project_name\":\"Ffotograffiaeth Livingstone Evans Photography 3\",\"footer\":\"\",\"use_openseadragon\":\"1\"}');
/*!40000 ALTER TABLE `site_setting`
  ENABLE KEYS */;
UNLOCK TABLES;
