#!/bin/bash

. load-config.sh
cd $GECKO_PATH
result=${PWD##*/}
if [ "$result" == "pine" ]||[ "$result" == "mozilla-inbound" ]; then
   hg pull
   hg up
else
   git pull mozillaorg master 
fi

cd ..
cd gaia

if [ "$result" == "pine" ]; then
   git pull mozillaorg kanikani
else
   git pull mozillaorg master
fi
cd ..
