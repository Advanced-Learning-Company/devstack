#!/usr/bin/env bash

echo "Pulling alw juniper lms docker image and tag it."

IMAGE='prashantalw1/prashantpndy'
TAG='alwops/edxapp:juniper.master'

if [[ "$(docker images ${IMAGE} | grep ${IMAGE} 2> /dev/null)" != "" ]]; then
  echo "ALW juniper image is already exists."
else
  docker pull $IMAGE
  docker tag $IMAGE $TAG
  echo "Successfully pulled the alw juniper LMS image and tagged it."
fi
