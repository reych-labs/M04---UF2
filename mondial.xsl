<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>UF3 - Activitat 10</title>
      </head>
      <body>
        <h2>Pregunta 1</h2>
        <table border="1">
          <tr bgcolor="#FEF09A">
            <th>Name</th>
            <th>ID</th>
          </tr>
          <xsl:for-each select="mondial/sea[position()&lt;=5]">
            <tr>
              <td><xsl:value-of select="name" /></td>
              <td><xsl:value-of select="@id" /></td>
            </tr>
          </xsl:for-each>
        </table>
		<h2>Pregunta 2</h2>
		<table border="1"> 
            <tr>
                <th>Name</th>
            </tr>
            <xsl:for-each select="/mondial/sea[position()&lt;=5]">
                <xsl:choose>
                    <xsl:when test="count(located) &gt; 7">
                        <tr bgcolor="green">
                            <td><xsl:value-of select="name"/></td>
                        </tr>
                    </xsl:when>
                    <xsl:when test="depth &lt; 200">
                        <tr bgcolor="yellow">
                            <td><xsl:value-of select="name"/></td>
                        </tr>
                    </xsl:when>
                    <xsl:otherwise>
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                        </tr>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>  
        </table>
		<h2>Pregunta 3</h2>
		<table border="1"> 
            <tr>
                <th>Country</th>
            </tr>
            <xsl:for-each select="/mondial/sea[position()&lt;=5]">
                <xsl:choose>
                    <xsl:when test="count(located) &gt; 7">
                        <tr bgcolor="green">
                            <td><xsl:value-of select="name"/></td>
                        </tr>
                    </xsl:when>
                    <xsl:when test="depth &lt; 200">
                        <tr bgcolor="yellow">
                            <td><xsl:value-of select="name"/></td>
                        </tr>
                    </xsl:when>
                    <xsl:otherwise>
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                        </tr>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>  
        </table>
		<h2>Pregunta 4</h2>
		<table border="1"> 
            <tr>
                <th>Sea</th>
            </tr>
            <xsl:for-each select="distinct-values(//airport/@country)">
                <xsl:sort select="." />
                <tr>
                    <td><xsl:value-of select="."/></td>
                </tr>
            </xsl:for-each>  
        </table>

      </body>
     </html>
  </xsl:template>
</xsl:stylesheet>
