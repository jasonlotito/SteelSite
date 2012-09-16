<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="4.0" encoding="utf-8" indent="yes" omit-xml-declaration="yes"/>
  <xsl:include href="Page.xsl"/>

  <xsl:template name="Content">
    <div class="hero-unit steel">
      <div class="row">
        <div class="span8 logo">
          <h1>Steel</h1>
          <p>a PHP framework</p>
          <p class="highlight">An opinionated framework that believes in common-sense defaults,
            extensive configuration, and focusing on getting the job done.</p>
        </div>
        <div class="span3 goals">
          <h3>Features / Goals</h3>
          <ul>
            <li>Takes advantage of PHP 5.4</li>
            <li>XSL Templating</li>
            <li>Secure</li>
            <li>Efficient</li>
            <li>Well Documented</li>
          </ul>

        </div>
      </div>
    </div>

    <div class="row">
      <div class="span4 blue box">
        <h2>Learn</h2>
        <ul>
          <li>Blog</li>
          <li>Forums</li>
          <li>Tutorials</li>
          <li>Documentation</li>
        </ul>
      </div>
      <div class="span4 red box">
        <h2>Get</h2>
        <ul>
          <li>Code</li>
          <li>GitHub</li>
        </ul>
      </div>
      <div class="span4 green box">
        <h2>Contribute</h2>
        <ul>
          <li>Source</li>
          <li>Documentation</li>
        </ul>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>
