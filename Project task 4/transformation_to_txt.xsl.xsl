<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="UTF-8" indent="yes"/>

    <xsl:template match="warehouse">
        <xsl:text>List of laptops:&#xA;</xsl:text>
		<xsl:text>-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------&#xA;</xsl:text>
        <xsl:text>Availability:        EAN:             Brand:           Name:                             Net Price(PLN):     Tax(PLN;23%):       Gross Price(PLN):&#xA;</xsl:text>
        <xsl:text>-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------&#xA;&#xA;</xsl:text>
		<xsl:for-each select="product">
			<xsl:value-of select="substring(concat(availability,'                                                          '),1,21)"/>
			<xsl:value-of select="substring(concat(ean,'                                                         '),1,17)"/>
			<xsl:value-of select="substring(concat(brand,'                                                            '),1,17)"/>
			<xsl:value-of select="substring(concat(description/fullName,'                                                             '),1,34)"/>
			<xsl:value-of select="substring(concat(netPrice,'                                                             '),1,20)"/>
			<xsl:value-of select="substring(concat(tax,'                                                             '),1,20)"/>
			<xsl:value-of select="substring(concat(grossPrice,'                                                             '),1,20)"/>
			<xsl:text>&#xA;</xsl:text>
		</xsl:for-each>
		
        <xsl:text>&#xA;&#xA;      Summary&#xA;</xsl:text>
		<xsl:text>-------------------------------------&#xA;</xsl:text>
        <xsl:value-of select="concat('Total number of laptops: ',summary/positions)"/><xsl:text>&#xA;</xsl:text>
		<xsl:value-of select="concat('Total number of laptops in PL warehouse: ',summary/positionsPL)"/><xsl:text>&#xA;</xsl:text>
		<xsl:value-of select="concat('Total number of laptops in DE warehouse: ',summary/positionsDE)"/><xsl:text>&#xA;</xsl:text>
		<xsl:text>&#xA;      Value in PLN/EUR/USD:&#xA;</xsl:text>
		<xsl:text>-------------------------------------&#xA;</xsl:text>
		<xsl:value-of select="concat('PLN: ',summary/totalValuePLN)"/><xsl:text>&#xA;</xsl:text>
		<xsl:value-of select="concat('EUR: ',summary/totalValueEUR)"/><xsl:text>&#xA;</xsl:text>
		<xsl:value-of select="concat('USD: ',summary/totalValueUSD)"/><xsl:text>&#xA;</xsl:text>
		<xsl:text>&#xA;      Other stats:&#xA;</xsl:text>
		<xsl:text>-------------------------------------&#xA;</xsl:text>
		<xsl:value-of select="concat('Unavailable: ',summary/unavailable)"/><xsl:text>&#xA;</xsl:text>
		<xsl:value-of select="concat('Date of report: ',summary/dateReport)"/><xsl:text>&#xA;</xsl:text>
		
		</xsl:template>
</xsl:stylesheet>
