
-- *** STRUCTURE:`tbl_fields_association` ***
DROP TABLE IF EXISTS`tbl_fields_association`;
CREATE TABLE`tbl_fields_association` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `hide_when_prepopulated` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_association` ***

-- *** STRUCTURE:`tbl_fields_author` ***
DROP TABLE IF EXISTS`tbl_fields_author`;
CREATE TABLE`tbl_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `author_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_author` ***

-- *** STRUCTURE:`tbl_fields_checkbox` ***
DROP TABLE IF EXISTS`tbl_fields_checkbox`;
CREATE TABLE`tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_checkbox` ***

-- *** STRUCTURE:`tbl_fields_date` ***
DROP TABLE IF EXISTS`tbl_fields_date`;
CREATE TABLE`tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calendar` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `time` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_date` ***

-- *** STRUCTURE:`tbl_fields_datetime` ***
DROP TABLE IF EXISTS`tbl_fields_datetime`;
CREATE TABLE`tbl_fields_datetime` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `prepopulate` tinyint(1) DEFAULT '1',
  `time` tinyint(1) DEFAULT '1',
  `multiple` tinyint(1) DEFAULT '1',
  `range` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_datetime` ***

-- *** STRUCTURE:`tbl_fields_image_preview_settings` ***
DROP TABLE IF EXISTS`tbl_fields_image_preview_settings`;
CREATE TABLE`tbl_fields_image_preview_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `field-handles` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table-width` int(11) unsigned DEFAULT NULL,
  `table-height` int(11) unsigned DEFAULT NULL,
  `table-resize` int(11) unsigned DEFAULT NULL,
  `table-position` int(11) unsigned DEFAULT NULL,
  `table-absolute` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `entry-width` int(11) unsigned DEFAULT NULL,
  `entry-height` int(11) unsigned DEFAULT NULL,
  `entry-resize` int(11) unsigned DEFAULT NULL,
  `entry-position` int(11) unsigned DEFAULT NULL,
  `entry-absolute` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_image_preview_settings` ***
INSERT INTO`tbl_fields_image_preview_settings` (`id`, `field_id`, `field-handles`, `table-width`, `table-height`, `table-resize`, `table-position`, `table-absolute`, `entry-width`, `entry-height`, `entry-resize`, `entry-position`, `entry-absolute`) VALUES (24, 25, '*', 600, NULL, NULL, NULL, 'no', 600, NULL, NULL, NULL, 'no');
INSERT INTO`tbl_fields_image_preview_settings` (`id`, `field_id`, `field-handles`, `table-width`, `table-height`, `table-resize`, `table-position`, `table-absolute`, `entry-width`, `entry-height`, `entry-resize`, `entry-position`, `entry-absolute`) VALUES (26, 29, '*', NULL, NULL, NULL, NULL, 'no', 400, NULL, NULL, NULL, 'no');
INSERT INTO`tbl_fields_image_preview_settings` (`id`, `field_id`, `field-handles`, `table-width`, `table-height`, `table-resize`, `table-position`, `table-absolute`, `entry-width`, `entry-height`, `entry-resize`, `entry-position`, `entry-absolute`) VALUES (28, 32, '*', 80, 80, NULL, 5, 'no', 600, NULL, NULL, NULL, 'no');
INSERT INTO`tbl_fields_image_preview_settings` (`id`, `field_id`, `field-handles`, `table-width`, `table-height`, `table-resize`, `table-position`, `table-absolute`, `entry-width`, `entry-height`, `entry-resize`, `entry-position`, `entry-absolute`) VALUES (29, 27, 'main-image', NULL, NULL, NULL, NULL, 'no', 400, NULL, NULL, NULL, 'no');

-- *** STRUCTURE:`tbl_fields_image_upload` ***
DROP TABLE IF EXISTS`tbl_fields_image_upload`;
CREATE TABLE`tbl_fields_image_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unique` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_width` int(11) unsigned DEFAULT NULL,
  `min_height` int(11) unsigned DEFAULT NULL,
  `max_width` int(11) unsigned DEFAULT NULL,
  `max_height` int(11) unsigned DEFAULT NULL,
  `resize` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_image_upload` ***
INSERT INTO`tbl_fields_image_upload` (`id`, `field_id`, `destination`, `validator`, `unique`, `min_width`, `min_height`, `max_width`, `max_height`, `resize`) VALUES (42, 4, '/workspace/images/equipment', '/\\.(?:bmp|gif|jpe?g|png)$/i', 'yes', 0, 0, NULL, NULL, 'no');
INSERT INTO`tbl_fields_image_upload` (`id`, `field_id`, `destination`, `validator`, `unique`, `min_width`, `min_height`, `max_width`, `max_height`, `resize`) VALUES (45, 12, '/workspace/images/team', '/\\.(?:bmp|gif|jpe?g|png)$/i', 'yes', 0, 0, 1920, 1080, 'no');
INSERT INTO`tbl_fields_image_upload` (`id`, `field_id`, `destination`, `validator`, `unique`, `min_width`, `min_height`, `max_width`, `max_height`, `resize`) VALUES (39, 13, '/workspace/images/banner', '/\\.(?:bmp|gif|jpe?g|png)$/i', 'yes', 1920, 1080, NULL, NULL, 'no');
INSERT INTO`tbl_fields_image_upload` (`id`, `field_id`, `destination`, `validator`, `unique`, `min_width`, `min_height`, `max_width`, `max_height`, `resize`) VALUES (46, 26, '/workspace/images/offer', '/\\.(?:bmp|gif|jpe?g|png)$/i', 'yes', 0, 0, 1920, 0, 'no');
INSERT INTO`tbl_fields_image_upload` (`id`, `field_id`, `destination`, `validator`, `unique`, `min_width`, `min_height`, `max_width`, `max_height`, `resize`) VALUES (47, 33, '/workspace/images/offer', '/\\.(?:bmp|gif|jpe?g|png)$/i', 'yes', 0, 0, NULL, NULL, 'no');

-- *** STRUCTURE:`tbl_fields_input` ***
DROP TABLE IF EXISTS`tbl_fields_input`;
CREATE TABLE`tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_input` ***

-- *** STRUCTURE:`tbl_fields_languages` ***
DROP TABLE IF EXISTS`tbl_fields_languages`;
CREATE TABLE`tbl_fields_languages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `available_codes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_languages` ***

-- *** STRUCTURE:`tbl_fields_link_preview` ***
DROP TABLE IF EXISTS`tbl_fields_link_preview`;
CREATE TABLE`tbl_fields_link_preview` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anchor_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_url` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `display_new` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_link_preview` ***

-- *** STRUCTURE:`tbl_fields_multilingual_textbox` ***
DROP TABLE IF EXISTS`tbl_fields_multilingual_textbox`;
CREATE TABLE`tbl_fields_multilingual_textbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `column_length` int(11) unsigned DEFAULT '75',
  `text_size` enum('single','small','medium','large','huge') COLLATE utf8_unicode_ci DEFAULT 'medium',
  `text_formatter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_length` int(11) unsigned DEFAULT '0',
  `text_cdata` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `text_handle` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `handle_unique` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `default_main_lang` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `required_languages` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_multilingual_textbox` ***
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (107, 1, 75, 'medium', 'ttf_markdown_smartypants_x_no_orphans', NULL, 0, 'no', 'no', 'no', 'no', 'all');
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (109, 3, 75, 'medium', 'ttf_markdown_smartypants_x_no_orphans', NULL, 0, 'no', 'no', 'no', 'no', 'all');
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (104, 5, 75, 'medium', 'ttf_markdown_smartypants_x_no_orphans', NULL, 0, 'no', 'no', 'no', 'no', 'all');
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (116, 6, 75, 'single', 'ttf_markdown_smartypants_x_no_orphans', NULL, 0, 'no', 'yes', 'no', 'no', 'all');
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (112, 8, 75, 'single', 'ttf_markdown_smartypants_x_no_orphans', NULL, 0, 'no', 'yes', 'no', 'yes', 'main');
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (90, 35, 75, 'single', 'none', NULL, 0, 'no', 'no', 'no', 'yes', 'main');
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (113, 10, 75, 'medium', 'ttf_markdown_smartypants_x_no_orphans', NULL, 0, 'no', 'no', 'no', 'no', 'all');
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (114, 11, 75, 'large', 'ttf_markdown_smartypants_x_no_orphans', NULL, 0, 'no', 'no', 'no', 'no', 'all');
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (103, 14, 75, 'small', 'ttf_markdown_smartypants_x_no_orphans', NULL, 0, 'no', 'no', 'no', 'no', 'all');
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (87, 15, 75, 'single', 'none', NULL, 0, 'no', 'no', 'no', 'yes', 'main');
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (88, 16, 75, 'single', 'none', '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i', 0, 'no', 'no', 'no', 'yes', 'main');
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (89, 17, 75, 'single', 'none', NULL, 0, 'no', 'no', 'no', 'yes', 'main');
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (91, 18, 75, 'single', 'none', NULL, 0, 'no', 'no', 'no', 'yes', 'main');
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (92, 19, 75, 'single', 'none', NULL, 0, 'no', 'no', 'no', 'yes', 'main');
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (93, 20, 75, 'single', 'none', NULL, 0, 'no', 'no', 'no', 'yes', 'main');
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (94, 21, 75, 'single', 'none', NULL, 0, 'no', 'no', 'no', 'yes', 'main');
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (95, 22, 75, 'single', 'none', NULL, 0, 'no', 'no', 'no', 'no', 'main');
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (96, 23, 75, 'single', 'none', NULL, 0, 'no', 'no', 'no', 'no', NULL);
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (97, 24, 75, 'single', 'none', NULL, 0, 'no', 'no', 'no', 'yes', NULL);
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (108, 2, 75, 'single', 'ttf_markdown_smartypants_x_no_orphans', NULL, 0, 'no', 'yes', 'no', 'no', 'all');
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (115, 9, 75, 'single', 'ttf_markdown_smartypants_x_no_orphans', NULL, 0, 'no', 'no', 'no', 'no', 'all');
INSERT INTO`tbl_fields_multilingual_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`, `default_main_lang`, `required_languages`) VALUES (117, 7, 75, 'medium', 'ttf_markdown_smartypants_x_no_orphans', NULL, 0, 'no', 'no', 'no', 'no', 'all');

-- *** STRUCTURE:`tbl_fields_multiupload` ***
DROP TABLE IF EXISTS`tbl_fields_multiupload`;
CREATE TABLE`tbl_fields_multiupload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_multiupload` ***

-- *** STRUCTURE:`tbl_fields_order_entries` ***
DROP TABLE IF EXISTS`tbl_fields_order_entries`;
CREATE TABLE`tbl_fields_order_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `force_sort` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  `disable_pagination` enum('yes','no') DEFAULT 'no',
  `filtered_fields` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_fields_order_entries` ***
INSERT INTO`tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`, `disable_pagination`, `filtered_fields`) VALUES (28, 28, NULL, 'yes', 'yes', NULL);
INSERT INTO`tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`, `disable_pagination`, `filtered_fields`) VALUES (25, 30, NULL, 'yes', 'yes', NULL);
INSERT INTO`tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`, `disable_pagination`, `filtered_fields`) VALUES (27, 31, NULL, 'yes', 'yes', NULL);
INSERT INTO`tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`, `disable_pagination`, `filtered_fields`) VALUES (23, 36, NULL, 'yes', NULL, NULL);

-- *** STRUCTURE:`tbl_fields_select` ***
DROP TABLE IF EXISTS`tbl_fields_select`;
CREATE TABLE`tbl_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `sort_options` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_select` ***

