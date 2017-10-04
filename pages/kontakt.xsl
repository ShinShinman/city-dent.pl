<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">

	<section id="map"></section>

	<script>
		
		function initMap() {
			var uluru = {lat: 51.097717, lng: 17.013523};
			var map = new google.maps.Map(document.getElementById('map'), {
				zoom: 17,
				center: uluru
			});
			var marker = new google.maps.Marker({
				position: uluru,
				map: map
			});
		}

		function initInit() {
			console.log("JEST");
			console.log(result)
		}
		
/*
		function initMap() {
			var map, service, infoWindow;

			var mapOpt = {
				zoom: 17,
				center: {lat: 51.097717, lng: 17.013523}
			};

			map = new google.maps.Map(document.getElementById('map'), mapOpt);

			console.log(new google.maps.places.PlacesService(map));
			service = new google.maps.places.PlacesService(map);
			service.getDetails({
				placeID: 'ChIJ26ACbBTCD0cRS__-CRgxX3o'
			}, function (result, status) {
				if (status != google.maps.places.PlacesServiceStatus.OK) {
					console.log(status);
					return;
				}
				var marker = new google.maps.Marker({
					position: result.geometry.location,
					map: map
				});
				console.log(result);
			})
		}
*/

	</script>
	
	<script async="" defer="" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB9pNLMAh02zRTzvU-l4dwHtLNwsIi4fG0&amp;callback=initMap">
	</script>
	<!--
	<script async="" defer="" src="https://maps.googleapis.com/maps/api/place/details/json?placeid=ChIJ26ACbBTCD0cRS__-CRgxX3o&amp;key=AIzaSyB9pNLMAh02zRTzvU-l4dwHtLNwsIi4fG0&amp;callback=initInit">
	</script>
	-->

	<section class="kontakt">
		<article>
			<h1>Kontakt</h1>
			<table class="details">
				<tr>
					<td class="icon">t</td>
					<td><xsl:value-of select="//kontakt/entry/phone" /></td>
				</tr>
				<tr>
					<td class="icon">&#xf0e0;</td>
					<td><xsl:value-of select="//kontakt/entry/e-mail" /></td>
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
		<tr>
			<td></td>
			<td>poniedziałek</td>
			<td><xsl:value-of select="monday" /></td>
		</tr>
		<tr>
			<td></td>
			<td>wtorek</td>
			<td><xsl:value-of select="tuesday" /></td>
		</tr>
		<tr>
			<td></td>
			<td>środa</td>
			<td><xsl:value-of select="wednesday" /></td>
		</tr>
		<tr>
			<td></td>
			<td>czwartek</td>
			<td><xsl:value-of select="thursday" /></td>
		</tr>
		<tr>
			<td></td>
			<td>piątek</td>
			<td><xsl:value-of select="friday" /></td>
		</tr>
		<tr>
			<td></td>
			<td>sobota</td>
			<td><xsl:value-of select="saturday" /></td>
		</tr>
	</table>
</xsl:template>

<xsl:template match="data" mode="page-title">
	<title><xsl:value-of select="concat(plh-page/page/item[@lang = //current-language/@handle], ' • ', $website-name)"/></title>
</xsl:template>

</xsl:stylesheet>
