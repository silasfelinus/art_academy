#!/bin/bash

# store the current dir
CUR_DIR=$(pwd)

# Let the person running the script know what's going on.
echo "Pulling in latest changes for all repositories..."

# Find all git repositories and update it to the master latest revision
find . -name .git -type d \
| xargs -n1 -P4 -I% git --git-dir=% --work-tree=%/.. remote update -p
    
    # lets get back to the CUR_DIR
cd $CUR_DIR


echo "Complete!"
