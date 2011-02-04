#!/bin/bash
# * P_LZ_COPYRIGHT_BEGIN ******************************************************
# * Copyright 2001-2004 Laszlo Systems, Inc.  All Rights Reserved.            *
# * Use is subject to license terms.                                          *
# * P_LZ_COPYRIGHT_END ********************************************************
my_home=`dirname "$0"`
tomcat_home=$my_home/Server/tomcat-5.0.24
env JAVA_OPTS="-Dcom.apple.backgroundOnly=true -Djava.awt.headless=true" JAVA_HOME=/usr "${tomcat_home}/bin/shutdown.sh"
