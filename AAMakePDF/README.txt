***Agile Author PDF Maker***

This tool enables you to create a PDF from a Manning XML document. 

The PDF maker is a script that runs a transformation on the XML file, so you'll 
need to install it into an accessible directory THAT DOES NOT CONTAIN SPACES so you can run it.  To do that, 
extract the files from this ZIP into a single directory, then open a DOS window 
and change to that directory.  You can then type the following:

>>> AAMakePDF infilename outfilename

on Windows, or on *nix, type:

>>> AAMakePDF.sh infilename outfilename

where "infilename" is the name of your XML file, and outfilename is the name of the PDF you're creating.  For example:

>>> AAMakePDF chapter1.xml chapter1.pdf

You'll find this process simpler if you copy your XML file and any associated images into the AAMakePDF folder, 
but that's not required.  To keep them separpate, start the script from the chapter directory and specify the 
PDF maker base, as in

C:\Users\Nick\Documents\Manning\docs\New Folder>..\PDFMaker\aamakepdf docall.xml
 docall.pdf ..\PDFMaker\

Please remember: THIS APPLICATION MUST BE INSTALLED IN A DIRECTORY WITH NO SPACES.

Questions?  Contact Nicholas Chase at nich@manning.com