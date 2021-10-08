#!/bin/sh

set -ex

# XXX: bundle with esbuild instead and make a slim docker image??

export IMAGE=registry.$BFC_DOMAIN/$BFC_USER/$BFC_APP:latest
docker build -t "$IMAGE" .
docker push "$IMAGE"
