#!/bin/sh
# ====================================================
#   Copyright (C)2020 All rights reserved.
#
#   Author        : fankaljead
#   Email         : fankaljead@gmail.com
#   File Name     : pv.sh
#   Last Modified : 2020-05-01 14:34
#   Describe      :
#
# ====================================================



case "$1" in
    *.tar*) tar tf "$1";;
    *.zip) unzip -l "$1";;
    *.rar) unrar l "$1";;
    *.7z) 7z l "$1";;
    *.pdf) pdftotext "$1" -;;
    *.png) w3m "$1" -;;
    *) highlight -O ansi "$1" || cat "$1";;
esac

