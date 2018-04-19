#!/usr/bin/env bash

https://www.sitepoint.com/jekyll-plugins-github/
# build site
rake build

cd ../compiled_site
git add --all
git commit -m "Published `date`"
git push origin master:master

