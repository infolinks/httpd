#!/usr/bin/env bash

set -e

docker build -t infolinks/httpd:${TRAVIS_COMMIT} .

if [[ ${TRAVIS_TAG} =~ ^v[0-9]+$ ]]; then
    docker tag infolinks/httpd:${TRAVIS_COMMIT} infolinks/httpd:${TRAVIS_TAG}
    docker push infolinks/httpd:${TRAVIS_TAG}
    docker tag infolinks/httpd:${TRAVIS_COMMIT} infolinks/httpd:latest
    docker push infolinks/httpd:latest
fi
