<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output
        indent="yes"
        doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
        doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" />
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <body>
				<h3>Prepared by Maciej Kopa 230451</h3>
				<h1>Warehouse stock in Polish standards:</h1>
				<center><table border="2" cellpadding="4">
					<tr bgcolor="white">
						<th>AVAILABLE</th>
						<th>EAN</th>
						<th>BRAND</th>
						<th>FULL DESCRIPTION</th>
						<th>SPECIFICATION</th>
						<th>NET PRICE</th>
						<th>TAX [23%]</th>
						<th>GROSS PRICE</th>
						<th>CURRENCY</th>
					</tr>
					<xsl:for-each select="warehouse/product">
					<xsl:sort select="grossPrice" data-type="number" order="descending"/>
						<tr>
							<td>
								<xsl:choose>
								<xsl:when test="availability = 'Yes'">
								<center style="background-color:green"> <xsl:value-of select="availability" /></center>
								</xsl:when>
								<xsl:otherwise>
								<center style="background-color:red"> <xsl:value-of select="availability" /></center>
								</xsl:otherwise>
								</xsl:choose>
							</td>
							<td style="background-color:#D3D3D3">
								<center><xsl:value-of select="ean" /></center>
							</td>
							<td style="background-color:#808080">
								<center><xsl:value-of select="brand" /></center>
							</td>
							<td style="background-color:#D3D3D3">
								<center><xsl:value-of select="description/fullName" /></center>
							</td>
							<td style="background-color:#808080">
								<xsl:for-each select="description/specification">
									<i><xsl:value-of select="CPU" /> | 
									<xsl:value-of select="RAM" /> |
									<xsl:value-of select="graphics" /> | 
									<xsl:value-of select="battery"/> <xsl:value-of select="battery/@unit" /> | 
									<xsl:value-of select="screen/surface" /> | 
									<xsl:value-of select="screen/resolution" /> <xsl:value-of select="screen/resolution/@unit" /></i>
								</xsl:for-each>
							</td>
							<td style="background-color:#D3D3D3">
								<center><xsl:value-of select="netPrice" /></center>
							</td>
							<td style="background-color:#808080">
								<center><xsl:value-of select="tax" /></center>
							</td>
							<td style="background-color:#D3D3D3">
								<center><xsl:value-of select="grossPrice" /></center>
							</td>
							<td style="background-color:#808080">
								<center><xsl:value-of select="netPrice/@currency" /></center>
							</td>
						</tr>
					</xsl:for-each>
				</table></center>
				
				<xsl:for-each select="warehouse/summary">
				<p><center>Statistics:</center></p>
				<p><center>Positions: <xsl:value-of select="positions" /></center></p>
				<p><center>Positions unavailable: <xsl:value-of select="unavailable" /></center></p>
				<p><center>Positions in PL: <xsl:value-of select="positionsPL" /></center></p>
				<p><center>Positions in DE: <xsl:value-of select="positionsDE" /></center></p>
				<p><center>Total PLN: <xsl:value-of select="totalValuePLN" /></center></p>
				<p><center>Total EUR: <xsl:value-of select="totalValueEUR" /></center></p>
				<p><center>Total USD: <xsl:value-of select="totalValueUSD" /></center></p>
				<p><center>The report was generated on <xsl:value-of select="dateReport" /></center></p>
				</xsl:for-each>
			</body>
        </html>
    </xsl:template>
</xsl:stylesheet>




