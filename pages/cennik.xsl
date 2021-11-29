<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:import href="../utilities/master.xsl"/>
	<xsl:include href="../utilities/_language-button.xsl" />

	<xsl:template match="data">
		<section class="price-list">
			<article>
				<h1><xsl:value-of select="params/page-title"/></h1>
				<xsl:copy-of select="cennik-opis/entry/opis-cennika/node()" />
			</article>
		</section>
	</xsl:template>

</xsl:stylesheet>
