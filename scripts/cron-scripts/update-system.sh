#!/usr/bin/env bash

system_update() {
        sudo apt-get update -y -qq 1> /dev/null
        sudo apt-get upgrade -y -qq 1> /dev/null
        sudo apt-get autoremove -y -qq 1> /dev/null
        sudo apt-get autoclean -y -qq 1> /dev/null
        echo "Updated system at $(date)."
}

system_update

