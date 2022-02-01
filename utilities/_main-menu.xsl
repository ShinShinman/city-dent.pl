<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="main-menu">


		<section class="main-menu">
			<header>
				<h1>Menu</h1>
				<xsl:call-template name="breadcrumbs" />
			</header>

			<div class="navnav">
				<ul>
					<li class="label"><a href="{$root}/{//current-language/@handle}/{//navigation/page[@handle = 'oferta']/item[@lang = //current-language/@handle]/@handle}/"><xsl:value-of select="//navigation/page[@handle = 'oferta']/item[@lang = //current-language/@handle]" /></a></li>
					<xsl:apply-templates select="//menu-oferta/entry" />
				</ul>
				<ul class="equipment">
					<li class="label"><a href="{$root}/{//current-language/@handle}/{//navigation/page[@handle = 'wyposazenie']/item[@lang = //current-language/@handle]/@handle}/"><xsl:value-of select="//navigation/page[@handle = 'wyposazenie']/item[@lang = //current-language/@handle]" /></a></li>
					<xsl:apply-templates select="//menu-wyposazenie/entry" />
				</ul>
				<ul>
					<li class="label"><a href="{$root}/{//current-language/@handle}/{//navigation/page[@handle = 'zespol']/item[@lang = //current-language/@handle]/@handle}/"><xsl:value-of select="$about-us" /></a></li>
					<li class="label"><a href="{$root}/{//current-language/@handle}/{//navigation/page[@handle = 'zespol']/item[@lang = //current-language/@handle]/@handle}/#zespol"><xsl:value-of select="//navigation/page[@handle = 'zespol']/item[@lang = //current-language/@handle]" /></a></li>
					<li class="label"><a href="{$workspace}/{//price-list/@path}/{//price-list/filename}" target="_blank"><xsl:value-of select="$price-list" /></a></li>
					<li class="label"><a href="{$root}/{//current-language/@handle}/{//navigation/page[@handle = 'kontakt']/item[@lang = //current-language/@handle]/@handle}/"><xsl:value-of select="//navigation/page[@handle = 'kontakt']/item[@lang = //current-language/@handle]" /></a></li>
				</ul>
			</div>
		</section>

	</xsl:template>

	<xsl:template name="breadcrumbs">
		<xsl:choose>
			<xsl:when test="//params/page != ''">
				<nav class="breadcrumbs">
					<a href="{$root}">Home</a> / <a href="{$root}/{//current-language/@handle}/{//plh-page/page/item[@lang = //current-language/@handle]/@handle}/"><xsl:value-of select="//plh-page/page/item[@lang = //current-language/@handle]" /></a><xsl:apply-templates select="//menu-oferta/entry/name[@handle = $page]" /><xsl:apply-templates select="//menu-wyposazenie/entry/name[@handle = $page]" /><xsl:apply-templates select="//zespol/entry/name[@handle = $page]" /> / Menu
				</nav>
			</xsl:when>
			<xsl:otherwise>
				<nav class="breadcrumbs">
					<xsl:if test="count(//page-types/item) = 0">
						<a href="{$root}">Home</a> /
					</xsl:if>
					<a href="{$root}/{//current-language/@handle}/{//plh-page/page/item[@lang = //current-language/@handle]/@handle}/"><xsl:value-of select="//plh-page/page/item[@lang = //current-language/@handle]" /></a> / Menu
				</nav>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="menu-oferta/entry/name">
		<xsl:text> / </xsl:text>
		<a href=""><xsl:value-of select="." /></a>
	</xsl:template>

	<xsl:template match="menu-wyposazenie/entry/name">
		<xsl:text> / </xsl:text>
		<a href=""><xsl:value-of select="." /></a>
	</xsl:template>

	<xsl:template match="zespol/entry/name">
		<xsl:text> / </xsl:text>
		<a href=""><xsl:value-of select="." /></a>
	</xsl:template>

	<xsl:template match="menu-oferta/entry">
		<li><a href="{$root}/{//current-language/@handle}/{//navigation/page[@handle = 'oferta']/item[@lang = //current-language/@handle]/@handle}/{name/@handle}/"><xsl:value-of select="name/p" /></a></li>
	</xsl:template>

	<xsl:template match="menu-wyposazenie/entry">
		<li><a href="{$root}/{//current-language/@handle}/{//navigation/page[@handle = 'wyposazenie']/item[@lang = //current-language/@handle]/@handle}/#{name/@handle}"><xsl:value-of select="name/p" /></a></li>
	</xsl:template>


</xsl:stylesheet>
