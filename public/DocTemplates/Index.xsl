<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="4.0" encoding="utf-8" indent="yes" omit-xml-declaration="yes"/>
  <xsl:include href="../Page.xsl"/>

  <xsl:template match="/Index" name="Content">

    <h1>Documentation</h1>

    <ol>
      <li>
        <a href="/docs/forms">Forms</a>
      </li>
    </ol>

  </xsl:template>

</xsl:stylesheet>
