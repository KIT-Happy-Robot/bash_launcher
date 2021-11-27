#!/bin/bash
tab="--tab-with-profile=bash_launcher --command"
window="--window-with-profile=bash_launcher --command"

cd $HOME/test_ws/src/bash_launcher/bashes

# マニピュレーションと画像処理
gnome-terminal \
    $tab 'bash -c "sleep 1.0 ; ./grasping_object.bash"'\
    $tab 'bash -c "sleep 1.2 ; ./recognition_processing.bash"'\
    $tab 'bash -c "sleep 1.4 ; ./three_deimensional.bash"'\
    $tab 'bash -c "sleep 1.8 ; ./darknet_yolov3.bash"'\
