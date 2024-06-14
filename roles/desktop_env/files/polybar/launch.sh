#!/bin/bash
polybar-msg cmd quit

echo "---" | tee -a /tmp/polybar1.log
polybar mybar --config=$HOME/.config/polybar/config.ini | tee -a /tmp/polybar1.log &
disown