-- *** STRUCTURE:`tbl_fields_selectbox_link` ***
DROP TABLE IF EXISTS`tbl_fields_selectbox_link`;
CREATE TABLE`tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `hide_when_prepopulated` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_selectbox_link` ***

-- *** STRUCTURE:`tbl_fields_taglist` ***
DROP TABLE IF EXISTS`tbl_fields_taglist`;
CREATE TABLE`tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_taglist` ***

-- *** STRUCTURE:`tbl_fields_textarea` ***
DROP TABLE IF EXISTS`tbl_fields_textarea`;
CREATE TABLE`tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_textarea` ***

-- *** STRUCTURE:`tbl_fields_textbox` ***
DROP TABLE IF EXISTS`tbl_fields_textbox`;
CREATE TABLE`tbl_fields_textbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `column_length` int(11) unsigned DEFAULT '75',
  `text_size` enum('single','small','medium','large','huge') COLLATE utf8_unicode_ci DEFAULT 'medium',
  `text_formatter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_length` int(11) unsigned DEFAULT '0',
  `text_cdata` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `text_handle` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `handle_unique` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_textbox` ***
INSERT INTO`tbl_fields_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`) VALUES (7, 37, 75, 'single', 'none', '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/?[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/', 0, 'no', 'no', 'no');
INSERT INTO`tbl_fields_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`) VALUES (8, 38, 75, 'single', 'none', '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/?[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/', 0, 'no', 'no', 'no');
INSERT INTO`tbl_fields_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`, `handle_unique`) VALUES (9, 39, 75, 'single', 'none', '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/?[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/', 0, 'no', 'no', 'no');

-- *** STRUCTURE:`tbl_fields_upload` ***
DROP TABLE IF EXISTS`tbl_fields_upload`;
CREATE TABLE`tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_upload` ***

-- *** STRUCTURE:`tbl_entries_data_1` ***
DROP TABLE IF EXISTS`tbl_entries_data_1`;
CREATE TABLE`tbl_entries_data_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_1` ***
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (1, 4, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore-magna-aliqua-ut-enim-ad-minim-veniam-quis-nostrud-exercitation-ullamco-laboris-nisi-ut-aliquip-ex-ea-commodo-consequat-duis-aute-irure-dolor-in-rep', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>', 123, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore-magna-aliqua-ut-enim-ad-minim-veniam-quis-nostrud-exercitation-ullamco-laboris-nisi-ut-aliquip-ex-ea-commodo-consequat-duis-aute-irure-dolor-in-rep', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>', 123, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore-magna-aliqua-ut-enim-ad-minim-veniam-quis-nostrud-exercitation-ullamco-laboris-nisi-ut-aliquip-ex-ea-commodo-consequat-duis-aute-irure-dolor-in-rep', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>', 123);

-- *** STRUCTURE:`tbl_entries_data_10` ***
DROP TABLE IF EXISTS`tbl_entries_data_10`;
CREATE TABLE`tbl_entries_data_10` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_10` ***
INSERT INTO`tbl_entries_data_10` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (3, 5, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore-magna-aliqua', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 19, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore-magna-aliqua', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 19, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore-magna-aliqua', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 19);

-- *** STRUCTURE:`tbl_entries_data_11` ***
DROP TABLE IF EXISTS`tbl_entries_data_11`;
CREATE TABLE`tbl_entries_data_11` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_11` ***
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (3, 5, NULL, 'W 2004 roku z wyróżnieniem ukończyłem studia na Wydziale Lekarsko-Stomatologicznym A.M. we Wrocławiu. W trakcie studiów oraz po stażu podyplomowym swoją wiedzę i umiejętności poszerzałem w prywatnej klinice stomatologicznej w Niemczech, a zwieńczeniem tego okresu było uzyskanie niemieckiego prawa do wykonywania zawodu lekarza dentysty. Od 2006 roku współpracuję z wieloma wydawnictwami medycznymi jako tłumacz podręczników i artykułów stomatologicznych z języków niemieckiego i angielskiego na polski, dzięki czemu pozostaję na bieżąco z najnowszymi osiągnięciami w różnych dziedzinach stomatologii, a zdobytą wiedzę jestem w stanie realizować w codziennej praktyce zawodowej, oferując swoim pacjentom możliwie najlepsze rozwiązania w danym przypadku klinicznym.\r\n\r\nW stomatologii ogromny nacisk kładę na profilaktykę. Sztuką jest nie tylko skuteczne leczenie, ale przede wszystkim uświadamianie pacjentom jak należy postępować, aby w przyszłości wskazań do leczenia było jak najmniej. Moje główne obszary zainteresowania to stomatologia estetyczna z protetyką, nowoczesna endodoncja, czyli leczenie kanałowe, oraz chirurgia stomatologiczna – tu w szczególności operacyjne ekstrakcje zatrzymanych zębów mądrości.\r\n\r\nNajnowocześniejszy sprzęt i komfortowe warunki zabiegowe w połączeniu z wieloletnim doświadczeniem oraz dbałością o każdy, nawet najdrobniejszy szczegół sprawią, że wizyta w gabinecie City-Dent ukaże Państwu nowy wymiar stomatologii – wizyty bez stresu, bólu, zawsze z fachową poradą i przejrzystym planem leczenia.\r\n\r\nPoza pracą stawiam przede wszystkim na aktywny wypoczynek. Jednak obok górskich wędrówek i eksploracji morskich głębin znajduję również czas na dobrą książkę i film.', '<p>W&#160;2004 roku z&#160;wyróżnieniem ukończyłem studia na Wydziale Lekarsko-Stomatologicznym A.M. we Wrocławiu. W&#160;trakcie studiów&#160;oraz po stażu&#160;podyplomowym swoją wiedzę i&#160;umiejętności poszerzałem w&#160;prywatnej klinice stomatologicznej w&#160;Niemczech, a&#160;zwieńczeniem tego okresu było&#160;uzyskanie niemieckiego prawa do wykonywania zawodu lekarza dentysty. Od 2006 roku współpracuję z&#160;wieloma wydawnictwami medycznymi jako tłumacz podręczników&#160;i&#160;artykułów&#160;stomatologicznych z&#160;języków&#160;niemieckiego i&#160;angielskiego na polski, dzięki czemu pozostaję na bieżąco z&#160;najnowszymi osiągnięciami w&#160;różnych dziedzinach stomatologii, a&#160;zdobytą wiedzę jestem w&#160;stanie realizować w&#160;codziennej praktyce zawodowej, oferując swoim pacjentom możliwie najlepsze rozwiązania w&#160;danym przypadku klinicznym.</p>\n\n<p>W&#160;stomatologii ogromny nacisk kładę na profilaktykę. Sztuką jest nie tylko skuteczne leczenie, ale przede wszystkim uświadamianie pacjentom jak należy postępować, aby w&#160;przyszłości wskazań do leczenia było&#160;jak najmniej. Moje główne obszary zainteresowania to stomatologia estetyczna z&#160;protetyką, nowoczesna endodoncja, czyli leczenie kanałowe, oraz chirurgia stomatologiczna – tu w&#160;szczególności operacyjne ekstrakcje zatrzymanych zębów&#160;mądrości.</p>\n\n<p>Najnowocześniejszy sprzęt i&#160;komfortowe warunki zabiegowe w&#160;połączeniu z&#160;wieloletnim doświadczeniem oraz dbałością o&#160;każdy, nawet najdrobniejszy szczegół sprawią, że wizyta w&#160;gabinecie City-Dent ukaże Państwu nowy wymiar stomatologii – wizyty bez stresu, bólu, zawsze z&#160;fachową poradą i&#160;przejrzystym planem leczenia.</p>\n\n<p>Poza pracą stawiam przede wszystkim na aktywny wypoczynek. Jednak obok górskich wędrówek i&#160;eksploracji morskich głębin znajduję również czas na dobrą książkę i&#160;film.</p>', 216, 'w 2004-roku-z wyroznieniem-ukonczylem-studia-na-wydziale-lekarsko-stomatologicznym-a-m-we-wroclawiu-w trakcie-studiow oraz-po-stazu podyplomowym-swoja-wiedze-i umiejetnosci-poszerzalem-w prywatnej-klinice-stomatologicznej-w niemczech-a zwienczeniem-tego-o', 'W 2004 roku z wyróżnieniem ukończyłem studia na Wydziale Lekarsko-Stomatologicznym A.M. we Wrocławiu. W trakcie studiów oraz po stażu podyplomowym swoją wiedzę i umiejętności poszerzałem w prywatnej klinice stomatologicznej w Niemczech, a zwieńczeniem tego okresu było uzyskanie niemieckiego prawa do wykonywania zawodu lekarza dentysty. Od 2006 roku współpracuję z wieloma wydawnictwami medycznymi jako tłumacz podręczników i artykułów stomatologicznych z języków niemieckiego i angielskiego na polski, dzięki czemu pozostaję na bieżąco z najnowszymi osiągnięciami w różnych dziedzinach stomatologii, a zdobytą wiedzę jestem w stanie realizować w codziennej praktyce zawodowej, oferując swoim pacjentom możliwie najlepsze rozwiązania w danym przypadku klinicznym.', '<p>W&#160;2004 roku z&#160;wyróżnieniem ukończyłem studia na Wydziale Lekarsko-Stomatologicznym A.M. we Wrocławiu. W&#160;trakcie studiów&#160;oraz po stażu&#160;podyplomowym swoją wiedzę i&#160;umiejętności poszerzałem w&#160;prywatnej klinice stomatologicznej w&#160;Niemczech, a&#160;zwieńczeniem tego okresu było&#160;uzyskanie niemieckiego prawa do wykonywania zawodu lekarza dentysty. Od 2006 roku współpracuję z&#160;wieloma wydawnictwami medycznymi jako tłumacz podręczników&#160;i&#160;artykułów&#160;stomatologicznych z&#160;języków&#160;niemieckiego i&#160;angielskiego na polski, dzięki czemu pozostaję na bieżąco z&#160;najnowszymi osiągnięciami w&#160;różnych dziedzinach stomatologii, a&#160;zdobytą wiedzę jestem w&#160;stanie realizować w&#160;codziennej praktyce zawodowej, oferując swoim pacjentom możliwie najlepsze rozwiązania w&#160;danym przypadku klinicznym.</p>', 96, NULL, 'W 2004 roku z wyróżnieniem ukończyłem studia na Wydziale Lekarsko-Stomatologicznym A.M. we Wrocławiu. W trakcie studiów oraz po stażu podyplomowym swoją wiedzę i umiejętności poszerzałem w prywatnej klinice stomatologicznej w Niemczech, a zwieńczeniem tego okresu było uzyskanie niemieckiego prawa do wykonywania zawodu lekarza dentysty. Od 2006 roku współpracuję z wieloma wydawnictwami medycznymi jako tłumacz podręczników i artykułów stomatologicznych z języków niemieckiego i angielskiego na polski, dzięki czemu pozostaję na bieżąco z najnowszymi osiągnięciami w różnych dziedzinach stomatologii, a zdobytą wiedzę jestem w stanie realizować w codziennej praktyce zawodowej, oferując swoim pacjentom możliwie najlepsze rozwiązania w danym przypadku klinicznym.\r\n\r\nW stomatologii ogromny nacisk kładę na profilaktykę. Sztuką jest nie tylko skuteczne leczenie, ale przede wszystkim uświadamianie pacjentom jak należy postępować, aby w przyszłości wskazań do leczenia było jak najmniej. Moje główne obszary zainteresowania to stomatologia estetyczna z protetyką, nowoczesna endodoncja, czyli leczenie kanałowe, oraz chirurgia stomatologiczna – tu w szczególności operacyjne ekstrakcje zatrzymanych zębów mądrości.\r\n\r\nNajnowocześniejszy sprzęt i komfortowe warunki zabiegowe w połączeniu z wieloletnim doświadczeniem oraz dbałością o każdy, nawet najdrobniejszy szczegół sprawią, że wizyta w gabinecie City-Dent ukaże Państwu nowy wymiar stomatologii – wizyty bez stresu, bólu, zawsze z fachową poradą i przejrzystym planem leczenia.\r\n\r\nPoza pracą stawiam przede wszystkim na aktywny wypoczynek. Jednak obok górskich wędrówek i eksploracji morskich głębin znajduję również czas na dobrą książkę i film.', '<p>W&#160;2004 roku z&#160;wyróżnieniem ukończyłem studia na Wydziale Lekarsko-Stomatologicznym A.M. we Wrocławiu. W&#160;trakcie studiów&#160;oraz po stażu&#160;podyplomowym swoją wiedzę i&#160;umiejętności poszerzałem w&#160;prywatnej klinice stomatologicznej w&#160;Niemczech, a&#160;zwieńczeniem tego okresu było&#160;uzyskanie niemieckiego prawa do wykonywania zawodu lekarza dentysty. Od 2006 roku współpracuję z&#160;wieloma wydawnictwami medycznymi jako tłumacz podręczników&#160;i&#160;artykułów&#160;stomatologicznych z&#160;języków&#160;niemieckiego i&#160;angielskiego na polski, dzięki czemu pozostaję na bieżąco z&#160;najnowszymi osiągnięciami w&#160;różnych dziedzinach stomatologii, a&#160;zdobytą wiedzę jestem w&#160;stanie realizować w&#160;codziennej praktyce zawodowej, oferując swoim pacjentom możliwie najlepsze rozwiązania w&#160;danym przypadku klinicznym.</p>\n\n<p>W&#160;stomatologii ogromny nacisk kładę na profilaktykę. Sztuką jest nie tylko skuteczne leczenie, ale przede wszystkim uświadamianie pacjentom jak należy postępować, aby w&#160;przyszłości wskazań do leczenia było&#160;jak najmniej. Moje główne obszary zainteresowania to stomatologia estetyczna z&#160;protetyką, nowoczesna endodoncja, czyli leczenie kanałowe, oraz chirurgia stomatologiczna – tu w&#160;szczególności operacyjne ekstrakcje zatrzymanych zębów&#160;mądrości.</p>\n\n<p>Najnowocześniejszy sprzęt i&#160;komfortowe warunki zabiegowe w&#160;połączeniu z&#160;wieloletnim doświadczeniem oraz dbałością o&#160;każdy, nawet najdrobniejszy szczegół sprawią, że wizyta w&#160;gabinecie City-Dent ukaże Państwu nowy wymiar stomatologii – wizyty bez stresu, bólu, zawsze z&#160;fachową poradą i&#160;przejrzystym planem leczenia.</p>\n\n<p>Poza pracą stawiam przede wszystkim na aktywny wypoczynek. Jednak obok górskich wędrówek i&#160;eksploracji morskich głębin znajduję również czas na dobrą książkę i&#160;film.</p>', 216);

