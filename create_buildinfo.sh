#!/bin/bash

. load-config.sh
cd $GECKO_PATH
hg log -l 1 > ../buildinfo.txt
cd ..
cd gaia
git log -1 >> ../buildinfo.txt
cd ..
