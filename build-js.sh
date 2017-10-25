#!/bin/bash
current="$PWD"
while [[ $PWD != / ]];do
	[ -e .bin/coffee ] && break
	cd ..
done
bin="$PWD"
cd $current
$bin/.bin/coffee -o js -c lib/
cp -r lib/font/data js/font/data
