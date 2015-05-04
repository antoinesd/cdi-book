<xsl:stylesheet 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  
	xmlns:xml="http://www.w3.org/XML/1998/namespace" version="1.0" >
	<!-- The Identity Transformation -->
	 <xsl:output method="xml" />
  <!-- Whenever you match any node or any attribute -->
  <xsl:template match="node()|@*"><!-- Copy the current node --><xsl:copy><!-- Including any attributes it has and any child nodes --><xsl:apply-templates select="@*|node()"/></xsl:copy></xsl:template>
  </xsl:stylesheet>