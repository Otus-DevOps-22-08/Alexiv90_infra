#!/usr/bin/env bash
echo "####### Installing Ruby: ${0} script START"
apt-get update && \
apt-get install -y ruby-full ruby-bundler build-essential
echo "####### Installing Ruby: ${0} script END"
exit 0
