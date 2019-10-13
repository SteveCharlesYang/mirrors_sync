#!/bin/bash

export sync_path="/mirrors"
export sync_url="rsync://rsync.mirrors.ustc.edu.cn/repo"
export sync_name="archlinux"

sh "$sync_path/sync/rsync_common.sh"
