#! /bin/zsh

## We will be testing for the version of all apps installed here

if [[ `ruby --version` != 'ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-linux-gnu]' ]]; then
    echo "Wrong ruby version!" 1>&2
    exit 64
fi
