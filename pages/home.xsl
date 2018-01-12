<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE xsl:stylesheet [
	<!ENTITY nbsp "&#x00A0;">
	<!ENTITY copy   "&#169;">
	<!ENTITY ndash "&#8211;">
	<!ENTITY thinsp "&#8201;">
	<!ENTITY amp "&#038;">
	<!ENTITY hellip "&#8230;">
	<!ENTITY bull "&#8226;">
	<!ENTITY lsaqua "&#8249;">
	<!ENTITY rsaqua "&#8250;">
	<!ENTITY larr "&#8592;">
	<!ENTITY rarr "&#8594;">
	<!ENTITY lsaquo "&#8249;">
	<!ENTITY rsaquo "&#8250;">
	<!ENTITY percent "&#37;">
	<!ENTITY gt "&#37;">
]>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl" />

<xsl:template match="data">
	
	<section class="owl-carousel">
		<xsl:apply-templates select="baner/entry" />
	</section>

<!--
	<xsl:apply-templates select="highlight/entry" />

	<xsl:apply-templates select="info-banner/entry" />	

	<xsl:call-template name="news" />
-->

</xsl:template>

<xsl:template match="baner/entry">
	<div class="banner" style="background-image: url('{$workspace}/{image/@path}/{image/filename}');">
		<div class="slogan-box">
			<xsl:copy-of select="slogan/node()" />
		</div>
	</div>
</xsl:template>

<xsl:template match="data" mode="js">
	<script>
		$(document).ready(function(){
			$('.owl-carousel').owlCarousel({
				loop: true,
				items: 1,
				dots: false,
				smartSpeed: 1000,
				autoplay: true,
				autoplayTimeout: 7000,
				smartSpeed: 800
			})
		});

	</script>
</xsl:template>

<xsl:template name="lang-button">
		<xsl:param name="lang" />
		<xsl:choose>
			<xsl:when test="$lang = 'pl'">
				<a href="{$root}/en/">EN</a>
			</xsl:when>
			<xsl:otherwise>
				<a href="{$root}/pl/">PL</a>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="data" mode="meta-tags">
		<meta name="description" content="Gabinet stomatologiczny Wrocław, ul. Zaporoska 39a zaprasza. Leczenie kanałowe, implanty zębowe, piaskowanie zębów, endodoncja, stomatolog dziecięcy, wybielanie zębów, stomatologia estetyczna, protetyka, chirurgia stomatologiczna, licówki, protezy." />
	</xsl:template>

</xsl:stylesheet>
