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
<xsl:include href="../utilities/_brick.xsl" />
<xsl:include href="../utilities/_language-button.xsl" />

<xsl:template match="data">

	<xsl:call-template name="equipment" />

<!--
	<xsl:choose>
		<xsl:when test="$page = ''">
			<xsl:call-template name="equipment" />
		</xsl:when>
		<xsl:otherwise>
			<xsl:apply-templates select="wyposazenie/entry" />
		</xsl:otherwise>
	</xsl:choose>
-->

</xsl:template>

<xsl:template name="equipment">

	<section class="equipment-list">
		<header>
			<h1>Wyposażenie</h1>
		</header>
		
		<xsl:apply-templates select="wyposazenie/entry" />

	</section>
</xsl:template>

<xsl:template match="wyposazenie/entry">
	<article id="{name/@handle}">
		<h2><a href="javascript:void(0);" data-anchor="{name/@handle}"><xsl:value-of select="name/p" /></a></h2>
		<div class="description">
			<xsl:copy-of select="description/node()" />
			<img src="{$root}/image/1/301/0{main-image/@path}/{main-image/filename}" srcset="{$root}/image/1/301/0{main-image/@path}/{main-image/filename} 1x, {$root}/image/1/602/0{main-image/@path}/{main-image/filename} 2x, {$root}/image/1/903/0{main-image/@path}/{main-image/filename} 3x" />
		</div>
	</article>
</xsl:template>

<xsl:template match="data" mode="page-title">
	<title><xsl:value-of select="concat(plh-page/page/item[@lang = //current-language/@handle], ' • ', $website-name)"/></title>
</xsl:template>

<xsl:template match="data" mode="meta-tags">
		<meta name="description" content="Najnowocześniejszy sprzęt stomatologiczny pozwalający na precyzyjne leczenie kanałowe, znieczulenie bezigłowe, RTG zębów, zdjęcia panoramiczne na miejscu, wygodę i komfort pacjenta." />
	</xsl:template>

<xsl:template match="data" mode="js">
	<script>
		window.onload = function () {
			var eqTrigger = $('.equipment-list article a');

			eqTrigger.each(function() {
				$(this).click(function(e) {
					e.preventDefault();
					var anchor = $(this).data('anchor');
					$('article#' + anchor).find('.description').slideToggle();
					history.pushState('', '', '#' + anchor);
				})
			})

			var hash = window.location.hash;
			if (hash != '') {
				$(hash).find('.description').slideDown();
			}

		}
	</script>
</xsl:template>

<xsl:template name="lang-button">
	<xsl:param name="lang" />
	<xsl:call-template name="language-button">
		<xsl:with-param name="language" select="//current-language/@handle" />
	</xsl:call-template>
</xsl:template>

</xsl:stylesheet>