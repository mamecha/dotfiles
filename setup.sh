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
# bin
    echo "ln -s ${home_dir}dotfiles/bin/ ${home_dir}"
    ln -s ${home_dir}dotfiles/bin/ ${home_dir}
# git-completion.bash
    echo "ln -s ${home_dir}dotfiles/git-completion.bash ${home_dir}"
    ln -s ${home_dir}dotfiles/git-completion.bash ${home_dir}
