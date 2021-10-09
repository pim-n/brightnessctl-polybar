#!/bin/bash
echo "$(brightnessctl | grep -o "(.*" | tr -d "()")"

