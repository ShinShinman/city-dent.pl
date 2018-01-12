<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="language-button">
		<xsl:param name="language" />
		<xsl:param name="mode" />

		<xsl:choose>
			<xsl:when test="$language = 'pl'">
				<a href="{$root}/{//supported-languages/item[@handle != $language]/@handle}/{//plh-page/page/item[@lang != $language]/@handle}/{//*[@handle-pl = //params/page]/@handle-en}">EN</a>
			</xsl:when>
			<xsl:otherwise>
				<a href="{$root}/{//supported-languages/item[@handle != $language]/@handle}/{//plh-page/page/item[@lang != $language]/@handle}/{//*[@handle-en = //params/page]/@handle-pl}">PL</a>
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>

</xsl:stylesheet>