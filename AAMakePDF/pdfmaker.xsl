<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xml="http://www.w3.org/XML/1998/namespace" version="1.0" >

 <!--  ****************************************************************  -->
 <!--  PARAMETERS                                                        -->
 <!--  ****************************************************************  -->	
 <xsl:output method="xml" />
 <xsl:param name="basedir">NOT SET</xsl:param>
 <xsl:param name="docBase"></xsl:param>
 <xsl:param name="coverImage"></xsl:param>
 <!--  ****************************************************************  -->
 <!--  PARAMETERS END                                                  -->
 <!--  ****************************************************************  -->


 <!--  ****************************************************************  -->
 <!--  MAIN PAGE                                                        -->
 <!--  ****************************************************************  -->	  
 <xsl:template match="/">
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
 	width: auto;
 }
 
 pre.programlisting {
 	font-size: 13px;
 	line-height: 125%;
 	text-indent: 0px;
    position: relative;
 }
 
 p.para { text-align: justify;
 	 margin-bottom: 0px;
 	 margin-top: 0px;
 	 margin-right:30px; 
 	 font-size: 14pt;
 	 line-height:135%;
 	 width: 6.5in;
 	 z-index: 1;
}

p.notePara {
	width: 5in;
}

p.notePara + p.notePara {
    text-indent: 25px;
}

li.abstract p.listPara {
	width: 5.0in;
	position:relative;
top:-25px;
margin-bottom: -22px;
}

p.listPara {
	width: 6.0in;
}
p.listPara + div.footnotes {
	margin-top: 22px;
}

td p.listPara {
	width: auto;
}

.indented { text-indent: 25px;
	text-align: justify;
 	 margin-bottom: 0px;
 	 margin-top: 0px;
 	 margin-right:30px; 
 	 font-size: 14pt;
 	 line-height:135%;
 	 width: 6.5in;
 	 z-index: 1; 
 	 font-weight: normal;}
 
h1 { font-size: 15pt;
      font-weight: bolder;
      font-style: italic;
      margin-bottom: 0px;
      position: relative;
      font-family:sans-serif;
      left: -30px;
       	 width: 6.5in;
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
       	 width: 6.5in;
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
       	 width: 6.5in;
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
       	 width: 6.5in;
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
       	 width: 6.5in;
 	 z-index: 1;
 	line-height: 120%;
}

.notesEtc {
	margin-top: 20px;
	margin-bottom: 20px;
	border: 0px;
 	 z-index: 1;
 	 width: 6.5in;
 	 line-height: 135%;
	font-size: 12pt;
	border: 0px;
	background-color: #CCCCCC;
	line-width: 5.5in;
}
.notesEtcTitle{
	font-weight: bold;
	z-index: 1;
	border: 0px; 
	vertical-align: top; 
	padding-right: 20px;
	width: .75in;
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
	width: 5in;
}

.notesEtcContentTitle {
	font-weight: bold;
}

td.notesEtcContent p.indented {
	width: 5in;
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
	width: 6.5in;
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
	width: 6in;
}

td .calloutlist {
	width: auto;
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
	width: 7in;
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
 	 width: 7in;
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
	padding-bottom: 0px;
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
	width: 6.4in;
	background-color: #EEEEFF;
	padding: 5px;
    z-index: 1;
}

td pre.programlisting {
	width: 98%;
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

#indexTermsDiv {
//	page-break-before: always;
}

.toc {
	page-break-before: always;
}

#tocTitle {
    text-align: center;
    font-size: 24pt;
    margin-bottom: 50px;
     	 width: 6.5in;
 	 z-index: 1;
}

.tocChapter {
	line-height: 135%;
}

