#!/usr/bin/env bash

#exit if any command fails
set -e

dotnet restore

dotnet build src/GoogleGeoCoderCore

revision=${TRAVIS_JOB_ID:=1}  
revision=$(printf "%04d" $revision) 