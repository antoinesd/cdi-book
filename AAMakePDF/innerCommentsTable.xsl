<xsl:stylesheet xmlns:manning="http://www.manning.com"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:db="http://docbook.org/ns/docbook"
	xmlns:xml="http://www.w3.org/XML/1998/namespace" version="1.0">

	<!-- <xsl:output method="html" doctype-system=
		"http://www.w3.org/TR/html4/strict.dtd" doctype-public="-//W3C//DTD HTML 4.01 Strict//EN"/>-->
	

	<xsl:output method="xml" />

	<xsl:param name="chapterId">1</xsl:param>
	<xsl:param name="imageDir">/Agile/images/</xsl:param>
	<xsl:param name="includesDir">/Agile/includes/</xsl:param>
	<xsl:param name="userId">1</xsl:param>
	<xsl:param name="bookName">Mule In Action</xsl:param>
	<xsl:param name="chapterNumber">6</xsl:param>
	<xsl:param name="email">nchase@earthlink.net</xsl:param>
	<xsl:param name="userEmail">nchase@earthlink.net</xsl:param>
	<xsl:param name="displayName">Marjan Bace</xsl:param>
	<xsl:param name="token">1345</xsl:param>
	<xsl:param name="defaultOpen">0</xsl:param>
	<xsl:param name="chatBridgeToken">0e57c5b6ae79c247890cd73f3c655d5716621863</xsl:param>
	<xsl:param name="teaserLength">165</xsl:param>
	<xsl:param name="versionNumber">165</xsl:param>
	<xsl:param name="markerAtX">-1</xsl:param>
	<xsl:param name="markerAtY">-1</xsl:param>
	<xsl:param name="scrollToY">-1</xsl:param>
	<xsl:param name="baseURL">http://localhost:8080/Agile</xsl:param>
	<xsl:param name="baseHistoryURL"></xsl:param>
	<xsl:param name="baseHistoryName"></xsl:param>
	<xsl:param name="chatBridgeBase"></xsl:param>
	<xsl:param name="chapterLabel">Chapter</xsl:param>

    

	<xsl:template match="toc|indexterm|calloutlist"></xsl:template>

    <xsl:template match="//variablelist"><xsl:apply-templates></xsl:apply-templates></xsl:template>
    
    <xsl:template match="varlistentry">
    
    	<xsl:variable name="thisId"><xsl:value-of select="./@id" /></xsl:variable>
	    <div class="rolloverBlock">
    	<xsl:choose>
		    <xsl:when test="//comment[@blockId = $thisId]">
				<div class="commentWindow commentWindowActive"><xsl:text> </xsl:text></div>
			</xsl:when>
			<xsl:otherwise>
				<div class="commentWindow"><xsl:text> </xsl:text></div>
			</xsl:otherwise>
		</xsl:choose>

		<xsl:element name="p">
			<xsl:attribute name="class">para</xsl:attribute>
			<xsl:attribute name="blockOrder"><xsl:value-of select="@blockOrder" /></xsl:attribute>
			<xsl:attribute name="id"><xsl:value-of select="translate(@id, '.', '_')" /></xsl:attribute>
			<b><xsl:apply-templates select="term" /></b>:  <xsl:apply-templates select="listitem/para" />
		</xsl:element>
		</div>
    
    
    </xsl:template>


	<xsl:template match="formalpara">
	    <xsl:variable name="thisId"><xsl:value-of select="./@id" /></xsl:variable>
	    <div class="rolloverBlock">
    	<xsl:choose>
		    <xsl:when test="//comment[@blockId = $thisId]">
				<div class="commentWindow commentWindowActive"><xsl:text> </xsl:text></div>
			</xsl:when>
			<xsl:otherwise>
				<div class="commentWindow"><xsl:text> </xsl:text></div>
			</xsl:otherwise>
		</xsl:choose>

		<xsl:element name="h3">
			<xsl:attribute name="class">para</xsl:attribute>
			<xsl:attribute name="blockOrder"><xsl:value-of select="@blockOrder" /></xsl:attribute>
			<xsl:attribute name="id"><xsl:value-of select="translate(@id, '.', '_')" /></xsl:attribute>
			<xsl:apply-templates select="title" />
		</xsl:element>
		</div>
		
		<xsl:apply-templates select="./para" />
	</xsl:template>


	<xsl:template match="para">
	    <xsl:variable name="thisId"><xsl:value-of select="./@id" /></xsl:variable>
	    <div class="rolloverBlock">
    	<xsl:choose>
		    <xsl:when test="//comment[@blockId = $thisId]">
				<div class="commentWindow commentWindowActive"><xsl:text> </xsl:text></div>
			</xsl:when>
			<xsl:otherwise>
				<div class="commentWindow"><xsl:text> </xsl:text></div>
			</xsl:otherwise>
		</xsl:choose>

		<xsl:element name="p">
			<xsl:attribute name="class">para</xsl:attribute>
			<xsl:attribute name="blockOrder"><xsl:value-of select="@blockOrder" /></xsl:attribute>
			<xsl:attribute name="id"><xsl:value-of select="translate(@id, '.', '_')" /></xsl:attribute>
			<xsl:apply-templates />
		</xsl:element>
		</div>
	</xsl:template>
	
	<xsl:template match="para[itemizedlist]|p[orderedlist]">
	    <xsl:apply-templates />
	</xsl:template>
	
		<xsl:template match="para[itemizedlist][text()]|p[orderedlist][text()]">
	    	    <xsl:variable name="thisId"><xsl:value-of select="./@id" /></xsl:variable>
	    <div class="rolloverBlock">
    	<xsl:choose>
		    <xsl:when test="//comment[@blockId = $thisId]">
				<div class="commentWindow commentWindowActive"><xsl:text> </xsl:text></div>
			</xsl:when>
			<xsl:otherwise>
				<div class="commentWindow"><xsl:text> </xsl:text></div>
			</xsl:otherwise>
		</xsl:choose>

		<xsl:element name="p">
			<xsl:attribute name="class">para</xsl:attribute>
			<xsl:attribute name="blockOrder"><xsl:value-of select="@blockOrder" /></xsl:attribute>
			<xsl:attribute name="id"><xsl:value-of select="translate(@id, '.', '_')" /></xsl:attribute>
			<xsl:apply-templates />
		</xsl:element>
		</div>
	</xsl:template>
	
   <xsl:template match="//footnote/para">
	    <xsl:apply-templates />
	</xsl:template>
	

	
	<xsl:template match="table//para">
		<xsl:variable name="thisId"><xsl:value-of select="./@id" /></xsl:variable>
	    <div class="rolloverBlock">
    	<xsl:choose>
		    <xsl:when test="//comment[@blockId = $thisId]">
				<div class="commentWindow commentWindowActive"><xsl:text> </xsl:text></div>
			</xsl:when>
			<xsl:otherwise>
				<div class="commentWindow"><xsl:text> </xsl:text></div>
			</xsl:otherwise>
		</xsl:choose>
	
	    <xsl:element name="p">
	   		<xsl:attribute name="blockOrder"><xsl:value-of select="@blockOrder" /></xsl:attribute>
	    	<xsl:attribute name="class">tablepara</xsl:attribute>
			<xsl:attribute name="id"><xsl:value-of select="translate(@id, '.', '_')" /></xsl:attribute>
			<xsl:apply-templates />
		</xsl:element>
		</div>
	</xsl:template>
	




	<xsl:template match="figure">
	<xsl:variable name="thisId"><xsl:value-of select="./@id" /></xsl:variable>
	    <div class="rolloverBlock">
    	<xsl:choose>
		    <xsl:when test="//comment[@blockId = $thisId]">
				<div class="commentWindow commentWindowActive"><xsl:text> </xsl:text></div>
			</xsl:when>
			<xsl:otherwise>
				<div class="commentWindow"><xsl:text> </xsl:text></div>
			</xsl:otherwise>
		</xsl:choose>
	
		<xsl:element name="img">
		    <xsl:attribute name="blockOrder"><xsl:value-of select="@blockOrder" /></xsl:attribute>
		    <xsl:attribute name="id"><xsl:value-of select="$thisId" /></xsl:attribute>
			<xsl:if test=".//imagedata/@resizeTo">
				<xsl:attribute name="width"><xsl:value-of
					select=".//imagedata/@resizeTo" /></xsl:attribute>
			</xsl:if>
			<xsl:attribute name="src"><xsl:value-of select="$imageDir" /><xsl:value-of
				select=".//imagedata/@fileref" /></xsl:attribute>
		</xsl:element>
		<br />
		<xsl:element name="div">
			<xsl:attribute name="class">figureCaption</xsl:attribute>
			<span class="figureCaptionNumber">Figure <xsl:value-of select="$chapterNumber" />.<xsl:number count="figure" level="any" from="chapter"
				format="1 " /></span>&#x00A0;<xsl:value-of select="title" />
		</xsl:element>
		</div>
	</xsl:template>
	
	
