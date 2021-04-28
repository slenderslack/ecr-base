#!/bin/bash

unpin.clj base/Dockerfile
unpin.clj service/Dockerfile
bump_version.clj base/Dockerfile
git commit -am 'bump'
git push origin
./build-ecr.sh
