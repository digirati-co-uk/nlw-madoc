LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;

INSERT INTO `setting` VALUES

/* Annotation Studio Module */
('annotation_studio_site_domain','\"http:\\/\\/localhost:8898\"'),
('elucidate_generator_value','\"omekaelucidatevalue\"'),
('elucidate_proxy_url','\"nlw-annotation-server:8080/annotation/w3c/\"'),
('elucidate_server_url','\"nlw-annotation-server:8080/annotation/w3c/\"'),
('elucidate_site_domain','\"localhost:8898\"'),
/* end */

;

/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;
