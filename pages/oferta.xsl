<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:include href="../utilities/_brick.xsl" />
<xsl:include href="../utilities/_language-button.xsl" />

<xsl:template match="data">

	<xsl:choose>
		<xsl:when test="$page = ''">
			<xsl:call-template name="offer" />
		</xsl:when>
		<xsl:otherwise>
			<xsl:apply-templates select="oferta/entry" />
		</xsl:otherwise>
	</xsl:choose>

</xsl:template>

<xsl:template name="offer">

	<section class="offer">
		<article>
			<h1><xsl:value-of select="//plh-page/page/item[@lang = //current-language/@handle]" /></h1>
			<!-- <xsl:copy-of select="oferta-tekst/entry/offer/node()" /> --> <!-- wstęp do ofery -->
		</article>
	</section>

	<section class="bricks-container">
		<xsl:apply-templates select="bricks-oferta/entry" />
	</section>

</xsl:template>

<xsl:template match="bricks-oferta/entry">
	<xsl:call-template name="brick" />
</xsl:template>

<xsl:template match="oferta/entry">
	
	<section class="main-image" style="background-image: url('{$workspace}/{main-image/@path}/{main-image/filename}');">
	</section>

	<section class="oferta"> <!-- zmineić klasę -->
		<article>
			<h1><xsl:value-of select="name/p" /></h1>
			<xsl:copy-of select="description/node()" />
			<xsl:apply-templates select="inline-image" />
		</article>
	</section>

</xsl:template>

<xsl:template match="inline-image">
	<img src="{$root}/image/1/467/0{@path}/{filename}" alt="" srcset="{$root}/image/1/467/0{@path}/{filename} 1x, {$root}/image/1/934/0{@path}/{filename} 2x, {$root}/image/1/1401/0{@path}/{filename} 3x" />
</xsl:template>

<xsl:template match="data" mode="page-title">
	<title><xsl:value-of select="concat(plh-page/page/item[@lang = //current-language/@handle], ' • ', $website-name)"/></title>
</xsl:template>

<xsl:template name="lang-button">
	<xsl:param name="lang" />
	<xsl:call-template name="language-button">
		<xsl:with-param name="language" select="//current-language/@handle" />
	</xsl:call-template>
