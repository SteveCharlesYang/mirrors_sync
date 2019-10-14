#!/bin/bash:q

# interval=1d
# calendar=*-*-* 01:30:00

export sync_path=".."
export sync_url="rsync://mc.0x7f.cc"
export sync_name="mc"

sh "$sync_path/sync/rsync_common.sh"
