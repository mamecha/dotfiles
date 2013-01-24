#!/bin/sh

#mac
home_dir="/Users/yajima/"
#linux
home_dir="/home/yajima/"

files="${home_dir}dotfiles/.*"

for file in ${files}

do
  echo ${file}
   if [ ${file} = "${home_dir}dotfiles/." ] ; then
    echo "pass"
   elif [ ${file} = "${home_dir}dotfiles/.." ] ; then
    echo "pass"
   elif [ ${file} = "${home_dir}dotfiles/.git" ]; then
    echo "pass"
   else
    ln -s ${file} ${home_dir}
    echo "ln -s ${file} ${home_dir}"
   fi

done
