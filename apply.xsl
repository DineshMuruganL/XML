<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<xsl:template match = "/">
<html>
<body>
<h2>Student</h2>
<xsl:apply-templates select = "class/employee" />
</body>
</html>
</xsl:template>

<xsl:template match = "class/employee">
<xsl:apply-templates select = "@id" />
<xsl:apply-templates select = "name" />
<xsl:apply-templates select = "email" />

<xsl:apply-templates select = "score" />
<br />
</xsl:template>
<xsl:template match = "@id">
<span style = "font-size = 25px;">
<xsl:value-of select = "." />
</span>
<br />
</xsl:template>
<xsl:template match = "name">
First Name:<span style = "color:red;">
<xsl:value-of select = "." />
</span>
<br />
</xsl:template>
<xsl:template match = "email">
email:<span style = "color:green;">
<xsl:value-of select = "." />
</span>
<br />
</xsl:template>
<xsl:template match = "score">
Marks:<span style = "color:orange;">
<xsl:value-of select = "." />
</span>
<br />
</xsl:template>
</xsl:stylesheet>

