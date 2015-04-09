#!/bin/bash

if [ "Darwin" == "$UNAME" ]
then
  # JAVA_6_HOME=$(/usr/libexec/java_home -v1.6)
  JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)
  JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
  JAVA_HOME=$JAVA_7_HOME
fi

# export JAVA_6_HOME
export JAVA_7_HOME JAVA_8_HOME JAVA_HOME
