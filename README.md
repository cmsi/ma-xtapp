# xtapp

## How to build xtapp packages

1. ソースファイルの準備 (ホスト上で)

    * (xtapp) $HOME/vagrant/data/src に xTAPP-develop-160715.tgz をダウンロード

2. ビルドディレクトリの準備

        cd $HOME/build
        sh /development/ma-xtapp/setup.sh
        sh /development/ma-xtapp-util/setup.sh
        sh /development/ma-xtapp-ps/setup.sh
        sh /development/ma-xtapp-ps-extra/setup.sh
        sh /development/ma-xtapp-ps-so/setup.sh

3. パッケージのビルド

        cd $HOME/build
        sh /development/ma-xtapp/build.sh 2>&1 | tee build-xtapp.log
        sh /development/ma-xtapp-util/build.sh 2>&1 | tee build-xtapp-util.log
        sh /development/ma-xtapp-ps/build.sh 2>&1 | tee build-xtapp-ps.log
        sh /development/ma-xtapp-ps-extra/build.sh 2>&1 | tee build-xtapp-ps-extra.log
        sh /development/ma-xtapp-ps-so/build.sh 2>&1 | tee build-xtapp-ps-so.log

4. パッケージへの署名

        cd $HOME/build
        debsign xtapp_*.changes 
        debsign xtapp-util_*.changes 
        debsign xtapp-ps_*.changes 
        debsign xtapp-ps-extra_*.changes 
        debsign xtapp-ps-so_*.changes 

5. リポジトリへの登録

        cd $HOME/build
        sh /development/MateriAppsLive/repos/add_repo.sh xtapp_*.changes
        sh /development/MateriAppsLive/repos/add_repo.sh xtapp-util_*.changes
        sh /development/MateriAppsLive/repos/add_repo.sh xtapp-ps_*.changes
        sh /development/MateriAppsLive/repos/add_repo.sh xtapp-ps-extra_*.changes
        sh /development/MateriAppsLive/repos/add_repo.sh xtapp-ps-so_*.changes
