#!/bin/bash

bump_version.clj base/Dockerfile
git commit -am 'bump'
git push origin
./build-ecr.sh
