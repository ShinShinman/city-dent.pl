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

<xsl:import href="../utilities/master.xsl" />
<xsl:include href="../utilities/_language-button.xsl" />

<xsl:template match="data">

	<xsl:choose>
		<xsl:when test="$page = ''">
			<xsl:call-template name="team" />
		</xsl:when>
		<xsl:otherwise>
			<xsl:apply-templates select="zespol/entry" />
		</xsl:otherwise>
	</xsl:choose>

</xsl:template>

<xsl:template name="team">

	<section class="about-us">
		<xsl:apply-templates select="o-nas/entry" />
	</section>

	<section class="zespol">
		<article>
			<div id="zespol" />
			<h1><xsl:value-of select="navigation/page[@handle = 'zespol']/item[@lang = //current-language/@handle]" /></h1>
		</article>
	</section>

	<section class="team-container">
		<xsl:apply-templates select="bricks-zespol/entry" />
	</section>

</xsl:template>

<xsl:template match="o-nas/entry">
	<article>
		<h1><xsl:value-of select="$about-us" /></h1>
		<xsl:copy-of select="about-us" />
	</article>
</xsl:template>

<xsl:template match="bricks-zespol/entry">
	<article class="team">
		<a href="{$root}/{//current-language/@handle}/{//plh-page/page/item[@lang = //current-language/@handle]/@handle}/{name/@handle}/">
			<header>
				<div class="avatar">
					<img src="{$root}/image/4/0/219{image/@path}/{image/filename}" alt="" srcset="{$root}/image/4/0/219{image/@path}/{image/filename} 1x, {$root}/image/4/0/438{image/@path}/{image/filename} 2x, {$root}/image/4/0/657{image/@path}/{image/filename} 3x" />
				</div>
				<h2><xsl:value-of select="name/p" /></h2>
				<h6><xsl:value-of select="position/p" /></h6>
			</header>
			<xsl:copy-of select="lead/node()" />
		</a>
	</article>
</xsl:template>

<xsl:template match="zespol/entry">

	<section class="team-single-view"> <!-- zmineić klasę -->
		<article>
			<img src="{$root}/image/4/0/219{image/@path}/{image/filename}" alt="" srcset="{$root}/image/4/0/219{image/@path}/{image/filename} 1x, {$root}/image/4/0/438{image/@path}/{image/filename} 2x, {$root}/image/4/0/657{image/@path}/{image/filename} 3x" />
			<h2><xsl:value-of select="name/p" /></h2>
			<h6><xsl:value-of select="position/p" /></h6>
			<xsl:copy-of select="biography/node()" />
		</article>
	</section>

</xsl:template>

<xsl:template match="data" mode="page-title">
	<title><xsl:value-of select="concat(plh-page/page/item[@lang = //current-language/@handle], ' • ', $website-name)"/></title>
</xsl:template>

<xsl:template name="lang-button">
	<xsl:call-template name="language-button">
		<xsl:with-param name="language" select="//current-language/@handle" />
	</xsl:call-template>
</xsl:template>

	<xsl:template match="data" mode="meta-tags">
		<title><xsl:value-of select="concat(plh-page/page/item[@lang = //current-language/@handle], ' • ', $website-name)"/></title>
		<meta name="description" content="Piotr Ptak, stomatolog, Wrocław. Znany lekarz z pasją i powołaniem, stale rozwijający swój gabinet." />
	</xsl:template>

	<xsl:template match="data" mode="og-tags">
		<xsl:apply-templates select="//bricks-zespol/entry[1]" mode="og-tags" />
		<xsl:apply-templates select="//zespol/entry[1]" mode="og-tags" />
	</xsl:template>

	<xsl:template match="bricks-zespol/entry" mode="og-tags">
		<meta property="og:url" content="{$current-url}" />
		<meta property="og:type" content="article" />
		<meta property="og:title" content="City-Dent • O nas" />
		<meta property="og:description" content="Piotr Ptak, stomatolog, Wrocław. Znany lekarz z pasją i powołaniem, stale rozwijający swój gabinet." />
		<meta property="og:image" content="{$workspace}/images/logo.png" />
	</xsl:template>

	<xsl:template match="zespol/entry" mode="og-tags">
		<meta property="og:url" content="{$current-url}" />
		<meta property="og:type" content="article" />
		<meta property="og:title" content="City-Dent • Zespół" />
		<meta property="og:description" content="{name/p}" />
		<meta property="og:image" content="{$workspace}/{image/@path}/{image/filename}" />
	</xsl:template>

</xsl:stylesheet>
