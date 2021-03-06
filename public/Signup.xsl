<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="4.0" encoding="utf-8" indent="yes" omit-xml-declaration="yes"/>
  <xsl:include href="Page.xsl"/>

  <xsl:template match="/Signup" name="Content">
    <h1>Sign In Through Facebook</h1>

    <div class="fb-login-button">Login with Facebook</div>

    <hr/>

    <xsl:value-of select="/Signup/form" disable-output-escaping="yes"/>

  </xsl:template>

</xsl:stylesheet>
