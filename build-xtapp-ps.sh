#!/bin/sh

SCRIPT_DIR=$(dirname $0)
DATA_DIR="/data/src"

VERSION=$(head -1 ${SCRIPT_DIR}/xtapp-ps/debian/changelog | sed 's/[()-]/ /g' | awk '{print $3}')

BUILD_DIR="xtapp-ps_$VERSION"

echo "SCRIPT_DIR: $SCRIPT_DIR"
echo "DATA_DIR: $SCRIPT_DIR"
echo "BUILD_DIR: $BUILD_DIR"
echo "VERSION: $VERSION"

if [ -f "$DATA_DIR/xTAPP-PS-PBE.tgz" ]; then :; else
  echo "Error: $DATA_DIR/xTAPP-PS-PBE.tgz not found"
  exit 127
fi
if [ -d "$BUILD_DIR" ]; then
  echo "Error: $BUILD_DIR already exists"
  exit 127
fi

set -x

mkdir $BUILD_DIR
cd $BUILD_DIR
tar zxf $DATA_DIR/xTAPP-PS-PBE.tgz
cd ..
tar zcf xtapp-ps_$VERSION.orig.tar.gz $BUILD_DIR
cp -frp $SCRIPT_DIR/xtapp-ps/debian $BUILD_DIR

cd $BUILD_DIR 
dpkg-buildpackage -us -uc
