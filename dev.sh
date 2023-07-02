#!/bin/sh
set -exu

cp Dockerfile .dockerignore ./jsonwebtoken/
docker build -t jwt:dev ./jsonwebtoken
echo "starting server on http://localhost:3000"
docker run --rm -it -p3000:3000 jwt:dev
