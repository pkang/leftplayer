#!/bin/bash

export LPS_HOME="$PWD/lps-4.9.0/Server/lps-4.9.0"
if [ ! -d "$LPS_HOME" ]; then
  echo "Could not find LPS_HOME"
  exit 1
fi

export JAVA_HOME=`which java | sed 's!/bin/java!!'`
if [ ! -d "$JAVA_HOME" ]; then
  echo "Could not find JAVA_HOME"
  exit 1
fi

"$LPS_HOME"/WEB-INF/lps/server/bin/lzc --runtime=swf8 --output ../leftplayer/leftplayer.swf leftplayer.lzx
