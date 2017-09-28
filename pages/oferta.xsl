<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:include href="../utilities/_brick.xsl" />

<xsl:template match="data">
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

</xsl:stylesheet>
