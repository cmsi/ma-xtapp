# xtapp

## How to build xtapp packages

1. ソースファイルの準備 (ホスト上で)

    * $HOME/vagrant/data/src に xTAPP-rc-150401.tgz をダウンロード

2. パッケージのビルド

        cd $HOME/build
        sh /development/ma-xtapp/build.sh > build.log 2>&1

3. 生成物を移動

        VERSION=150401
        mkdir -p /data/xtapp_${VERSION}
        mv -f xtapp_${VERSION}.orig.tar.gz xtapp_${VERSION}-*.debian.tar.gz xtapp_*.deb /data/xtapp_${VERSION}
