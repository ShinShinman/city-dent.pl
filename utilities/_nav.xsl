<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="sticky-nav">
		<section class="nav">
			<nav class="main">
				<div class="logo">
					<a href="{$root}/">City Dent</a>
				</div>
				<ul class="contact">
						<li><span class="icon">t </span><xsl:value-of select="//kontakt/entry/phone" /></li>
						<li><a href="mailto:kontakt@city-dent.pl"><span class="icon">&#xe802; </span><xsl:value-of select="//kontakt/entry/e-mail" /></a></li>
				</ul>
				<div class="lang-btn">
					<a>
						<xsl:call-template name="lang-button">
							<xsl:with-param name="lang" select="//current-language/@handle" />
						</xsl:call-template>
					</a>
				</div>
				<!-- <div class="menu-trigger"><a href="#" class="icon">&#x4d;</a></div> -->
				<div class="menu-trigger">
					<!-- <a href="#"> -->
						<span class="line"></span>
						<span class="line"></span>
						<span class="line"></span>
					<!-- </a> -->
				</div>
			</nav>
		</section>
	</xsl:template>

	<xsl:template name="lang-button" />

</xsl:stylesheet>
