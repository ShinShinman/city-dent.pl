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
			<xsl:call-template name="sub-page" />
		</xsl:otherwise>
	</xsl:choose>

</xsl:template>

<xsl:template name="offer">

	<section class="oferta">
		<article>
			<h1>Oferta</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi libero accusamus, culpa animi non soluta consectetur nemo voluptatibus eius aut provident dolorem, omnis velit accusantium pariatur saepe ipsam a optio. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi libero accusamus, culpa animi non soluta consectetur nemo voluptatibus eius aut provident dolorem, omnis velit accusantium pariatur saepe ipsam a optio. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi libero accusamus, culpa animi non soluta consectetur nemo voluptatibus eius aut provident dolorem, omnis velit accusantium pariatur saepe ipsam a optio.</p>
		</article>
	</section>

	<section class="bricks-container">
		<xsl:call-template name="brick" />
		<xsl:call-template name="brick" />
		<xsl:call-template name="brick" />
	</section>

</xsl:template>

<xsl:template name="sub-page">
	
	<section class="oferta"> <!-- zmineić klasę -->
		<article>
			<h1>Subpage</h1>
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
