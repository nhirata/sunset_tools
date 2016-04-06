#!/bin/bash
./load-config.sh

./clobber.sh

export VARIANT="eng" 
export debug=1 
export B2G_DEBUG=1 

current_time=$(date "+%Y.%m.%d-%H.%M.%S")

./build.sh > buildlog.txt
./zip_images.sh debug

./build.sh buildsymbols > buildlog.txt
zip -r "symbols".$current_time."zip" $GECKO_OBJDIR/dist/crashreporter-symbols/* buildlog.txt buildinfo.txt

