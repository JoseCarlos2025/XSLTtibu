<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

    <xsl:output method="html" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>

    <xsl:template match="/">
        <html>
      <head></head>
      <body>
        <table>
          <thead>
            <tr>
              <th>refernce</th>
              <th>title</th>
              <th>editorial</th>
              <th>writer</th>
              <th>sale_date</th>
              <th>price</th>
              <th>number_of_sales</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="//book">
              <tr>
                <td><xsl:value-of select="refernce"/></td>
                <td><xsl:value-of select="title"/></td>
                <td><xsl:value-of select="editorial"/></td>
                <td><xsl:value-of select="writer"/></td>
                <td><xsl:value-of select="sale_date"/></td>
                <td><xsl:value-of select="price"/></td>
                <td><xsl:value-of select="number_of_sales"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
        
        <p id="demo"></p>
        <button onclick="Result(0)">Boton</button>
        <button onclick="Result(1)">Boton</button>
        <button onclick="Result(2)">Boton</button>
        <button onclick="Result(3)">Boton</button>
        <button onclick="Result(4)">Boton</button>
        <button onclick="Result(5)">Boton</button>
        <button onclick="Result(6)">Boton</button>
        <button onclick="Result(7)">Boton</button>
        <button onclick="Result(8)">Boton</button>
        <button onclick="Result(9)">Boton</button>
        <script src="js/book.js"></script>
      </body>

    </html>
    </xsl:template>

    

</xsl:stylesheet>