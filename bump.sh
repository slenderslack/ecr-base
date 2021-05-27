#!/bin/bash -i

atm-bb unpin base/Dockerfile
atm-bb unpin service/Dockerfile
atm-bb bump_version base/Dockerfile
git commit -am 'bump'
git push origin
./build-ecr.sh