.tocPart {
	font-size: 15.5pt;
	margin-top: 20px;
	margin-bottom: 10px;
	 	 width: 6.5in;
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

.varlistentry {
	margin-bottom: 10px;
	width:6in;
}

.varlistentry * {
//	position: relative;
//	top: -17px;
display: inline;
}

.biblioEntry {
	margin-bottom: 5px;
	margin-top: 10px;
	width: 6in;
}

.scalaBind {
//	height: 9px;
}
.chapterTitle * .scalaBind {
//	height: 30px;
}
h1 * .scalaBind {
//	height: 16px;
}
h2 * .scalaBind {
//	height: 16px;
}
h3 * .scalaBind {
//	height: 16px;
}
h4 * .scalaBind {
//	height: 12px;
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
 //   content: counter(page);
    padding-left: .3in;
  }
}
@page :right {
  @top-right {
 //   content: counter(page);
    padding-right: .35in;
  }
}

 </style>

 <!--  ****************************************************************  -->
 <!--  MAIN PAGE - bookmarks                                            -->
 <!--  ****************************************************************  -->
 
    <bookmarks>
    
    
    
 <xsl:for-each select="//chapter|//appendix|//preface|//part">
     	<xsl:element name="bookmark">
     	<xsl:if test="local-name() != 'part'">
 	   <xsl:attribute name="name">Chapter <xsl:value-of select="./@label"/>: <xsl:apply-templates select="./title/node()" /></xsl:attribute>
 	   </xsl:if>
 	   <xsl:if test="local-name() = 'part'">
 	   <xsl:attribute name="name">Part <xsl:value-of select="./@label"/>: <xsl:apply-templates select="./title/node()" /></xsl:attribute>
 	   </xsl:if>
 	   <xsl:attribute name="href">#<xsl:value-of select="./@id" /></xsl:attribute>
 	   
		 <xsl:for-each select="./sect1|./simplesect">
		 	<xsl:element name="bookmark">
		 	   <xsl:attribute name="name"><xsl:value-of select="../@label" />.<xsl:value-of select="count(./preceding-sibling::sect1)+count(./preceding-sibling::simplesect)+1" /><xsl:text> </xsl:text><xsl:apply-templates select="./title/node()" /></xsl:attribute>
		 	   <xsl:attribute name="href">#<xsl:value-of select="./@id" /></xsl:attribute>
		 	   <xsl:for-each select="./sect2|./simplesect">
		 	      <xsl:element name="bookmark">
		 	   		<xsl:attribute name="name"><xsl:value-of select="../../@label" />.<xsl:value-of select="count(../preceding-sibling::sect1)+count(../preceding-sibling::simplesect)+1" />.<xsl:value-of select="count(./preceding-sibling::sect2)+count(./preceding-sibling::simplesect)+1" /><xsl:text> </xsl:text><xsl:apply-templates select="./title/node()" /></xsl:attribute>
		 	   		<xsl:attribute name="href">#<xsl:value-of select="./@id" /></xsl:attribute>
		 	   	  </xsl:element>
		 	   </xsl:for-each> 	   
		 	</xsl:element>
		 </xsl:for-each> 
 
	  <xsl:for-each select="./section">
	 	<xsl:element name="bookmark">
	 	   <xsl:attribute name="name"><xsl:value-of select="../@label" />.<xsl:value-of select="count(preceding-sibling::section)+1" /><xsl:text> </xsl:text><xsl:apply-templates select="./title/node()" /></xsl:attribute>
	 	   <xsl:attribute name="href">#<xsl:value-of select="./@id" /></xsl:attribute>
	 	   <xsl:for-each select="./section">
	 	      <xsl:element name="bookmark">
	 	   		<xsl:attribute name="name"><xsl:value-of select="../../@label" />.<xsl:value-of select="count(../preceding-sibling::section)+1" />.<xsl:value-of select="count(preceding-sibling::section)+1" /><xsl:text> </xsl:text><xsl:apply-templates select="./title/node()" /></xsl:attribute>
	 	   		<xsl:attribute name="href">#<xsl:value-of select="./@id" /></xsl:attribute>
	 	   	  </xsl:element>
	 	   </xsl:for-each> 	   
	 	</xsl:element>
	 </xsl:for-each>
	 
 	</xsl:element>
 </xsl:for-each>

 <xsl:for-each select="//preface">   
     	<xsl:element name="bookmark">
 	   <xsl:attribute name="name">Chapter <xsl:value-of select="./@label"/>: <xsl:value-of select="./title" /></xsl:attribute>
 	   <xsl:attribute name="href">#<xsl:value-of select="./@id" /></xsl:attribute>
 	   
		 <xsl:for-each select="./sect1">
		 	<xsl:element name="bookmark">
		 	   <xsl:attribute name="name"><xsl:value-of select="../@label" />.<xsl:number count="sect1" level="any" from="chapter"
								format="1 " /><xsl:apply-templates select="./title/node()" /></xsl:attribute>
		 	   <xsl:attribute name="href">#<xsl:value-of select="./@id" /></xsl:attribute>
		 	   <xsl:for-each select="./sect2">
		 	      <xsl:element name="bookmark">
		 	   		<xsl:attribute name="name"><xsl:value-of select="../../@label" />.<xsl:number count="sect1" level="any" from="chapter"
								format="1." /><xsl:number count="sect2" level="single" from="sect1"
								format="1 " /><xsl:apply-templates select="./title/node()" /></xsl:attribute>
		 	   		<xsl:attribute name="href">#<xsl:value-of select="./@id" /></xsl:attribute>
		 	   	  </xsl:element>
		 	   </xsl:for-each> 	   
		 	</xsl:element>
		 </xsl:for-each> 
 
	  <xsl:for-each select="//preface/section">
	 	<xsl:element name="bookmark">
	 	   <xsl:attribute name="name"><xsl:value-of select="../@label" />.<xsl:value-of select="count(preceding-sibling::section)+1" /><xsl:text> </xsl:text><xsl:apply-templates select="./title/node()" /></xsl:attribute>
	 	   <xsl:attribute name="href">#<xsl:value-of select="./@id" /></xsl:attribute>
	 	   <xsl:for-each select="./section">
	 	      <xsl:element name="bookmark">
	 	   		<xsl:attribute name="name"><xsl:value-of select="../../@label" />.<xsl:value-of select="count(../preceding-sibling::section)+1" />.<xsl:value-of select="count(preceding-sibling::section)+1" /><xsl:text> </xsl:text><xsl:apply-templates select="./title/node()" /></xsl:attribute>
	 	   		<xsl:attribute name="href">#<xsl:value-of select="./@id" /></xsl:attribute>
	 	   	  </xsl:element>
	 	   </xsl:for-each> 	   
	 	</xsl:element>
	 </xsl:for-each>
	 
 	</xsl:element>
 </xsl:for-each>


 <xsl:for-each select="//appendix">   
     	<xsl:element name="bookmark">
 	   <xsl:attribute name="name">Chapter <xsl:value-of select="./@label"/>: <xsl:value-of select="./title" /></xsl:attribute>
 	   <xsl:attribute name="href">#<xsl:value-of select="./@id" /></xsl:attribute>
 	   
		 <xsl:for-each select="./sect1">
		 	<xsl:element name="bookmark">
		 	   <xsl:attribute name="name"><xsl:value-of select="../@label" />.<xsl:number count="sect1" level="any" from="chapter"
								format="1 " /><xsl:apply-templates select="./title/node()" /></xsl:attribute>
		 	   <xsl:attribute name="href">#<xsl:value-of select="./@id" /></xsl:attribute>
		 	   <xsl:for-each select="./sect2">
		 	      <xsl:element name="bookmark">
		 	   		<xsl:attribute name="name"><xsl:value-of select="../../@label" />.<xsl:number count="sect1" level="any" from="chapter"
								format="1." /><xsl:number count="sect2" level="single" from="sect1"
								format="1 " /><xsl:apply-templates select="./title/node()" /></xsl:attribute>
		 	   		<xsl:attribute name="href">#<xsl:value-of select="./@id" /></xsl:attribute>
		 	   	  </xsl:element>
		 	   </xsl:for-each> 	   
		 	</xsl:element>
		 </xsl:for-each> 
 
	  <xsl:for-each select="//appendix/section">
	 	<xsl:element name="bookmark">
	 	   <xsl:attribute name="name"><xsl:value-of select="../@label" />.<xsl:value-of select="count(preceding-sibling::section)+1" /><xsl:text> </xsl:text><xsl:apply-templates select="./title/node()" /></xsl:attribute>
	 	   <xsl:attribute name="href">#<xsl:value-of select="./@id" /></xsl:attribute>
	 	   <xsl:for-each select="./section">
	 	      <xsl:element name="bookmark">
	 	   		<xsl:attribute name="name"><xsl:value-of select="../../@label" />.<xsl:value-of select="count(../preceding-sibling::section)+1" />.<xsl:value-of select="count(preceding-sibling::section)+1" /><xsl:text> </xsl:text><xsl:apply-templates select="./title/node()" /></xsl:attribute>
	 	   		<xsl:attribute name="href">#<xsl:value-of select="./@id" /></xsl:attribute>
	 	   	  </xsl:element>
	 	   </xsl:for-each> 	   
	 	</xsl:element>
	 </xsl:for-each>
	 
 	</xsl:element>
 </xsl:for-each>
  </bookmarks>
 <!--  ****************************************************************  -->
 <!--  MAIN PAGE - bookmarks end                                         -->
 <!--  ****************************************************************  -->
 

 </head>
	<body style="padding-left: 50px;">
	
		<xsl:element name="img">
			<xsl:attribute name="src"><xsl:value-of select="$coverImage" /></xsl:attribute>
			<xsl:attribute name="id">coverImage</xsl:attribute>
		</xsl:element>
		<xsl:apply-templates select="//toc" />
		<xsl:apply-templates
			select="//part|/chapter|/book/chapter|/appendix|/book/appendix|/preface|/book/preface" />

		<xsl:call-template name="displayBibliography" />

		<xsl:call-template name="displayIndexTerm" />
			
	</body>
 </html>
 
 </xsl:template>
<!--  ****************************************************************  -->
<!--  MAIN PAGE END                                                     -->
<!--  ****************************************************************  -->
 
<!--  ****************************************************************  -->
<!--  BOOK                                                           -->
<!--  ****************************************************************  -->
<xsl:template match="//bookinfo" /> 
    <xsl:template match="//part">
   <div style="position: relative;" class="chapter">
    <div class="chapterNumber">Part <xsl:value-of select="@label" /></div>
 
 <div class="chapterTitle" ><xsl:value-of select="title" /></div>
 <div style="clear: right" />
   <xsl:apply-templates />
   </div>
   </xsl:template>
   
   <xsl:template match="//part/title">
 
   </xsl:template>
   
   <xsl:template match="//partintro">
   <xsl:apply-templates />
   </xsl:template>
   
   <xsl:template match="//toc">
   <div class="toc"><div id="tocTitle">Table of Contents</div>
   <xsl:apply-templates /></div>
   </xsl:template>
   
   <xsl:template match="//tocfront">
   <div class="tocChapter"><xsl:apply-templates select="./node()" /></div>
   </xsl:template>

   <xsl:template match="//tocback">
   <div class="tocChapter"><xsl:apply-templates select="./node()" /></div>
   </xsl:template>
   
    <xsl:template match="//tocchap/tocentry">
   <div class="tocChapter"><xsl:apply-templates select="./node()" /></div>
   </xsl:template>

    <xsl:template match="//tocpart/tocentry">
   <div class="tocPart"><xsl:apply-templates select="./node()" /></div>
   </xsl:template>
 
<!--  ****************************************************************  -->
<!--  BOOK END                                                          -->
<!--  ****************************************************************  -->
 
 
<!--  ****************************************************************  -->
<!--  CHAPTER                                                           -->
<!--  ****************************************************************  -->
<xsl:template match="chapter|appendix|preface">

