#!/bin/sh

if [ -z "$2" ]; then
	MAIN=Project1
	ARG=$1
else
	MAIN=$1
	ARG=$2
fi

java -cp bin:lib/antlr-4.5.3-complete.jar $MAIN $ARG 2>&1
