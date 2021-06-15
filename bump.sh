#!/bin/bash -i

atm-bb unpin $(pwd)/base/Dockerfile
atm-bb unpin $(pwd)/service/Dockerfile
atm-bb bump-version $(pwd)/base/Dockerfile
git commit -am 'bump'
git push origin
# ./build-ecr.sh