<div style="position: relative;" class="chapter">
 	<xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="@id" /></xsl:attribute></xsl:element>
 	<div class="chapterNumber"><xsl:value-of select="@label" /></div>
 
 	<div class="chapterTitle" ><xsl:for-each select="./title/node()"><xsl:apply-templates select="." /></xsl:for-each></div>
 	<div style="clear: right" />
 	<xsl:apply-templates />
</div>

<div style="clear: right" />

</xsl:template>

<xsl:template match="chapter/title|appendix/title|preface/title" />

 <xsl:template match="abstract">
    <div class="abstract"><xsl:apply-templates /></div>
 </xsl:template>


<!--  ****************************************************************  -->
<!--  CHAPTER END                                                       -->
<!--  ****************************************************************  -->


<!--  ****************************************************************  -->
<!--  INDEX                                                             -->
<!--  ****************************************************************  -->

 <xsl:template match="//addToIndex[@hidden='true']" />
 
 <xsl:template match="//indexterm" />

<!--  ****************************************************************  -->
<!--  INDEX END                                                         -->
<!--  ****************************************************************  -->
 
<!--  ****************************************************************  -->
<!--  LISTS                                                             -->
<!--  ****************************************************************  -->
<xsl:template match="orderedlist">
<ol><xsl:apply-templates /></ol>
</xsl:template>

<xsl:template match="itemizedlist">
<ul><xsl:apply-templates /></ul>
</xsl:template>

<xsl:template match="listitem">
<li><xsl:apply-templates /></li>
</xsl:template>

<xsl:template match="listitem[position() = last()]">
<li class="lastChild"><xsl:apply-templates /></li>
</xsl:template>

<xsl:template match="//abstract//listitem">
<li class="abstract"><xsl:apply-templates /></li>
</xsl:template>

<xsl:template match="variablelist">
<ul><xsl:apply-templates /></ul>
</xsl:template> 

<xsl:template match="varlistentry">
   <li><i><xsl:apply-templates select="term" /> </i><div class="varlistentry"><xsl:apply-templates select="listitem/*" /></div></li>
</xsl:template>

<xsl:template match="varlistentry/listitem">
: <xsl:apply-templates  />
</xsl:template>

<!--  ****************************************************************  -->
<!--  LISTS END                                                         -->
<!--  ****************************************************************  -->


<!--  ****************************************************************  -->
<!--  PARAGRAPHS                                                        -->
<!--  ****************************************************************  -->
 <xsl:template match="para[preceding-sibling::para]">
 <p class='indented'><xsl:apply-templates /></p>
   <xsl:if test="./footnote">
      <div class="footnotes">
    <xsl:for-each select="./footnote">
    	<div class="footnote">Footnote <xsl:number count="footnote" level="any" format="1" /><span class="emdash">m</span><xsl:apply-templates /></div>
    </xsl:for-each>
    </div>
    </xsl:if>
 </xsl:template>

 <xsl:template match="para[parent::listitem]">
 <p class="listPara"><xsl:apply-templates /></p>
 <xsl:if test="./footnote">
     <div class="footnotes">
    <xsl:for-each select="./footnote">
    	<div class="footnote">Footnote <xsl:number count="footnote" level="any" format="1" /><span class="emdash">m</span><xsl:apply-templates /></div>
    </xsl:for-each>
    </div>
    </xsl:if>
 </xsl:template>

 <xsl:template match="para[parent::note|parent::important|parent::tip|parent::warning|parent::sidebar]">
 <p class="notePara"><xsl:apply-templates /></p>
 <xsl:if test="./footnote">
     <div class="footnotes">
    <xsl:for-each select="./footnote">
    	<div class="footnote">Footnote <xsl:number count="footnote" level="any" format="1" /><span class="grayemdash">m</span><xsl:apply-templates /></div>
    </xsl:for-each>
    </div>
    </xsl:if>
 </xsl:template>

<xsl:template match="para">
 <p class="para"><xsl:apply-templates /></p>
 <xsl:if test="./footnote">
     <div class="footnotes">
    <xsl:for-each select="./footnote">
    	<div class="footnote">Footnote <xsl:number count="footnote" level="any" format="1" /><span class="emdash">m</span><xsl:apply-templates /></div>
    </xsl:for-each>
    </div>
    </xsl:if>
 </xsl:template>
 
  <xsl:template match="//formalpara">
 <p class="formalparaTitle"><b><xsl:apply-templates select="title" /></b></p>
 <xsl:apply-templates select="title/following-sibling::node()" />
 </xsl:template>
 
<!--  ****************************************************************  -->
<!--  PARAGRAPHS END                                                    -->
<!--  ****************************************************************  -->

<!--  ****************************************************************  -->
<!--  MISCELLANEOUS                                                     -->
<!--  ****************************************************************  -->
 <xsl:template match="//internalnote">
    <span class="internalnote"><xsl:apply-templates></xsl:apply-templates></span>
 </xsl:template>

 <xsl:template match="blockquote">
    <div class="blockquote">
       <xsl:apply-templates select="para" />
       <div class="blockquoteAttribution">
       </div>
    </div>
 </xsl:template>
 
 <xsl:template match="blockquote[attribution]">
    <div class="blockquote">
       <xsl:apply-templates select="para" />
       <div class="blockquoteAttribution">
       		-- <xsl:apply-templates select="attribution" />
       </div>
    </div>
 </xsl:template>
 
 <xsl:template match="code">
<span class="code"><xsl:apply-templates /></span>
</xsl:template>
<xsl:template match="packagename">
<span class="packagename"><xsl:apply-templates /></span>
</xsl:template>
<xsl:template match="classname">
<span class="classname"><xsl:apply-templates /></span>
</xsl:template>
<xsl:template match="methodname">
<span class="methodname"><xsl:apply-templates /></span>
</xsl:template>
<xsl:template match="interfacename">
<span class="interfacename"><xsl:apply-templates /></span>
</xsl:template>

<xsl:template match="emphasis">
<i><xsl:apply-templates /></i>
</xsl:template>

<xsl:template match="emphasis[@role='bold']">
<b><xsl:apply-templates /></b>
</xsl:template>

<xsl:template match="emphasis[@role='underline']">
<span style='text-decoration: underline'><xsl:apply-templates /></span>
</xsl:template>

<xsl:template match="ulink">
	<xsl:element name="a">
		<xsl:attribute name="href"><xsl:value-of select="@url" /></xsl:attribute>
		<xsl:attribute name="class">ulink</xsl:attribute>
		<xsl:apply-templates />
	</xsl:element>
</xsl:template>

   <xsl:template match="//userinput|//computeroutput">
   <code><xsl:value-of select="." /></code>
   </xsl:template>
   
   <xsl:template match="//inlinemediaobject/imageobject/imagedata">
      <span><xsl:element name="img"><xsl:attribute name="src"><xsl:value-of select="$docBase" /><xsl:value-of select="@fileref" /></xsl:attribute></xsl:element></span>
   </xsl:template>
   
   <xsl:template match="command">
      <code><xsl:apply-templates /></code>
   </xsl:template>
   
   <xsl:template match="glossterm">
      <b><xsl:apply-templates /></b>
   </xsl:template>

 
<!--  ****************************************************************  -->
<!--  MISCELLANEOUS END                                                 -->
<!--  ****************************************************************  -->


