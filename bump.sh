#!/bin/bash

~/atomist/slimslenderslacks/bb_scripts/bump_version.clj
git commit -am 'bump'
git push origin
./build-ecr.sh
