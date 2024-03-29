<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="brick-equipment">
		<xsl:param name="lang" select="//fl-languages/current-language/@language" />

		<article class="brick">
			<a href="{$root}/{//current-language/@handle}/{//navigation/page[@handle = 'wyposazenie']/item[@lang = //current-language/@handle]/@handle}/{name/@handle}/">
				<img src="{$root}/image/4/301/201{main-image/@path}/{main-image/filename}" srcset="{$root}/image/4/301/201{main-image/@path}/{main-image/filename} 1x, {$root}/image/4/602/402{main-image/@path}/{main-image/filename} 2x, {$root}/image/4/903/603{main-image/@path}/{main-image/filename} 3x" />
				<h4><xsl:value-of select="name/p" /></h4>
			</a>
		</article>

	</xsl:template>

	<xsl:template match="entry/subtitle">
		<h2><xsl:value-of select="." /></h2>
	</xsl:template>

</xsl:stylesheet>
