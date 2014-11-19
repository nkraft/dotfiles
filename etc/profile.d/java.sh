#!/bin/bash

if [ "Darwin" == "$UNAME" ]
then
  JAVA_6_HOME=$(/usr/libexec/java_home -v1.6)
  JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)
fi

export JAVA_6_HOME JAVA_7_HOME
