#!/usr/bin/env bash

echo "### Update system packages"
yum -y update

echo "### Enable Docker Engine service"
chkconfig docker on

echo "### Start Docker Engine service"
service docker start

echo "### Enable MongoDB service"
chkconfig mongod on

echo "### Start MongoDB daemon"
service mongod start

echo "### Install NodeJS"
yum install -y nodejs
yum install -y npm
