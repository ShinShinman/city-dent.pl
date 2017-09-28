<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">
	<section class="oferta">

		<section class="map">
			<p>Mapa Google</p> // ...chyba z pluginu Symphony
		</section>

		<section class="kontakt">
			<article>
				<h1>Kontakt</h1>
				<table>
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
				<table>
					<tr>
						<td class="icon">&#xe801;</td>
						<td>Godziny przyjęć</td>
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
						<td>sobota po uzgodnieniu</td>
						<td></td>
					</tr>
				</table>
			</article>
		</section>

	</section>

</xsl:template>

</xsl:stylesheet>