<!-- <xsl:template match="example[@role='listing'][mediaobject]">-->
	<xsl:template match="example[mediaobject]">
	<xsl:variable name="thisId"><xsl:value-of select="./@id" /></xsl:variable>
	    <div class="rolloverBlock">
    	<xsl:choose>
		    <xsl:when test="//comment[@blockId = $thisId]">
				<div class="commentWindow commentWindowActive"><xsl:text> </xsl:text></div>
			</xsl:when>
			<xsl:otherwise>
				<div class="commentWindow"><xsl:text> </xsl:text></div>
			</xsl:otherwise>
		</xsl:choose>
	
	<div class="listingTitle">
			Listing <xsl:value-of select="$chapterNumber" />.<xsl:number count="example|figure[@role='listing']" level="any" from="chapter"
				format="1 " />&#x00A0;<xsl:apply-templates select="title" />
		</div>

		<xsl:element name="div">
			<xsl:attribute name="class">example</xsl:attribute>
			<xsl:attribute name="blockOrder"><xsl:value-of select="@blockOrder" /></xsl:attribute>
			<xsl:attribute name="id"><xsl:value-of select="translate(@id, '.', '_')" /></xsl:attribute>
			<xsl:element name="img">
			<xsl:attribute name="src"><xsl:value-of select="$imageDir" /><xsl:value-of
				select=".//imagedata/@fileref" /></xsl:attribute>
		</xsl:element>
		</xsl:element>
	</div>
	
	</xsl:template>




	<xsl:template match="note|warning|important|sidebar|tip">
		<xsl:element name="div">
			<xsl:attribute name="class">notesEtc</xsl:attribute>
			<xsl:attribute name="blockOrder"><xsl:value-of select="@blockOrder" /></xsl:attribute>
			<xsl:attribute name="id"><xsl:value-of select="translate(@id, '.', '_')" /></xsl:attribute>
			<p class="notesEtcTitle">
				<xsl:apply-templates select="title" />
			</p>
			<p class="notesEtcContent">
				<xsl:apply-templates select="para" />
			</p>
		</xsl:element>
	</xsl:template>

	<xsl:template match="itemizedlist">
		<ul>
			<xsl:apply-templates />
		</ul>
	</xsl:template>

	<xsl:template match="orderedlist">
		<ol>
			<xsl:apply-templates />
		</ol>
	</xsl:template>

	<xsl:template match="listitem">
		<xsl:element name="li">
			<xsl:attribute name="class">listitem</xsl:attribute>
			<xsl:attribute name="blockOrder"><xsl:value-of select="@blockOrder" /></xsl:attribute>
			<xsl:attribute name="id"><xsl:value-of select="translate(@id, '.', '_')" /></xsl:attribute>
			<xsl:apply-templates />
		</xsl:element>
	</xsl:template>

	<xsl:template match="footnote">
		<span class="footnote">
			*
			<span class="footnoteContent">
				<xsl:apply-templates />
			</span>
		</span>
	</xsl:template>

	<xsl:template match="example">
		<xsl:variable name="thisId"><xsl:value-of select="./@id" /></xsl:variable>
	    <div class="rolloverBlock">
    	<xsl:choose>
		    <xsl:when test="//comment[@blockId = $thisId]">
				<div class="commentWindow commentWindowActive"><xsl:text> </xsl:text></div>
			</xsl:when>
			<xsl:otherwise>
				<div class="commentWindow"><xsl:text> </xsl:text></div>
			</xsl:otherwise>
		</xsl:choose>

		<div class="listingTitle">
			Listing <xsl:value-of select="$chapterNumber" />.<xsl:number count="example|figure[@role='listing']" level="any" from="chapter"
				format="1 " />&#x00A0;<xsl:apply-templates select="title" />
		</div>

		<xsl:element name="div">
			<xsl:attribute name="class">example</xsl:attribute>
			<xsl:attribute name="blockOrder"><xsl:value-of select="@blockOrder" /></xsl:attribute>
			<xsl:attribute name="id"><xsl:value-of select="translate(@id, '.', '_')" /></xsl:attribute>
			<xsl:apply-templates select="programlisting|mediaobject" />
		</xsl:element>
		</div>
	</xsl:template>

	<xsl:template match="informalexample">
		<xsl:variable name="thisId"><xsl:value-of select="./@id" /></xsl:variable>
	    <div class="rolloverBlock">
    	<xsl:choose>
		    <xsl:when test="//comment[@blockId = $thisId]">
				<div class="commentWindow commentWindowActive"><xsl:text> </xsl:text></div>
			</xsl:when>
			<xsl:otherwise>
				<div class="commentWindow"><xsl:text> </xsl:text></div>
			</xsl:otherwise>
		</xsl:choose>

		<xsl:element name="div">
			<xsl:attribute name="class">informalexample</xsl:attribute>
			<xsl:attribute name="blockOrder"><xsl:value-of select="@blockOrder" /></xsl:attribute>
			<xsl:attribute name="id"><xsl:value-of select="translate(@id, '.', '_')" /></xsl:attribute>
			<xsl:apply-templates select="programlisting|mediaobject" />
		</xsl:element>
		</div>
	</xsl:template>


	<xsl:template match="programlisting">
		<!-- <div class="sidelineBugs">
			<xsl:apply-templates select="co" />
		</div> -->
		<xsl:element name="div">
			<xsl:attribute name="class">programlisting</xsl:attribute>
			<xsl:attribute name="blockOrder"><xsl:value-of select="@blockOrder" /></xsl:attribute>
			<xsl:attribute name="id"><xsl:value-of select="translate(@id, '.', '_')" /></xsl:attribute>
			<pre class="programlisting" xml:space="preserve"><xsl:apply-templates /></pre>
		</xsl:element>
	</xsl:template>

	<xsl:template match="code">
		<code>
			<xsl:apply-templates />
		</code>
	</xsl:template>

	<xsl:template match="table">
		<xsl:variable name="thisId"><xsl:value-of select="./@id" /></xsl:variable>
	    
	    <html>
	    <head>
