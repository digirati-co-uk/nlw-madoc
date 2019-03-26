#!/usr/bin/env bash
set -ex

# Test homepage
[[ "$(curl -sS "http://localhost:8898/" --output /dev/null --write-out '%{http_code}' 2>&1)" == "200" ]]

# Test example site
[[ "$(curl -sS "http://localhost:8898/s/war-tribunal-records/page/welcome" --output /dev/null --write-out '%{http_code}' 2>&1)" == "200" ]]
[[ "$(curl -sS "http://localhost:8898/s/dcharries/page/home" --output /dev/null --write-out '%{http_code}' 2>&1)" == "200" ]]
[[ "$(curl -sS "http://localhost:8898/s/livingstone/page/home" --output /dev/null --write-out '%{http_code}' 2>&1)" == "200" ]]
[[ "$(curl -sS "http://localhost:8898/s/livingstone2/page/home" --output /dev/null --write-out '%{http_code}' 2>&1)" == "200" ]]
[[ "$(curl -sS "http://localhost:8898/s/livingstone3/page/home" --output /dev/null --write-out '%{http_code}' 2>&1)" == "200" ]]
[[ "$(curl -sS "http://localhost:8898/s/kyffin/page/home" --output /dev/null --write-out '%{http_code}' 2>&1)" == "200" ]]
[[ "$(curl -sS "http://localhost:8898/s/home/page/welcome" --output /dev/null --write-out '%{http_code}' 2>&1)" == "200" ]]
