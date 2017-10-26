#!/bin/sh
. $(dirname $0)/path.sh

# VM="madev8-amd64 madev8-i386 madev7-amd64 madev7-i386"
VM="madev7-amd64 madev7-i386"
for v in $VM; do
  cd $HOME/vagrant/$v
  vagrant ssh -c "sh development/ma-${PACKAGE}/xtapp/setup.sh"
  vagrant ssh -c "sh development/ma-${PACKAGE}/xtapp/build.sh"
done
