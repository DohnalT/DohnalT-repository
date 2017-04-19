<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : xsl.xsl
    Created on : 18. dubna 2017, 23:29
    Author     : Dohnal Tomáš
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/">
        {
           "Uzivatele":
            [
            
            <xsl:for-each select="Prehravac/uzivatel">
			<xsl:sort select="Jmeno"/>
                        {
				"Naposledy přehráno": "<xsl:value-of select="naposledy-prehrano"/>",
                                "Počet skladeb": "<xsl:value-of select="pocet-skladeb"/>",
				"Příjmení": "<xsl:value-of select="Prijmeni"/>"
			}<xsl:if test="position() != last()">,</xsl:if>
            </xsl:for-each>
            ]
        }
    </xsl:template>

</xsl:stylesheet>
