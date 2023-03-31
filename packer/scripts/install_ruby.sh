#!/usr/bin/env bash
echo "####### Installing Ruby: ${0} script START"
sleep 10
apt-get update && \
sleep 10
apt-get install -y ruby-full ruby-bundler build-essential
echo "####### Installing Ruby: ${0} script END"
sleep 10
sudo apt-get install -y git
exit 0
