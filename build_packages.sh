#!/bin/bash

set -e

offline_dir="Pakete_offline/"
online_dir="Pakete/"

# link package
for pkg in ${offline_dir}*; do
    pkg_name=${pkg##${offline_dir}}
    echo "$pkg_name"
    # link this package into the right directory
    if [ ! -d "${offline_dir}${pkg_name}" ]; then 
        continue
    fi
    ln -vs "../${offline_dir}${pkg_name}" "${online_dir}${pkg_name}"
    # build page using jekyll
    bundler exec jekyll build
    # tar _site
    # cusomize search-data
    cp _site/assets/js/search-data.json _site/assets/js/search-data-${pkg_name}.json
    tar -cjf "pkg_${pkg_name}.tar.bz2" _site/${online_dir}* _site/assets/js/search-data-${pkg_name}.json

    # remove symbolic link
    if [ -h "${online_dir}${pkg_name}" ]; then
        rm "${online_dir}${pkg_name}"
    else
        break
    fi

    # clean _site
    rm -r _site/*
done
