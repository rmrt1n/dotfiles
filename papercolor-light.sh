#!/bin/bash

if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0eeeeee" #white background
    echo -en "\e]P7424242" #black foreground

    echo -en "\e]P1af0000" #darkred
    echo -en "\e]P9d70000" #red

    echo -en "\e]P2008700" #darkgreen
    echo -en "\e]PA5f8700" #green

    echo -en "\e]PBaf5f00" #yellow
    echo -en "\e]P3d75f00" #brown

    echo -en "\e]P4005f87" #darkblue
    echo -en "\e]PC0087af" #blue

    echo -en "\e]PD8700af" #magenta
    echo -en "\e]P5d70087" #darkmagenta

    echo -en "\e]P6005f87" #cyan
    echo -en "\e]PE006f87" #darkcyan

    echo -en "\e]P8878787" #lightgrey
    echo -en "\e]PF444444" #darkgrey

    clear #for background artifacting
fi
