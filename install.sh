#! /bin/bash

# stolen from http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in 
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DEST="$HOME"
BACKUP_DIR="/tmp/backup/`date +%s0`"

mkdir -p $DEST
mkdir -p $BACKUP_DIR
cd $DIR

THINGS="`ls -A | grep -E "^\." | grep -vE '^\.git(modules)$'`"

for T in $THINGS; do
  cp -ruv $DEST/$T $BACKUP
  cp -ruv $T $DEST
done