<!--  ****************************************************************  -->
<!--  SECTIONS                                                          -->
<!--  ****************************************************************  -->

 <xsl:template match="//chapter//sect1/title">
 <xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="../@id"></xsl:value-of></xsl:attribute></xsl:element>
 <h1><xsl:value-of select="../../@label" />.<xsl:value-of select="count(../preceding-sibling::sect1)+count(../preceding-sibling::simplesect)+1" /><xsl:text> </xsl:text><xsl:apply-templates /></h1>
 </xsl:template>

 <xsl:template match="//chapter/simplesect/title|//appendix/simplesect/title|//preface/simplesect/title">
 <xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="../@id"></xsl:value-of></xsl:attribute></xsl:element>
 <h1><xsl:value-of select="../../@label" />.<xsl:value-of select="count(../preceding-sibling::sect1)+count(../preceding-sibling::simplesect)+1" /><xsl:text> </xsl:text><xsl:apply-templates /></h1>
 </xsl:template> 
   
  <xsl:template match="//appendix//sect1/title">
 <xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="../@id"></xsl:value-of></xsl:attribute></xsl:element>
 <h1><xsl:value-of select="../../@label" />.<xsl:value-of select="count(../preceding-sibling::sect1)+count(../preceding-sibling::simplesect)+1" /><xsl:text> </xsl:text><xsl:apply-templates /></h1>
 </xsl:template>
  <xsl:template match="//preface//sect1/title">
 <xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="../@id"></xsl:value-of></xsl:attribute></xsl:element>
 <h1><xsl:value-of select="../../@label" />.<xsl:value-of select="count(../preceding-sibling::sect1)+count(../preceding-sibling::simplesect)+1" /><xsl:text> </xsl:text><xsl:apply-templates /></h1>
 </xsl:template>

 <xsl:template match="//chapter/section/title|//appendix/section/title|//preface/section/title">
 <xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="../@id"></xsl:value-of></xsl:attribute></xsl:element>
 <h1><xsl:value-of select="../../@label" />.<xsl:value-of select="count(../preceding-sibling::section)+1" /><xsl:text> </xsl:text><xsl:apply-templates /></h1>
 </xsl:template>
 
  <xsl:template match="//chapter//sect2/title">
   <xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="../@id"></xsl:value-of></xsl:attribute></xsl:element>
 <h2><xsl:value-of select="../../../@label" />.<xsl:number count="sect1" level="any" from="chapter"
						format="1." /><xsl:value-of select="count(../preceding-sibling::sect2)+count(../preceding-sibling::simplesect)+1" /><xsl:text> </xsl:text><xsl:apply-templates /></h2>
 </xsl:template>
 
 <xsl:template match="//chapter/sect1/simplesect/title">
   <xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="../@id"></xsl:value-of></xsl:attribute></xsl:element>
 <h2><xsl:value-of select="../../../@label" />.<xsl:number count="sect1" level="any" from="chapter"
						format="1." /><xsl:value-of select="count(../preceding-sibling::sect2)+count(../preceding-sibling::simplesect)+1" /><xsl:text> </xsl:text><xsl:apply-templates /></h2>
 </xsl:template>
 
   <xsl:template match="//appendix//sect2/title">
   <xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="../@id"></xsl:value-of></xsl:attribute></xsl:element>
 <h2><xsl:value-of select="../../../@label" />.<xsl:number count="sect1" level="any" from="appendix"
						format="1." /><xsl:value-of select="count(../preceding-sibling::sect2)+count(../preceding-sibling::simplesect)+1" /><xsl:text> </xsl:text><xsl:apply-templates /></h2>
 </xsl:template>
 
    <xsl:template match="//appendix/sect1/simplesect/title">
   <xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="../@id"></xsl:value-of></xsl:attribute></xsl:element>
 <h2><xsl:value-of select="../../../@label" />.<xsl:number count="sect1" level="any" from="appendix"
						format="1." /><xsl:value-of select="count(../preceding-sibling::sect2)+count(../preceding-sibling::simplesect)+1" /><xsl:text> </xsl:text><xsl:apply-templates /></h2>
 </xsl:template>
 
   <xsl:template match="//preface//sect2/title">
   <xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="../@id"></xsl:value-of></xsl:attribute></xsl:element>
 <h2><xsl:value-of select="../../../@label" />.<xsl:number count="sect1" level="any" from="preface"
						format="1." /><xsl:value-of select="count(../preceding-sibling::sect2)+count(../preceding-sibling::simplesect)+1" /><xsl:text> </xsl:text><xsl:apply-templates /></h2>
 </xsl:template>
 
    <xsl:template match="//preface/sect1/simplesect/title">
   <xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="../@id"></xsl:value-of></xsl:attribute></xsl:element>
 <h2><xsl:value-of select="../../../@label" />.<xsl:number count="sect1" level="any" from="preface"
						format="1." /><xsl:value-of select="count(../preceding-sibling::sect2)+count(../preceding-sibling::simplesect)+1" /><xsl:text> </xsl:text><xsl:apply-templates /></h2>
 </xsl:template>

  <xsl:template match="//chapter/section/section/title|//appendix/section/section/title|//preface/section/section/title">
   <xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="../@id"></xsl:value-of></xsl:attribute></xsl:element>
 <h2><xsl:value-of select="../../../@label" />.<xsl:value-of select="count(../../preceding-sibling::section)+1" />.<xsl:value-of select="count(../preceding-sibling::section)+1" /><xsl:text> </xsl:text><xsl:apply-templates /></h2>
 </xsl:template>
 
  <xsl:template match="//sect3/title|//sect2/simplesect/title|//chapter/section/section/section/title|//appendix/section/section/section/title|//preface/section/section/section/title">
   <xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="../@id"></xsl:value-of></xsl:attribute></xsl:element>
 <h3><xsl:apply-templates /></h3>
 </xsl:template>

  <xsl:template match="//sect4/title|//sect3/simplesect/title|//chapter/section/section/section/section/title|//appendix/section/section/section/section/title|//preface/section/section/section/section/title">
   <xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="../@id"></xsl:value-of></xsl:attribute></xsl:element>
 <h4><xsl:apply-templates /></h4>
 </xsl:template>
<!--  ****************************************************************  -->
<!--  SECTIONS END                                                      -->
<!--  ****************************************************************  -->
 
