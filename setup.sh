#!/bin/sh


files="/home/yajima/dotfiles/.*"

for file in ${files}

do
  echo ${file}
   if [ ${file} = "/home/yajima/dotfiles/." ] ; then
    echo "pass"
   elif [ ${file} = "/home/yajima/dotfiles/.." ] ; then
    echo "pass"
   elif [ ${file} = "/home/yajima/dotfiles/.git" ]; then
    echo "pass"
   else
    ln -s ${file} /home/yajima/
    echo "ln -s ${file} /home/yajima/"
   fi

done
