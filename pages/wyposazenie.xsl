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
<xsl:include href="../utilities/_brick.xsl" />

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

	<section class="wyposazenie">
		<article>
			<h1>O nas</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

			<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. </p>
		</article>
	</section>

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
			<img src="{$workspace}/{main-image/@path}/{main-image/filename}" />
		</div>
	</article>
</xsl:template>

<xsl:template match="data" mode="page-title">
	<title><xsl:value-of select="concat(plh-page/page/item[@lang = //current-language/@handle], ' • ', $website-name)"/></title>
</xsl:template>

<xsl:template match="data" mode="js">
	<script>
		window.onload = function () {
			var eqTrigger = $('.equipment-list article a');
			eqTrigger.each(function() {
				$(this).click(function(e) {
					e.preventDefault();
					//window.location.hash = $(this).data('anchor');
					$('article#' + $(this).data('anchor')).find('.description').slideToggle();
				})
			})
		}
	</script>
</xsl:template>

</xsl:stylesheet>