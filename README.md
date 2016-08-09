# xtapp

## How to build xtapp packages

1. ソースファイルの準備 (ホスト上で)

    * (xtapp) $HOME/vagrant/data/src に xTAPP-develop-160715.tgz をダウンロード

2. ビルドディレクトリの準備

        cd $HOME/build
        sh /development/ma-xtapp/xtapp/setup.sh
        sh /development/ma-xtapp/xtapp-util/setup.sh
        sh /development/ma-xtapp/xtapp-ps/setup.sh
        sh /development/ma-xtapp/xtapp-ps-extra/setup.sh
        sh /development/ma-xtapp/xtapp-ps-so/setup.sh

3. パッケージのビルド

        cd $HOME/build
        sh /development/ma-xtapp/xtapp/build.sh 2>&1 | tee build-xtapp.log
        sh /development/ma-xtapp/xtapp-util/build.sh 2>&1 | tee build-xtapp-util.log
        sh /development/ma-xtapp/xtapp-ps/build.sh 2>&1 | tee build-xtapp-ps.log
        sh /development/ma-xtapp/xtapp-ps-extra/build.sh 2>&1 | tee build-xtapp-ps-extra.log
        sh /development/ma-xtapp/xtapp-ps-so/build.sh 2>&1 | tee build-xtapp-ps-so.log

4. パッケージへの署名

        cd $HOME/build
        debsign xtapp*.changes 

5. リポジトリへの登録

        cd $HOME/build
        sh /development/MateriAppsLive/repos/add_repo.sh xtapp*.changes
