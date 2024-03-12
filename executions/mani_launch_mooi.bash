#!/bin/bash
tab="--tab-with-profile=bash_launcher --command"
window="--window-with-profile=bash_launcher --command"

cd $HOME/noetic_ws/src/bash_launcher/bashes

# マニピュレーションと画像処理
gnome-terminal \
    $tab 'bash -c "sleep 1.0 ; noetic ; ./grasping_object.bash"'\
    $tab 'bash -c "sleep 1.2 ; noetic ; ./recognition_processing.bash"'\
    $tab 'bash -c "sleep 1.4 ; noetic ; ./three_deimensional.bash"'\
    $tab 'bash -c "sleep 1.8 ; noetic ; ./darknet_yolov3.bash"'\
