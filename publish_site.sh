#!/usr/bin/env bash

DATE=`date`
VERSION=`git describe --tags --dirty`
echo "Don't forget to publish source changes!"

#https://www.sitepoint.com/jekyll-plugins-github/
# build site
rake build

cd ../compiled_site
git add --all
git commit -m "Published version ${VERSION} on ${DATE}"
git push origin master:master

