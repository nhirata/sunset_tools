#!/bin/bash

. load-config.sh
cd $GECKO_PATH
hg pull
hg up
cd ..
cd gaia
git pull
cd ..