<!--  ****************************************************************  -->
<!--  EXAMPLES                                                          -->
<!--  ****************************************************************  -->
 <xsl:template match="//chapter//sect1/example|//chapter/section/example|//chapter/simplesect/example|//chapter/example">
 <div class="listingTitle">
 Listing <xsl:value-of select="../../@label" />.<xsl:number count="example" level="any" from="chapter"
						format="1 " /><xsl:apply-templates select="title" /></div>
 <pre class="programlisting"><xsl:apply-templates select="programlisting" /></pre>
 <xsl:apply-templates select="calloutlist" />
  </xsl:template>
  
 <xsl:template match="//appendix//sect1/example|//appendix/section/example|//appendix/simplesect/example|//appendix/example">
 <div class="listingTitle">
 Listing <xsl:value-of select="../../@label" />.<xsl:number count="example" level="any" from="appendix"
						format="1 " /><xsl:apply-templates select="title" /></div>
 <pre class="programlisting"><xsl:apply-templates select="programlisting" /></pre>
 <xsl:apply-templates select="calloutlist" />
  </xsl:template>
  
 <xsl:template match="//preface//sect1/example|//preface/section/example|//preface/simplesect/example|//preface/example">
 <div class="listingTitle">
 Listing <xsl:value-of select="../../@label" />.<xsl:number count="example" level="any" from="preface"
						format="1 " /><xsl:apply-templates select="title" /></div>
 <pre class="programlisting"><xsl:apply-templates select="programlisting" /></pre>
 <xsl:apply-templates select="calloutlist" />
  </xsl:template>
  
 <xsl:template match="//chapter//sect2/example|//chapter/section/section/example|//chapter//sect1/simplesect/example">
 <div class="listingTitle">
 Listing <xsl:value-of select="../../../@label" />.<xsl:number count="example" level="any" from="chapter"
						format="1 " /><xsl:apply-templates select="title" /></div>
 <pre class="programlisting"><xsl:apply-templates select="programlisting" /></pre>
 <xsl:apply-templates select="calloutlist" />
  </xsl:template>
 
 <xsl:template match="//appendix//sect2/example|//appendix/section/section/example|//appendix//sect1/simplesect/example">
 <div class="listingTitle">
 Listing <xsl:value-of select="../../../@label" />.<xsl:number count="example" level="any" from="appendix"
						format="1 " /><xsl:apply-templates select="title" /></div>
 <pre class="programlisting"><xsl:apply-templates select="programlisting" /></pre>
 <xsl:apply-templates select="calloutlist" />
  </xsl:template>
  
  <xsl:template match="//preface//sect2/example|//preface/section/section/example|//preface//sect1/simplesect/example">
 <div class="listingTitle">
 Listing <xsl:value-of select="../../../@label" />.<xsl:number count="example" level="any" from="preface"
						format="1 " /><xsl:apply-templates select="title" /></div>
 <pre class="programlisting"><xsl:apply-templates select="programlisting" /></pre>
 <xsl:apply-templates select="calloutlist" />
  </xsl:template>
 
 <xsl:template match="//chapter//sect3/example|//chapter/section/section/section/example|//chapter//sect2/simplesect/example">
 <div class="listingTitle">
 Listing <xsl:value-of select="../../../../@label" />.<xsl:number count="example" level="any" from="chapter"
						format="1 " /><xsl:apply-templates select="title" /></div>
 <pre class="programlisting"><xsl:apply-templates select="programlisting" /></pre>
 <xsl:apply-templates select="calloutlist" />
  </xsl:template>

 <xsl:template match="//appendix//sect3/example|//appendix/section/section/section/example|//appendix//sect2/simplesect/example">
 <div class="listingTitle">
 Listing <xsl:value-of select="../../../../@label" />.<xsl:number count="example" level="any" from="appendix"
						format="1 " /><xsl:apply-templates select="title" /></div>
 <pre class="programlisting"><xsl:apply-templates select="programlisting" /></pre>
 <xsl:apply-templates select="calloutlist" />
  </xsl:template>
  
   <xsl:template match="//preface//sect3/example|//preface/section/section/section/example|//preface//sect2/simplesect/example">
 <div class="listingTitle">
 Listing <xsl:value-of select="../../../../@label" />.<xsl:number count="example" level="any" from="preface"
						format="1 " /><xsl:apply-templates select="title" /></div>
 <pre class="programlisting"><xsl:apply-templates select="programlisting" /></pre>
 <xsl:apply-templates select="calloutlist" />
  </xsl:template>





 <xsl:template match="//chapter//sect4/example|//chapter/section/section/section/section/example|//chapter//sect3/simplesect/example">
 <div class="listingTitle">
 Listing <xsl:value-of select="../../../../../@label" />.<xsl:number count="example" level="any" from="chapter"
						format="1 " /><xsl:apply-templates select="title" /></div>
 <pre class="programlisting"><xsl:apply-templates select="programlisting" /></pre>
 <xsl:apply-templates select="calloutlist" />
  </xsl:template>

 <xsl:template match="//appendix//sect4/example|//appendix/section/section/section/section/example|//appendix//sect3/simplesect/example">
 <div class="listingTitle">
 Listing <xsl:value-of select="../../../../../@label" />.<xsl:number count="example" level="any" from="appendix"
						format="1 " /><xsl:apply-templates select="title" /></div>
 <pre class="programlisting"><xsl:apply-templates select="programlisting" /></pre>
 <xsl:apply-templates select="calloutlist" />
  </xsl:template>
  
   <xsl:template match="//preface//sect4/example|//preface/section/section/section/example|//preface//sect3/simplesect/example">
 <div class="listingTitle">
 Listing <xsl:value-of select="../../../../../@label" />.<xsl:number count="example" level="any" from="preface"
						format="1 " /><xsl:apply-templates select="title" /></div>
 <pre class="programlisting"><xsl:apply-templates select="programlisting" /></pre>
 <xsl:apply-templates select="calloutlist" />
  </xsl:template>




  
  <xsl:template match="//informalexample">

  <pre class="programlisting"><xsl:apply-templates select="programlisting" /></pre>
   <xsl:apply-templates select="calloutlist" />
  </xsl:template>
  
   <xsl:template match="programlisting"><pre><xsl:apply-templates /></pre></xsl:template>
    
 	<xsl:template match="example//co|informalexample//co">

		<xsl:variable name="thisId">
			<xsl:value-of select="@id" />
		</xsl:variable>

		<xsl:variable name="thisBug">
			<xsl:value-of select="//calloutlist/callout[contains(@arearefs, $thisId)]/@bugNumber" />
		</xsl:variable>
		
		<xsl:variable name="x"><xsl:value-of select="//callout[contains(@arearefs, $thisId)]" /></xsl:variable>
		<div class="calloutContainer">
		<xsl:element name="img">
			    <xsl:attribute name="class">cueball</xsl:attribute>
			    <xsl:attribute name="refid"><xsl:value-of select="@id" /></xsl:attribute>
				<xsl:attribute name="id">img<xsl:value-of
					select="@id" /></xsl:attribute>
				<xsl:attribute name="src">calloutBugs/<xsl:value-of
					select="$thisBug" />.gif</xsl:attribute>
			</xsl:element><xsl:text> </xsl:text><xsl:if test="not(contains(//callout[contains(@arearefs, $thisId)]/@arearefs, ' ')) or contains(substring-before(//callout[contains(@arearefs, $thisId)]/@arearefs, ' '), $thisId)"><div class="calloutBox"><xsl:value-of select="//callout[contains(@arearefs, $thisId)]" /></div></xsl:if>
		</div>	
			
	</xsl:template>
	
	 	<xsl:template match="example[@annotation='below']//co|informalexample[@annotation='below']//co">

		<xsl:variable name="thisId">
			<xsl:value-of select="@id" />
		</xsl:variable>

		<xsl:variable name="thisBug">
			<xsl:value-of select="//calloutlist/callout[contains(@arearefs, $thisId)]/@bugNumber" />
		</xsl:variable>
		
		<xsl:variable name="x"><xsl:value-of select="//callout[contains(@arearefs, $thisId)]" /></xsl:variable>
		<div class="calloutContainer">
		<xsl:element name="img">
			    <xsl:attribute name="class">cueball</xsl:attribute>
			    <xsl:attribute name="refid"><xsl:value-of select="@id" /></xsl:attribute>
				<xsl:attribute name="id">img<xsl:value-of
					select="@id" /></xsl:attribute>
				<xsl:attribute name="src">calloutBugs/<xsl:value-of
					select="$thisBug" />.gif</xsl:attribute>
			</xsl:element>
		</div>	
			
	</xsl:template>


	 	<xsl:template match="example[@annotations='below']//co|informalexample[@annotations='below']//co">

		<xsl:variable name="thisId">
			<xsl:value-of select="@id" />
		</xsl:variable>

		<xsl:variable name="thisBug">
			<xsl:value-of select="//calloutlist/callout[contains(@arearefs, $thisId)]/@bugNumber" />
		</xsl:variable>
		
		<xsl:variable name="x"><xsl:value-of select="//callout[contains(@arearefs, $thisId)]" /></xsl:variable>
	<!--	<div class="calloutContainer"> -->
		<xsl:element name="img">
			    <xsl:attribute name="class">cueball</xsl:attribute>
			    <xsl:attribute name="refid"><xsl:value-of select="@id" /></xsl:attribute>
				<xsl:attribute name="id">img<xsl:value-of
					select="@id" /></xsl:attribute>
				<xsl:attribute name="src">calloutBugs/<xsl:value-of
					select="$thisBug" />.gif</xsl:attribute>
			</xsl:element>
	<!--	</div> -->
			
	</xsl:template>
	
	<xsl:template match="para//co">
		<xsl:variable name="thisId">
			<xsl:value-of select="@id" />
		</xsl:variable>

		<xsl:variable name="thisBug">
			<xsl:value-of select="//calloutlist/callout[contains(@arearefs, $thisId)]/@bugNumber" />
			<!-- REPLACE 5/10 NC to account for in-text callout bugs
			<xsl:number count="co" level="any" 
				from="programlisting|screen|literallayout|synopsis" format="1" /> -->
		</xsl:variable>

        <xsl:element name="img">
			    <xsl:attribute name="class">inlinecueball</xsl:attribute>
			    <xsl:attribute name="refid"><xsl:value-of select="@id" /></xsl:attribute>
				<xsl:attribute name="id">img<xsl:value-of
					select="@id" /></xsl:attribute>
				<xsl:attribute name="src">calloutBugs/<xsl:value-of
					select="$thisBug" />.gif</xsl:attribute>
			</xsl:element> 
	
	</xsl:template>
	

