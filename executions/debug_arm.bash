#!/bin/bash
tab="--tab-with-profile=bash_launcher --command"
window="--window-with-profile=bash_launcher --command"

cd $HOME/main_ws/src/bash_launcher/bashes

gnome-terminal \
    $tab 'roscore'\
    $tab 'bash -c "sleep 1.0 ; ./minimal.bash; bash"'\
    $tab 'bash -c "sleep 1.2 ; ./sensor.bash; bash"'\
    #$tab 'bash -c "sleep 1.4 ; ./amcl.bash; bash"'\
    $tab 'bash -c "sleep 1.6 ; ./voice_common.bash; bash"'\
    #$tab 'bash -c "sleep 1.5 ; ./rviz_navi.bash; bash"'\
    $tab 'bash -c "sleep 1.0 ; ./dynamixel_launch.bash"'\
    $tab 'bash -c "sleep 1.0 ; ./grasping_object.bash"'\
    $tab 'bash -c "sleep 1.0 ; $echo_dxl_states"'\
