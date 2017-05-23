#!/bin/bash

wmctrl_pkg=$(ls /var/log/packages | grep wmctrl)

if [ ${#wmctrl_pkg} -gt 0 ]; then

    WID=$( wmctrl -lp | sort -k2 | awk '{print $1, $2}' | grep -P "^\d{1}x(\d|[a-fA-F])+\s0" | sort -k1 | awk '{print $1}' )
    NDT=$( wmctrl -d | wc -l )

    for (( i=0; i<$NDT; i++ ))
    do
        echo -e "\nFechando janelas do WS $i\n"
        while read -r line ; do
            wmctrl -i -c $line
        done < <( wmctrl -lp | sort -k2 | awk '{print $1, $2}' | grep -P "^\d{1}x(\d|[a-fA-F])+\s$i" | sort -k1 | awk '{print $1}' )
    done

else

    echo -e "\nÉ necessário instalar o pacote \"wmctrl\"\n"
    sbotools=$(ls /var/log/packages | grep sbotools)
    if [ ${#sbotools} -gt 0 ]; then
        echo -e "\nFoi identificado que você possui SBOtools.\nComo root execute \"sboinstall wmctrl\".\n"
    fi
fi
