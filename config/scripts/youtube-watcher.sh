#!/bin/bash

echo "Enter your URL: "

read url

mpv --ytdl-raw-options=format="best[height<=720]" $url
