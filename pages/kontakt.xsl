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
					<td>+48 516 925 690</td>
				</tr>
				<tr>
					<td class="icon">&#xf0e0;</td>
					<td>kontakt@city-dent.pl</td>
				</tr>
				<tr>
					<td class="icon">&#x0070;</td>
					<td>Zaporoska 39a, <br />
					53 - 519 Wrocław</td>
				</tr>
			</table>
			<table class="hours">
				<tr class="label">
					<td class="icon">&#xe801;</td>
					<td colspan="2">Godziny przyjęć</td>
				</tr>
				<tr>
					<td></td>
					<td>poniedziałek</td>
					<td>14.00–21.00</td>
				</tr>
				<tr>
					<td></td>
					<td>wtorek</td>
					<td>9.00–15.00</td>
				</tr>
				<tr>
					<td></td>
					<td>środa</td>
					<td>14.00–21.00</td>
				</tr>
				<tr>
					<td></td>
					<td>czwartek</td>
					<td>14.00–21.00</td>
				</tr>
				<tr>
					<td></td>
					<td>piątek</td>
					<td>9.00–15.00</td>
				</tr>
				<tr>
					<td></td>
					<td>sobota</td>
					<td>po uzgodnieniu</td>
				</tr>
			</table>
		</article>
	</section>

</xsl:template>

<xsl:template match="data" mode="page-title">
	<title><xsl:value-of select="concat(plh-page/page/item[@lang = //current-language/@handle], ' • ', $website-name)"/></title>
</xsl:template>

</xsl:stylesheet>
