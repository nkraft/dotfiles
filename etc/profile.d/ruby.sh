#!/bin/bash

if [ "Darwin" == "$UNAME" ]; then
    export PATH="$(brew --prefix ruby)/bin:$PATH"
fi
