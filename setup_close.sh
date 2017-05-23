#!/bin/bash
WID=$( wmctrl -lp | sort -k2 | awk '{print $1, $2}' | grep -P "^\d{1}x(\d|[a-fA-F])+\s0" | sort -k1 | awk '{print $1}' )
NDT=$( wmctrl -d | wc -l )

for (( i=0; i<$NDT; i++ ))
do
    echo "Fechando janelas do WS $i"
    while read -r line ; do
        echo "Fecha janela com WID $line"
    done < <( wmctrl -lp | sort -k2 | awk '{print $1, $2}' | grep -P "^\d{1}x(\d|[a-fA-F])+\s$i" | sort -k1 | awk '{print $1}' )
done


