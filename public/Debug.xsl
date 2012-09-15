<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" version="5.0" encoding="utf-8" indent="yes"
              standalone="yes" omit-xml-declaration="yes"/>
  <xsl:template match="/Debug">

    <style>
      .debugger {
        position: fixed;
        bottom: 0;
        background-color: #000;
        width: 100%;
        color: #fff;
        height: 60px;
        font-family: Helvetica;
        font-size: 12px;
      }
      .debugger .information {
        padding: 4px;
      }
    </style>
    <div class="debugger">
      <div class="information">
        Debugger

        <xsl:for-each select="data">
          <xsl:value-of select="."/>,
        </xsl:for-each>
      </div>

    </div>
  </xsl:template>

</xsl:stylesheet>
