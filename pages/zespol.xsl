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
			<a href="" id="zespol"></a>
			<h1>Zespół</h1>
		</article>
	</section>

	<section class="team-container">
		<xsl:apply-templates select="bricks-zespol/entry" />
	</section>

</xsl:template>

<xsl:template match="o-nas/entry">
	<article>
		<h1><xsl:value-of select="../section" /></h1>
		<xsl:copy-of select="about-us" />
	</article>
</xsl:template>

<xsl:template match="bricks-zespol/entry">
	<article class="team">
		<a href="{$root}/{//current-language/@handle}/{//plh-page/page/item[@lang = //current-language/@handle]/@handle}/{name/@handle}/">
			<header>
				<div class="avatar">
					<img src="{$workspace}/{image/@path}/{image/filename}" alt="Piotrek" />
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
			<img src="{$workspace}/{image/@path}/{image/filename}" alt="" />
			<h2><xsl:value-of select="name/p" /></h2>
			<h6><xsl:value-of select="position/p" /></h6>
			<xsl:copy-of select="biography/node()" />
		</article>
	</section>

</xsl:template>

<xsl:template match="data" mode="page-title">
	<title><xsl:value-of select="concat(plh-page/page/item[@lang = //current-language/@handle], ' • ', $website-name)"/></title>
</xsl:template>

<xsl:template match="data" mode="js">
	<xsl:apply-templates select="bricks-zespol/entry[1]" mode="js" />
</xsl:template>

<xsl:template match="bricks-zespol/entry" mode="js">
	<script>
		window.onload = function () {
			var msnry = new Masonry( '.team-container', {
				itemSelector: '.team',
				gutter: 30
			});
		}
	</script>
</xsl:template>

<xsl:template name="lang-button">
	<xsl:param name="lang" />
	<xsl:call-template name="language-button">
		<xsl:with-param name="language" select="//current-language/@handle" />
	</xsl:call-template>
</xsl:template>

</xsl:stylesheet>