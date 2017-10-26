# xtapp

## How to build xtapp packages

1. ソースファイルの準備 (ホスト上で)

    * (xtapp) xTAPP-develop-*.tgz をダウンロード

        VERSION=170619
        tar zxvf xTAPP-develop-$VERSION.tar.gz
        mv -f xTAPP-develop-$VERSION xtapp_$VERSION
        tar zcvf xtapp_$VERSION.orig.tar.gz xtapp_$VERSION

    * (xtapp-utill) xTAPP-util-dev-*.tgz をダウンロード

        VERSION=160715
        tar zxvf xTAPP-util-dev-$VERSION.tar.gz
        mv -f xTAPP-util-dev-$VERSION xtapp-util_$VERSION
        tar zcvf xtapp-util_$VERSION.orig.tar.gz xtapp-util_$VERSION

    * (xtapp-ps) xTAPP-PS-PBE.tgz をダウンロード

        VERSION=140401
        tar zxvf xTAPP-PS-PBE.tgz
        mkdir xtapp-ps_$VERSION
        mv xTAPP-PS-PBE xtapp-ps_$VERSION/
        tar zcvf xtapp-ps_$VERSION.orig.tar.gz xtapp-ps_$VERSION

    * (xtapp-ps-extra) xTAPP-PS-CAPZ.tgz と xTAPP-PS-PBE-nc.tgz をダウンロード

        VERSION=140401
        tar zxvf xTAPP-PS-CAPZ.tgz
        tar zxvf xTAPP-PS-PBE-nc.tgz 
        mkdir xtapp-ps-extra_$VERSION
        mv xTAPP-PS-PBE-nc xTAPP-PS-CAPZ xtapp-ps-extra_$VERSION/
        tar zcvf xtapp-ps-extra_$VERSION.orig.tar.gz xtapp-ps-extra_$VERSION

    * (xtapp-ps-so) xTAPP-PS-PBE-SO-dev.tgz をダウンロード

        VERSION=20160420
        tar zxvf xTAPP-PS-PBE-SO-dev.tgz
        mkdir xtapp-ps-so_$VERSION
        mv xTAPP-PS-PBE-SO xtapp-ps-so_$VERSION/
        tar zcvf xtapp-ps-so_$VERSION.orig.tar.gz xtapp-ps-so_$VERSION
