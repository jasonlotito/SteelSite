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
        <a name="top"></a>
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

                <form id="navSearch" class="form-search pull-right form-inline">
                  <div class="input-append">
                  <input type="text" class="span2 search-query"/>
                  <button type="submit" class="btn">Search</button>
                  </div>
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

        <script><![CDATA[
window.fbAsyncInit = function() {
  FB.init({
    appId      : '338400652893189', // App ID
    channelUrl : '//WWW.YOUR_DOMAIN.COM/channel.html', // Channel File
    status     : true, // check login status
    cookie     : true, // enable cookies to allow the server to access the session
    xfbml      : true  // parse XFBML
  });
// Additional initialization code here
};
// Load the SDK Asynchronously
(function(d){
  var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
  if (d.getElementById(id)) {return;}
  js = d.createElement('script'); js.id = id; js.async = true;
  js.src = "//connect.facebook.net/en_US/all.js";
  ref.parentNode.insertBefore(js, ref);
}(document));
        ]]></script>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
