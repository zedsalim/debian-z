#!/bin/bash

# This script is optional, it switches the input method engine for the IBus (Intelligent Input Bus) framework between two options AR and FR.
current=$(ibus engine)
if [ "$current" = "xkb:dz:ar:ara" ]; then
    ibus engine xkb:fr:latin9:fra
elif [ "$current" = "xkb:fr:latin9:fra" ]; then
    ibus engine xkb:dz:ar:ara
fi
