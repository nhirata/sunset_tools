#!/bin/bash

. load-config.sh
cd $GECKO_PATH
if [$GECKO_PATH~="pine"]||[$GECKO_PATH~="mozilla-inbound"]
   hg pull
   hg up
else
   git pull
fi

cd ..
cd gaia
git pull
cd ..
