#!/bin/bash
WATCH="$HOME/watch"
mkdir -p "$WATCH"

# Вимагає inotify-tools
command -v inotifywait &>/dev/null || { echo "sudo apt install inotify-tools"; exit 1; }

inotifywait -mq -e create "$WATCH" | while read -r path _ file; do
    full="$path$file"
    echo "=== Новий файл $full ==="
    cat "$full"
    mv "$full" "${full}.back"
done
