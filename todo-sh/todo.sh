#!/bin/sh

DIR=~/Bureau

touch "$DIR/$1"

if [ "$2" != "" ]; then
    
    echo "$2" > "$DIR/$1"
fi


