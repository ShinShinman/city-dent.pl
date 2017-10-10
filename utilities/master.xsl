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

<!--
	<xsl:include href="_brick.xsl" />
	<xsl:include href="_date-time.xsl" />
-->

	<xsl:template match="/">
		<html class="no-js" lang="{//current-language/@handle}">
			<head>

				<meta charset="utf-8"/>
				<meta http-equiv="x-ua-compatible" content="ie=edge" />

				<xsl:apply-templates mode="page-title" />
				
				<meta name="description" content="" /> <!-- to chyba do mata-tags -->
				<meta name="viewport" content="width=device-width, initial-scale=1" />

				<xsl:apply-templates mode="meta-tags" />

				<link rel="manifest" href="site.webmanifest" /> <!-- co to jest...? -->
				<!--
				<xsl:call-template name="favicon" />
				<link rel="apple-touch-icon" href="icon.png"> -->
				<!-- Place favicon.ico in the root directory -->

				<!--<link rel="stylesheet" href="css/normalize.css" /> jest w main.min.css -->
				<link rel="stylesheet" href="{$workspace}/css/main.min.css?v=0.0.2" />
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

				<script src="{$workspace}/js/main.min.js" ></script>
				<script>
					$(function() {

						var menuTrigger = $('.menu-trigger a');
						var mainMenu = $('.main-menu');
						var mainMenuExtended = false;

						function mainMenuToggle() {
							if (mainMenuExtended) {
								mainMenuExtended = false;
								menuTrigger.text('&#x4d;');
								mainMenu.fadeOut();
								$('body').off('click');
							} else {
								mainMenuExtended = true;
								menuTrigger.text('&#x58;');
								mainMenu.fadeIn(function() {
									$('body').click(function(e) {
										if(!$(e.target).parents().hasClass('main-menu') <xsl:text disable-output-escaping="yes">&amp;&amp;</xsl:text> mainMenuExtended) {
											mainMenuExtended = false;
											menuTrigger.text('&#x4d;');
											mainMenu.fadeOut();
											$('body').off('click');
										};
									});
								});
							}
							
						}

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

<xsl:template match="data" mode="meta-tags">
</xsl:template>

<xsl:template match="data" mode="page-title">
	<title><xsl:value-of select="$website-name"/></title>
</xsl:template>

<xsl:template name="favicon">
	<link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-57x57.png?v=lkkJEWPqK3" />
	<link rel="apple-touch-icon" sizes="60x60" href="/apple-touch-icon-60x60.png?v=lkkJEWPqK3" />
	<link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-72x72.png?v=lkkJEWPqK3" />
	<link rel="apple-touch-icon" sizes="76x76" href="/apple-touch-icon-76x76.png?v=lkkJEWPqK3" />
	<link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114x114.png?v=lkkJEWPqK3" />
	<link rel="apple-touch-icon" sizes="120x120" href="/apple-touch-icon-120x120.png?v=lkkJEWPqK3" />
	<link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144x144.png?v=lkkJEWPqK3" />
	<link rel="apple-touch-icon" sizes="152x152" href="/apple-touch-icon-152x152.png?v=lkkJEWPqK3" />
	<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon-180x180.png?v=lkkJEWPqK3" />
	<link rel="icon" type="image/png" href="/favicon-32x32.png?v=lkkJEWPqK3" sizes="32x32" />
	<link rel="icon" type="image/png" href="/favicon-194x194.png?v=lkkJEWPqK3" sizes="194x194" />
	<link rel="icon" type="image/png" href="/favicon-96x96.png?v=lkkJEWPqK3" sizes="96x96" />
	<link rel="icon" type="image/png" href="/android-chrome-192x192.png?v=lkkJEWPqK3" sizes="192x192" />
	<link rel="icon" type="image/png" href="/favicon-16x16.png?v=lkkJEWPqK3" sizes="16x16" />
	<link rel="manifest" href="/manifest.json?v=lkkJEWPqK3" />
	<link rel="mask-icon" href="/safari-pinned-tab.svg?v=lkkJEWPqK3" color="#000000" />
	<link rel="shortcut icon" href="/favicon.ico?v=lkkJEWPqK3" />
	<meta name="msapplication-TileColor" content="#da532c" />
	<meta name="msapplication-TileImage" content="/mstile-144x144.png?v=lkkJEWPqK3" />
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