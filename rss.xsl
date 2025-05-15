<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/rss">
    <html>
      <head>
        <title><xsl:value-of select="channel/title"/></title>
        <style>
          body { font-family: Arial; background-color: #f9f9f9; padding: 20px; }
          h1 { color: #0057b8; }
          .item { background: #fff; padding: 15px; margin-bottom: 15px; border-radius: 8px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); }
          .item h2 { margin: 0 0 10px; }
          .item p { margin: 5px 0; }
          .date { color: #777; font-size: 0.9em; }
        </style>
      </head>
      <body>
        <h1><xsl:value-of select="channel/title"/></h1>
        <p><xsl:value-of select="channel/description"/></p>

        <xsl:for-each select="channel/item">
          <div class="item">
            <h2><a href="{link}"><xsl:value-of select="title"/></a></h2>
            <p class="date"><xsl:value-of select="pubDate"/></p>
            <p><xsl:value-of select="description"/></p>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
