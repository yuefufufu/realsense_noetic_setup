# realsense_noetic_setup

このスクリプトを実行[bash realsense_noetic_setup.sh]するとubuntu20.04環境にREALSENSEのSDKとREALSENSE-ROSがインストールされます。

[source ~/.bashrc]実行後、[realsense-viewer]の実行が成功すればREALSENSEのSDKが正常にインストールされています。

[cd catkin_ws][roslaunch realsense2_camera demo_pointcloud.launch]と入力してrvizが起動すればREALSENSE-ROSが正常にインストールされます。

また、14行目のmakeはそこそこ時間がかかるのでスクリプト実行前に実行環境に合わせて[make -jn(n=使用スレッド数)]と書き換えると良いと思います。
