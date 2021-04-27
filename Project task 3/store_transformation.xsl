<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:key name="category" match="/store/makes/make" use="@id"/>
	
	<xsl:output method="xml" encoding="utf-8" indent="yes"/>
	
	<xsl:template match="/">
		<xsl:element name="warehouse">
			<xsl:for-each select="store/laptops/laptop">
				<xsl:sort select="quantity" data-type="number" order="descending"/>
				<xsl:element name="product">
				<xsl:choose>
					<xsl:when test="quantity > 0">
						<xsl:element name="availability">Yes</xsl:element>
						<xsl:copy-of select="ean"/>
						<xsl:element name="brand">
							<xsl:value-of select="key('category', makeInList/@idref)"/>
						</xsl:element>
						<xsl:element name="description">
						<xsl:copy-of select="fullName | specification/."/>
						</xsl:element>
						
						<!--> Net, Gross, Tax amounts calculation + currency exchange <-->
						<xsl:if test="(price/@currency) = 'EUR'">
							<xsl:element name="netPrice">
								<xsl:attribute name="currency"><xsl:text>PLN</xsl:text></xsl:attribute>
								<xsl:value-of select="round(price * 4.25 * 100) div 100"/>
							</xsl:element>
							<xsl:element name="tax">
							<xsl:attribute name="currency"><xsl:text>PLN</xsl:text></xsl:attribute>
								<xsl:value-of select="round(price * 4.25 * 0.23 * 100) div 100"/>
							</xsl:element>
							<xsl:element name="grossPrice">
							<xsl:attribute name="currency"><xsl:text>PLN</xsl:text></xsl:attribute>
								<xsl:value-of select="(round(price * 4.25 * 0.23 * 100) + round(price * 4.25 * 100)) div 100"/>
							</xsl:element>
						</xsl:if>
						<xsl:if test="(price/@currency) = 'USD'">
							<xsl:element name="netPrice">
							<xsl:attribute name="currency"><xsl:text>PLN</xsl:text></xsl:attribute>
								<xsl:value-of select="round(price * 3.70 * 100) div 100"/>
							</xsl:element>
							<xsl:element name="tax">
							<xsl:attribute name="currency"><xsl:text>PLN</xsl:text></xsl:attribute>
								<xsl:value-of select="round(price * 3.70 * 0.23 * 100) div 100"/>
							</xsl:element>
							<xsl:element name="grossPrice">
							<xsl:attribute name="currency"><xsl:text>PLN</xsl:text></xsl:attribute>
								<xsl:value-of select="(round(price * 3.70 * 0.23 * 100) + round(price * 3.70 * 100)) div 100"/>
							</xsl:element>
						</xsl:if>
						<xsl:if test="(price/@currency) = 'PLN'">
							<xsl:element name="netPrice">
							<xsl:attribute name="currency"><xsl:text>PLN</xsl:text></xsl:attribute>
								<xsl:value-of select="round(price * 100) div 100"/>
							</xsl:element>
							<xsl:element name="tax">
							<xsl:attribute name="currency"><xsl:text>PLN</xsl:text></xsl:attribute>
								<xsl:value-of select="round(price * 0.23 * 100) div 100"/>
							</xsl:element>
							<xsl:element name="grossPrice">
							<xsl:attribute name="currency"><xsl:text>PLN</xsl:text></xsl:attribute>
								<xsl:value-of select="(round(price * 0.23 * 100) + round(price * 100)) div 100"/>
							</xsl:element>
						</xsl:if>
						
					</xsl:when>
					<xsl:otherwise>
						<xsl:element name="availability">No</xsl:element>
												<xsl:copy-of select="ean"/>
						<xsl:element name="brand">
							<xsl:value-of select="key('category', makeInList/@idref)"/>
						</xsl:element>
						<xsl:element name="description">
						<xsl:copy-of select="fullName | specification/."/>
						</xsl:element>
						
						<!--> Net, Gross, Tax amounts calculation + currency exchange <-->
						<xsl:if test="(price/@currency) = 'EUR'">
							<xsl:element name="netPrice">
								<xsl:attribute name="currency"><xsl:text>PLN</xsl:text></xsl:attribute>
								<xsl:value-of select="round(price * 4.25 * 100) div 100"/>
							</xsl:element>
							<xsl:element name="tax">
							<xsl:attribute name="currency"><xsl:text>PLN</xsl:text></xsl:attribute>
								<xsl:value-of select="round(price * 4.25 * 0.23 * 100) div 100"/>
							</xsl:element>
							<xsl:element name="grossPrice">
							<xsl:attribute name="currency"><xsl:text>PLN</xsl:text></xsl:attribute>
								<xsl:value-of select="(round(price * 4.25 * 0.23 * 100) + round(price * 4.25 * 100)) div 100"/>
							</xsl:element>
						</xsl:if>
						<xsl:if test="(price/@currency) = 'USD'">
							<xsl:element name="netPrice">
							<xsl:attribute name="currency"><xsl:text>PLN</xsl:text></xsl:attribute>
								<xsl:value-of select="round(price * 3.70 * 100) div 100"/>
							</xsl:element>
							<xsl:element name="tax">
							<xsl:attribute name="currency"><xsl:text>PLN</xsl:text></xsl:attribute>
								<xsl:value-of select="round(price * 3.70 * 0.23 * 100) div 100"/>
							</xsl:element>
							<xsl:element name="grossPrice">
							<xsl:attribute name="currency"><xsl:text>PLN</xsl:text></xsl:attribute>
								<xsl:value-of select="(round(price * 3.70 * 0.23 * 100) + round(price * 3.70 * 100)) div 100"/>
							</xsl:element>
						</xsl:if>
						<xsl:if test="(price/@currency) = 'PLN'">
							<xsl:element name="netPrice">
							<xsl:attribute name="currency"><xsl:text>PLN</xsl:text></xsl:attribute>
								<xsl:value-of select="round(price * 100) div 100"/>
							</xsl:element>
							<xsl:element name="tax">
							<xsl:attribute name="currency"><xsl:text>PLN</xsl:text></xsl:attribute>
								<xsl:value-of select="round(price * 0.23 * 100) div 100"/>
							</xsl:element>
							<xsl:element name="grossPrice">
							<xsl:attribute name="currency"><xsl:text>PLN</xsl:text></xsl:attribute>
								<xsl:value-of select="(round(price * 0.23 * 100) + round(price * 100)) div 100"/>
							</xsl:element>
						</xsl:if>
					</xsl:otherwise>
				</xsl:choose>
				</xsl:element>
			</xsl:for-each>
			
			<xsl:for-each select="store">
			<xsl:element name="summary">
				<xsl:element name="positions">
					<xsl:value-of select="count(laptops/laptop)"/>
				</xsl:element>
				<xsl:element name="positionsPL">	
						<xsl:value-of select="count(laptops/laptop/ean[contains(.,'PL')])"/>
				</xsl:element>
				<xsl:element name="positionsDE">	
						<xsl:value-of select="count(laptops/laptop/ean[contains(.,'DE')])"/>
				</xsl:element>
                    <xsl:element name="totalValuePLN">
					<xsl:attribute name="currency"><xsl:text>PLN</xsl:text></xsl:attribute>
                    <xsl:value-of select="sum(laptops/laptop/price[@currency = 'PLN'])"/>
				</xsl:element>
                    <xsl:element name="totalValueEUR">
					<xsl:attribute name="currency"><xsl:text>EUR</xsl:text></xsl:attribute>
                    <xsl:value-of select="sum(laptops/laptop/price[@currency = 'EUR'])"/>
				</xsl:element>
                    <xsl:element name="totalValueUSD">
					<xsl:attribute name="currency"><xsl:text>USD</xsl:text></xsl:attribute>
					<xsl:value-of select="sum(laptops/laptop/price[@currency = 'USD'])"/>
				</xsl:element>
				<xsl:element name="unavailable">
					<xsl:value-of select="count(laptops/laptop/quantity[.=0])"/>
				</xsl:element>
				<xsl:element name="dateReport">
					<xsl:value-of select="format-date(current-date(), '[M01]/[D01]/[Y0001]')"/>
				</xsl:element>
			</xsl:element>
			</xsl:for-each>
		</xsl:element>
	</xsl:template>

</xsl:stylesheet>
