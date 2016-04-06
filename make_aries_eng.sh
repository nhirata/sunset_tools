#!/bin/bash
./load-config.sh

./update.sh
./clobber.sh
./create_buildinfo.sh

VARIANT="eng" ./build.sh > buildlog.txt
./zip_images.sh eng

