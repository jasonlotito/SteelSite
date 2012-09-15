<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" version="4.0" encoding="utf-8" indent="yes"/>
  <xsl:include href="Styles.xsl"/>
  <xsl:include href="Scripts.xsl"/>

  <xsl:template match="/" name="Page">
    <html>
      <head>
        <xsl:call-template name="Styles"/>
      </head>
      <body>
        <header>
          <h1>SteelSite</h1>
        </header>
        <section>
          <xsl:call-template name="Content"/>
        </section>
        <footer>
          Footer
        </footer>
        <xsl:call-template name="Scripts"/>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
