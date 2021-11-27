#!/bin/bash
tab="--tab-with-profile=bash_launcher --command"
window="--window-with-profile=bash_launcher --command"

cd $HOME/test_ws/src/bash_launcher/bashes

gnome-terminal \
    $tab 'roscore'\
    $tab 'bash -c "sleep 1.0 ; ./minimal.bash"'\
    $tab 'bash -c "sleep 1.2 ; ./sensor.bash"'\
    $tab 'bash -c "sleep 1.4 ; ./amcl.bash"'\
    $tab 'bash -c "sleep 1.4 ; ./rviz_navi.bash"'\
    $tab 'bash -c "sleep 1.6 ; ./voice_common.bash"'\
    $tab 'bash -c "sleep 1.5 ; ./chaser19.bash"'\
