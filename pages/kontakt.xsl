<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:include href="../utilities/_language-button.xsl" />

<xsl:template match="data">

	<section id="map"></section>

	<script>

		function initMap() {
			var uluru = {lat: 51.09560912868694, lng: 16.989226827019245};
			var map = new google.maps.Map(document.getElementById('map'), {
				center: uluru,
				zoom: 17
			});

			var noPoi = [
				{
						featureType: "poi",
						stylers: [
							{ visibility: "off" }
						]
					}
				];

			map.setOptions({styles: noPoi});

			var infoWindow = new google.maps.InfoWindow();
			var service = new google.maps.places.PlacesService(map);

			service.getDetails({
				placeId: 'ChIJ26ACbBTCD0cRS__-CRgxX3o'
			}, function(place, status) {
				if (status === google.maps.places.PlacesServiceStatus.OK) {
					var marker = new google.maps.Marker({
						map: map,
						position: place.geometry.location
					});
					google.maps.event.addListener(marker, 'click', function() {
						console.log(place);
						var adr = place.formatted_address.split(',');
						infoWindow.setContent('<div class="infoWindow"><strong>City-Dent<br />Praktyka Stomatologiczna Piotr Ptak</strong><br />' + place.international_phone_number + '<br />' + adr[0] + '<br />' + adr[1] + '<br />' + adr[2] + '</div>');
						infoWindow.open(map, this);
					});
				}
			})
		}
	</script>

	<script async="async" defer="defer" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCHfmQcm4oFASzKQav1Z7zaFzTWWqXXWM0&amp;libraries=places&amp;callback=initMap">
	</script>

	<section class="kontakt">
		<article>
			<h1><xsl:value-of select="//plh-page/page/item[@lang = //current-language/@handle]" /></h1>
			<table class="details">
				<tr>
					<td class="icon">t</td>
					<td><a href="tel:{//kontakt/entry/phone}"><xsl:value-of select="//kontakt/entry/phone" /></a></td>
				</tr>
				<tr>
					<td class="icon">&#xf0e0;</td>
					<td><a href="mailto:{//kontakt/entry/e-mail}"><xsl:value-of select="//kontakt/entry/e-mail" /></a></td>
				</tr>
				<tr>
					<td class="icon">&#x0070;</td>
					<td><xsl:value-of select="//kontakt/entry/street-no" /><br />
					<xsl:value-of select="//kontakt/entry/postal-code" /></td>
				</tr>
			</table>
			<xsl:apply-templates select="godziny-przyjec/entry" />
		</article>
	</section>

</xsl:template>

<xsl:template match="godziny-przyjec/entry">
	<table class="hours">
		<tr class="label">
			<td class="icon">&#xe801;</td>
			<td colspan="2">Godziny przyjęć</td>
		</tr>

		<xsl:apply-templates select="*" />

	</table>
</xsl:template>

<xsl:template match="godziny-przyjec/entry/*">

	<xsl:variable name="week-day">
		<xsl:choose>
			<xsl:when test="name(.) = 'monday'">poniedziałek</xsl:when>
			<xsl:when test="name(.) = 'tuesday'">wtorek</xsl:when>
			<xsl:when test="name(.) = 'wednesday'">środa</xsl:when>
			<xsl:when test="name(.) = 'thursday'">czwartek</xsl:when>
			<xsl:when test="name(.) = 'friday'">piątek</xsl:when>
			<xsl:when test="name(.) = 'saturday'">sobota</xsl:when>
			<xsl:when test="name(.) = 'sunday'">niedziela</xsl:when>
		</xsl:choose>
	</xsl:variable>

	<xsl:if test=". != '' and //current-language/@handle = 'pl'">
		<tr>
			<td></td>
			<td><xsl:value-of select="$week-day" /></td>
			<td><xsl:value-of select="." /></td>
		</tr>
	</xsl:if>
	<xsl:if test=". != '' and //current-language/@handle = 'en'">
		<tr>
			<td></td>
			<td><xsl:value-of select="name(.)" /></td>
			<td><xsl:value-of select="." /></td>
		</tr>
	</xsl:if>

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
		<title><xsl:value-of select="concat(plh-page/page/item[@lang = //current-language/@handle], ' • ', $website-name)"/></title>
		<meta name="description" content="Godziny otwarcia: od poniedziałku do piątku, między godz. 9:00 a 21:00. Rejestracja: +48 516 925 690. Masz pytania? Napisz do nas: kontakt@city-dent.pl" />
	</xsl:template>

	<xsl:template match="data" mode="og-tags">
		<meta property="og:url" content="{$current-url}" />
		<meta property="og:type" content="article" />
		<meta property="og:title" content="City-Dent • Kontakt" />
		<meta property="og:description" content="Godziny otwarcia: od poniedziałku do piątku, między godz. 9:00 a 21:00. Rejestracja: +48 516 925 690. Masz pytania? Napisz do nas: kontakt@city-dent.pl" />
	</xsl:template>

</xsl:stylesheet>
