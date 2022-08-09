# realsense_noetic_setup

このスクリプトを実行[bash realsense_noetic_setup.sh]するとubuntu20.04環境にREALSENSEのSDKとREALSENSE-ROSがインストールされます。

最後のlaunchの実行により、動作確認としてrvizが起動します。

表示はターミナル上で[ctrl+c]を入力すると消えます。

また、14行目のmakeはそこそこ時間がかかるのでスクリプト実行前に実行環境に合わせて[make -jn(n=使用スレッド数)]と書き換えると良いと思います。