<xsl:template match="callout/para">
	<xsl:value-of select="." />
</xsl:template>

<xsl:template match="//callout">
	<p class="calloutPara"><xsl:element name="img">
	    <xsl:attribute name="class">cueball calloutListBug</xsl:attribute>
		<xsl:attribute name="src">calloutBugs/<xsl:value-of
					select="count(preceding-sibling::callout) + 1" />.gif</xsl:attribute>
	</xsl:element> <div class="calloutParaDiv"><xsl:apply-templates /></div></p>
</xsl:template>

<xsl:template match="calloutlist">
<!-- <div class="calloutlist"><xsl:apply-templates /></div> -->
</xsl:template>
  
<xsl:template match="example[@annotations='below']//calloutlist|example[@annotation='below']//calloutlist|informalexample[@annotations='below']//calloutlist|informalexample[@annotation='below']//calloutlist">
 <div class="calloutlist"><xsl:apply-templates /></div> 
</xsl:template>

<!-- 
<xsl:template match="example[@annotation='below']//calloutlist">
 <div class="calloutlist"><xsl:apply-templates /></div> 
</xsl:template>
-->

    <xsl:template match="//unicode">
     	<xsl:variable name="size">16</xsl:variable>
    	<xsl:if test="parent::title/parent::chapter|parent::title/parent::preface|parent::title/parent::appendix">
    		<xsl:variable name="size">30</xsl:variable>
    	</xsl:if>
    	<xsl:if test="ancestor::programlisting">
    		<xsl:variable name="size">12</xsl:variable>
    	</xsl:if>
        <span class="unicodeSpan"><xsl:element name="img">
        							  <xsl:attribute name="class">unicode</xsl:attribute>
        							  <xsl:attribute name="src">http://livebook.manning.com/static/images/unicode/unicode<xsl:value-of select="@point" />_<xsl:value-of select="$size" />.png</xsl:attribute>
        							  </xsl:element></span>	 
    </xsl:template>


    <xsl:template match="//specialCharacter[@role='scalaBind']">
     
    	<xsl:variable name="size">16</xsl:variable>
    	<xsl:if test="parent::title/parent::chapter|parent::title/parent::preface|parent::title/parent::appendix">
    		<xsl:variable name="size">30</xsl:variable>
    	</xsl:if>
    	<xsl:if test="ancestor::programlisting">
    		<xsl:variable name="size">12</xsl:variable>
    	</xsl:if>
        <span class="scalaBindSpan"><xsl:element name="img">
        							  <xsl:attribute name="class">scalaBind</xsl:attribute>
        							  <xsl:attribute name="src">http://livebook.manning.com/static/images/scalaBind<xsl:value-of select="$size" />.png</xsl:attribute>
        							  </xsl:element></span>	 
        							  
    </xsl:template>
    
    <xsl:template match="//lineArrow|//specialCharacter[@role='lineArrow']">
   <span class="lineArrowSpan"><img class="lineArrow" src="images/lineArrow.png" /></span> 
</xsl:template>

<!--  ****************************************************************  -->
<!--  EXAMPLES END                                                      -->
<!--  ****************************************************************  -->  
  
  
<!--  ****************************************************************  -->
<!--  FIGURES                                                           -->
<!--  ****************************************************************  -->  
<xsl:template match="informalfigure">
<div class="figureDiv">
<xsl:element name="img">
  <xsl:attribute name="src"><xsl:value-of select="$docBase" /><xsl:value-of select=".//imagedata/@fileref" /></xsl:attribute>
  <xsl:attribute name="style"><xsl:if test=".//imagedata[@width]">width: <xsl:value-of select=".//imagedata/@width" />px;</xsl:if><xsl:if test=".//imagedata[@depth]">height: <xsl:value-of select=".//imagedata/@depth" />px;</xsl:if></xsl:attribute>
</xsl:element>
</div>
</xsl:template>


<xsl:template match="figure">
<xsl:element name="div">
   <xsl:attribute name="class">figureDiv</xsl:attribute>
<xsl:element name="img">
  <xsl:attribute name="src"><xsl:value-of select="$docBase" /><xsl:value-of select=".//imagedata/@fileref" /></xsl:attribute>
  <xsl:attribute name="style"><xsl:if test=".//imagedata[@width]">width: <xsl:value-of select=".//imagedata/@width" />px;</xsl:if><xsl:if test=".//imagedata[@depth]">height: <xsl:value-of select=".//imagedata/@depth" />px;</xsl:if></xsl:attribute>
</xsl:element>
<xsl:element name="div">
   <xsl:attribute name="class">figureCaption</xsl:attribute>
   <xsl:if test=".//imagedata[@width]">
   	<xsl:attribute name="style">width: <xsl:value-of select=".//imagedata/@width"/>px</xsl:attribute>
   </xsl:if>
Figure <xsl:value-of select="ancestor::chapter/@label|ancestor::appendix/@label|ancestor::preface/@label" />.<xsl:number count="figure" level="any" from="chapter"
						format="1 " /><xsl:value-of select="title" /></xsl:element>
</xsl:element>
</xsl:template>
<!--  ****************************************************************  -->
<!--  FIGURES END                                                       -->
<!--  ****************************************************************  -->  

 
<!--  ****************************************************************  -->
<!--  NOTES ETC                                                         -->
<!--  ****************************************************************  -->  

<xsl:template match="para[parent::important|parent::warning|parent::sidebar|parent::entry]">
   <p class="hideWidth"><xsl:apply-templates /></p>
     <xsl:if test="./footnote">
     <div class="footnotes">
    <xsl:for-each select="./footnote">
    	<div class="footnote">Footnote <xsl:number count="footnote" level="any" format="1" /><span class="grayemdash">m</span><xsl:apply-templates /></div>
    </xsl:for-each>
    </div>
    </xsl:if>
</xsl:template>
  
 <xsl:template match="important/title|warning/title|note/title|tip/title|sidebar/title">
 <p class="notesEtcContentTitle notesEtcContent"><xsl:apply-templates /></p>
 </xsl:template>
 
 
 <xsl:template match="important|note|warning|tip|sidebar">
 <xsl:variable name="noteType">
    <xsl:choose>
    	<xsl:when test="local-name() = 'important'">IMPORTANT</xsl:when>
    	<xsl:when test="local-name() = 'note'">NOTE</xsl:when>
    	<xsl:when test="local-name() = 'warning'">WARNING</xsl:when>
    	<xsl:when test="local-name() = 'tip'">TIP</xsl:when>
    	<xsl:when test="local-name() = 'sidebar'">SIDEBAR</xsl:when>
    </xsl:choose>
 </xsl:variable>
 <table class="notesEtc" >
 <tr><td class="notesEtcTitle"><xsl:value-of select="$noteType" /></td>
     <td class="notesEtcContent" ><xsl:apply-templates select="title" /><xsl:apply-templates select='node()[local-name() != "title"]' /></td></tr>
 </table>
 </xsl:template>
