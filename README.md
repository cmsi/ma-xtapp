# xtapp

## How to build xtapp packages

1. ソースファイルの準備 (ホスト上で)

    * $HOME/vagrant/data/src に xTAPP-develop-160715.tgz をダウンロード

2. ビルドディレクトリの準備

        cd $HOME/build
        sh /development/ma-xtapp/setup.sh

3. パッケージのビルド

        cd $HOME/build
        sh /development/ma-xtapp/build.sh 2>&1 | tee build.log

4. パッケージへの署名

        cd $HOME/build
        debsign xtapp_*.changes 

5. リポジトリへの登録

        cd $HOME/build
        sh /development/MateriAppsLive/vagrant/add_repo.sh xtapp_*.changes
