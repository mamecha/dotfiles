#!/bin/sh


files="/home/yajima/dotfiles/.*"

for file in ${files}

do
   if ${file} == "/home/yajima/." ; then
    echo "pass"
   elif ${file} == "/home/yajima/.." ; then
    echo "pass"
   elif ${file} == "/home/yajima/.git" ; then
    echo "pass"
   else
    echo ${file}
    ln -s ${file} /home/yajima/
    echo "ln -s ${file} /home/yajima/"
   fi

done
