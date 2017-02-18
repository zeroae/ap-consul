#!/bin/bash -e
# this script is run during the image build

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mv $DIR/assets/consul.json /etc/consul.d/00_default.json
mv $DIR/assets/containerpilot.json /etc/containerpilot.d/99_service.json

ln -sf $DIR/assets/consul-manage /sbin

exit 0
