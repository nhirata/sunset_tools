#!/bin/sh
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
if [ -n "$1" ]; then
  filename="aries".$1.$current_time."zip"
else
  filename="aries".$current_time."zip"
fi
zip $filename ./out/target/product/aries/*.img ./.config ./load-config.sh ./flash.sh ./buildinfo.txt ./buildlog.txt
