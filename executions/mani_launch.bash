#!/bin/bash
tab="--tab-with-profile=bash_launcher --command"
window="--window-with-profile=bash_launcher --command"

cd $HOME/main_ws/src/bash_launcher/bashes

# マニピュレーションと画像処理
gnome-terminal \
    $tab 'bash -c "sleep 1.0 ; ./grasping_object.bash; bash"'\
    $tab 'bash -c "sleep 1.2 ; ./recognition_processing.bash; bash"'\
    $tab 'bash -c "sleep 1.4 ; ./three_deimensional.bash; bash"'\
    $tab 'bash -c "sleep 2.0 ; ./darknet_yolov3.bash; bash"'\