</xsl:template>

	<xsl:template match="data" mode="meta-tags">
		<xsl:choose>

			<xsl:when test="$page = ''">
				<meta name="description" content="Stomatologia estetyczna, protetyka, implanty zębowe, stomatologia zachowawcza, chirurgia stomatologiczna, endodoncja, stomatologia dziecięca, wybielanie zębów, leczenie kanałowe, ekstrakcja zębów mądrości. Komfortowy i nowoczesny gabinet stomatologiczny, Wrocław." />
			</xsl:when>

			<xsl:when test="$page = 'stomatologia-estetyczna'">
				<meta name="description" content="Wybielanie zębów, licówki ceramiczne i kompozytowe, rekonstrukcje zębów, korony pełnoceramiczne. City Dent - przywracamy piękny i zdrowy uśmiech." />
			</xsl:when>

			<xsl:when test="$page = 'stomatologia-zachowawcza'">
				<meta name="description" content="Darmowe wizyty kontrolne, leczenie zębów i dziąseł, profilaktyka stomatologiczna, usuwanie kamienia i płytki nazębnej, scaling, polerowanie, fluoryzacja, lakowanie bruzd." />
			</xsl:when>

			<xsl:when test="$page = 'protetyka'">
				<meta name="description" content="Protezy zębowe: protezy akrylowe, korony ceramiczne, korony porcelanowe, mosty ceramiczne, licówki. Gabinet stomatologiczny, Wrocław, ul. Zaporoska 39a." />
			</xsl:when>

			<xsl:when test="$page = 'endodoncja'">
				<meta name="description" content="Leczenie kanałowe zęba pod mikroskopem w czasie 1 wiyty. Niższe koszty - większa skuteczność leczenia kanałowego. Dodatkowo w ofercie najnowsze metody odbudowy zęba." />
			</xsl:when>

			<xsl:when test="$page = 'chirurgia-stomatologiczna'">
				<meta name="description" content="Chirurgia stomatologiczna: ekstrakcja ósemek, podcinanie wędzidełka, chirurgiczne wydłużanie korony zęba, inne zabiegi. Sprawdź naszą ofertę." />
			</xsl:when>

			<xsl:when test="$page = 'periodontologia'">
				<meta name="description" content="Profilaktyka i leczenie chorób przyzębia i błony śluzowej jamy ustnej. Zdrowe dziąsła to zdrowe zęby!" />
			</xsl:when>

			<xsl:when test="$page = 'implanty'">
				<meta name="description" content="Najwyższej jakości implanty zębowe, Wrocław, ul. Zaporoska 39a. Gabinet stomatologiczny dr Piotr Ptak. Doświadczenie, precyzja i dbałość o komfort pacjenta." />
			</xsl:when>

			<xsl:when test="$page = 'stomatologia-dziecieca'">
				<meta name="description" content="Dentysta dla dzieci, Wrocław. Wizyty adaptacyjne, porady i profilaktyka chorób zębów mlecznych. Kolorwe plomby Twinky Star." />
			</xsl:when>

		</xsl:choose>
	</xsl:template>

	<xsl:template match="data" mode="og-tags">
		<meta property="og:url" content="{$current-url}" />
		<meta property="og:type" content="article" />
		<meta property="og:title" content="City-Dent • Oferta" />
		<meta property="og:image" content="{$workspace}/{//oferta/entry/main-image/@path}/{//oferta/entry/main-image/filename}" />

		<xsl:choose>

			<xsl:when test="$page = ''">
				<meta property="og:description" content="Stomatologia estetyczna, protetyka, implanty zębowe, stomatologia zachowawcza, chirurgia stomatologiczna, endodoncja, stomatologia dziecięca, wybielanie zębów, leczenie kanałowe, ekstrakcja zębów mądrości. Komfortowy i nowoczesny gabinet stomatologiczny, Wrocław." />
			</xsl:when>

			<xsl:when test="$page = 'stomatologia-estetyczna'">
				<meta property="og:description" content="Wybielanie zębów, licówki ceramiczne i kompozytowe, rekonstrukcje zębów, korony pełnoceramiczne. City Dent - przywracamy piękny i zdrowy uśmiech." />
			</xsl:when>

			<xsl:when test="$page = 'stomatologia-zachowawcza'">
				<meta property="og:description" content="Darmowe wizyty kontrolne, leczenie zębów i dziąseł, profilaktyka stomatologiczna, usuwanie kamienia i płytki nazębnej, scaling, polerowanie, fluoryzacja, lakowanie bruzd." />
			</xsl:when>

			<xsl:when test="$page = 'protetyka'">
				<meta property="og:description" content="Protezy zębowe: protezy akrylowe, korony ceramiczne, korony porcelanowe, mosty ceramiczne, licówki. Gabinet stomatologiczny, Wrocław, ul. Zaporoska 39a." />
			</xsl:when>

			<xsl:when test="$page = 'endodoncja'">
				<meta property="og:description" content="Leczenie kanałowe zęba pod mikroskopem w czasie 1 wiyty. Niższe koszty - większa skuteczność leczenia kanałowego. Dodatkowo w ofercie najnowsze metody odbudowy zęba." />
			</xsl:when>

			<xsl:when test="$page = 'chirurgia-stomatologiczna'">
				<meta property="og:description" content="Chirurgia stomatologiczna: ekstrakcja ósemek, podcinanie wędzidełka, chirurgiczne wydłużanie korony zęba, inne zabiegi. Sprawdź naszą ofertę." />
			</xsl:when>

			<xsl:when test="$page = 'periodontologia'">
				<meta property="og:description" content="Profilaktyka i leczenie chorób przyzębia i błony śluzowej jamy ustnej. Zdrowe dziąsła to zdrowe zęby!" />
			</xsl:when>

			<xsl:when test="$page = 'implanty'">
				<meta property="og:description" content="Najwyższej jakości implanty zębowe, Wrocław, ul. Zaporoska 39a. Gabinet stomatologiczny dr Piotr Ptak. Doświadczenie, precyzja i dbałość o komfort pacjenta." />
			</xsl:when>

			<xsl:when test="$page = 'stomatologia-dziecieca'">
				<meta property="og:description" content="Dentysta dla dzieci, Wrocław. Wizyty adaptacyjne, porady i profilaktyka chorób zębów mlecznych. Kolorwe plomby Twinky Star." />
			</xsl:when>

		</xsl:choose>
	</xsl:template>

	<xsl:template match="data" mode="js">
		<xsl:apply-templates select="bricks-oferta/entry[1]" mode="js" />
	</xsl:template>

	<xsl:template match="bricks-oferta/entry" mode="js">
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
