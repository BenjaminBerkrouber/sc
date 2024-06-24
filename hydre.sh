#!/bin/bash


open_two_terminals() {
    gnome-terminal &
    gnome-terminal &
    gnome-terminal &
    gnome-terminal &
    gnome-terminal &
    gnome-terminal &
    gnome-terminal &
    gnome-terminal &
    gnome-terminal &
}


open_two_terminals

while true; do
    
    terminal_count=$(ps -eo tty,comm | grep -E 'pts|tty' | grep -E 'bash|zsh' | wc -l)

    echo "Terminal count: $terminal_count"

    if [ "$terminal_count" -lt 6 ]; then
        open_two_terminals
    fi
    
    sleep 1
done
