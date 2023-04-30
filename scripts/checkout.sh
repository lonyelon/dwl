#!/bin/sh

cd dwl
rm config.h 2> /dev/null
git reset --hard
git pull 2> /dev/null
return 0
