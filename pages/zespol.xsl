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

<xsl:include href="../utilities/master.xsl" />

<xsl:template match="data">

	<xsl:choose>
		<xsl:when test="$page = ''">
			<xsl:call-template name="team" />
		</xsl:when>
		<xsl:otherwise>
			<xsl:call-template name="sub-page" />
		</xsl:otherwise>
	</xsl:choose>

</xsl:template>

<xsl:template name="team">

	<section class="zespol">
		<article>
			<h1>Zespół</h1>
		</article>
	</section>

	<section class="team-container">
		<div class="team">
			<a href="#">
				<header>
					<div class="avatar">
						<img src="{$workspace}/images/piotrek.png" alt="Piotrek" />
					</div>
					<h2>Piotr Ptak</h2>
					<h6>lekarz dentysta</h6>
				</header>
				<article>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero perferendis adipisci omnis et ab voluptatum similique optio doloribus quas labore voluptatem inventore odit assumenda, odio incidunt non eum est magnam.</p>
				</article>
			</a>
		</div>
		<div class="team">
			<a href="#">
				<header>
					<div class="avatar">
						<img src="{$workspace}/images/sylwia.png" alt="Sylwia" />
					</div>
					<h2>Sylwia Sylwia</h2>
					<h6>lekarz dentysta</h6>
				</header>
				<article>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero perferendis adipisci omnis et ab voluptatum similique optio doloribus quas labore voluptatem inventore odit assumenda, odio incidunt non eum est magnam.</p>
				</article>
			</a>
		</div>
		<div class="team">
			<a href="#">
				<header>
					<div class="avatar">
						<img src="{$workspace}/images/piotrek.png" alt="Piotrek" />
					</div>
					<h2>Piotr Ptak</h2>
					<h6>lekarz dentysta</h6>
				</header>
				<article>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero perferendis adipisci omnis et ab voluptatum similique optio doloribus quas labore voluptatem inventore odit assumenda, odio incidunt non eum est magnam.</p>
				</article>
			</a>
		</div>
	</section>

</xsl:template>

<xsl:template name="sub-page">
	
	<section class="zespol"> <!-- zmineić klasę -->
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
			var msnry = new Masonry( '.team-container', {
				itemSelector: '.team',
				gutter: 30
			});
		}
	</script>
</xsl:template>

</xsl:stylesheet>