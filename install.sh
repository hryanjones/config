#! /bin/bash

# stolen from http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in 
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR

THINGS="`ls `