<style type="text/css">
 
 ol, ul {
 	margin-bottom: 40px;
 }
 
 li.abstract {
 	margin-bottom: -15px;
 }
 
 li p {
 	margin-bottom: -15px;
 }
 
li.lastChild p {
 //	margin-bottom: 10px;
 }
 
 td p.para {
 	//width: auto;
 }
 
 pre.programlisting {
 	font-size: 13px;
 	line-height: 125%;
 	 text-indent: 0px;
 }
 
 p.para { text-align: justify;
 	 margin-bottom: 0px;
 	 margin-top: 0px;
 	 margin-right:30px; 
 	 font-size: 14pt;
 	 line-height:135%;
 	 
 	 z-index: 1;
}

p.notePara {
	//width: 5in;
}

p.notePara + p.notePara {
    text-indent: 25px;
}

li.abstract p.listPara {
	//width: 5.0in;
}

p.listPara {
	//width: 6.0in;
}

td p.listPara {
	//width: auto;
}

.indented { text-indent: 25px;
	text-align: justify;
 	 margin-bottom: 0px;
 	 margin-top: 0px;
 	 margin-right:30px; 
 	 font-size: 14pt;
 	 line-height:135%;
 	 
 	 z-index: 1; 
 	 font-weight: normal;}
 
h1 { font-size: 15pt;
      font-weight: bolder;
      font-style: italic;
      margin-bottom: 0px;
      position: relative;
      font-family:sans-serif;
      left: -30px;
       	 
 	 z-index: 1;
 	 page-break-before: avoid;
 	 page-break-after: avoid; }
      
