#!/bin/bash
tab="--tab-with-profile=bash_launcher --command"
window="--window-with-profile=bash_launcher --command"

cd $HOME/main_ws/src/bash_launcher/bashes

gnome-terminal \
    $tab 'bash -c "sleep 1.0 ; ./mani_world.bash; bash"'\
    $tab 'bash -c "sleep 2.0 ; ./yolow_camera.bash; bash"'\