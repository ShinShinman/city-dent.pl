<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:import href="../utilities/master.xsl"/>
	<xsl:include href="../utilities/_language-button.xsl" />

	<xsl:template match="data">
		<section class="price-list">
			<nav class="pricelist-nav">
				<ul class="cennik-submenu">
					<li><a href="#ogolne">Ogólne</a></li>
					<li><a href="#stomatologia-zachowawcza">Stomatologia zachowawcza</a></li>
					<li><a href="#endodoncja">Endodoncja</a></li>
					<li><a href="#chirurgia">Chirurgia</a></li>
					<li><a href="#protetyka">Protetyka</a></li>
					<li><a href="#stomatologia-dziecieca">Stomatologia dziecięca</a></li>
				</ul>

			</nav>
			<article>
				<h1><xsl:value-of select="plh-page/page/item[@lang = //current-language/@handle]"/></h1>
				<!-- <xsl:copy-of select="cennik-opis/entry/opis-cennika/node()" /> -->

				<div class="pricelist-header-wrapper">
					<h2 id="ogolne">Ogólne<span>↓</span></h2>
				</div>
					<ul class="ogolne-price-list">
					<xsl:apply-templates select="cennik-ogolne/entry" mode="price-list" />
				</ul>

				<div class="pricelist-header-wrapper">
					<h2 id="stomatologia-zachowawcza">Stomatologia zachowawcza<span>↓</span></h2>
				</div>
				<ul class="stomatologia-zachowawcza-price-list">
					<xsl:apply-templates select="cennik-stomatologia-zachowawcza/entry" mode="price-list" />
				</ul>

				<div class="pricelist-header-wrapper">
					<h2 id="endodoncja">Endodoncja<span>↓</span></h2>
				</div>
				<!-- <p class="cathegory-info"><xsl:copy-of select="cennik-endodoncja-opis/entry/endodoncja-opis/p/node()" /></p> -->
				<ul class="endodoncja-price-list">
					<xsl:apply-templates select="cennik-endodoncja-opis/entry" />
					<xsl:apply-templates select="cennik-endodoncja/entry" mode="price-list" />
				</ul>

				<div class="pricelist-header-wrapper">
					<h2 id="chirurgia">Chirurgia<span>↓</span></h2>
				</div>
				<ul class="chirurgia-price-list">
					<xsl:apply-templates select="cennik-chirurgia/entry" mode="price-list" />
				</ul>

				<div class="pricelist-header-wrapper">
					<h2 id="protetyka">Protetyka<span>↓</span></h2>
				</div>
				<ul class="protetyka-price-list">
					<xsl:apply-templates select="cennik-protetyka/entry" mode="price-list" />
				</ul>

				<div class="pricelist-header-wrapper">
					<h2 id="stomatologia-dziecieca">Stomatologia dziecięca<span>↓</span></h2>
				</div>
				<ul class="stomatologia-dziecieca-price-list">
					<xsl:apply-templates select="cennik-stomatologia-dziecieca/entry" mode="price-list" />
				</ul>
				<section class="footnotes">
					<xsl:apply-templates select="cennik-przypisy/entry/footnote" />
				</section>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="entry" mode="price-list">
		<li>
			<p class="service-name"><xsl:value-of select="nazwa-uslugi" /></p>
			<p class="price"><xsl:value-of select="cena" /></p>
		</li>
	</xsl:template>

	<xsl:template match="cennik-endodoncja-opis/entry">
		<li class="cathegory-info"><xsl:copy-of select="endodoncja-opis/p/node()" /></li>
	</xsl:template>

	<xsl:template match="cennik-przypisy/entry/footnote">
		<p><xsl:value-of select="." /></p>
	</xsl:template>

	<xsl:template name="lang-button">
		<xsl:call-template name="language-button">
			<xsl:with-param name="language" select="//current-language/@handle" />
		</xsl:call-template>
	</xsl:template>

	<xsl:template match="data" mode="js">
		<script>
			window.onload = function () {
				var eqTrigger = $('.cennik-submenu a');

				eqTrigger.each(function() {
					$(this).click(function(e) {
						e.preventDefault();
						var anchor = $(this).attr('href');
						$([document.documentElement, document.body]).animate({
			        scrollTop: $(anchor).offset().top - 80
				    }, 500);
						history.pushState('', '', anchor);
					})
				})

				var hash = window.location.hash;
				if (hash != '') {
					$([document.documentElement, document.body]).animate({
						scrollTop: $(hash).offset().top - 80
					}, 500);
				}

				if( window.innerWidth <xsl:text disable-output-escaping="yes">&lt;</xsl:text>= 768 ) {
					var mobileTrigger = $('article h2');

					mobileTrigger.each( function() {
						const anchor = $(this).attr('id');
						$(this).click( function() {
							const t = $(this);
							console.log(anchor);
							$('.' + anchor + '-price-list').slideToggle(function() {
								pricelistIconToggle(t);
							});
						})
					})
				}

			}

			function pricelistIconToggle(target) {
				const icon = target.find('span');
				const state = icon.css('background-position').substring(0, 1) == 0 ? 'collapsed' : 'extended';
				if (state == 'collapsed') {
					icon.css('background-position', '-45px 0px');
				} else {
						icon.css('background-position', '0px 0px');
				}
			}
		</script>
	</xsl:template>


</xsl:stylesheet>
