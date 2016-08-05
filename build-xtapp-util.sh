#!/bin/sh

SCRIPT_DIR=$(dirname $0)
DATA_DIR="/data/src"

VERSION=$(head -1 ${SCRIPT_DIR}/xtapp-util/debian/changelog | sed 's/[()-]/ /g' | awk '{print $3}')

BUILD_DIR="xtapp-util_$VERSION"

echo "SCRIPT_DIR: $SCRIPT_DIR"
echo "DATA_DIR: $SCRIPT_DIR"
echo "BUILD_DIR: $BUILD_DIR"
echo "VERSION: $VERSION"

if [ -f "$DATA_DIR/xTAPP-util-rc-$VERSION.tgz" ]; then :; else
  echo "Error: $DATA_DIR/xTAPP-util-rc-$VERSION.tgz not found"
  exit 127
fi
if [ -d "$BUILD_DIR" ]; then
  echo "Error: $BUILD_DIR already exists"
  exit 127
fi

set -x

tar zxf $DATA_DIR/xTAPP-util-rc-$VERSION.tgz
mv xTAPP-util $BUILD_DIR 
tar zcf xtapp-util_$VERSION.orig.tar.gz $BUILD_DIR
cp -frp $SCRIPT_DIR/xtapp-util/debian $BUILD_DIR

cd $BUILD_DIR 
dpkg-buildpackage -us -uc
