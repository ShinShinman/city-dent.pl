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

	<section class="info">
		<xsl:call-template name="landing" />
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

<xsl:template name="landing">
	<div class="intro">
		<h1>Stomatologia City-Dent Piotr Ptak</h1>
		<div class="slides">
			<div class="slide">
				<h2>We Wrocławiu od 2012 roku</h2>
				<p>Co to dziś znaczy dobry stomatolog? Czy dobry dentysta może być tym lekarzem, do którego chodzimy najchętniej? <strong>Dobry stomatolog</strong> to na pewno taki, któremu od lat ufamy, powierzamy zęby zarówno swoje, jak i swoich bliskich, oraz którego bez chwili wahania polecimy naszym znajomym. City-Dent Praktyka Stomatologiczna Piotr Ptak jako marka istnieje na rynku wrocławskich usług dentystycznych od 2012 roku, a doświadczenie zawodowe założyciela naszej kliniki stomatologicznej sięga 2004 roku.</p>
			</div>
			<div class="slide">
				<h2>Najwyższy poziom usług i sprzętu</h2>
				<p>Bezboleśnie przeprowadzimy Cię przez cały proces leczenia, z dbałością o każdy jego aspekt, przygotowując dla Ciebie na wstępie przejrzysty plan postępowania terapeutycznego. Wizyty w gabinecie we Wrocławiu przebiegają bezstresowo, w komfortowych dla pacjenta warunkach. Pracujemy na najwyższej jakości sprzęcie stomatologicznym z gwarancją usługi wykonanej na najwyższym poziomie. Interesuje Cię dobry endodonta? Licówki kompozytowe - bonding? Zapoznaj się z naszą ofertą.</p>
			</div>
			<div class="slide">
				<h2>Stomatologia estetyczna, leczenie kanałowe, protetyka, implanty</h2>
				<p>Czy to stomatologia estetyczna, leczenie kanałowe, czy to protetyka bądź implanty, tworzymy zgrany zespół specjalistów, mający rzesze oddanych pacjentów, ceniących zaangażowanie, szybkość i sprawność, z jaką dbamy o ich piękne uśmiechy. Interesuje Cię chirurgiczne usuwanie ósemek ? Nie mamy sobie równych! Dołącz do licznego grona naszych wiernych pacjentów i przekonaj się, że City-Dent leczy z sercem. Zadzwoń i umów się na wizytę <a href="tel:+48516 925 690">516 925 690</a>.</p>
			</div>
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

	<xsl:template match="data" mode="og-tags">
		<meta property="og:url" content="{$current-url}" />
		<meta property="og:type" content="article" />
		<meta property="og:title" content="City-Dent" />
		<meta property="og:description" content="Gabinet stomatologiczny Wrocław, ul. Zaporoska 39a zaprasza. Leczenie kanałowe, implanty zębowe, piaskowanie zębów, endodoncja, stomatolog dziecięcy, wybielanie zębów, stomatologia estetyczna, protetyka, chirurgia stomatologiczna, licówki, protezy." />
		<xsl:apply-templates select="baner/entry/image" mode="og-image" />
	</xsl:template>

	<xsl:template match="baner/entry/image" mode="og-image">
		<meta property="og:image" content="{$workspace}/{@path}/{filename}" />
	</xsl:template>

</xsl:stylesheet>
