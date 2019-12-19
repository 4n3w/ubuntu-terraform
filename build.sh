#!/usr/bin/env bash
#
# https://hub.docker.com/r/4n3w/ubuntu-terraform

docker build -t 4n3w/ubuntu-terraform .

docker push 4n3w/ubuntu-terraform
