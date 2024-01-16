#!/bin/bash

if [[ $default1 -ne 0 ]]; then
        echo -e "Column 1 background = default ($color_scheme1)"
else
        echo -e "Column 1 background = $color1 ($color_scheme1)"
fi

if [[ $default2 -ne 0 ]]; then
        echo -e "Column 1 font color = default ($color_scheme2)"
else
        echo -e "Column 1 font color = $color2 ($color_scheme2)"
fi

if [[ $default3 -ne 0 ]]; then
        echo -e "Column 2 background = default ($color_scheme3)"
else 
        echo -e "Column 2 background = $color3 ($color_scheme3)"
fi

if [[ $default4 -ne 0 ]]; then
        echo -e "Column 1 font color = default ($color_scheme4)"
else
        echo -e "Column 1 font color = $color4 ($color_scheme4)"
fi

