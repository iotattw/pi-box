#!/bin/sh
IMG_DIR=/mnt/`./truncate-extension.sh $1`

cd $IMG_DIR
for SCRIPT in /src/config/*.sh
	do
		if [ -f $SCRIPT -a -x $SCRIPT ]
		then
			$SCRIPT
		fi
	done
cd -
