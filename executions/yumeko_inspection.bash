#!/bin/bash
tab="--tab-with-profile=roslaunch --command"
window="--window-with-profile=roslaunch --command"

cd $HOME/test_ws/src/bash_launcher/bashes

# ロボットの起動とナビゲーション
gnome-terminal \
    $tab 'roscore'\
    $tab 'bash -c "sleep 1.0 ; ./minimal.bash"'\
    $tab 'bash -c "sleep 1.2 ; ./sensor.bash"'\
    $tab 'bash -c "sleep 1.4 ; ./amcl.bash"'\
    $tab 'bash -c "sleep 1.6 ; ./rviz_navi.bash"'\
    $tab 'bash -c "sleep 1.6 ; ./voice_common.bash"'\

# マニピュレーションと画像処理
gnome-terminal \
    $tab 'bash -c "sleep 2.0 ; ./grasping_object.bash"'\
    $tab 'bash -c "sleep 2.2 ; ./recognition_processing.bash"'\
    $tab 'bash -c "sleep 2.4 ; ./three_deimensional.bash"'\
    $tab 'bash -c "sleep 2.6 ; ./darknet_ylov4.bash"'\

# 音声
gnome-terminal \
    $tab 'bash -c "sleep 3.0 ; ./voice_common.bash"'\

# マスター関連
gnome-terminal \
    $tab 'bash -c "sleep 4.0 ; ./actplan_executor.bash"'\
