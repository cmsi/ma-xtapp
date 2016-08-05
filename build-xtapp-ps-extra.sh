#!/bin/sh

SCRIPT_DIR=$(dirname $0)
DATA_DIR="/data/src"

VERSION=$(head -1 ${SCRIPT_DIR}/xtapp-ps-extra/debian/changelog | sed 's/[()-]/ /g' | awk '{print $4}')

BUILD_DIR="xtapp-ps-extra_$VERSION"

echo "SCRIPT_DIR: $SCRIPT_DIR"
echo "DATA_DIR: $SCRIPT_DIR"
echo "BUILD_DIR: $BUILD_DIR"
echo "VERSION: $VERSION"

if [ -f "$DATA_DIR/xTAPP-PS-PBE-nc.tgz" ]; then :; else
  echo "Error: $DATA_DIR/xTAPP-PS-PBE-nc.tgz not found"
  exit 127
fi
if [ -f "$DATA_DIR/xTAPP-PS-CAPZ.tgz" ]; then :; else
  echo "Error: $DATA_DIR/xTAPP-PS-CAPZ.tgz not found"
  exit 127
fi
if [ -d "$BUILD_DIR" ]; then
  echo "Error: $BUILD_DIR already exists"
  exit 127
fi

set -x

mkdir $BUILD_DIR
cd $BUILD_DIR
tar zxf $DATA_DIR/xTAPP-PS-PBE-nc.tgz
tar zxf $DATA_DIR/xTAPP-PS-CAPZ.tgz
cd ..
tar zcf xtapp-ps-extra_$VERSION.orig.tar.gz $BUILD_DIR
cp -frp $SCRIPT_DIR/xtapp-ps-extra/debian $BUILD_DIR

cd $BUILD_DIR 
dpkg-buildpackage -us -uc
