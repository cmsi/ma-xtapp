# xtapp

## How to build xtapp packages

1. ソースファイルの準備 (ホスト上で)

    * $HOME/vagrant/data/src に xTAPP-rc-150401.tgz, xTAPP-util-rc-150401.tgz, xTAPP-PS-PBE.tgz, xTAPP-PS-PBE-nc.tgz, xTAPP-PS-CAPZ.tgz をダウンロード

2. パッケージのビルド

        cd $HOME/build
        sh /development/ma-xtapp/build-xtapp.sh > build-xtapp.log 2>&1
        sh /development/ma-xtapp/build-xtapp-util.sh > build-xtapp-util.log 2>&1
        sh /development/ma-xtapp/build-xtapp-ps.sh > build-xtapp-ps.log 2>&1
        sh /development/ma-xtapp/build-xtapp-ps-extra.sh > build-xtapp-ps-extra.log 2>&1

3. 生成物を移動

        VERSION=150401
        mkdir -p /data/xtapp_${VERSION}
        mv -f xtapp_${VERSION}.orig.tar.gz xtapp_${VERSION}-*.debian.tar.gz xtapp_*.deb /data/xtapp_${VERSION}

        VERSION=150401
        mkdir -p /data/xtapp-util_${VERSION}
        mv -f xtapp-util_${VERSION}.orig.tar.gz xtapp-util_${VERSION}-*.debian.tar.gz xtapp-util_*.deb /data/xtapp-util_${VERSION}

        VERSION=140401
        mkdir -p /data/xtapp-ps_${VERSION}
        mv -f xtapp-ps_${VERSION}.orig.tar.gz xtapp-ps_${VERSION}-*.debian.tar.gz xtapp-ps_*.deb /data/xtapp-ps_${VERSION}

        VERSION=140401
        mkdir -p /data/xtapp-ps-extra_${VERSION}
        mv -f xtapp-ps-extra_${VERSION}.orig.tar.gz xtapp-ps-extra_${VERSION}-*.debian.tar.gz xtapp-ps-extra_*.deb /data/xtapp-ps-extra_${VERSION}
