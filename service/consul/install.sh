#!/bin/bash -e
# this script is run during the image build

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sf $DIR/assets/consul-manage /sbin

exit 0
