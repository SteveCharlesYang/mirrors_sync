#!/bin/bash

touch $sync_path/status/$sync_name

if [[ `cat "$sync_path/status/$sync_name"` != "syncing" ]];
then
        echo "[$sync_name] Syncing..."
        echo "syncing" > "../$sync_name"
        rsync -rltz4 --progress --delete --log-file="$sync_path/log/$sync_name.log" "$sync_url/$sync_name" "$sync_path/data/$sync_name"
        if [ $? -ne 0 ] ;
        then
                echo "[$sync_name] Sync failed.";
                echo "failed" > "$sync_path/status/$sync_name";
        else
                echo "[$sync_name] Sync completed.";
                echo "normal" > "$sync_path/status/$sync_name";
        fi
else
        echo "[$sync_name] Disabled, skipping..."
fi
