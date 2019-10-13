#!/bin/bash

sync_url="rsync://rsync.mirrors.ustc.edu.cn/repo/"
sync_name="archlinux"

if [ `cat "../status/$sync_name"` = "normal" ] ; then
	echo "syncing" > "../$sync_name"
	rsync -rltz4 --progress --delete --log-file=./log/archlinux.log "$sync_url$sync_name" "../data/$sync_name"
	echo "normal" > ../status/archlinux
fi
