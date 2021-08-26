#!/bin/sh

ls -l dwm/*.diff | awk '//{print $9}' | awk 'BEGIN { FS = "-" } ; { print $2 }' | tail -n 9 | sed -e 's/.*/***&***/'
