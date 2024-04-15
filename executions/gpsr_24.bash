#!/bin/bash
tab="--tab-with-profile=bash_launcher --command"
window="--window-with-profile=bash_launcher --command"

cd $HOME/main_ws/src/bash_launcher/bashes

gnome-terminal \
    $tab 'bash -c "sleep 1.0 ; ./minimal.bash; bash"'\
    $tab 'bash -c "sleep 3.0 ; ./sensor.bash; bash"'\
    $tab 'bash -c "sleep 3.2 ; ./amcl.bash; bash"'\
    $tab 'bash -c "sleep 3.4 ; ./voice_common.bash; bash"'\
    $tab 'bash -c "sleep 3.6 ; ./rviz_navi.bash; bash"'\
    $tab 'bash -c "sleep 3.8 ; ./approach_person.bash; bash"'\