h2 { font-size: 14pt;
      font-weight: bold;
      font-style: italic;
      margin-bottom: 0px;
      position: relative;
      font-family:sans-serif;
      left: -50px;
       	 
 	 z-index: 1;
 	 page-break-before: avoid;
 	 page-break-after: avoid; }
      
h3 {text-transform: uppercase; 
	font-size: 12pt;
      font-weight: bold;
      //font-style: italic;
      margin-bottom: 0px;
      position: relative;
      font-family:sans-serif;
       	 
 	 z-index: 1;
 	 page-break-before: avoid;
 	 page-break-after: avoid;
       }

h4 {text-transform: uppercase; 
	font-size: 10pt;
      font-weight: bold;
      font-style: italic;
      margin-bottom: 0px;
      position: relative;
      font-family:sans-serif;
       	 
 	 z-index: 1;
 	 page-break-before: avoid;
 	 page-break-after: avoid;
       }
      
.figureCaption {
	  margin-top: 3px;
		font-size: 10.5pt;
      font-weight: bold;
      margin-bottom: 3px;
      font-family:sans-serif;
       	 
 	 z-index: 1;
 	line-height: 120%;
}

.notesEtc {
	margin-top: 20px;
	margin-bottom: 20px;
	border: 0px;
 	 z-index: 1;
 	 
 	 line-height: 135%;
	font-size: 12pt;
	border: 0px;
	background-color: #CCCCCC;
}
.notesEtcTitle{
	font-weight: bold;
	z-index: 1;
	border: 0px; 
	vertical-align: top; 
	padding-right: 20px;
	//width: .75in;
	font-family: sans-serif;
}
 
