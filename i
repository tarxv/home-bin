#!/bin/sh

iconv -f gbk -t utf8 "$1" -o "${1}U"
