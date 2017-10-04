<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="brick">
		<xsl:param name="lang" select="//fl-languages/current-language/@language" />

		<article class="brick">
			<a href="{$root}/{//current-language/@handle}/{//plh-page/page/item[@lang = //current-language/@handle]/@handle}/{name/@handle}/">
				<img src="{$workspace}/{cover-image/@path}/{cover-image/filename}" />
				<h4><xsl:value-of select="name/p" /></h4>
			</a>
		</article>

	</xsl:template>

	<xsl:template match="entry/subtitle">
		<h2><xsl:value-of select="." /></h2>
	</xsl:template>

</xsl:stylesheet>
