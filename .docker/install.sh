#!/usr/bin/env bash

npm install -g @hilla/cli
npx @hilla/cli init my-project

chmod -R a+rw my-project

rsync -a my-project/ ./
rm -rf my-project