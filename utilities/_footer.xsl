<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="footer">
		<footer>
			<section class="footer">
				<div class="footer-container">
					<div>
						<ul class="inline-list social">
							<li><a href="{//social-media/entry/facebook}" class="icon">f</a></li>
							<li>•</li>
							<li><a href="{//social-media/entry/instagram}" class="icon">i</a></li>
						</ul>
					</div>
					<div class="logo">
					 <a href="{$root}/">Logo</a>
				 </div>
					<div>
						<ul class="inline-list links">
							<li><a href="{$root}/{//current-language/@handle}/{//navigation/page[@handle = 'kontakt']/item[@lang = //current-language/@handle]/@handle}/"><xsl:value-of select="//navigation/page[@handle = 'kontakt']/item[@lang = //current-language/@handle]" /></a></li>
							<li>•</li>
							<li><a href="{$root}/{//current-language/@handle}/{//navigation/page[@handle = 'oferta']/item[@lang = //current-language/@handle]/@handle}/"><xsl:value-of select="//navigation/page[@handle = 'oferta']/item[@lang = //current-language/@handle]" /></a></li>
						</ul>
					</div>
				</div>
				<!-- <div class="mobile-footer">
					<ul class="inline-list links">
						<li><a href="{$root}/{//current-language/@handle}/{//navigation/page[@handle = 'kontakt']/item[@lang = //current-language/@handle]/@handle}/"><xsl:value-of select="//navigation/page[@handle = 'kontakt']/item[@lang = //current-language/@handle]" /></a></li>
						<li>•</li>
						<li><a href="{$root}/{//current-language/@handle}/{//navigation/page[@handle = 'oferta']/item[@lang = //current-language/@handle]/@handle}/"><xsl:value-of select="//navigation/page[@handle = 'oferta']/item[@lang = //current-language/@handle]" /></a></li>
					</ul>
					<ul class="inline-list social">
						<li><a href="{//social-media/entry/facebook}" class="icon">f</a></li>
						<li>•</li>
						<li><a href="{//social-media/entry/instagram}" class="icon">i</a></li>
					</ul>
				</div> -->
			</section>
			<section class="extended-footer">
				<div class="footer-container">
					<div>
						<ul>
							<li class="label"><a href="{$root}/{//current-language/@handle}/{//navigation/page[@handle = 'oferta']/item[@lang = //current-language/@handle]/@handle}/"><xsl:value-of select="//navigation/page[@handle = 'oferta']/item[@lang = //current-language/@handle]" /></a></li>
							<xsl:apply-templates select="//menu-oferta/entry" />
						</ul>
					</div>
					<div>
						<ul>
							<li class="label"><a href="{$root}/{//current-language/@handle}/{//navigation/page[@handle = 'wyposazenie']/item[@lang = //current-language/@handle]/@handle}/"><xsl:value-of select="//navigation/page[@handle = 'wyposazenie']/item[@lang = //current-language/@handle]" /></a></li>
							<xsl:apply-templates select="//menu-wyposazenie/entry" />
							<li><a href="{$root}/{//current-language/@handle}/{//navigation/page[@handle = 'wyposazenie']/item[@lang = //current-language/@handle]/@handle}/">zobacz więcej…</a></li>
						</ul>
					</div>
					<div>
						<ul>
							<li class="label"><a href="{$root}/{//current-language/@handle}/{//navigation/page[@handle = 'kontakt']/item[@lang = //current-language/@handle]/@handle}/"><xsl:value-of select="//navigation/page[@handle = 'kontakt']/item[@lang = //current-language/@handle]" /></a></li>
							<li><span class="icon">t </span><a href="tel:{//kontakt/entry/phone}"><xsl:value-of select="//kontakt/entry/phone" /></a></li>
							<li><span class="icon"> </span> <a href="mailto:kontakt@city-dent.pl"><xsl:value-of select="//kontakt/entry/e-mail" /></a></li>
							<li><span class="icon">p </span><xsl:value-of select="//kontakt/entry/street-no" /></li>
							<li><xsl:value-of select="//kontakt/entry/postal-code" /></li>
							<!-- <li><a class="button" href="{$root}/{//current-language/@handle}/{//navigation/page[@handle = 'kontakt']/item[@lang = //current-language/@handle]/@handle}/">Mamy wolne terminy</a></li> -->
						</ul>
						<ul class="business-hours">
							<li class="label">Godziny przyjęć</li>
							<li>pon.–wt. 9.00–21.00</li>
							<li>pi. 9.00–21.00</li>
						</ul>
						<a class="button" href="{$root}/{//current-language/@handle}/{//navigation/page[@handle = 'kontakt']/item[@lang = //current-language/@handle]/@handle}/">Mamy wolne terminy</a>
					</div>
				</div>
			</section>
		</footer>
	</xsl:template>

	<xsl:template match="menu-oferta/entry">
		<li><a href="{$root}/{//current-language/@handle}/{//navigation/page[@handle = 'oferta']/item[@lang = //current-language/@handle]/@handle}/{name/@handle}/"><xsl:value-of select="name/p" /></a></li>
	</xsl:template>

	<xsl:template match="menu-wyposazenie/entry">
		<li><a href="{$root}/{//current-language/@handle}/{//navigation/page[@handle = 'wyposazenie']/item[@lang = //current-language/@handle]/@handle}/#{name/@handle}"><xsl:value-of select="name/p" /></a></li>
	</xsl:template>

</xsl:stylesheet>
