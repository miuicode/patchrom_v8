#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply

echo "original dir: $2"
echo "target dir:$1"

if [ $1 = "Mms" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Phone" ];then
    cp $1/Phone.part out/
    cd out
    $GIT_APPLY Phone.part
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Phone patch fail"
        exit 1
    done

    echo "Merge Phone's xml"
	$XMLMERGYTOOL $1/res/values $2/res/values
    for file in `find $1/smali -name *.part`
    do
	filepath=`dirname $file`
	filename=`basename $file .part`
        dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
fi

if [ $1 = "MiuiHome" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "ThemeManager" ];then
      $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Settings" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiSystemUI" ];then
    cp $1/MiuiSystemUI.part out/
    cd out
    $GIT_APPLY MiuiSystemUI.part
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "MiuiSystemUI patch fail"
        exit 1
    done
fi
