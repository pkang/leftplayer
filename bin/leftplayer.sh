#!/bin/bash

help() {
  [ ! -z "$1" ] && echo $1
  echo `basename $0` '<js_target_dir> <swf_target_dir>'
  exit 1
}

[ $# != 2 ]   && help
[ ! -d "$1" ] && help "Bad js target directory: $1"
[ ! -d "$2" ] && help "Bad swf target directory: $2"


WD=$(cd `dirname $0` && echo `pwd`/..)

export LPS_HOME="$WD/src/lps-4.9.0/Server/lps-4.9.0"
if [ ! -d "$LPS_HOME" ]; then
  echo "Could not find LPS_HOME: $LPS_HOME"
  exit 1
fi

if [ ! -d "${JAVA_HOME:=`which java | sed 's!/bin/java!!'`}" ]; then
  echo "Could not find JAVA_HOME: $JAVA_HOME"
  exit 1
fi

JS_DIR=$1  && [ `echo $JS_DIR | cut -c 1` != '/' ]  && JS_DIR="$PWD/$JS_DIR"
SWF_DIR=$2 && [ `echo $SWF_DIR | cut -c 1` != '/' ] && SWF_DIR="$PWD/$SWF_DIR"

"$LPS_HOME"/WEB-INF/lps/server/bin/lzc --runtime=swf8 --output leftplayer.swf "$WD"/src/leftplayer.lzx > /dev/null 2>&1
mv "$WD"/src/leftplayer.swf "$SWF_DIR"
cp "$WD"/leftplayer.js "$JS_DIR"
