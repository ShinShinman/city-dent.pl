<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE xsl:stylesheet [
	<!ENTITY nbsp "&#x00A0;">
	<!ENTITY copy   "&#169;">
	<!ENTITY ndash "&#8211;">
	<!ENTITY thinsp "&#8201;">
	<!ENTITY amp "&#038;">
	<!ENTITY hellip "&#8230;">
	<!ENTITY bull "&#8226;">
	<!ENTITY lsaqua "&#8249;">
	<!ENTITY rsaqua "&#8250;">
	<!ENTITY larr "&#8592;">
	<!ENTITY rarr "&#8594;">
	<!ENTITY lsaquo "&#8249;">
	<!ENTITY rsaquo "&#8250;">
	<!ENTITY percent "&#37;">
	<!ENTITY gt "&#37;">
]>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

	<xsl:include href="_main-menu.xsl" />
	<xsl:include href="_nav.xsl" />
	<xsl:include href="_footer.xsl" />

	<xsl:template match="/">
		<html class="no-js" lang="{//current-language/@handle}">
			<head>

				<meta charset="utf-8"/>
				<meta http-equiv="x-ua-compatible" content="ie=edge" />

				<xsl:apply-templates mode="page-title" />

				<meta name="description" content="" /> <!-- to chyba do mata-tags -->
				<meta name="viewport" content="width=device-width, initial-scale=1" />

				<xsl:apply-templates mode="meta-tags" />
				<xsl:apply-templates mode="og-tags" />

				<link rel="manifest" href="site.webmanifest" /> <!-- co to jest...? -->

				<xsl:call-template name="favicon" />

				<link rel="stylesheet" href="{$workspace}/css/main.min.css?v=1.0.5" />
			</head>

			<body class="">
				<!--[if lt IE 7]>
					<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
				<![endif]-->

				<xsl:call-template name="sticky-nav" />
				<xsl:call-template name="main-menu" />

				<xsl:apply-templates />

				<xsl:call-template name="footer">
					<!--<xsl:with-param name="lang" select="//current-language/@handle" />-->
				</xsl:call-template>

				<script src="{$workspace}/js/main.min.js?v=1.0.5" ></script>
				<script>
					$(function() {

						var menuTrigger = $('.menu-trigger a');
						var mainMenu = $('.main-menu');
						var mainMenuExtended = false;
						var pageArea = $('body');
						var bodyLinks = $('section:not(.main-menu) a');
						var menuLinks = $('section.main-menu a');

						function mainMenuToggle() {
							if (mainMenuExtended) {
								mainMenuExtended = false;
								menuTrigger.text('&#x4d;');
								mainMenu.fadeOut();
								pageArea.off('click');
								bodyLinks.css('pointer-events', 'auto');
							} else {
								mainMenuExtended = true;
								bodyLinks.css('pointer-events', 'none');
								menuTrigger.text('&#x58;');
								mainMenu.fadeIn(function() {
									pageArea.click(function(e) {
										if(!$(e.target).parents().hasClass('main-menu')) {
											mainMenuExtended = false;
											menuTrigger.text('&#x4d;');
											mainMenu.fadeOut();
											pageArea.off('click');
											bodyLinks.css('pointer-events', 'auto');
										};
									});
								});
							}

						}

						menuLinks.click(function(e) {
							mainMenuToggle();
						});

						menuTrigger.click(function(e) {
							e.preventDefault();
							mainMenuToggle();
						})

					})
				</script>
				<xsl:apply-templates mode="js"/>

			</body>
		</html>

</xsl:template>

<xsl:template match="data" mode="page-title">
	<title><xsl:value-of select="$website-name"/></title>
</xsl:template>

<xsl:template match="data" mode="meta-tags" />

<xsl:template match="data" mode="og-tags" />

<!--
<xsl:template match="data" mode="og-tags">
	<meta property="og:url" content="{$current-url}" />
	<meta property="og:type" content="article" />
	<meta property="og:title" content="City-Dent" />
	<meta property="og:description" content="Gabinet stomatologiczny Wrocław, ul. Zaporoska 39a zaprasza. Leczenie kanałowe, implanty zębowe, piaskowanie zębów, endodoncja, stomatolog dziecięcy, wybielanie zębów, stomatologia estetyczna, protetyka, chirurgia stomatologiczna, licówki, protezy." />
	<meta property="og:image" content="{$workspace}/images/logo.png" />
</xsl:template>
-->

<xsl:template name="favicon">
	<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png" />
	<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png" />
	<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png" />
	<link rel="manifest" href="/manifest.json" />
	<link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5" />
	<meta name="theme-color" content="#ffffff" />
</xsl:template>

<xsl:template name="language-button">
	<xsl:param name="lang" />
	<xsl:choose>
		<xsl:when test="$lang = 'pl'">
			<a href="{$root}/en/" class="icon">E</a>
		</xsl:when>
		<xsl:otherwise>
			<a href="{$root}/pl/" class="icon">P</a>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template match="data" mode="js" />

</xsl:stylesheet>
