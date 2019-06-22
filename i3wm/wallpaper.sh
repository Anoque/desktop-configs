#!/bin/bash

name="$(ls ~/Pictures/Wallpapers | shuf -n 1)"
pwd="/home/hello/Pictures/Wallpapers/${name}"
feh --bg-fill $pwd
