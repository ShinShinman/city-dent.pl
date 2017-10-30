<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:include href="../utilities/_brick.xsl" />
<xsl:include href="../utilities/_language-button.xsl" />

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
			<xsl:copy-of select="oferta-tekst/entry/offer/node()" />
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
			<xsl:copy-of select="description/node()" />
		</article>
	</section>

</xsl:template>

<xsl:template match="data" mode="page-title">
	<title><xsl:value-of select="concat(plh-page/page/item[@lang = //current-language/@handle], ' • ', $website-name)"/></title>
</xsl:template>

<xsl:template name="lang-button">
	<xsl:param name="lang" />
	<xsl:call-template name="language-button">
		<xsl:with-param name="language" select="//current-language/@handle" />
	</xsl:call-template>
</xsl:template>

<xsl:template match="data" mode="js">
	<xsl:apply-templates select="bricks-oferta/entry[1]" mode="js" />
</xsl:template>

<xsl:template match="bricks-oferta/entry" mode="js">
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
