<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="4.0" encoding="utf-8" indent="yes"/>
    <xsl:include href="Page.xsl"/>

    <xsl:template name="Content">
      <h2>SectionTitle</h2>
      <xsl:value-of select="/Default/name"/><br/>
      <xsl:for-each select="/Default/numbers">
        [<xsl:value-of select="."/>]<br/>
      </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
