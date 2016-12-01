#! /bin/bash

# Did you really expect finding anything here?
# Anyway, this is a "just before the talk" stuff, if you want to do that
# cleanly, use pass (http://passwordstore.org/) instead of cat ;)

export AWS_ACCESS_KEY_ID=`cat ~/creds/ansible-key-id`
export AWS_SECRET_ACCESS_KEY=`cat ~/creds/ansible-key-secret`
export DOCKER_HUB_USERNAME=`cat ~/creds/dockerhubusername`
export DOCKER_HUB_PASSWORD=`cat ~/creds/dockerhubpassword`

# Anyway, everyone knows that the password is "password"
