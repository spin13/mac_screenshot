#!/bin/bash
# 初回に実行する

cwd=`dirname "${0}"`
expr "${0}" : "/.*" > /dev/null || cwd=`(cd "${cwd}" && pwd)`
me=`whoami`
dir="\/Users\/$me\/ScreenShots"
sed -i -e "s/#{DIR}/$dir/g" $cwd/env.py
python $cwd/fsevent_dog.py
