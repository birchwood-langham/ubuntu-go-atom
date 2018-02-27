#!/usr/bin/env bash

docker build -t birchwoodlangham/ubuntu-go-atom:1.24.0 .
docker tag birchwoodlangham/ubuntu-go-atom:1.24.0 birchwoodlangham/ubuntu-go-atom:latest
