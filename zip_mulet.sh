#!/bin/sh
echo $PWD
export B2G=$PWD

current_time=$(date "+%Y.%m.%d-%H.%M.%S")
filename="target".$current_time."zip"
zip -r $filename $B2G/pine/obj-x86_64-pc-linux-gnu -x *.o 

filename="profile".$current_time."zip"
zip -r $filename $B2G/gaia/profile

filename="mozharness".$current_time."zip"
zip -r $filename $B2G/pine/testing/mozharness buildinfo.txt

echo "unzip the target and profile zip files, obj-x86_64-pc-linux-gnu/dist/bin/firefox -no-remote -profile <profile zip>" 