-- *** STRUCTURE:`tbl_entries_data_12` ***
DROP TABLE IF EXISTS`tbl_entries_data_12`;
CREATE TABLE`tbl_entries_data_12` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_12` ***
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (3, 5, 'piotrek-1506957099.png', 82926, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2017-10-02T17:11:39+02:00\";s:5:\"width\";i:333;s:6:\"height\";i:333;}');

-- *** STRUCTURE:`tbl_entries_data_13` ***
DROP TABLE IF EXISTS`tbl_entries_data_13`;
CREATE TABLE`tbl_entries_data_13` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_13` ***
INSERT INTO`tbl_entries_data_13` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (5, 2, 'front-1506954418.png', 1044424, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2017-10-02T16:26:58+02:00\";s:5:\"width\";i:1920;s:6:\"height\";i:1280;}');

-- *** STRUCTURE:`tbl_entries_data_14` ***
DROP TABLE IF EXISTS`tbl_entries_data_14`;
CREATE TABLE`tbl_entries_data_14` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_14` ***
INSERT INTO`tbl_entries_data_14` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (5, 2, 'city-dent-to-nowoczesny-gabinet-stomatologiczny-umiejscowiony-w-centrum-wroclawia-zapraszamy-do-zapoznania-sie-z-nasza-oferta', 'City Dent to nowoczesny gabinet stomatologiczny umiejscowiony w centrum Wrocławia. Zapraszamy do zapoznania się z naszą [ofertą](pl/oferta/).', '<p>City Dent to nowoczesny gabinet stomatologiczny umiejscowiony w centrum Wrocławia. Zapraszamy do zapoznania się z naszą <a href=\"pl/oferta/\">ofertą</a>.</p>', 17, 'city-dent-to-nowoczesny-gabinet-stomatologiczny-umiejscowiony-w-centrum-wroclawia-zapraszamy-do-zapoznania-sie-z-nasza-oferta', 'City Dent to nowoczesny gabinet stomatologiczny umiejscowiony w centrum Wrocławia. Zapraszamy do zapoznania się z naszą ofertą.', '<p>City Dent to nowoczesny gabinet stomatologiczny umiejscowiony w centrum Wrocławia. Zapraszamy do zapoznania się z naszą ofertą.</p>', 17, 'city-dent-to-nowoczesny-gabinet-stomatologiczny-umiejscowiony-w-centrum-wroclawia-zapraszamy-do-zapoznania-sie-z-nasza-oferta', 'City Dent to nowoczesny gabinet stomatologiczny umiejscowiony w centrum Wrocławia. Zapraszamy do zapoznania się z naszą [ofertą](pl/oferta/).', '<p>City Dent to nowoczesny gabinet stomatologiczny umiejscowiony w centrum Wrocławia. Zapraszamy do zapoznania się z naszą <a href=\"pl/oferta/\">ofertą</a>.</p>', 17);

-- *** STRUCTURE:`tbl_entries_data_15` ***
DROP TABLE IF EXISTS`tbl_entries_data_15`;
CREATE TABLE`tbl_entries_data_15` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_15` ***
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (2, 6, '48-516-925-690', '+48 516 925 690', '+48 516 925 690', 0, NULL, NULL, NULL, 0, '48-516-925-690', '+48 516 925 690', '+48 516 925 690', 0);

-- *** STRUCTURE:`tbl_entries_data_16` ***
DROP TABLE IF EXISTS`tbl_entries_data_16`;
CREATE TABLE`tbl_entries_data_16` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_16` ***
INSERT INTO`tbl_entries_data_16` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (2, 6, 'kontakt-city-dent-pl', 'kontakt@city-dent.pl', 'kontakt@city-dent.pl', 1, NULL, NULL, NULL, 0, 'kontakt-city-dent-pl', 'kontakt@city-dent.pl', 'kontakt@city-dent.pl', 1);

-- *** STRUCTURE:`tbl_entries_data_17` ***
DROP TABLE IF EXISTS`tbl_entries_data_17`;
CREATE TABLE`tbl_entries_data_17` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_17` ***
INSERT INTO`tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (2, 6, 'ul-zaporoska-39a', 'ul. Zaporoska 39a', 'ul. Zaporoska 39a', 3, NULL, NULL, NULL, 0, 'ul-zaporoska-39a', 'ul. Zaporoska 39a', 'ul. Zaporoska 39a', 3);

-- *** STRUCTURE:`tbl_entries_data_18` ***
DROP TABLE IF EXISTS`tbl_entries_data_18`;
CREATE TABLE`tbl_entries_data_18` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_18` ***
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (1, 1, '14-00-21-00', '14.00–21.00', '14.00–21.00', 0, NULL, NULL, NULL, 0, '14-00-21-00', '14.00–21.00', '14.00–21.00', 0);

-- *** STRUCTURE:`tbl_entries_data_19` ***
DROP TABLE IF EXISTS`tbl_entries_data_19`;
CREATE TABLE`tbl_entries_data_19` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_19` ***
INSERT INTO`tbl_entries_data_19` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (1, 1, '9-00-15-00', '9.00–15.00', '9.00–15.00', 0, NULL, NULL, NULL, 0, '9-00-15-00', '9.00–15.00', '9.00–15.00', 0);

-- *** STRUCTURE:`tbl_entries_data_2` ***
DROP TABLE IF EXISTS`tbl_entries_data_2`;
CREATE TABLE`tbl_entries_data_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_2` ***
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (9, 7, 'a-dec-300-500', 'A-Dec 300/500', '<p>A-Dec 300/500</p>', 1, 'a-dec-300-500', 'A-Dec 300/500', '<p>A-Dec 300/500</p>', 1, 'a-dec-300-500', 'A-Dec 300/500', '<p>A-Dec 300/500</p>', 1);
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (6, 9, 'endometr-raypex-5', 'Endometr Raypex 5', '<p>Endometr Raypex 5</p>', 2, 'endometr-raypex-5', 'Endometr Raypex 5', '<p>Endometr Raypex 5</p>', 2, 'endometr-raypex-5', 'Endometr Raypex 5', '<p>Endometr Raypex 5</p>', 2);

-- *** STRUCTURE:`tbl_entries_data_20` ***
DROP TABLE IF EXISTS`tbl_entries_data_20`;
CREATE TABLE`tbl_entries_data_20` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_20` ***
INSERT INTO`tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (1, 1, '14-00-21-00', '14.00–21.00', '14.00–21.00', 0, NULL, NULL, NULL, 0, '14-00-21-00', '14.00–21.00', '14.00–21.00', 0);

-- *** STRUCTURE:`tbl_entries_data_21` ***
DROP TABLE IF EXISTS`tbl_entries_data_21`;
CREATE TABLE`tbl_entries_data_21` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_21` ***
INSERT INTO`tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (1, 1, '14-00-21-00', '14.00–21.00', '14.00–21.00', 0, NULL, NULL, NULL, 0, '14-00-21-00', '14.00–21.00', '14.00–21.00', 0);

-- *** STRUCTURE:`tbl_entries_data_22` ***
DROP TABLE IF EXISTS`tbl_entries_data_22`;
CREATE TABLE`tbl_entries_data_22` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_22` ***
INSERT INTO`tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (1, 1, '9-00-15-00', '9.00–15.00', '9.00–15.00', 0, NULL, NULL, NULL, 0, '9-00-15-00', '9.00–15.00', '9.00–15.00', 0);

-- *** STRUCTURE:`tbl_entries_data_23` ***
DROP TABLE IF EXISTS`tbl_entries_data_23`;
CREATE TABLE`tbl_entries_data_23` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_23` ***
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (1, 1, 'po-uzgodnieniu', 'po uzgodnieniu', 'po uzgodnieniu', 2, NULL, NULL, NULL, 0, 'po-uzgodnieniu', 'po uzgodnieniu', 'po uzgodnieniu', 2);

-- *** STRUCTURE:`tbl_entries_data_24` ***
DROP TABLE IF EXISTS`tbl_entries_data_24`;
CREATE TABLE`tbl_entries_data_24` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_24` ***
INSERT INTO`tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0);

