#!/bin/sh
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
filename="aries".$current_time."zip"
zip $filename ./out/target/product/aries/*.img ./.config ./load-config.sh ./flash.sh ./buildinfo.txt ./buildlog.txt
