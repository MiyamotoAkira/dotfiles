#! /bin/zsh

## We will be testing for the version of all apps installed here

if [[ `~/.rbenv/bin/rbenv version` != '2.5.1 (set by /root/.rbenv/version)' ]]; then
    echo `~/.rbenv/bin/rbenv version`
    echo "Wrong ruby version!" 1>&2
    exit 64
fi