.notesEtcContent > p, .notePara{
	border: 0px;
	padding-top: 0px;
	margin-top: 0px;
	padding-bottom: 0px;
	margin-bottom: 0px;
	text-align: justify;
	font-family: sans-serif;
} 

.notesEtcContent {
	border: 0px;
	padding-top: 0px;
	padding-bottom: 0px;
	//width: 5in;
}

.notesEtcContentTitle {
	font-weight: bold;
}

td.notesEtcContent p.indented {
	//width: 5in;
}

td.notesEtcContent {
	border: 0px;
}

.listingTitle {
	background-color: #AAAAAA; 
	color: white; 
	padding-bottom: 0px; 
	margin-bottom: 0px; 
	margin-top: 20px;
	
	font-family: sans-serif;
	font-weight: bold;
} 
 
.cueball {
	padding-left: 10px;
	height: 18px;
	width: 18px;
} 

.inlinecueball {
    position: relative;
    top: 2px;
	padding-right: 0px;
	padding-left: 0px;
	height: 18px;
	width: 18px;
}
 .calloutlist {
	margin-bottom: 30px;
} 

.calloutBox {
	position: relative; 
	top: -20px; 
	left: 30px;
}

.calloutContainer {
	position:absolute;
	right: 150px;
	width:125px;
	white-space: normal;
	font-family: sans-serif;
	font-weight: bold;
	font-size: 10pt;
}

p.calloutPara {
	clear: left;
	margin-bottom: -10px;
}

.calloutlist .calloutPara{
    margin-bottom: -17px;
}

.tableCaption {
	font-weight: bold;
    font-family:sans-serif;
    margin-bottom: 5px;
    page-break-after: avoid;
}

.tableHeaderRow {
	background-color: #CCCCCC;
	font-weight: bold;
	
}

.contentTable {
	//width: 7in;
	border-collapse: collapse;
	border-style: solid;	
	font-family: sans-serif;
	border: 0px;
}

.tableDiv {
	margin-bottom: 20px;
	margin-top: 20px;
	position: relative;
	left: -50px;
 	 z-index: 1;
 	 //width: 7in;
}

