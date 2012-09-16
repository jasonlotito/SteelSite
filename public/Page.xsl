<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="utf-8" indent="yes" doctype-system="about:legacy-compat"/>
  <xsl:include href="Styles.xsl"/>
  <xsl:include href="Scripts.xsl"/>

  <xsl:template match="/" name="Page">
    <html lang="en">
      <head>
        <title>SteelSite</title>
        <xsl:call-template name="Styles"/>
      </head>
      <body>
        <div class="container">
          <header class="row">
            <div class="navbar span12">
              <div class="navbar-inner">

                <a class="brand" href="/">SteelSite</a>

                <ul class="nav">
                  <li class="active">
                    <a href="/">Home</a>
                  </li>
                  <li>
                    <a href="download">Download</a>
                  </li>
                  <li>
                    <a href="/docs">Documentation</a>
                  </li>
                  <li>
                    <a href="/about">About</a>
                  </li>
                  <li>
                    <a href="/signup">Sign Up</a>
                  </li>
                </ul>

                <form class="navbar-form pull-right">
                  <input type="text" class="span2"/>
                  <button type="submit" class="btn">Search</button>
                </form>
              </div>
            </div>
          </header>
          <section>
            <div class="row12">
              <xsl:call-template name="Content"/>
            </div>
          </section>
          <footer class="container">
            <div class="span12">
              Copyright 2012 - Jason Lotito | Images Copyright 2012 Piera Lotito
            </div>
          </footer>
        </div>
        <xsl:call-template name="Scripts"/>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
