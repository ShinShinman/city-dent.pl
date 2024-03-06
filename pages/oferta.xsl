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

<xsl:template name="lang-button">
	<xsl:param name="lang" />
	<xsl:call-template name="language-button">
		<xsl:with-param name="language" select="//current-language/@handle" />
	</xsl:call-template>
</xsl:template>

	<xsl:template match="data" mode="meta-tags">
		<xsl:choose>

			<xsl:when test="$page = ''">
				<title>Oferta | Gabinet stomatologiczny City Dent</title>
				<meta name="description" content="Stomatologia estetyczna, protetyka, implanty zębowe, stomatologia zachowawcza, chirurgia stomatologiczna, endodoncja, stomatologia dziecięca, wybielanie zębów, leczenie kanałowe, ekstrakcja zębów mądrości. Komfortowy i nowoczesny gabinet stomatologiczny, Wrocław." />
			</xsl:when>

			<xsl:when test="$page = 'stomatologia-estetyczna'">
				<title>Bonding zębów Wrocław - licówki kompozytowe i porcelanowe  | Gabinet stomatologiczny City Dent</title>
				<meta name="description" content="Bonding zębów, wybielanie, impanty. Stomatologia estetyczna we Wrocławiu. Dbamy o estetykę, leczymy z sercem!" />
			</xsl:when>

			<xsl:when test="$page = 'stomatologia-zachowawcza'">
				<title>Oferta | Gabinet stomatologiczny City Dent</title>
				<meta name="description" content="Darmowe wizyty kontrolne, leczenie zębów i dziąseł, profilaktyka stomatologiczna, usuwanie kamienia i płytki nazębnej, scaling, polerowanie, fluoryzacja, lakowanie bruzd." />
			</xsl:when>

			<xsl:when test="$page = 'protetyka'">
				<title>Protetyka Wrocław  | Gabinet stomatologiczny City Dent</title>
				<meta name="description" content="Protetyka Wrocław. Stomatologia protetyczna we Wrocławiu. Dbamy o estetykę, leczymy z sercem!" />
			</xsl:when>

			<xsl:when test="$page = 'endodoncja'">
				<title>Leczenie kanałowe Wrocław - endodoncja pod mikroskopem  | Gabinet stomatologiczny City Dent</title>
				<meta name="description" content="Endodoncja: leczenie kanałowe pod mikroskopem. Gabinet we Wrocławiu. Dbamy o estetykę, leczymy z sercem!" />
			</xsl:when>

			<xsl:when test="$page = 'chirurgia-stomatologiczna'">
				<title>Chirurg Stomatolog Wrocław City Dent: Chirurgiczne usuwanie zębów</title>
				<meta name="description" content="Chirurgiczne usuwanie zębów mądrości, ósemek, chirurgia stomatologiczna, od 2012 roku we Wrocławiu" />
			</xsl:when>

			<xsl:when test="$page = 'periodontologia'">
				<title>Oferta | Gabinet stomatologiczny City Dent</title>
				<meta name="description" content="Profilaktyka i leczenie chorób przyzębia i błony śluzowej jamy ustnej. Zdrowe dziąsła to zdrowe zęby!" />
			</xsl:when>

			<xsl:when test="$page = 'implanty'">
				<title>Implanty Wrocław  | Gabinet stomatologiczny City Dent</title>
				<meta name="description" content="Implanty, podnoszenie zatoki, tomografia. Gabinet we Wrocławiu. Implantologia od A do Z. Dbamy o estetykę, leczymy z sercem!" />
			</xsl:when>

			<xsl:when test="$page = 'stomatologia-dziecieca'">
				<title>Oferta | Gabinet stomatologiczny City Dent</title>
				<meta name="description" content="Dentysta dla dzieci, Wrocław. Wizyty adaptacyjne, porady i profilaktyka chorób zębów mlecznych. Kolorwe plomby Twinky Star." />
			</xsl:when>

		</xsl:choose>
	</xsl:template>

	<xsl:template match="data" mode="og-tags">
		<meta property="og:url" content="{$current-url}" />
		<meta property="og:type" content="article" />
		<meta property="og:image" content="{$workspace}/{//oferta/entry/main-image/@path}/{//oferta/entry/main-image/filename}" />

		<xsl:choose>

			<xsl:when test="$page = ''">
				<meta property="og:title" content="City-Dent • Oferta" />
				<meta property="og:description" content="Stomatologia estetyczna, protetyka, implanty zębowe, stomatologia zachowawcza, chirurgia stomatologiczna, endodoncja, stomatologia dziecięca, wybielanie zębów, leczenie kanałowe, ekstrakcja zębów mądrości. Komfortowy i nowoczesny gabinet stomatologiczny, Wrocław." />
			</xsl:when>

			<xsl:when test="$page = 'stomatologia-estetyczna'">
				<meta property="og:title" content="Bonding zębów Wrocław - licówki kompozytowe i porcelanowe  | Gabinet stomatologiczny City Dent" />
				<meta property="og:description" content="Bonding zębów, wybielanie, impanty. Stomatologia estetyczna we Wrocławiu. Dbamy o estetykę, leczymy z sercem!" />
			</xsl:when>

			<xsl:when test="$page = 'stomatologia-zachowawcza'">
				<meta property="og:title" content="City-Dent • Oferta" />
				<meta property="og:description" content="Darmowe wizyty kontrolne, leczenie zębów i dziąseł, profilaktyka stomatologiczna, usuwanie kamienia i płytki nazębnej, scaling, polerowanie, fluoryzacja, lakowanie bruzd." />
			</xsl:when>

			<xsl:when test="$page = 'protetyka'">
				<meta property="og:title" content="Protetyka Wrocław  | Gabinet stomatologiczny City Dent" />
				<meta property="og:description" content="Protetyka Wrocław. Stomatologia protetyczna we Wrocławiu. Dbamy o estetykę, leczymy z sercem!" />
			</xsl:when>

			<xsl:when test="$page = 'endodoncja'">
				<meta property="og:title" content="Leczenie kanałowe Wrocław - endodoncja pod mikroskopem  | Gabinet stomatologiczny City Dent" />
				<meta property="og:description" content="Endodoncja: leczenie kanałowe pod mikroskopem. Gabinet we Wrocławiu. Dbamy o estetykę, leczymy z sercem!" />
			</xsl:when>

			<xsl:when test="$page = 'chirurgia-stomatologiczna'">
				<meta property="og:title" content="Chirurg Stomatolog Wrocław City Dent: Chirurgiczne usuwanie zębów" />
				<meta property="og:description" content="Chirurgiczne usuwanie zębów mądrości, ósemek, chirurgia stomatologiczna, od 2012 roku we Wrocławiu" />
			</xsl:when>

			<xsl:when test="$page = 'periodontologia'">
				<meta property="og:title" content="City-Dent • Oferta" />
				<meta property="og:description" content="Profilaktyka i leczenie chorób przyzębia i błony śluzowej jamy ustnej. Zdrowe dziąsła to zdrowe zęby!" />
			</xsl:when>

			<xsl:when test="$page = 'implanty'">
				<meta property="og:title" content="Implanty Wrocław  | Gabinet stomatologiczny City Dent" />
				<meta property="og:description" content="Implanty, podnoszenie zatoki, tomografia. Gabinet we Wrocławiu. Implantologia od A do Z. Dbamy o estetykę, leczymy z sercem!" />
			</xsl:when>

			<xsl:when test="$page = 'stomatologia-dziecieca'">
				<meta property="og:title" content="City-Dent • Oferta" />
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
