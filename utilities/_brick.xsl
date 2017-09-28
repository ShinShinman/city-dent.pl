<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="brick">
		<xsl:param name="lang" select="//fl-languages/current-language/@language" />

		<article class="brick">
			<a href="#">
				<img src="http://via.placeholder.com/350x225" alt=""/>
				<h4>Stomatologia estetyczna</h4>
			</a>
		</article>

	</xsl:template>

	<xsl:template match="brick-image">
		<img src="{$root}/image/post-thumbnail{@path}/{filename}" />
	</xsl:template>

	<xsl:template match="entry/subtitle">
		<h2><xsl:value-of select="." /></h2>
	</xsl:template>

</xsl:stylesheet>