td{
	border: 1px solid black;
	margin: 0px;
	padding: 5px;
	vertical-align: top;
	padding-top: 2px;
	padding-bottom: 2px;
}
.abstract {
	background-color: #CCCCCC;
	width: 75%;
	font-family: sans-serif;
	padding: 10px;
}

.figureDiv {
	margin-bottom: 20px;
	margin-top: 20px;
	width: 90%;
 	 z-index: 1;
}

.figureDiv > img {
	width: 75%;
}

.code {
	font-family: monospace;
}
 
.interfacename {
	font-family: monospace;
}
 
.classname {
	font-family: monospace;
}
 
.methodname {
	font-family: monospace;
}
 
.packagename {
	font-family: monospace;
}

.ulink {
	color: blue;
	text-decoration: none;
	
}

.footnote > p {
	font-size: 10pt;
	display: inline;
}

.footnote {
	margin-bottom: 5px;
	font-size: 10pt;
	border-top: .5px solid #777777;
	border-bottom: .5px solid #777777;
	margin-top: 7px;
	width: 83%;
	page-break-before: avoid;
	page-break-inside: avoid;
	  z-index: 1;
	  padding-top: 3px;
	  padding-bottom: 3px;
}

.footnote + .listPara {
}

table {
	page-break-inside: avoid;
}

page:before {
	content: "Chapter";
}

#footnotes {
	margin-top: 50px;
}

.calloutListBug {
	clear: left;
	margin-right: 10px;
	float: left;
	margin-bottom: -20px;
}
.calloutParaDiv{
	margin-left: 40px;
}

.blockquote {
	margin: 20px;
	width: 70%;
}

.blockquoteAttribution{
	text-align: right;
}

.internalnote {
	display: none;
	color: red;
	font-weight: bold;
}

.programlisting{
	//width: 6.4in;
	background-color: #EEEEFF;
	padding: 5px;
    z-index: 1;
}

td pre.programlisting {
	//width: 98%;
	padding-right: 5px;
}

.partTitle { page-break-before: always; color: red; }
.chapter { page-break-before: always; }
.chapterNumber { 
	float: right; 
	font-size: 256px; 
	color: #DDDDDD; 
	font-style: italic;
	padding-right: 100px;
}
.chapterTitle {
	float: right; 
	font-style: italic; 
	position: absolute; 
	right: 0px; 
	padding-top: 125px; 
	font-size: 28pt;
	padding-right: 100px;
}

#coverImage {
	height: 100%;
	width: 100%;
	page-break-before:;
	page-break-after: always;
	position: absolute;
	top: 0px;
	left: 0px;
	
}

.toc {
	page-break-before: always;
}

#tocTitle {
    text-align: center;
    font-size: 24pt;
    margin-bottom: 50px;
     	 
 	 z-index: 1;
}

.tocChapter {
	line-height: 135%;
}

.tocPart {
	font-size: 15.5pt;
	margin-top: 20px;
	margin-bottom: 10px;
	 	 
 	 z-index: 1;
}

.emdash {
	color: white;
}

.grayemdash {
	color: #CCCCCC;
}

.formalparaTitle {
	margin-bottom: 0px;
}

@page {

	margin-left: 1.3cm;
	margin-right: 1.3cm;
	margin-bottom: 1.8cm;
	margin-top: 1.8cm;

}

@page:first {

	margin: 0cm;

}

