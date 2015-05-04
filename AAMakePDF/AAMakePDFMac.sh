#!/bin/bash
currentdir=`pwd`
scriptdir=`dirname $0`
java -Djava.ext.dirs=$scriptdir/lib AAPDFMaker $currentdir/$1 $currentdir/$2 $scriptdir/
