#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -z "$1" ]; then
	echo "Must specify which project (e.g., project1 or project2)"
	exit -1
fi

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
for i in `ls $DIR/examples/$1/*.bs` ; do
	FILE=`basename $i`
	./run.sh "$DIR/examples/$1/$FILE" 2>&1 | diff -c "$DIR/output/$1/$FILE.out" - >> test.log

	if [ $? -eq 0 ] ; then
		echo "Test PASSED: $FILE"
	else
		echo "Test FAILED: $FILE"
	fi
done
IFS=$SAVEIFS