@page :left {
  @top-left {
    content: counter(page);
    padding-left: .3in;
  }
}
@page :right {
  @top-right {
    content: counter(page);
    padding-right: .35in;
  }
}

 </style>
	    </head>
	    <body>
	    
		<xsl:element name="table">
			<xsl:attribute name="class">contentTable</xsl:attribute>
			<xsl:attribute name="blockOrder"><xsl:value-of select="@blockOrder" /></xsl:attribute>
			<xsl:attribute name="id"><xsl:value-of select="translate(@id, '.', '_')" /></xsl:attribute>
			<xsl:apply-templates select=".//row" />
		</xsl:element>
		
		</body></html>
	</xsl:template>

	<xsl:template match="row">
		<tr>
			<xsl:apply-templates />
		</tr>
	</xsl:template>

	<xsl:template match="entry">
		<td>
			<xsl:apply-templates />
		</td>
	</xsl:template>
	
	<xsl:template match="thead//entry">
		<td>
			<span class="tableHead"><xsl:apply-templates /></span>
		</td>
	</xsl:template>


 	<xsl:template match="//xref[@endterm]">
		<xsl:call-template name="endtermTemplate">
			<xsl:with-param name="theEndterm"><xsl:value-of select="@endterm" /></xsl:with-param>
		</xsl:call-template> 	
 	</xsl:template>
 	
 	<xsl:template name="endtermTemplate">
 		<xsl:param name="theEndterm"></xsl:param>
 		<xsl:value-of select="//node()[@id=$theEndterm]" />
 	</xsl:template>

 	<xsl:template match="//xref[not(@endterm)]">
		<xsl:call-template name="noEndtermTemplate">
			<xsl:with-param name="theLinkend"><xsl:value-of select="translate(@linkend, '.', '_')" /></xsl:with-param>
		</xsl:call-template> 	
 	</xsl:template>
 	
 	<xsl:template name="noEndtermTemplate">
 		<xsl:param name="theLinkend"></xsl:param>
 		<xsl:choose>
 		<xsl:when test="//node()[@id=$theLinkend]">
 			<xsl:choose>
 			<xsl:when test="//node()[@id=$theLinkend]/@xreflabel">
 			   <xsl:value-of select="//node()[@id=$theLinkend]/@xreflabel" />
 			</xsl:when>
 			<xsl:otherwise>
 			   <xsl:call-template name="numberedElement">
 			      <xsl:with-param name="elementName"><xsl:value-of select="local-name(//node()[@id=$theLinkend])" /></xsl:with-param>
 			      <xsl:with-param name="elementId"><xsl:value-of select="$theLinkend" /></xsl:with-param>
 			   </xsl:call-template>
 			</xsl:otherwise>
 			</xsl:choose>
 		</xsl:when>
 		<xsl:otherwise>XREF <xsl:value-of select="$theLinkend" /></xsl:otherwise>
 		</xsl:choose>
 	</xsl:template>
 	
 	<xsl:template name="numberedElement"><xsl:param name="elementName"></xsl:param><xsl:param name="elementId"></xsl:param>
 	<xsl:choose>
	 	<xsl:when test="$elementName = 'chapter'">
	 	    <xsl:value-of select="//chapter[@id=$elementId]/@label" />
	 	</xsl:when>
	 	<xsl:when test="$elementName = 'sect2'">
	    	<xsl:value-of select="//chapter[.//node()[@id=$elementId]]/@label" />.<xsl:value-of select="count(//node()[local-name()='sect1'][ancestor::chapter[.//node()[@id=$elementId]]][following::node()[@id=$elementId]]) + 1" />.<xsl:value-of select="count(//node()[local-name()=$elementName][ancestor::chapter[.//node()[@id=$elementId]]][following::node()[@id=$elementId]]) + 1" />
	 	</xsl:when>
	 	<xsl:when test="$elementName = 'sect3'">
	    	<xsl:value-of select="//chapter[.//node()[@id=$elementId]]/@label" />.<xsl:value-of select="count(//node()[local-name()='sect1'][ancestor::chapter[.//node()[@id=$elementId]]][following::node()[@id=$elementId]]) + 1" />.<xsl:value-of select="count(//node()[local-name()='sect2'][ancestor::chapter[.//node()[@id=$elementId]]][following::node()[@id=$elementId]]) + 1" />.<xsl:value-of select="count(//node()[local-name()=$elementName][ancestor::chapter[.//node()[@id=$elementId]]][following::node()[@id=$elementId]]) + 1" />
	 	</xsl:when>
	 	<xsl:when test="$elementName = 'sect4'">
	 	    <xsl:value-of select="//chapter[.//node()[@id=$elementId]]/@label" /><xsl:value-of select="count(//node()[local-name()='sect1'][ancestor::chapter[.//node()[@id=$elementId]]][following::node()[@id=$elementId]]) + 1" />.<xsl:value-of select="count(//node()[local-name()='sect2'][ancestor::chapter[.//node()[@id=$elementId]]][following::node()[@id=$elementId]]) + 1" />.<xsl:value-of select="count(//node()[local-name()='sect3'][ancestor::chapter[.//node()[@id=$elementId]]][following::node()[@id=$elementId]]) + 1" />.<xsl:value-of select="count(//node()[local-name()=$elementName][ancestor::chapter[.//node()[@id=$elementId]]][following::node()[@id=$elementId]]) + 1" />
	 	</xsl:when>
	 	<xsl:otherwise>
	 	    <xsl:value-of select="//chapter[.//node()[@id=$elementId]]/@label" />.<xsl:value-of select="count(//node()[local-name()=$elementName][ancestor::chapter[.//node()[@id=$elementId]]][following::node()[@id=$elementId]]) + 1" />
	 	</xsl:otherwise>
 	</xsl:choose>
 	</xsl:template>
 	
 	
 	
 	
 	
 		<xsl:template match="co"><xsl:variable name="thisId">
			<xsl:value-of select="@id" />
		</xsl:variable><xsl:variable name="thisBug"><xsl:value-of select="//calloutlist/callout[contains(@arearefs, $thisId)]/@bugNumber" />
			<!-- REPLACE 5/10 NC to account for in-text callout bugs
			<xsl:number count="co" level="any" 
				from="programlisting|screen|literallayout|synopsis" format="1" /> -->
		</xsl:variable><xsl:element name="span"><xsl:attribute name="class">calloutBug</xsl:attribute><xsl:attribute name="refid"><xsl:value-of select="translate(@id, '.', '_')" /></xsl:attribute><xsl:element name="img">
			    <xsl:attribute name="class">cueball</xsl:attribute>
			    <xsl:attribute name="refid"><xsl:value-of select="translate(@id, '.', '_')" /></xsl:attribute>
				<xsl:attribute name="id">img<xsl:value-of
					select="@id" /></xsl:attribute>
				<xsl:attribute name="src"><xsl:value-of select="$baseURL" />/images/queballs/<xsl:value-of
					select="$thisBug" />.gif</xsl:attribute>
			</xsl:element><xsl:element name="div">
				<xsl:attribute name="blockOrder"><xsl:value-of select="@blockOrder" /></xsl:attribute>
				<xsl:attribute name="id">div<xsl:value-of
					select="@id" /></xsl:attribute>
				<xsl:attribute name="class">calloutBox</xsl:attribute>
				<xsl:value-of select="//callout[contains(@arearefs, $thisId)]" />
			</xsl:element></xsl:element></xsl:template>

	<xsl:template match="para//co">