-- *** STRUCTURE:`tbl_entries_data_25` ***
DROP TABLE IF EXISTS`tbl_entries_data_25`;
CREATE TABLE`tbl_entries_data_25` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_25` ***

-- *** STRUCTURE:`tbl_entries_data_26` ***
DROP TABLE IF EXISTS`tbl_entries_data_26`;
CREATE TABLE`tbl_entries_data_26` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_26` ***
INSERT INTO`tbl_entries_data_26` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (12, 8, 'stomatologia-estetyczna-1507196465.png', 385831, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2017-10-05T11:41:04+02:00\";s:5:\"width\";i:1920;s:6:\"height\";i:500;}');
INSERT INTO`tbl_entries_data_26` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (11, 11, 'endodoncja-1507205110.png', 1560142, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2017-10-05T14:05:10+02:00\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;}');
INSERT INTO`tbl_entries_data_26` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (10, 12, 'chirurgia-stomatologiczna-1507205332.png', 606242, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2017-10-05T14:08:52+02:00\";s:5:\"width\";i:1920;s:6:\"height\";i:500;}');

-- *** STRUCTURE:`tbl_entries_data_27` ***
DROP TABLE IF EXISTS`tbl_entries_data_27`;
CREATE TABLE`tbl_entries_data_27` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_27` ***

-- *** STRUCTURE:`tbl_entries_data_28` ***
DROP TABLE IF EXISTS`tbl_entries_data_28`;
CREATE TABLE`tbl_entries_data_28` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_entries_data_28` ***
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (14, 8, 1);
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (13, 11, 2);
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (12, 12, 3);

-- *** STRUCTURE:`tbl_entries_data_29` ***
DROP TABLE IF EXISTS`tbl_entries_data_29`;
CREATE TABLE`tbl_entries_data_29` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_29` ***

-- *** STRUCTURE:`tbl_entries_data_3` ***
DROP TABLE IF EXISTS`tbl_entries_data_3`;
CREATE TABLE`tbl_entries_data_3` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_3` ***
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (9, 7, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore-magna-aliqua-ut-enim-ad-minim-veniam-quis-nostrud-exercitation-ullamco-laboris-nisi-ut-aliquip-ex-ea-commodo-consequat-duis-aute-irure-dolor-in-rep', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 69, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore-magna-aliqua-ut-enim-ad-minim-veniam-quis-nostrud-exercitation-ullamco-laboris-nisi-ut-aliquip-ex-ea-commodo-consequat-duis-aute-irure-dolor-in-rep', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 69, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore-magna-aliqua-ut-enim-ad-minim-veniam-quis-nostrud-exercitation-ullamco-laboris-nisi-ut-aliquip-ex-ea-commodo-consequat-duis-aute-irure-dolor-in-rep', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 69);
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (6, 9, 'sed-ut-perspiciatis-unde-omnis-iste-natus-error-sit-voluptatem-accusantium-doloremque-laudantium-totam-rem-aperiam-eaque-ipsa-quae-ab-illo-inventore-veritatis-et-quasi-architecto-beatae-vitae-dicta-sunt-explicabo-nemo-enim-ipsam-voluptatem-quia-voluptas-s', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>', 129, 'sed-ut-perspiciatis-unde-omnis-iste-natus-error-sit-voluptatem-accusantium-doloremque-laudantium-totam-rem-aperiam-eaque-ipsa-quae-ab-illo-inventore-veritatis-et-quasi-architecto-beatae-vitae-dicta-sunt-explicabo-nemo-enim-ipsam-voluptatem-quia-voluptas-s', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>', 129, 'sed-ut-perspiciatis-unde-omnis-iste-natus-error-sit-voluptatem-accusantium-doloremque-laudantium-totam-rem-aperiam-eaque-ipsa-quae-ab-illo-inventore-veritatis-et-quasi-architecto-beatae-vitae-dicta-sunt-explicabo-nemo-enim-ipsam-voluptatem-quia-voluptas-s', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>', 129);

-- *** STRUCTURE:`tbl_entries_data_30` ***
DROP TABLE IF EXISTS`tbl_entries_data_30`;
CREATE TABLE`tbl_entries_data_30` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_entries_data_30` ***
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (7, 7, 1);
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (4, 9, 2);

-- *** STRUCTURE:`tbl_entries_data_31` ***
DROP TABLE IF EXISTS`tbl_entries_data_31`;
CREATE TABLE`tbl_entries_data_31` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_entries_data_31` ***
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `value`) VALUES (3, 5, 1);

-- *** STRUCTURE:`tbl_entries_data_32` ***
DROP TABLE IF EXISTS`tbl_entries_data_32`;
CREATE TABLE`tbl_entries_data_32` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_32` ***

-- *** STRUCTURE:`tbl_entries_data_33` ***
DROP TABLE IF EXISTS`tbl_entries_data_33`;
CREATE TABLE`tbl_entries_data_33` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_33` ***
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (8, 8, 'stomatologia-estetyczna-sml-1507196465.png', 259859, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2017-10-05T11:41:04+02:00\";s:5:\"width\";i:900;s:6:\"height\";i:600;}');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (7, 11, 'endodoncja-sml-1507205111.png', 398670, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2017-10-05T14:05:10+02:00\";s:5:\"width\";i:900;s:6:\"height\";i:600;}');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (6, 12, 'chirurgia-stomatologiczna-sml-1507205332.png', 349959, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2017-10-05T14:08:52+02:00\";s:5:\"width\";i:900;s:6:\"height\";i:600;}');

-- *** STRUCTURE:`tbl_entries_data_35` ***
DROP TABLE IF EXISTS`tbl_entries_data_35`;
CREATE TABLE`tbl_entries_data_35` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_35` ***
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (1, 6, '53-519-wroclaw', '53 - 519 Wrocław', '53 - 519 Wrocław', 1, NULL, NULL, NULL, 0, '53-519-wroclaw', '53 - 519 Wrocław', '53 - 519 Wrocław', 1);

-- *** STRUCTURE:`tbl_entries_data_36` ***
DROP TABLE IF EXISTS`tbl_entries_data_36`;
CREATE TABLE`tbl_entries_data_36` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_entries_data_36` ***
INSERT INTO`tbl_entries_data_36` (`id`, `entry_id`, `value`) VALUES (2, 2, 1);

-- *** STRUCTURE:`tbl_entries_data_37` ***
DROP TABLE IF EXISTS`tbl_entries_data_37`;
CREATE TABLE`tbl_entries_data_37` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`(333)),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_37` ***
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (1, 10, 'http-www-facebook-com', 'http://www.facebook.com/', 'http://www.facebook.com/', 1);

-- *** STRUCTURE:`tbl_entries_data_38` ***
DROP TABLE IF EXISTS`tbl_entries_data_38`;
CREATE TABLE`tbl_entries_data_38` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`(333)),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_38` ***
INSERT INTO`tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (1, 10, 'https-www-instagram-com', 'https://www.instagram.com/', 'https://www.instagram.com/', 1);

-- *** STRUCTURE:`tbl_entries_data_39` ***
DROP TABLE IF EXISTS`tbl_entries_data_39`;
CREATE TABLE`tbl_entries_data_39` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`(333)),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_39` ***
INSERT INTO`tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (1, 10, 'https-linkedin-com', 'https://linkedin.com/', 'https://linkedin.com/', 1);

-- *** STRUCTURE:`tbl_entries_data_4` ***
DROP TABLE IF EXISTS`tbl_entries_data_4`;
CREATE TABLE`tbl_entries_data_4` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_4` ***
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (8, 7, 'adec-1507057516.png', 195996, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2017-10-03T21:05:16+02:00\";s:5:\"width\";i:1347;s:6:\"height\";i:768;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (5, 9, 'endometr-raypex-5-1507116402.jpg', 48455, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2017-10-04T13:26:41+02:00\";s:5:\"width\";i:600;s:6:\"height\";i:600;}');

-- *** STRUCTURE:`tbl_entries_data_5` ***
DROP TABLE IF EXISTS`tbl_entries_data_5`;
CREATE TABLE`tbl_entries_data_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_5` ***
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (1, 3, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore-magna-aliqua-ut-enim-ad-minim-veniam-quis-nostrud-exercitation-ullamco-laboris-nisi-ut-aliquip-ex-ea-commodo-consequat-duis-aute-irure-dolor-in-rep', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 69, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore-magna-aliqua-ut-enim-ad-minim-veniam-quis-nostrud-exercitation-ullamco-laboris-nisi-ut-aliquip-ex-ea-commodo-consequat-duis-aute-irure-dolor-in-rep', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 69, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore-magna-aliqua-ut-enim-ad-minim-veniam-quis-nostrud-exercitation-ullamco-laboris-nisi-ut-aliquip-ex-ea-commodo-consequat-duis-aute-irure-dolor-in-rep', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 69);

-- *** STRUCTURE:`tbl_entries_data_6` ***
DROP TABLE IF EXISTS`tbl_entries_data_6`;
CREATE TABLE`tbl_entries_data_6` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_6` ***
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (14, 8, 'stomatologia-estetyczna', 'Stomatologia estetyczna', '<p>Stomatologia estetyczna</p>', 2, 'stomatologia-estetyczna', 'Stomatologia estetyczna', '<p>Stomatologia estetyczna</p>', 2, 'stomatologia-estetyczna', 'Stomatologia estetyczna', '<p>Stomatologia estetyczna</p>', 2);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (13, 11, 'endodoncja', 'Endodoncja', '<p>Endodoncja</p>', 1, 'endo', 'Endo', '<p>Endo</p>', 1, 'endodoncja', 'Endodoncja', '<p>Endodoncja</p>', 1);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (12, 12, 'chirurgia-stomatologiczna', 'Chirurgia stomatologiczna', '<p>Chirurgia stomatologiczna</p>', 2, 'chirurgia-stomatologiczna', 'Chirurgia stomatologiczna', '<p>Chirurgia stomatologiczna</p>', 2, 'chirurgia-stomatologiczna', 'Chirurgia stomatologiczna', '<p>Chirurgia stomatologiczna</p>', 2);

-- *** STRUCTURE:`tbl_entries_data_7` ***
DROP TABLE IF EXISTS`tbl_entries_data_7`;
CREATE TABLE`tbl_entries_data_7` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_7` ***
INSERT INTO`tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (14, 8, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>', 198, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>', 198, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>', 198);
INSERT INTO`tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (13, 11, NULL, 'Endodoncja to dział stomatologii zachowawczej zajmujący się diagnostyką i leczeniem stanów chorobowych miazgi zęba oraz tkanek otaczających wierzchołki korzeni. Pozwala na uratowanie zębów, które w przeciwnym razie kwalifikowałyby się do ekstrakcji. Leczenie kanałowe stanowi zarazem jedną z najtrudniejszych procedur w stomatologii, w związku z czym obok ogromnej wiedzy i wieloletniego doświadczenia klinicznego wymaga również stosowania najnowocześniejszych narzędzi i materiałów.\r\nW naszym gabinecie stosowana jest tzw. technika jednowizytowa, która stanowi zarówno najskuteczniejszy jak również najnowocześniejszy sposób leczenia kanałowego. Leczenie to odbywa przy wykorzystaniu mikroskopu zabiegowego, który każdorazowo umożliwia odnalezienie wszystkich ujść kanałów korzeniowych, ich staranne mechaniczne opracowanie, dezynfekcję oraz szczelne wypełnienie metodą pionowej kondensacji gutaperki na ciepło. Bezkompromisowe przeprowadzenie leczenia kanałowego stanowi nie tylko gwarancję zachowania własnego zęba, ale jest również zdecydowanie mniej kosztowne niż leczenie implantologiczne lub protetyczne w przypadku jego usunięcia.\r\n\r\nZęby po leczeniu kanałowym są często bardzo osłabione i podatne na urazy mechaniczne. Dlatego oferujemy również wszelkie dostępne metody odbudowy zębów, które zagwarantują ich wieloletnią trwałość.', '<p>Endodoncja to dział stomatologii zachowawczej zajmujący się diagnostyką i&#160;leczeniem stanów&#160;chorobowych miazgi zęba oraz tkanek otaczających wierzchołki korzeni. Pozwala na uratowanie zębów, które w&#160;przeciwnym razie kwalifikowałyby się do ekstrakcji. Leczenie kanałowe stanowi zarazem jedną z&#160;najtrudniejszych procedur w&#160;stomatologii, w&#160;związku z&#160;czym obok ogromnej wiedzy i&#160;wieloletniego doświadczenia klinicznego wymaga również stosowania najnowocześniejszych narzędzi i&#160;materiałów.\nW&#160;naszym gabinecie stosowana jest tzw. technika jednowizytowa, która stanowi zarówno najskuteczniejszy jak również najnowocześniejszy sposób leczenia kanałowego. Leczenie to odbywa przy wykorzystaniu mikroskopu zabiegowego, który każdorazowo umożliwia odnalezienie wszystkich ujść kanałów&#160;korzeniowych, ich staranne mechaniczne opracowanie, dezynfekcję oraz szczelne wypełnienie metodą pionowej kondensacji gutaperki na ciepło. Bezkompromisowe przeprowadzenie leczenia kanałowego stanowi nie tylko gwarancję zachowania własnego zęba, ale jest również zdecydowanie mniej kosztowne niż leczenie implantologiczne lub protetyczne w&#160;przypadku jego usunięcia.</p>\n\n<p>Zęby po leczeniu kanałowym są często bardzo osłabione i&#160;podatne na urazy mechaniczne. Dlatego oferujemy również wszelkie dostępne metody odbudowy zębów, które zagwarantują ich wieloletnią trwałość.</p>', 158, NULL, 'Endodoncja to dział stomatologii zachowawczej zajmujący się diagnostyką i leczeniem stanów chorobowych miazgi zęba oraz tkanek otaczających wierzchołki korzeni. Pozwala na uratowanie zębów, które w przeciwnym razie kwalifikowałyby się do ekstrakcji. Leczenie kanałowe stanowi zarazem jedną z najtrudniejszych procedur w stomatologii, w związku z czym obok ogromnej wiedzy i wieloletniego doświadczenia klinicznego wymaga również stosowania najnowocześniejszych narzędzi i materiałów.\r\nW naszym gabinecie stosowana jest tzw. technika jednowizytowa, która stanowi zarówno najskuteczniejszy jak również najnowocześniejszy sposób leczenia kanałowego. Leczenie to odbywa przy wykorzystaniu mikroskopu zabiegowego, który każdorazowo umożliwia odnalezienie wszystkich ujść kanałów korzeniowych, ich staranne mechaniczne opracowanie, dezynfekcję oraz szczelne wypełnienie metodą pionowej kondensacji gutaperki na ciepło. Bezkompromisowe przeprowadzenie leczenia kanałowego stanowi nie tylko gwarancję zachowania własnego zęba, ale jest również zdecydowanie mniej kosztowne niż leczenie implantologiczne lub protetyczne w przypadku jego usunięcia.\r\n\r\nZęby po leczeniu kanałowym są często bardzo osłabione i podatne na urazy mechaniczne. Dlatego oferujemy również wszelkie dostępne metody odbudowy zębów, które zagwarantują ich wieloletnią trwałość.', '<p>Endodoncja to dział stomatologii zachowawczej zajmujący się diagnostyką i&#160;leczeniem stanów&#160;chorobowych miazgi zęba oraz tkanek otaczających wierzchołki korzeni. Pozwala na uratowanie zębów, które w&#160;przeciwnym razie kwalifikowałyby się do ekstrakcji. Leczenie kanałowe stanowi zarazem jedną z&#160;najtrudniejszych procedur w&#160;stomatologii, w&#160;związku z&#160;czym obok ogromnej wiedzy i&#160;wieloletniego doświadczenia klinicznego wymaga również stosowania najnowocześniejszych narzędzi i&#160;materiałów.\nW&#160;naszym gabinecie stosowana jest tzw. technika jednowizytowa, która stanowi zarówno najskuteczniejszy jak również najnowocześniejszy sposób leczenia kanałowego. Leczenie to odbywa przy wykorzystaniu mikroskopu zabiegowego, który każdorazowo umożliwia odnalezienie wszystkich ujść kanałów&#160;korzeniowych, ich staranne mechaniczne opracowanie, dezynfekcję oraz szczelne wypełnienie metodą pionowej kondensacji gutaperki na ciepło. Bezkompromisowe przeprowadzenie leczenia kanałowego stanowi nie tylko gwarancję zachowania własnego zęba, ale jest również zdecydowanie mniej kosztowne niż leczenie implantologiczne lub protetyczne w&#160;przypadku jego usunięcia.</p>\n\n<p>Zęby po leczeniu kanałowym są często bardzo osłabione i&#160;podatne na urazy mechaniczne. Dlatego oferujemy również wszelkie dostępne metody odbudowy zębów, które zagwarantują ich wieloletnią trwałość.</p>', 158, NULL, 'Endodoncja to dział stomatologii zachowawczej zajmujący się diagnostyką i leczeniem stanów chorobowych miazgi zęba oraz tkanek otaczających wierzchołki korzeni. Pozwala na uratowanie zębów, które w przeciwnym razie kwalifikowałyby się do ekstrakcji. Leczenie kanałowe stanowi zarazem jedną z najtrudniejszych procedur w stomatologii, w związku z czym obok ogromnej wiedzy i wieloletniego doświadczenia klinicznego wymaga również stosowania najnowocześniejszych narzędzi i materiałów.\r\nW naszym gabinecie stosowana jest tzw. technika jednowizytowa, która stanowi zarówno najskuteczniejszy jak również najnowocześniejszy sposób leczenia kanałowego. Leczenie to odbywa przy wykorzystaniu mikroskopu zabiegowego, który każdorazowo umożliwia odnalezienie wszystkich ujść kanałów korzeniowych, ich staranne mechaniczne opracowanie, dezynfekcję oraz szczelne wypełnienie metodą pionowej kondensacji gutaperki na ciepło. Bezkompromisowe przeprowadzenie leczenia kanałowego stanowi nie tylko gwarancję zachowania własnego zęba, ale jest również zdecydowanie mniej kosztowne niż leczenie implantologiczne lub protetyczne w przypadku jego usunięcia.\r\n\r\nZęby po leczeniu kanałowym są często bardzo osłabione i podatne na urazy mechaniczne. Dlatego oferujemy również wszelkie dostępne metody odbudowy zębów, które zagwarantują ich wieloletnią trwałość.', '<p>Endodoncja to dział stomatologii zachowawczej zajmujący się diagnostyką i&#160;leczeniem stanów&#160;chorobowych miazgi zęba oraz tkanek otaczających wierzchołki korzeni. Pozwala na uratowanie zębów, które w&#160;przeciwnym razie kwalifikowałyby się do ekstrakcji. Leczenie kanałowe stanowi zarazem jedną z&#160;najtrudniejszych procedur w&#160;stomatologii, w&#160;związku z&#160;czym obok ogromnej wiedzy i&#160;wieloletniego doświadczenia klinicznego wymaga również stosowania najnowocześniejszych narzędzi i&#160;materiałów.\nW&#160;naszym gabinecie stosowana jest tzw. technika jednowizytowa, która stanowi zarówno najskuteczniejszy jak również najnowocześniejszy sposób leczenia kanałowego. Leczenie to odbywa przy wykorzystaniu mikroskopu zabiegowego, który każdorazowo umożliwia odnalezienie wszystkich ujść kanałów&#160;korzeniowych, ich staranne mechaniczne opracowanie, dezynfekcję oraz szczelne wypełnienie metodą pionowej kondensacji gutaperki na ciepło. Bezkompromisowe przeprowadzenie leczenia kanałowego stanowi nie tylko gwarancję zachowania własnego zęba, ale jest również zdecydowanie mniej kosztowne niż leczenie implantologiczne lub protetyczne w&#160;przypadku jego usunięcia.</p>\n\n<p>Zęby po leczeniu kanałowym są często bardzo osłabione i&#160;podatne na urazy mechaniczne. Dlatego oferujemy również wszelkie dostępne metody odbudowy zębów, które zagwarantują ich wieloletnią trwałość.</p>', 158);
INSERT INTO`tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (12, 12, NULL, 'Chirurgia stomatologiczna to obszerna dziedzina stomatologii zabiegowej, do której należą m.in. ekstrakcje zębów. Dzięki wieloletniemu doświadczeniu sprawimy, że zabieg usunięcia zęba przestanie być kojarzony z bólem i strachem. Zęby usuwane są całkowicie bezboleśnie, sprawnie i szybko. Dotyczy to w szczególności zatrzymanych zębów mądrości. W celu zminimalizowania stresu związanego z zabiegiem u pacjentów, u których konieczne jest usunięcie wszystkich czterech „ósemek”, ilość wizyt ograniczamy do zaledwie dwóch. Oznacza to, że w trakcie jednej wizyty usuwane są dwa zęby po tej samej stronie. Następnie, po wygojeniu, zabieg przeprowadzany jest po stronie przeciwległej. Ekstrakcje zatrzymanych „ósemek” wiążą się niekiedy z bólem pozabiegowym utrzymującym się przez kilka dni. Dlatego pacjenci otrzymują receptę na skuteczny lek przeciwbólowy, dzięki któremu możliwa jest praktycznie całkowita eliminacja bólu w okresie gojenia. W przypadku usuwania szczególnie głęboko zatrzymanych zębów mądrości, konieczne jest przyjmowanie antybiotyku. Po każdym zabiegu pacjent jest dokładnie informowany odnośnie postępowania pozabiegowego. Po usunięciu zatrzymanej „ósemki” pacjent otrzymuje zimny kompres do przyłożenia na policzek, dzięki czemu możliwe jest zmniejszenie obrzęku poekstrakcyjnego. W przypadku założenia szwów należy się zgłosić po upływie tygodnia w celu ich usunięcia. Jest to zabieg bezbolesny i bezpłatny ( w ramach ekstrakcji zatrzymanego zęba mądrości).\r\n\r\nNaszym pacjentom oferujemy również:\r\n\r\n+ zabiegi chirurgicznego wydłużania korony zęba w przypadku poddziąsłowego złamania korony, które uniemożliwia wykonanie odbudowy protetycznej; jest to często jedyna metoda pozwalająca uchronić ząb przed ekstrakcją,\r\n+ zabiegi przedprotetyczne wykonywane w celu prawidłowego ukształtowania podłoża protetycznego,\r\n+ podcinanie wędzidełek,\r\n+ hemisekcje, trisekcje, radektomie, premolaryzacje – gdy konieczne jest usunięcie jednego z korzeni zęba wielokorzeniowego, którego leczenie nie jest już możliwe; oszczędzamy dzięki temu pozostałą część zęba, która może posłużyć do osadzenia odbudowy protetycznej,\r\n+ chirurgiczną eliminację kieszonek dziąsłowych,\r\n+ resekcje wierzchołków korzeni.', '<p>Chirurgia stomatologiczna to obszerna dziedzina stomatologii zabiegowej, do której należą m.in. ekstrakcje zębów. Dzięki wieloletniemu doświadczeniu sprawimy, że zabieg usunięcia zęba przestanie być kojarzony z&#160;bólem i&#160;strachem. Zęby usuwane są całkowicie bezboleśnie, sprawnie i&#160;szybko. Dotyczy to w&#160;szczególności zatrzymanych zębów&#160;mądrości. W&#160;celu zminimalizowania stresu związanego z&#160;zabiegiem u&#160;pacjentów, u&#160;których konieczne jest usunięcie wszystkich czterech „ósemek”, ilość wizyt ograniczamy do zaledwie dwóch. Oznacza to, że w&#160;trakcie jednej wizyty usuwane są dwa zęby po tej samej stronie. Następnie, po wygojeniu, zabieg przeprowadzany jest po stronie przeciwległej. Ekstrakcje zatrzymanych „ósemek” wiążą się niekiedy z&#160;bólem pozabiegowym utrzymującym się przez kilka dni. Dlatego pacjenci otrzymują receptę na skuteczny lek przeciwbólowy, dzięki któremu możliwa jest praktycznie całkowita eliminacja bólu w&#160;okresie gojenia. W&#160;przypadku usuwania szczególnie głęboko zatrzymanych zębów&#160;mądrości, konieczne jest przyjmowanie antybiotyku. Po każdym zabiegu pacjent jest dokładnie informowany odnośnie postępowania pozabiegowego. Po usunięciu zatrzymanej „ósemki” pacjent otrzymuje zimny kompres do przyłożenia na policzek, dzięki czemu możliwe jest zmniejszenie obrzęku poekstrakcyjnego. W&#160;przypadku założenia szwów&#160;należy się zgłosić po upływie tygodnia w&#160;celu ich usunięcia. Jest to zabieg bezbolesny i&#160;bezpłatny ( w&#160;ramach ekstrakcji zatrzymanego zęba mądrości).</p>\n\n<p>Naszym pacjentom oferujemy również:</p>\n\n<ul>\n<li>zabiegi chirurgicznego wydłużania korony zęba w&#160;przypadku poddziąsłowego złamania korony, które uniemożliwia wykonanie odbudowy protetycznej; jest to często jedyna metoda pozwalająca uchronić ząb przed ekstrakcją,</li>\n<li>zabiegi przedprotetyczne wykonywane w&#160;celu prawidłowego ukształtowania podłoża&#160;protetycznego,</li>\n<li>podcinanie wędzidełek,</li>\n<li>hemisekcje, trisekcje, radektomie, premolaryzacje – gdy konieczne jest usunięcie jednego z&#160;korzeni zęba wielokorzeniowego, którego leczenie nie jest już możliwe; oszczędzamy dzięki temu pozostałą część zęba, która może posłużyć do osadzenia odbudowy protetycznej,</li>\n<li>chirurgiczną eliminację kieszonek dziąsłowych,</li>\n<li>resekcje wierzchołków&#160;korzeni.</li>\n</ul>', 269, NULL, 'Chirurgia stomatologiczna to obszerna dziedzina stomatologii zabiegowej, do której należą m.in. ekstrakcje zębów. Dzięki wieloletniemu doświadczeniu sprawimy, że zabieg usunięcia zęba przestanie być kojarzony z bólem i strachem. Zęby usuwane są całkowicie bezboleśnie, sprawnie i szybko. Dotyczy to w szczególności zatrzymanych zębów mądrości. W celu zminimalizowania stresu związanego z zabiegiem u pacjentów, u których konieczne jest usunięcie wszystkich czterech „ósemek”, ilość wizyt ograniczamy do zaledwie dwóch. Oznacza to, że w trakcie jednej wizyty usuwane są dwa zęby po tej samej stronie. Następnie, po wygojeniu, zabieg przeprowadzany jest po stronie przeciwległej. Ekstrakcje zatrzymanych „ósemek” wiążą się niekiedy z bólem pozabiegowym utrzymującym się przez kilka dni. Dlatego pacjenci otrzymują receptę na skuteczny lek przeciwbólowy, dzięki któremu możliwa jest praktycznie całkowita eliminacja bólu w okresie gojenia. W przypadku usuwania szczególnie głęboko zatrzymanych zębów mądrości, konieczne jest przyjmowanie antybiotyku. Po każdym zabiegu pacjent jest dokładnie informowany odnośnie postępowania pozabiegowego. Po usunięciu zatrzymanej „ósemki” pacjent otrzymuje zimny kompres do przyłożenia na policzek, dzięki czemu możliwe jest zmniejszenie obrzęku poekstrakcyjnego. W przypadku założenia szwów należy się zgłosić po upływie tygodnia w celu ich usunięcia. Jest to zabieg bezbolesny i bezpłatny ( w ramach ekstrakcji zatrzymanego zęba mądrości).\r\n\r\nNaszym pacjentom oferujemy również:\r\n\r\n+ zabiegi chirurgicznego wydłużania korony zęba w przypadku poddziąsłowego złamania korony, które uniemożliwia wykonanie odbudowy protetycznej; jest to często jedyna metoda pozwalająca uchronić ząb przed ekstrakcją,\r\n+ zabiegi przedprotetyczne wykonywane w celu prawidłowego ukształtowania podłoża protetycznego,\r\n+ podcinanie wędzidełek,\r\n+ hemisekcje, trisekcje, radektomie, premolaryzacje – gdy konieczne jest usunięcie jednego z korzeni zęba wielokorzeniowego, którego leczenie nie jest już możliwe; oszczędzamy dzięki temu pozostałą część zęba, która może posłużyć do osadzenia odbudowy protetycznej,\r\n+ chirurgiczną eliminację kieszonek dziąsłowych,\r\n+ resekcje wierzchołków korzeni.', '<p>Chirurgia stomatologiczna to obszerna dziedzina stomatologii zabiegowej, do której należą m.in. ekstrakcje zębów. Dzięki wieloletniemu doświadczeniu sprawimy, że zabieg usunięcia zęba przestanie być kojarzony z&#160;bólem i&#160;strachem. Zęby usuwane są całkowicie bezboleśnie, sprawnie i&#160;szybko. Dotyczy to w&#160;szczególności zatrzymanych zębów&#160;mądrości. W&#160;celu zminimalizowania stresu związanego z&#160;zabiegiem u&#160;pacjentów, u&#160;których konieczne jest usunięcie wszystkich czterech „ósemek”, ilość wizyt ograniczamy do zaledwie dwóch. Oznacza to, że w&#160;trakcie jednej wizyty usuwane są dwa zęby po tej samej stronie. Następnie, po wygojeniu, zabieg przeprowadzany jest po stronie przeciwległej. Ekstrakcje zatrzymanych „ósemek” wiążą się niekiedy z&#160;bólem pozabiegowym utrzymującym się przez kilka dni. Dlatego pacjenci otrzymują receptę na skuteczny lek przeciwbólowy, dzięki któremu możliwa jest praktycznie całkowita eliminacja bólu w&#160;okresie gojenia. W&#160;przypadku usuwania szczególnie głęboko zatrzymanych zębów&#160;mądrości, konieczne jest przyjmowanie antybiotyku. Po każdym zabiegu pacjent jest dokładnie informowany odnośnie postępowania pozabiegowego. Po usunięciu zatrzymanej „ósemki” pacjent otrzymuje zimny kompres do przyłożenia na policzek, dzięki czemu możliwe jest zmniejszenie obrzęku poekstrakcyjnego. W&#160;przypadku założenia szwów&#160;należy się zgłosić po upływie tygodnia w&#160;celu ich usunięcia. Jest to zabieg bezbolesny i&#160;bezpłatny ( w&#160;ramach ekstrakcji zatrzymanego zęba mądrości).</p>\n\n<p>Naszym pacjentom oferujemy również:</p>\n\n<ul>\n<li>zabiegi chirurgicznego wydłużania korony zęba w&#160;przypadku poddziąsłowego złamania korony, które uniemożliwia wykonanie odbudowy protetycznej; jest to często jedyna metoda pozwalająca uchronić ząb przed ekstrakcją,</li>\n<li>zabiegi przedprotetyczne wykonywane w&#160;celu prawidłowego ukształtowania podłoża&#160;protetycznego,</li>\n<li>podcinanie wędzidełek,</li>\n<li>hemisekcje, trisekcje, radektomie, premolaryzacje – gdy konieczne jest usunięcie jednego z&#160;korzeni zęba wielokorzeniowego, którego leczenie nie jest już możliwe; oszczędzamy dzięki temu pozostałą część zęba, która może posłużyć do osadzenia odbudowy protetycznej,</li>\n<li>chirurgiczną eliminację kieszonek dziąsłowych,</li>\n<li>resekcje wierzchołków&#160;korzeni.</li>\n</ul>', 269, NULL, 'Chirurgia stomatologiczna to obszerna dziedzina stomatologii zabiegowej, do której należą m.in. ekstrakcje zębów. Dzięki wieloletniemu doświadczeniu sprawimy, że zabieg usunięcia zęba przestanie być kojarzony z bólem i strachem. Zęby usuwane są całkowicie bezboleśnie, sprawnie i szybko. Dotyczy to w szczególności zatrzymanych zębów mądrości. W celu zminimalizowania stresu związanego z zabiegiem u pacjentów, u których konieczne jest usunięcie wszystkich czterech „ósemek”, ilość wizyt ograniczamy do zaledwie dwóch. Oznacza to, że w trakcie jednej wizyty usuwane są dwa zęby po tej samej stronie. Następnie, po wygojeniu, zabieg przeprowadzany jest po stronie przeciwległej. Ekstrakcje zatrzymanych „ósemek” wiążą się niekiedy z bólem pozabiegowym utrzymującym się przez kilka dni. Dlatego pacjenci otrzymują receptę na skuteczny lek przeciwbólowy, dzięki któremu możliwa jest praktycznie całkowita eliminacja bólu w okresie gojenia. W przypadku usuwania szczególnie głęboko zatrzymanych zębów mądrości, konieczne jest przyjmowanie antybiotyku. Po każdym zabiegu pacjent jest dokładnie informowany odnośnie postępowania pozabiegowego. Po usunięciu zatrzymanej „ósemki” pacjent otrzymuje zimny kompres do przyłożenia na policzek, dzięki czemu możliwe jest zmniejszenie obrzęku poekstrakcyjnego. W przypadku założenia szwów należy się zgłosić po upływie tygodnia w celu ich usunięcia. Jest to zabieg bezbolesny i bezpłatny ( w ramach ekstrakcji zatrzymanego zęba mądrości).\r\n\r\nNaszym pacjentom oferujemy również:\r\n\r\n+ zabiegi chirurgicznego wydłużania korony zęba w przypadku poddziąsłowego złamania korony, które uniemożliwia wykonanie odbudowy protetycznej; jest to często jedyna metoda pozwalająca uchronić ząb przed ekstrakcją,\r\n+ zabiegi przedprotetyczne wykonywane w celu prawidłowego ukształtowania podłoża protetycznego,\r\n+ podcinanie wędzidełek,\r\n+ hemisekcje, trisekcje, radektomie, premolaryzacje – gdy konieczne jest usunięcie jednego z korzeni zęba wielokorzeniowego, którego leczenie nie jest już możliwe; oszczędzamy dzięki temu pozostałą część zęba, która może posłużyć do osadzenia odbudowy protetycznej,\r\n+ chirurgiczną eliminację kieszonek dziąsłowych,\r\n+ resekcje wierzchołków korzeni.', '<p>Chirurgia stomatologiczna to obszerna dziedzina stomatologii zabiegowej, do której należą m.in. ekstrakcje zębów. Dzięki wieloletniemu doświadczeniu sprawimy, że zabieg usunięcia zęba przestanie być kojarzony z&#160;bólem i&#160;strachem. Zęby usuwane są całkowicie bezboleśnie, sprawnie i&#160;szybko. Dotyczy to w&#160;szczególności zatrzymanych zębów&#160;mądrości. W&#160;celu zminimalizowania stresu związanego z&#160;zabiegiem u&#160;pacjentów, u&#160;których konieczne jest usunięcie wszystkich czterech „ósemek”, ilość wizyt ograniczamy do zaledwie dwóch. Oznacza to, że w&#160;trakcie jednej wizyty usuwane są dwa zęby po tej samej stronie. Następnie, po wygojeniu, zabieg przeprowadzany jest po stronie przeciwległej. Ekstrakcje zatrzymanych „ósemek” wiążą się niekiedy z&#160;bólem pozabiegowym utrzymującym się przez kilka dni. Dlatego pacjenci otrzymują receptę na skuteczny lek przeciwbólowy, dzięki któremu możliwa jest praktycznie całkowita eliminacja bólu w&#160;okresie gojenia. W&#160;przypadku usuwania szczególnie głęboko zatrzymanych zębów&#160;mądrości, konieczne jest przyjmowanie antybiotyku. Po każdym zabiegu pacjent jest dokładnie informowany odnośnie postępowania pozabiegowego. Po usunięciu zatrzymanej „ósemki” pacjent otrzymuje zimny kompres do przyłożenia na policzek, dzięki czemu możliwe jest zmniejszenie obrzęku poekstrakcyjnego. W&#160;przypadku założenia szwów&#160;należy się zgłosić po upływie tygodnia w&#160;celu ich usunięcia. Jest to zabieg bezbolesny i&#160;bezpłatny ( w&#160;ramach ekstrakcji zatrzymanego zęba mądrości).</p>\n\n<p>Naszym pacjentom oferujemy również:</p>\n\n<ul>\n<li>zabiegi chirurgicznego wydłużania korony zęba w&#160;przypadku poddziąsłowego złamania korony, które uniemożliwia wykonanie odbudowy protetycznej; jest to często jedyna metoda pozwalająca uchronić ząb przed ekstrakcją,</li>\n<li>zabiegi przedprotetyczne wykonywane w&#160;celu prawidłowego ukształtowania podłoża&#160;protetycznego,</li>\n<li>podcinanie wędzidełek,</li>\n<li>hemisekcje, trisekcje, radektomie, premolaryzacje – gdy konieczne jest usunięcie jednego z&#160;korzeni zęba wielokorzeniowego, którego leczenie nie jest już możliwe; oszczędzamy dzięki temu pozostałą część zęba, która może posłużyć do osadzenia odbudowy protetycznej,</li>\n<li>chirurgiczną eliminację kieszonek dziąsłowych,</li>\n<li>resekcje wierzchołków&#160;korzeni.</li>\n</ul>', 269);

-- *** STRUCTURE:`tbl_entries_data_8` ***
DROP TABLE IF EXISTS`tbl_entries_data_8`;
CREATE TABLE`tbl_entries_data_8` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_8` ***
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (3, 5, 'piotr-ptak', 'Piotr Ptak', '<p>Piotr Ptak</p>', 2, 'yyy', 'yyy', '<p>yyy</p>', 1, 'piotr-ptak', 'Piotr Ptak', '<p>Piotr Ptak</p>', 2);

-- *** STRUCTURE:`tbl_entries_data_9` ***
DROP TABLE IF EXISTS`tbl_entries_data_9`;
CREATE TABLE`tbl_entries_data_9` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  `handle-en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-en` text COLLATE utf8_unicode_ci,
  `value_formatted-en` text COLLATE utf8_unicode_ci,
  `word_count-en` int(11) unsigned DEFAULT NULL,
  `handle-pl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value-pl` text COLLATE utf8_unicode_ci,
  `value_formatted-pl` text COLLATE utf8_unicode_ci,
  `word_count-pl` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle-en` (`handle-en`),
  KEY `handle-pl` (`handle-pl`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value-en` (`value-en`),
  FULLTEXT KEY `value_formatted-en` (`value_formatted-en`),
  FULLTEXT KEY `value-pl` (`value-pl`),
  FULLTEXT KEY `value_formatted-pl` (`value_formatted-pl`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_9` ***
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`, `handle-en`, `value-en`, `value_formatted-en`, `word_count-en`, `handle-pl`, `value-pl`, `value_formatted-pl`, `word_count-pl`) VALUES (3, 5, 'lekarz-dentysta', 'lekarz dentysta', '<p>lekarz dentysta</p>', 2, 'lekarz-dentysta', 'lekarz dentysta', '<p>lekarz dentysta</p>', 2, 'lekarz-dentysta', 'lekarz dentysta', '<p>lekarz dentysta</p>', 2);

-- *** DATA:`tbl_anti_brute_force` ***

-- *** DATA:`tbl_anti_brute_force_bl` ***

-- *** DATA:`tbl_anti_brute_force_gl` ***

-- *** DATA:`tbl_anti_brute_force_wl` ***

-- *** DATA:`tbl_entries` ***
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (1, 9, 1, 1, '2017-10-02 16:18:33', '2017-10-02 14:18:33', '2017-10-02 16:18:33', '2017-10-02 14:18:33');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (2, 7, 1, 1, '2017-10-02 16:26:58', '2017-10-02 14:26:58', '2017-10-04 15:43:27', '2017-10-04 13:43:27');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (3, 3, 1, 1, '2017-10-02 17:06:43', '2017-10-02 15:06:43', '2017-10-02 17:06:43', '2017-10-02 15:06:43');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (4, 1, 1, 1, '2017-10-02 17:07:47', '2017-10-02 15:07:47', '2017-10-02 17:07:47', '2017-10-02 15:07:47');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (5, 5, 1, 1, '2017-10-02 17:11:39', '2017-10-02 15:11:39', '2017-10-05 15:47:01', '2017-10-05 13:47:01');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (6, 8, 1, 1, '2017-10-03 10:20:10', '2017-10-03 08:20:10', '2017-10-04 13:37:19', '2017-10-04 11:37:19');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (7, 2, 1, 1, '2017-10-03 10:41:09', '2017-10-03 08:41:09', '2017-10-04 15:17:22', '2017-10-04 13:17:22');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (8, 4, 1, 1, '2017-10-03 10:50:10', '2017-10-03 08:50:10', '2017-10-05 15:42:37', '2017-10-05 13:42:37');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (9, 2, 1, 1, '2017-10-04 13:26:42', '2017-10-04 11:26:42', '2017-10-04 13:26:42', '2017-10-04 11:26:42');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (10, 10, 1, 1, '2017-10-04 16:41:57', '2017-10-04 14:41:57', '2017-10-04 16:41:57', '2017-10-04 14:41:57');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (11, 4, 1, 1, '2017-10-05 14:04:41', '2017-10-05 12:04:41', '2017-10-05 15:42:33', '2017-10-05 13:42:33');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (12, 4, 1, 1, '2017-10-05 14:08:52', '2017-10-05 12:08:52', '2017-10-05 15:42:29', '2017-10-05 13:42:29');

-- *** DATA:`tbl_extensions` ***
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (1, 'ajax_checkbox', 'enabled', '1.4.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (2, 'anti_brute_force', 'enabled', '2.0.4');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (3, 'association_field', 'enabled', '2.0.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (4, 'association_output', 'enabled', '1.2.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (5, 'association_ui_editor', 'enabled', '1.1.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (6, 'association_ui_selector', 'enabled', '1.2.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (8, 'cache_management', 'enabled', '1.3.4');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (9, 'datetime', 'enabled', '3.8.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (10, 'debugdevkit', 'enabled', '1.3.4');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (11, 'export_ensemble', 'enabled', '2.2.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (12, 'flang_detection_gtlds', 'enabled', '2.0.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (13, 'frontend_localisation', 'enabled', '2.7.3');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (14, 'html5_doctype', 'enabled', '1.3.5');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (15, 'image_preview', 'enabled', '2.3.3');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (16, 'image_upload', 'enabled', '1.6.6');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (17, 'jit_image_manipulation', 'enabled', '2.0.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (18, 'languages', 'enabled', '1.2.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (19, 'limit_section_entries', 'enabled', '1.2.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (20, 'link_preview', 'enabled', '1.3.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (21, 'maintenance_mode', 'enabled', '1.9.3');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (22, 'markdown', 'enabled', 1.21);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (23, 'multilingual_field', 'enabled', '3.5.12');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (24, 'multiuploadfield', 'enabled', '1.6.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (25, 'order_entries', 'enabled', '2.3.7');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (26, 'page_lhandles', 'enabled', '2.11.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (27, 'profiledevkit', 'enabled', '1.5.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (28, 'save_and_return', 'enabled', '1.8.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (29, 'selectbox_link_field', 'enabled', '2.0.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (30, 'simplemde', 'enabled', '0.4.3');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (31, 'templatedtextformatters', 'enabled', 1.11);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (32, 'textboxfield', 'enabled', '2.7.3');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (33, 'xssfilter', 'enabled', '1.5.0');

-- *** DATA:`tbl_extensions_delegates` ***
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (1, 1, '/backend/', 'InitaliseAdminPageHead', 'appendToHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (2, 2, '/login/', 'AuthorLoginFailure', 'authorLoginFailure');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (3, 2, '/login/', 'AuthorLoginSuccess', 'authorLoginSuccess');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (4, 2, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'addCustomPreferenceFieldsets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (5, 2, '/system/preferences/', 'Save', 'save');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (6, 2, '/backend/', 'AdminPagePreGenerate', 'adminPagePreGenerate');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (7, 2, '/backend/', 'InitialiseAdminPageHead', 'initialiseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (8, 2, '/backend/', 'AppendPageAlert', 'appendPageAlert');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (9, 3, '/backend/', 'InitaliseAdminPageHead', 'appendAssets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (10, 4, '/frontend/', 'DataSourcePreExecute', 'setOutputParameters');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (11, 4, '/frontend/', 'DataSourcePostExecute', 'appendAssociatedEntries');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (12, 4, '/backend/', 'AdminPagePreGenerate', 'buildEditor');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (13, 4, '/blueprints/datasources/', 'DatasourcePreCreate', 'saveDataSource');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (14, 4, '/blueprints/datasources/', 'DatasourcePreEdit', 'saveDataSource');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (15, 5, '/backend/', 'InitaliseAdminPageHead', 'appendAssets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (16, 6, '/backend/', 'InitaliseAdminPageHead', 'appendAssets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (18, 8, '/backend/', 'NavigationPreRender', 'navigationPreRender');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (19, 9, '/system/preferences/', 'AddCustomPreferenceFieldsets', '__addPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (20, 9, '/system/preferences/', 'Save', '__savePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (21, 10, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (22, 10, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (23, 11, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (24, 12, '/extensions/frontend_localisation/', 'FLSavePreferences', 'dFLSavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (25, 13, '/frontend/', 'FrontendInitialised', 'dFrontendInitialised');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (26, 13, '/frontend/', 'FrontendParamsPostResolve', 'dFrontendParamsPostResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (27, 13, '/backend/', 'AdminPagePreBuild', 'dAdminPagePreBuild');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (28, 13, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'dAddCustomPreferenceFieldsets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (29, 13, '/system/preferences/', 'Save', 'dSave');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (30, 14, '/frontend/', 'FrontendOutputPostGenerate', 'parse_html');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (31, 14, '/frontend/', 'FrontendPageResolved', 'setRenderTrigger');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (32, 14, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (33, 15, '/backend/', 'InitaliseAdminPageHead', 'appendJS');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (34, 17, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (35, 17, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (36, 17, '/all/', 'ModifySymphonyLauncher', 'modifySymphonyLauncher');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (37, 18, '/frontend/', 'ManageEXSLFunctions', 'dManageEXSLFunctions');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (38, 19, '/backend/', 'InitaliseAdminPageHead', 'dInitaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (39, 19, '/backend/', 'AppendPageAlert', 'dAppendPageAlert');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (40, 19, '/backend/', 'AdminPagePreGenerate', 'dAdminPagePreGenerate');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (41, 19, '/blueprints/sections/', 'AddSectionElements', 'dAddSectionElements');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (42, 19, '/blueprints/sections/', 'SectionPreCreate', 'dSaveSectionSettings');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (43, 19, '/blueprints/sections/', 'SectionPreEdit', 'dSaveSectionSettings');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (44, 20, '/backend/', 'InitaliseAdminPageHead', 'appendResources');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (45, 21, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (46, 21, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (47, 21, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (48, 21, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (49, 21, '/blueprints/pages/', 'AppendPageContent', '__appendType');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (50, 21, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (51, 21, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (52, 23, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'dAddCustomPreferenceFieldsets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (53, 23, '/system/preferences/', 'Save', 'dSave');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (54, 23, '/extensions/frontend_localisation/', 'FLSavePreferences', 'dFLSavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (55, 25, '/backend/', 'InitialiseAdminPageHead', 'prepareIndex');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (56, 25, '/backend/', 'AdminPagePreGenerate', 'adjustTable');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (57, 25, '/backend/', 'AdminPagePostGenerate', 'resetPagination');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (58, 25, '/frontend/', 'DataSourcePreExecute', 'saveFilterContext');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (59, 26, '/blueprints/pages/', 'AppendPageContent', 'dAppendPageContent');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (60, 26, '/frontend/', 'FrontendPrePageResolve', 'dFrontendPrePageResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (61, 26, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'dAddCustomPreferenceFieldsets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (62, 26, '/system/preferences/', 'CustomActions', 'dCustomActions');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (63, 26, '/extensions/frontend_localisation/', 'FLSavePreferences', 'dFLSavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (64, 26, '/backend/', 'AppendPageAlert', 'dAppendPageAlert');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (65, 26, '/blueprints/datasources/', 'DatasourcePreCreate', 'dDatasourceNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (66, 26, '/blueprints/datasources/', 'DatasourcePreEdit', 'dDatasourceNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (67, 26, '/blueprints/pages/', 'PagePreCreate', 'dPagePre');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (68, 26, '/blueprints/pages/', 'PagePreEdit', 'dPagePre');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (69, 27, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (70, 27, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (71, 28, '/backend/', 'InitaliseAdminPageHead', 'appendJS');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (72, 28, '/backend/', 'AdminPagePreGenerate', 'appendElement');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (73, 28, '/publish/edit/', 'EntryPostEdit', 'entryPostEdit');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (74, 28, '/publish/new/', 'EntryPostCreate', 'entryPostEdit');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (75, 30, '/backend/', 'InitaliseAdminPageHead', 'appendAssets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (76, 33, '/blueprints/events/', 'AppendEventFilterDocumentation', 'appendEventFilterDocumentation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (77, 33, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (78, 33, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (79, 33, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (80, 33, '/frontend/', 'FrontendParamsResolve', 'frontendParamsResolve');

-- *** DATA:`tbl_fields` ***
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (1, 'O nas', 'about-us', 'multilingual_textbox', 1, 'yes', 0, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (2, 'Nazwa', 'name', 'multilingual_textbox', 2, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (3, 'Opis', 'description', 'multilingual_textbox', 2, 'yes', 2, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (4, 'Obraz główny', 'main-image', 'image_upload', 2, 'no', 1, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (5, 'Oferta', 'offer', 'multilingual_textbox', 3, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (6, 'Nazwa', 'name', 'multilingual_textbox', 4, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (7, 'Opis', 'description', 'multilingual_textbox', 4, 'yes', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (8, 'Imię i nazwisko', 'name', 'multilingual_textbox', 5, 'no', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (9, 'Stanowisko', 'position', 'multilingual_textbox', 5, 'yes', 3, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (10, 'Krótki opis', 'lead', 'multilingual_textbox', 5, 'yes', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (11, 'Życiorys', 'biography', 'multilingual_textbox', 5, 'yes', 2, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (12, 'Portret', 'image', 'image_upload', 5, 'yes', 4, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (13, 'Obraz', 'image', 'image_upload', 7, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (14, 'Slogan', 'slogan', 'multilingual_textbox', 7, 'yes', 1, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (15, 'Nr telefonu', 'phone', 'multilingual_textbox', 8, 'no', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (16, 'E-mail', 'e-mail', 'multilingual_textbox', 8, 'no', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (17, 'Ulica i nr budynku', 'street-no', 'multilingual_textbox', 8, 'no', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (18, 'Poniedziałek', 'monday', 'multilingual_textbox', 9, 'no', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (19, 'Wtorek', 'tuesday', 'multilingual_textbox', 9, 'no', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (20, 'Środa', 'wednesday', 'multilingual_textbox', 9, 'no', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (21, 'Czwartek', 'thursday', 'multilingual_textbox', 9, 'no', 3, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (22, 'Piątek', 'friday', 'multilingual_textbox', 9, 'no', 4, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (23, 'Sobota', 'saturday', 'multilingual_textbox', 9, 'no', 5, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (24, 'Niedziela', 'sunday', 'multilingual_textbox', 9, 'no', 6, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (25, 'Image preview settings', 'image-preview', 'image_preview_settings', 7, 'no', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (26, 'Obraz główny', 'main-image', 'image_upload', 4, 'yes', 1, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (27, 'Image preview settings', 'image-preview', 'image_preview_settings', 4, 'no', 4, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (28, 'Order', 'order', 'order_entries', 4, 'no', 5, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (29, 'Image preview settings', 'image-preview-settings', 'image_preview_settings', 2, 'no', 3, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (30, 'Order', 'order', 'order_entries', 2, 'no', 4, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (31, 'Order', 'order', 'order_entries', 5, 'no', 5, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (32, 'Image preview settings', 'image-preview-settings', 'image_preview_settings', 5, 'no', 6, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (33, 'Miniatura', 'cover-image', 'image_upload', 4, 'yes', 3, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (36, 'Order', 'order', 'order_entries', 7, 'no', 3, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (35, 'Kod pocztowy i miasto', 'postal-code', 'multilingual_textbox', 8, 'no', 3, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (37, 'Facebook', 'facebook', 'textbox', 10, 'no', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (38, 'Instagram', 'instagram', 'textbox', 10, 'no', 1, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (39, 'LinkedIn', 'linkedin', 'textbox', 10, 'no', 2, 'main', 'no');

-- *** DATA:`tbl_pages` ***
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`, `plh_t-en`, `plh_h-en`, `plh_t-pl`, `plh_h-pl`) VALUES (1, NULL, 'Home', 'home', NULL, NULL, 'fl_languages,plh_page,navigation,menu_oferta,menu_wyposazenie,kontakt,baner,social_media', NULL, 1, 'Home', 'home', 'Home', 'home');
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`, `plh_t-en`, `plh_h-en`, `plh_t-pl`, `plh_h-pl`) VALUES (2, NULL, 'Oferta', 'oferta', NULL, 'page', 'fl_languages,jit_image_manipulation_recipes,plh_page,navigation,menu_oferta,menu_wyposazenie,bricks_oferta,oferta,kontakt,oferta_tekst,social_media', NULL, 2, 'Offer', 'offer', 'Oferta', 'oferta');
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`, `plh_t-en`, `plh_h-en`, `plh_t-pl`, `plh_h-pl`) VALUES (3, NULL, 'Wyposażenie', 'wyposazenie', NULL, NULL, 'bricks_wyposazenie,fl_languages,jit_image_manipulation_recipes,kontakt,menu_oferta,menu_wyposazenie,navigation,plh_page,wyposazenie,social_media', NULL, 3, 'Equipment', 'equipment', 'Wyposażenie', 'wyposazenie');
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`, `plh_t-en`, `plh_h-en`, `plh_t-pl`, `plh_h-pl`) VALUES (4, NULL, 'Zespół', 'zespol', NULL, 'page', 'fl_languages,jit_image_manipulation_recipes,plh_page,navigation,menu_oferta,menu_wyposazenie,bricks_zespol,zespol,kontakt,social_media', NULL, 4, 'Team', 'team', 'Zespół', 'zespol');
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`, `plh_t-en`, `plh_h-en`, `plh_t-pl`, `plh_h-pl`) VALUES (5, NULL, 'Kontakt', 'kontakt', NULL, NULL, 'fl_languages,jit_image_manipulation_recipes,plh_page,navigation,menu_oferta,menu_wyposazenie,kontakt,godziny_przyjec,social_media', NULL, 5, 'Contact', 'contact', 'Kontakt', 'kontakt');

-- *** DATA:`tbl_pages_types` ***
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (2, 1, 'index');

-- *** DATA:`tbl_sections` ***
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (1, 'O nas', 'o-nas', 4, 'no', 1, 'no', 'Wyposażenie', 1, 1, '2017-09-29 16:30:19', '2017-09-29 14:30:19', '2017-10-05 15:45:31', '2017-10-05 13:45:31');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (2, 'Wyposażenie', 'wyposazenie', 5, 'no', 0, 'no', 'Wyposażenie', 1, 1, '2017-09-29 16:33:17', '2017-09-29 14:33:17', '2017-10-05 15:45:52', '2017-10-05 13:45:52');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (3, 'Oferta tekst', 'offer', 2, 'no', 1, 'no', 'Oferta', 1, 1, '2017-09-29 16:46:26', '2017-09-29 14:46:26', '2017-10-05 15:41:46', '2017-10-05 13:41:46');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (4, 'Oferta', 'oferta', 3, 'no', 0, 'no', 'Oferta', 1, 1, '2017-09-29 16:48:13', '2017-09-29 14:48:13', '2017-10-05 15:54:29', '2017-10-05 13:54:29');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (5, 'Zespół', 'team', 6, 'no', 0, 'no', 'Zespół', 1, 1, '2017-10-02 15:24:49', '2017-10-02 13:24:49', '2017-10-05 15:46:43', '2017-10-05 13:46:43');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (7, 'Baner', 'banner', 1, 'no', 3, 'no', 'Baner', 1, 1, '2017-10-02 15:36:32', '2017-10-02 13:36:32', '2017-10-05 15:39:48', '2017-10-05 13:39:48');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (8, 'Kontakt', 'contact', 7, 'no', 1, 'no', 'Ustawienia', 1, 1, '2017-10-02 15:44:16', '2017-10-02 13:44:16', '2017-10-04 13:35:46', '2017-10-04 11:35:46');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (9, 'Godziny przyjęć', 'working-hours', 8, 'no', 1, 'no', 'Ustawienia', 1, 1, '2017-10-02 16:02:38', '2017-10-02 14:02:38', '2017-10-04 13:37:28', '2017-10-04 11:37:28');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (10, 'Media społecznościowe', 'social-media', 9, 'no', 1, 'no', 'Ustawienia', 1, 1, '2017-10-04 16:03:08', '2017-10-04 14:03:08', '2017-10-04 16:53:58', '2017-10-04 14:53:58');

-- *** DATA:`tbl_sections_association` ***
