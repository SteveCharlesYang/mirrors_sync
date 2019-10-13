#!/bin/bash

sync_path="/mirrors"
sync_url="rsync://mirrors.tuna.tsinghua.edu.cn"
sync_name="ctex"

if [ `cat "$sync_path/status/$sync_name"` = "normal" ] ; then
	echo "syncing" > "$sync_path/status/$sync_name"
	rsync -rltz4 --progress --delete --log-file="$sync_path/log/$sync_name.log" "$sync_url/$sync_name" "$sync_path/data/$sync_name"
	echo "normal" > "$sync_path/status/$sync_name"
fi
