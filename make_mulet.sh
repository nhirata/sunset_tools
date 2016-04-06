#!/bin/bash
. load-config.sh
./clobber.sh

cd $GECKO_PATH
MOZCONFIG=mulet ./mach build
cd ..
. zip_mulet.sh

