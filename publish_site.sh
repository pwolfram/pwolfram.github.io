#!/usr/bin/env bash

DATE=`date`
VERSION=`git describe --tags --dirty`

read -p "Push source to github (y/n)?" choice
case "$choice" in 
      y|Y ) git push origin src:src;;
      n|N ) echo "Don't forget to publish source changes via 'git push origin src:src'" ;;
        * ) echo "Invalid option, exiting script"; exit;;
      esac

#https://www.sitepoint.com/jekyll-plugins-github/
# build site
rake build

cd ../compiled_site
git add --all
git commit -m "Published version ${VERSION} on ${DATE}"
git push origin master:master

