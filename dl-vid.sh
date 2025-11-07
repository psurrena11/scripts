#!/bin/bash

# A script to download the highest quality video and ensure it's in MP4 format.
# Usage: ./download.sh "VIDEO_URL"

if [ -z "$1" ]; then
  echo "Usage: $0 \"<video_url>\""
  exit 1
fi

URL=$1

# -S "res,ext:mp4:m4a"
# Sorts by resolution (highest first), but prefers MP4/M4A streams.
#
# --recode-video mp4
# If the best stream isn't MP4 (e.g., a 4K WebM), this will download
# the best and then re-encode it to MP4 using ffmpeg.
#
# -o "%(title)s.%(ext)s"
# Saves the file as "Video Title.mp4"

yt-dlp -S "res,ext:mp4:m4a" --recode-video mp4 -o "%(title)s.%(ext)s" "$URL"
