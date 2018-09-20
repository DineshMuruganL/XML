<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<xsl:template match = "/">
<html>
<body>
<h2> Table</h2>
<table border = "2">
<tr bgcolor = "red">
<th>ID</th>
<th>Name</th>
<th>Age</th>
<th>Salary</th>
<th>Comments</th>
</tr>

<xsl:for-each select = "class/detail">

<tr>
<td><xsl:value-of select = "@id"/></td>
<td><xsl:value-of select = "name"/></td>
<td><xsl:value-of select = "age"/></td>
<td><xsl:value-of select = "salary"/></td>
<td>
<xsl:choose>
<xsl:when test = "salary > 800">
Above Average
</xsl:when>

<xsl:when test = "salary > 600">
Average
</xsl:when>

<xsl:otherwise>
Below Average
</xsl:otherwise>
</xsl:choose>
</td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

