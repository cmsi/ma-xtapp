# xtapp

## How to build xtapp packages

1. ソースファイルの準備 (ホスト上で)

    * xTAPPダウンロードシステム: http://xtapp.cp.is.s.u-tokyo.ac.jp/download/download.html
    * (xtapp) xTAPP-develop-*.tgz をダウンロード

        VERSION=20180420
        VERSION_TGZ=180420
	rm -rf xtapp_$VERSION xTAPP-develop-$VERSION_TGZ
        tar zxvf xTAPP-develop-$VERSION_TGZ.tgz
        mv -f xTAPP-develop-$VERSION_TGZ xtapp_$VERSION
        tar zcvf xtapp_$VERSION.orig.tar.gz xtapp_$VERSION

    * (xtapp-utill) xTAPP-util-dev-*.tgz をダウンロード

        VERSION=20180420
        VERSION_TGZ=180420
	rm -rf xtapp-util_$VERSION xTAPP-util-dev-$VERSION_TGZ
        tar zxvf xTAPP-util-dev-$VERSION_TGZ.tgz
        mv -f xTAPP-util-dev-$VERSION_TGZ xtapp-util_$VERSION
        tar zcvf xtapp-util_$VERSION.orig.tar.gz xtapp-util_$VERSION

    * (xtapp-ps) xTAPP-PS-PBE.tgz をダウンロード

        VERSION=140401
	rm -rf xtapp-ps_$VERSION xTAPP-PS-PBE
        tar zxvf xTAPP-PS-PBE.tgz
        mkdir xtapp-ps_$VERSION
        mv xTAPP-PS-PBE xtapp-ps_$VERSION/
        tar zcvf xtapp-ps_$VERSION.orig.tar.gz xtapp-ps_$VERSION

    * (xtapp-ps-extra) xTAPP-PS-CAPZ.tgz と xTAPP-PS-PBE-nc.tgz をダウンロード

        VERSION=140401
	rm -rf xtapp-ps-extra_$VERSION xTAPP-PS-PBE-nc xTAPP-PS-CAPZ
        tar zxvf xTAPP-PS-CAPZ.tgz
        tar zxvf xTAPP-PS-PBE-nc.tgz 
        mkdir xtapp-ps-extra_$VERSION
        mv xTAPP-PS-PBE-nc xTAPP-PS-CAPZ xtapp-ps-extra_$VERSION/
        tar zcvf xtapp-ps-extra_$VERSION.orig.tar.gz xtapp-ps-extra_$VERSION

    * (xtapp-ps-so) xTAPP-PS-PBE-SO-dev.tgz と xTAPP-PS-PBE-ioncore.tgz をダウンロード

        VERSION=20180420
        rm -rf xtapp-ps-so_$VERSION xTAPP-PS-PBE-SO-dev xTAPP-PS-PBE-ioncore
        tar zxvf xTAPP-PS-PBE-SO-dev.tgz
        tar zxvf xTAPP-PS-PBE-ioncore.tgz
        mkdir xtapp-ps-so_$VERSION
        mv xTAPP-PS-PBE-SO-dev xTAPP-PS-PBE-ioncore xtapp-ps-so_$VERSION/
        tar zcvf xtapp-ps-so_$VERSION.orig.tar.gz xtapp-ps-so_$VERSION
