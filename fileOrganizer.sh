#!/bin/bash
# organize_downloads.sh — Organize Downloads folder

DOWNLOADS="$HOME/Downloads"

mkdir -p "$DOWNLOADS"/{Images,Docs,Videos,Others}

for file in "$DOWNLOADS"/*; do
  case "${file,,}" in
    *.jpg|*.png|*.jpeg) mv "$file" "$DOWNLOADS/Images/" ;;
    *.pdf|*.docx|*.txt) mv "$file" "$DOWNLOADS/Docs/" ;;
    *.mp4|*.mkv|*.avi) mv "$file" "$DOWNLOADS/Videos/" ;;
    *) mv "$file" "$DOWNLOADS/Others/" ;;
  esac
done

echo "Downloads organized!"
