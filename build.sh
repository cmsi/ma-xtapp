#!/bin/sh

SCRIPT_DIR=$(dirname $0)
DATA_DIR="/data/src"

VERSION=$(head -1 ${SCRIPT_DIR}/xtapp/debian/changelog | sed 's/[()-]/ /g' | awk '{print $2}')

BUILD_DIR="xtapp_$VERSION"

echo "SCRIPT_DIR: $SCRIPT_DIR"
echo "DATA_DIR: $SCRIPT_DIR"
echo "BUILD_DIR: $BUILD_DIR"
echo "VERSION: $VERSION"

if [ -f "$DATA_DIR/xTAPP-develop-$VERSION.tgz" ]; then :; else
  echo "Error: $DATA_DIR/xTAPP-develop-$VERSION.tgz not found"
  exit 127
fi
if [ -d "$BUILD_DIR" ]; then
  echo "Error: $BUILD_DIR already exists"
  exit 127
fi

set -x

tar zxf $DATA_DIR/xTAPP-develop-$VERSION.tgz
mv xTAPP-develop-$VERSION $BUILD_DIR 
tar zcf xtapp_$VERSION.orig.tar.gz $BUILD_DIR
cp -frp $SCRIPT_DIR/xtapp/debian $BUILD_DIR

if [ -n "$SETUP_ONLY" ]; then
  exit 0
fi

cd $BUILD_DIR 
case "$(dpkg --print-architecture)" in
    amd64)
        dpkg-buildpackage
        ;;
    i386)
        dpkg-buildpackage -b
        ;;
esac
