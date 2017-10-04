<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:include href="../utilities/_brick.xsl" />

<xsl:template match="data">

	<xsl:choose>
		<xsl:when test="$page = ''">
			<xsl:call-template name="offer" />
		</xsl:when>
		<xsl:otherwise>
			<xsl:apply-templates select="oferta/entry" />
		</xsl:otherwise>
	</xsl:choose>

</xsl:template>

<xsl:template name="offer">

	<section class="offer">
		<article>
			<h1><xsl:value-of select="//plh-page/page/item[@lang = //current-language/@handle]" /></h1>
			<xsl:copy-of select="oferta-tekst/entry/offer" />
		</article>
	</section>

	<section class="bricks-container">
		<xsl:apply-templates select="bricks-oferta/entry" />
	</section>

</xsl:template>

<xsl:template match="bricks-oferta/entry">
	<xsl:call-template name="brick" />
</xsl:template>

<xsl:template match="oferta/entry">
	
	<section class="main-image" style="background-image: url('{$workspace}/{main-image/@path}/{main-image/filename}');">
	</section>

	<section class="oferta"> <!-- zmineić klasę -->
		<article>
			<h1><xsl:value-of select="name/p" /></h1>
			<xsl:value-of select="description" />
		</article>
	</section>

</xsl:template>

<xsl:template match="data" mode="page-title">
	<title><xsl:value-of select="concat(plh-page/page/item[@lang = //current-language/@handle], ' • ', $website-name)"/></title>
</xsl:template>

<xsl:template match="data" mode="js">
	<script>
		window.onload = function () {
			var msnry = new Masonry( '.bricks-container', {
				itemSelector: '.brick',
				gutter: 30
			});
		}
	</script>
</xsl:template>

</xsl:stylesheet>