<!--  ****************************************************************  -->
<!--  NOTES ETC END                                                     -->
<!--  ****************************************************************  -->  


<!--  ****************************************************************  -->
<!--  TABLES                                                            -->
<!--  ****************************************************************  -->  
    <xsl:template match="informaltable[tgroup]">
   <xsl:variable name="thisId"><xsl:value-of select="@id" /></xsl:variable>
   <div class="tableDiv">
<xsl:element name="table">
   <xsl:attribute name="class">contentTable</xsl:attribute>
    <xsl:attribute name="style">width: <xsl:value-of select="@width" /></xsl:attribute>
   <xsl:apply-templates select="tgroup" />
</xsl:element>
</div>
</xsl:template>


<xsl:template match="table[tgroup]">
   <xsl:variable name="thisId"><xsl:value-of select="@id" /></xsl:variable>
   <div class="tableDiv"><p class="tableCaption">Table <xsl:value-of select="//chapter[.//node()[@id=$thisId]]/@label" /><xsl:value-of select="//appendix[.//node()[@id=$thisId]]/@label" /><xsl:value-of select="//preface[.//node()[@id=$thisId]]/@label" />.<xsl:number count="table" level="any" from="chapter|appendix|prefix"
						format="1" /><span class="emdash">m</span><xsl:value-of select="title" /></p>
<xsl:element name="table">
   <xsl:attribute name="class">contentTable</xsl:attribute>	
    <xsl:attribute name="style">width: <xsl:value-of select="@width" /></xsl:attribute> 					
   <xsl:apply-templates select="tgroup" />
</xsl:element>
</div>
</xsl:template>

    <xsl:template match="informaltable[not(tgroup)]">
<xsl:variable name="thisId"><xsl:value-of select="@id" /></xsl:variable>
  <div class="tableDiv">
<xsl:element name="table">
   <xsl:attribute name="class">contentTable</xsl:attribute>
    <xsl:attribute name="style">width: <xsl:value-of select="@width" /></xsl:attribute>
   <xsl:apply-templates select="thead" /><xsl:apply-templates select="tbody" /><xsl:apply-templates select="tfoot" />
</xsl:element>
</div>
</xsl:template>

<xsl:template match="table[not(tgroup)]">
<xsl:variable name="thisId"><xsl:value-of select="@id" /></xsl:variable>
  <div class="tableDiv"><p class="tableCaption">Table <xsl:value-of select="//chapter[.//node()[@id=$thisId]]/@label" /><xsl:value-of select="//appendix[.//node()[@id=$thisId]]/@label" /><xsl:value-of select="//preface[.//node()[@id=$thisId]]/@label" />.<xsl:number count="table" level="any" from="chapter|appendix|prefix"
						format="1" /><span class="emdash">m</span><xsl:value-of select="title" /></p>
<xsl:element name="table">
   <xsl:attribute name="class">contentTable</xsl:attribute>	
    <xsl:attribute name="style">width: <xsl:value-of select="@width" /></xsl:attribute>					
   <xsl:apply-templates select="thead" /><xsl:apply-templates select="tbody" /><xsl:apply-templates select="tfoot" />
</xsl:element>
</div>
</xsl:template>

<xsl:template match="informaltable[@renderWidth!='auto']">
   <xsl:variable name="thisId"><xsl:value-of select="@id" /></xsl:variable>
   <div class="tableDiv">
		<xsl:element name="img"><xsl:attribute name="style">width: <xsl:value-of select="@resizeTo" />px</xsl:attribute>
		<xsl:attribute name="src"><xsl:value-of select="tableLocation" /><xsl:value-of select="@tableLocation" /></xsl:attribute>
		</xsl:element>				
						
	</div>
</xsl:template>

    <xsl:template match="table[@renderWidth!='auto']">
   <xsl:variable name="thisId"><xsl:value-of select="@id" /></xsl:variable>
   <div class="tableDiv"><p class="tableCaption">Table <xsl:value-of select="//chapter[.//node()[@id=$thisId]]/@label" /><xsl:value-of select="//appendix[.//node()[@id=$thisId]]/@label" /><xsl:value-of select="//preface[.//node()[@id=$thisId]]/@label" />.<xsl:number count="table" level="any" from="chapter|appendix|prefix"
						format="1" /><span class="emdash">m</span><xsl:value-of select="title" /></p>
		<xsl:element name="img"><xsl:attribute name="style">width: <xsl:value-of select="@resizeTo" />px</xsl:attribute>
		<xsl:attribute name="src"><xsl:value-of select="tableLocation" /><xsl:value-of select="@tableLocation" /></xsl:attribute>
		</xsl:element>

	</div>
</xsl:template>


<xsl:template match="tgroup">
   <xsl:apply-templates />
</xsl:template>
<xsl:template match="thead">
   <xsl:apply-templates />
</xsl:template>

<xsl:template match="thead/row">
   <tr class="tableHeaderRow"><xsl:apply-templates /></tr>
</xsl:template>

<xsl:template match="tbody">
   <xsl:apply-templates />
</xsl:template>

<xsl:template match="tfoot">
   <xsl:apply-templates />
</xsl:template>

<xsl:template match="entry">
   <td><xsl:apply-templates /></td>
</xsl:template>

<xsl:template match="row">
   <tr><xsl:apply-templates /></tr>
</xsl:template>

<!--  ****************************************************************  -->
<!--  TABLES END                                                        -->
<!--  ****************************************************************  -->  

<!--  ****************************************************************  -->
<!--  FOOTNOTES                                                         -->
<!--  ****************************************************************  -->  

<xsl:template match="footnote">
<sup><xsl:number count="footnote" level="any" format="1" /></sup>
</xsl:template>
<!--  ****************************************************************  -->
<!--  FOOTNOTES END                                                     -->
<!--  ****************************************************************  -->  

