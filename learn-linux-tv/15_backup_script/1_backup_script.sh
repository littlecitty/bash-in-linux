#!/bin/bash

# ✅ Step 1: Check if exactly two arguments are passed (source and destination directories)
if [ $# -ne 2 ]; then
    echo "Usage: backup.sh <source_directory> <target_directory>"
    echo "Please try again."
    exit 1
fi

# ✅ Step 2: Check if rsync is installed on the system
if ! command -v rsync > /dev/null 2>&1; then
    echo "This script requires rsync to be installed."
    echo "Please use your distribution's package manager to install it and try again."
    exit 2
fi

# ✅ Step 3: Get the current date in yyyy-mm-dd format (used for backup directory name and log)
current_date=$(date +%Y-%m-%d)

# ✅ Step 4 (Optional): Test mode - uncomment to simulate the backup without actually copying files
#rsync_options="-avb --backup-dir $2/$current_date --delete --dry-run"

# ✅ Step 5: Set rsync options for actual backup
# -a     = archive mode (preserves permissions, symbolic links, etc.)
# -v     = verbose output
# -b     = backup files before overwriting
# --backup-dir = where old versions of changed/deleted files are saved
# --delete     = delete files in target that are no longer in source
# --exclude    = exclude the target directory from being copied into itself (prevents recursion)
rsync_options="-avb --backup-dir $2/$current_date --delete --exclude=$2"

# ✅ Step 6: Run the rsync command and log the output to a file named backup_<date>.log
rsync $rsync_options "$1" "$2/current" >> "backup_$current_date.log"

