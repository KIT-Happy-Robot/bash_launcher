#!/bin/bash
tab="--tab-with-profile=bash_launcher --command"
window="--window-with-profile=bash_launcher --command"

cd $HOME/test_ws/src/bash_launcher/bashes

gnome-terminal \
    $tab 'bash -c "sleep 1.0 ; ./actplan_executor.bash"'\