<xsl:variable name="thisId">
			<xsl:value-of select="@id" />
		</xsl:variable>

		<xsl:variable name="thisBug">
			<xsl:value-of select="//calloutlist/callout[contains(@arearefs, $thisId)]/@bugNumber" />
		</xsl:variable>
	  <xsl:element name="span">
        	<xsl:attribute name="class">calloutBug</xsl:attribute>
			<xsl:attribute name="refid"><xsl:value-of select="translate(@id, '.', '_')" /></xsl:attribute>
		
			<xsl:element name="img">
			    <xsl:attribute name="class">cueball</xsl:attribute>
			    <xsl:attribute name="refid"><xsl:value-of select="translate(@id, '.', '_')" /></xsl:attribute>
				<xsl:attribute name="blockOrder"><xsl:value-of select="@blockOrder" /></xsl:attribute>
				<xsl:attribute name="id">img<xsl:value-of
					select="@id" /></xsl:attribute>
				<xsl:attribute name="src"><xsl:value-of select="$baseURL" />/images/queballs/<xsl:value-of
					select="$thisBug" />.gif</xsl:attribute>
			</xsl:element> 

		</xsl:element>
	
	</xsl:template>

	
	<xsl:template match="//callout" />
 	
 	<xsl:template match="//bookinfo" />
 	
 	<xsl:template match="//history" />
 	<xsl:template match="//library" />
 	<xsl:template match="//internalnote" />

</xsl:stylesheet>