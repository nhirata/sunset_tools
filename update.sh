#!/bin/bash

. load-config.sh
cd $GECKO_PATH
hg pull
hg up
hg log -l 1 > ../buildinfo.txt
cd ..
cd gaia
git pull
git log -1 >> ../buildinfo.txt
cd ..
