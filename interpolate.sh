#!/usr/bin/bash
# REQUIRES FFMPEG TO BE INSTALLED
pareil () { test $# -eq 2 && test "$1" = "$2"; }
if pareil $# 0
then
echo "Usage : ./interpolate <filename> <fps> <output filename>"
exit 1
fi
clear
ffmpeg -i "$1" -vf "minterpolate='fps=$2':mi_mode=mci:mc_mode=aobmc:me_mode=bidir:vsbmc=1" "$3"
