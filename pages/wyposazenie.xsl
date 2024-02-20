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
<xsl:include href="../utilities/_brick-equipment.xsl" />
<xsl:include href="../utilities/_language-button.xsl" />

<xsl:template match="data">
	<xsl:choose>
		<xsl:when test="$page = ''">
			<xsl:call-template name="equipment" />
		</xsl:when>
		<xsl:otherwise>
			<xsl:apply-templates select="wyposazenie/entry" />
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="equipment">
	<section class="equipment-list">
		<article>
			<h1>Wyposażenie</h1>
		</article>
	</section>
	<section class="bricks-container">
		<xsl:apply-templates select="bricks-wyposazenie/entry" />
	</section>
</xsl:template>

<xsl:template match="bricks-wyposazenie/entry">
	<xsl:call-template name="brick-equipment" />
</xsl:template>

<xsl:template match="wyposazenie/entry">
	<section class="equipment-page">
		<article>
			<h1><xsl:value-of select="name/p" /></h1>
			<xsl:copy-of select="description/node()" />
			<xsl:apply-templates select="main-image" />
		</article>
	</section>
</xsl:template>

<xsl:template match="main-image">
	<img src="{$root}/image/1/467/0{@path}/{filename}" alt="" srcset="{$root}/image/1/467/0{@path}/{filename} 1x, {$root}/image/1/934/0{@path}/{filename} 2x, {$root}/image/1/1401/0{@path}/{filename} 3x" />
</xsl:template>

<xsl:template match="data" mode="meta-tags">
	<xsl:choose>
		<xsl:when test="$page = ''">
			<title>Gabinet stomatologiczny City Dent</title>
			<meta name="description" content="Najnowocześniejszy sprzęt stomatologiczny pozwalający na precyzyjne leczenie kanałowe, znieczulenie bezigłowe, RTG zębów, zdjęcia panoramiczne na miejscu, wygodę i komfort pacjenta." />
		</xsl:when>
		<xsl:when test="$current-page-id = '3'">
			<title>Tomografia zębów Wrocław  | Gabinet stomatologiczny City Dent</title>
			<meta name="description" content="Tomografia zębów - w tym zdjęcie 360 stopni. Gabinet we Wrocławiu. Dbamy o estetykę, leczymy z sercem!" />
		</xsl:when>
	</xsl:choose>
</xsl:template>

<xsl:template match="data" mode="og-tags">
	<meta property="og:url" content="{$current-url}" />
	<meta property="og:type" content="article" />
	<meta property="og:title" content="City-Dent • Wyposażenie" />
	<meta property="og:description" content="Najnowocześniejszy sprzęt stomatologiczny pozwalający na precyzyjne leczenie kanałowe, znieczulenie bezigłowe, RTG zębów, zdjęcia panoramiczne na miejscu, wygodę i komfort pacjenta." />
	<xsl:apply-templates select="wyposazenie/entry/main-image" mode="og-image" />
</xsl:template>

<xsl:template match="wyposazenie/entry/main-image" mode="og-image">
	<meta property="og:image" content="{$workspace}/{@path}/{filename}" />
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

<xsl:template name="lang-button">
	<xsl:param name="lang" />
	<xsl:call-template name="language-button">
		<xsl:with-param name="language" select="//current-language/@handle" />
	</xsl:call-template>
</xsl:template>

</xsl:stylesheet>
