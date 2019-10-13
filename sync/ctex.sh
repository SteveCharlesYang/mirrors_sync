#!/bin/bash

sync_url="rsync://mirrors.tuna.tsinghua.edu.cn/"
sync_name="ctex"

if [ `cat "../$sync_name"` = "normal" ] ; then
	echo "syncing" > "../$sync_name"
	rsync -rltz4 --progress --delete --log-file=./log/archlinux.log "$sync_url$sync_name" "../data/$sync_name"
	echo "normal" > ../archlinux
fi