<!--  ****************************************************************  -->
<!--  XREFS                                                             -->
<!--  ****************************************************************  --> 
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
			<xsl:with-param name="theLinkend"><xsl:value-of select="@linkend" /></xsl:with-param>
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

 	<xsl:template name="numberedElement">
 	<xsl:param name="elementName"></xsl:param><xsl:param name="elementId"></xsl:param>
 	

 	
 	<xsl:choose>
 	<xsl:when test="$elementName = 'chapter'">
    	<xsl:value-of select="//node()[@id=$elementId]/@label" />
 	</xsl:when>
 	<xsl:when test="$elementName = 'sect2'">
    	<xsl:value-of select="//node()[@id=$elementId]/ancestor-or-self::chapter/@label" />.<xsl:value-of select="count(//node()[local-name()='sect1'][node()[@id=$elementId]]/preceding::node()[local-name()='sect1']) + 1" />.<xsl:value-of select="count(//sect2[@id=$elementId]/preceding::node()[local-name()='sect2'][parent::sect1[node()[@id=$elementId]]]) + 1" />
 	</xsl:when>
 	<xsl:when test="$elementName = 'sect3'">
    	<xsl:value-of select="//node()[@id=$elementId]/ancestor-or-self::chapter/@label" />.<xsl:value-of select="count(//node()[local-name()='sect1'][//node()[@id=$elementId]]/preceding::node()[local-name()='sect1']) + 1" />.<xsl:value-of select="count(//node()[local-name()='sect2'][node()[@id=$elementId]]/preceding::node()[local-name()='sect2']) + 1" />.<xsl:value-of select="count(//sect3[@id=$elementId]/preceding::node()[local-name()='sect3'][parent::sect2[node()[@id=$elementId]]]) + 1" />
 	</xsl:when>
 	<xsl:when test="$elementName = 'sect4'">
 	    <xsl:value-of select="//node()[@id=$elementId]/ancestor-or-self::chapter/@label" />.<xsl:value-of select="count(//node()[local-name()='sect1'][//node()[@id=$elementId]]/preceding::node()[local-name()='sect1']) + 1" />.<xsl:value-of select="count(//node()[local-name()='sect2'][node()[@id=$elementId]]/preceding::node()[local-name()='sect2']) + 1" />.<xsl:value-of select="count(//node()[local-name()='sect2'][//node()[@id=$elementId]]/preceding::node()[local-name()='sect2']) + 1" />.<xsl:value-of select="count(//sect3[@id=$elementId]/preceding::node()[local-name()='sect4'][parent::sect3[node()[@id=$elementId]]]) + 1" />
 	</xsl:when>
	<xsl:when test="$elementName = 'section'">
 		<xsl:choose>
 			<xsl:when test="local-name(//node()[@id=$elementId]/parent::node()) = 'chapter'">
 				<xsl:value-of select="//node()[@id=$elementId]/ancestor-or-self::chapter/@label" />.<xsl:value-of select="count(//node()[@id=$elementId]/preceding-sibling::section)+1" />
 			</xsl:when>
 			<xsl:when test="local-name(//node()[@id=$elementId]/parent::node()) = 'preface'">
 				<xsl:value-of select="//node()[@id=$elementId]/ancestor-or-self::preface/@label" />.<xsl:value-of select="count(//node()[@id=$elementId]/preceding-sibling::section)+1" />
 			</xsl:when>
 			<xsl:when test="local-name(//node()[@id=$elementId]/parent::node()) = 'appendix'">
 				<xsl:value-of select="//node()[@id=$elementId]/ancestor-or-self::appendix/@label" />.<xsl:value-of select="count(//node()[@id=$elementId]/preceding-sibling::section)+1" />
 			</xsl:when>
 			<xsl:otherwise>
 				<xsl:value-of select="//node()[@id=$elementId]/ancestor-or-self::chapter/@label" />.<xsl:value-of select="count(//node()[@id=$elementId]/parent::section/preceding-sibling::section)+1" />.<xsl:value-of select="count(//node()[@id=$elementId]/preceding-sibling::section)+1" />
 			</xsl:otherwise>
 		</xsl:choose>
 	</xsl:when>
 	<xsl:otherwise>
 	<xsl:variable name="targetChapterLabel"><xsl:value-of select="//node()[@id=$elementId]/ancestor-or-self::chapter/@label" /></xsl:variable>
 	<xsl:value-of select="//node()[@id=$elementId]/ancestor-or-self::chapter/@label" /><xsl:value-of select="//node()[@id=$elementId]/ancestor-or-self::preface/@label" /><xsl:value-of select="//node()[@id=$elementId]/ancestor-or-self::appendix/@label" />.<xsl:value-of select="count(//node()[@id=$elementId]/ancestor-or-self::chapter//node()[local-name()=$elementName][@id=$elementId]/preceding::node()[local-name()=$elementName][ancestor-or-self::chapter/@label = $targetChapterLabel]) + 1" /></xsl:otherwise></xsl:choose>
 	</xsl:template>
<!--  ****************************************************************  -->
<!--  XREFS                                                             -->
<!--  ****************************************************************  --> 

<!--  ****************************************************************  -->
<!--  BIBLIOGRAPHY                                                          -->
<!--  ****************************************************************  -->

	<xsl:template name="displayBibliography">
		<xsl:if test="//biblioentry">
			<div id="bibliographyDiv">
				<h1>References</h1>
				<xsl:for-each select="//biblioentry">
					<div class="biblioEntry">
						<xsl:apply-templates select="abbrev" /><xsl:text> </xsl:text>
						<xsl:if test="author">
							<xsl:apply-templates select="author" />. 
						</xsl:if>
						<xsl:if test="copyright">
							<xsl:apply-templates select="copyright" /><xsl:text> </xsl:text>
						</xsl:if>
						<xsl:if test="title">
							<xsl:apply-templates select="title" />
						</xsl:if>
						<xsl:if test="publisher"><xsl:value-of select="publisher" /></xsl:if>						
					</div>
				</xsl:for-each>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="biblioref[@endterm]">
		<span class='biblioref'>(<xsl:value-of select="./@endterm" />)</span>
	</xsl:template>

	<xsl:template match="biblioref[not(@endterm)]">
	    <xsl:variable name="thisId"><xsl:value-of select="./@linkend" /></xsl:variable>
	    <xsl:if test="//biblioentry[@id=$thisId]/@xreflabel">
		<span class='biblioref'>(<xsl:value-of select="//biblioentry[@id=$thisId]/@xreflabel" />)</span>
		</xsl:if>
		<xsl:if test="not(//biblioentry[@id=$thisId]/@xreflabel)">
		<span class='biblioref'>(<xsl:value-of select="//biblioentry[@id=$thisId]/abbrev" />)</span>
		</xsl:if>
	</xsl:template>

	<xsl:template match="biblioentry/title">
	<i><xsl:apply-templates /></i>.
	</xsl:template>
	
	<xsl:template match="biblioentry/abbrev">
		<sup><xsl:value-of select="." /></sup>
	</xsl:template>
	
	<xsl:template match="biblioentry/copyright">
		<xsl:for-each select="year">
		<xsl:value-of select="." /><xsl:text> </xsl:text>,
		</xsl:for-each>
		<xsl:value-of select="holder"></xsl:value-of>
	</xsl:template>
		
	<xsl:template match="biblioentry/author">
		<xsl:apply-templates />
	</xsl:template>
	
	<xsl:template match="biblioentry/author[position() = 1]"><xsl:value-of select=".//surname" />,<xsl:text> </xsl:text><xsl:value-of select=".//firstname" />
	</xsl:template>
	
	<xsl:template match="biblioentry/author[position() > 1]">, <xsl:value-of select=".//firstname" /><xsl:text> </xsl:text><xsl:value-of select=".//surname" /></xsl:template>

	<xsl:template match="biblioentry"></xsl:template>

<!--  ****************************************************************  -->
<!--  BIBLIOGRAPHY                                                          -->
<!--  ****************************************************************  -->


<!--  ****************************************************************  -->
<!--  INDEX TERMS                                                           -->
<!--  ****************************************************************  -->

	<xsl:template name="displayIndexTerm">
		<xsl:if test="//indexterm|//addToIndex">
			<div id="indexTermsDiv">
				<h1>Index Terms</h1>
				<xsl:for-each select="//addToIndex">
				<xsl:sort select="."/>
				<xsl:value-of select="." />
				<xsl:if test="@secondary">
						(<xsl:value-of select="@secondary"/>)
						</xsl:if>
						<xsl:if test="@tertiary">
						[<xsl:value-of select="@tertiary"/>]
						</xsl:if>
						<xsl:if test="@see">
						(See <xsl:value-of select="@see"/>)
						</xsl:if>
						<xsl:if test="@seealso">
						[See also <xsl:value-of select="@seealso"/>]
		</xsl:if><br />
				</xsl:for-each>
				<xsl:for-each select="//indexterm">
<xsl:sort select="primary"/>
		<xsl:value-of select="primary"/>
		<xsl:if test="secondary">
		(<xsl:value-of select="secondary"/>)
		</xsl:if>
		<xsl:if test="tertiary">
		[<xsl:value-of select="tertiary"/>]
		</xsl:if>
		<xsl:if test="see">
		(See <xsl:value-of select="see"/>)
		</xsl:if>
		<xsl:if test="seealso">
		[See also <xsl:value-of select="seealso"/>]
		</xsl:if>
		<br />
						</xsl:for-each>
					</div>		
				</xsl:if>
	</xsl:template>

<!--  ****************************************************************  -->
<!--  INDEX TERMS                                                           -->
<!--  ****************************************************************  -->



  </xsl:stylesheet>