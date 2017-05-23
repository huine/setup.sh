######################## Começa inicialização de telas ########################


####################### Inicia WorkSpace 0 ####################################

wmctrl -s 0

############# Inicia procs com Eyebeam #############

wine "C:\Program Files (x86)\CounterPath\eyeBeam 1.5\eyeBeam.exe" &>/dev/null &
while [ "$WID" == "" ]; do
    WID=$(wmctrl -lp | sort -k2 | grep -i "eyeBeam" | awk '{print $1, $2}' | grep -P "^\d{1}x(\d|[a-fA-F])+\s0" | awk '{print $1}' )
done
wmctrl -i -r $WID -b add,hidden,below
sleep 2

############## Fim Eyebeam ##############

############# Inicia procs com Firefox #############

WID=""
firefox "totalip5.nube" "nubenet.nube\nube" &>/dev/null &
while [ "$WID" == "" ]; do
    WID=$(wmctrl -lp | sort -k2 | grep -i "Mozilla Firefox" | awk '{print $1, $2}' | grep -P "^\d{1}x(\d|[a-fA-F])+\s0" | awk '{print $1}' )
done
wmctrl -i -r $WID -e 0,1367,102,1920,1016
sleep 2

############## Fim Firefox ##############

############# Inicia procs com terminator #############

terminator --geometry=683x731+1+120 #Segundo monitor - terminator da esquerda
sleep 2
terminator --geometry=683x731+693+120 -l terminator_direita #Segundo monitor - terminator da direita
sleep 2

############## Fim terminator ##############

######################## Fim WorkSpace 0 ######################################


####################### Inicia WorkSpace 1 ####################################

wmctrl -s 1

############# Inicia procs com Firefox #############

WID=""
firefox --new-window "localhost/nube" &>/dev/null &
while [ "$WID" == "" ]; do
    WID=$( wmctrl -lp | sort -k2 | grep -i "Mozilla Firefox" | awk '{print $1, $2}' | grep -P "^\d{1}x(\d|[a-fA-F])+\s1" | awk '{print $1}' )
done
echo $WID
wmctrl -i -r $WID -e 0,1367,102,1920,1016
sleep 2

############## Fim Firefox ##############

######################## Fim WorkSpace 1 ######################################


####################### Inicia WorkSpace 2 ####################################

wmctrl -s 2

############# Inicia procs com Sublime #############

WID=""
sublime_text &>/dev/null &
while [ "$WID" == "" ]; do
    WID=$( wmctrl -lp | sort -k2 | grep -i "Sublime Text" | awk '{print $1, $2}' | grep -P "^\d{1}x(\d|[a-fA-F])+\s2" | awk '{print $1}' )
done
echo $WID
wmctrl -i -r $WID -e 0,1367,102,1920,1016
sleep 2

############## Fim Sublime ##############

######################## Fim WorkSpace 2 ######################################


####################### Inicia WorkSpace 3 ####################################

wmctrl -s 3

############# Inicia procs com PGAdmin #############
WID=""
pgadmin3 -s "pgserver" &>/dev/null &
while [ "$WID" == "" ]; do
    WID=$( wmctrl -lp | sort -k2 | grep -i "pgAdmin III" | awk '{print $1, $2}' | grep -P "^\d{1}x(\d|[a-fA-F])+\s3" | awk '{print $1}' )
done
echo $WID
wmctrl -i -r $WID -e 0,1367,102,960,1016
sleep 2
############## Fim PGAdmin ##############

######################## Fim WorkSpace 3 ######################################


####################### Inicia WorkSpace 4 ####################################

wmctrl -s 4

############# Inicia procs com Thunderbird #############
WID=""
thunderbird &>/dev/null &
while [ "$WID" == "" ]; do
    WID=$( wmctrl -lp | sort -k2 | grep -i "Mozilla Thunderbird" | awk '{print $1, $2}' | grep -P "^\d{1}x(\d|[a-fA-F])+\s4" | awk '{print $1}' )
done
echo $WID
wmctrl -i -r $WID -e 0,1367,102,1920,1016
sleep 2

############## Fim Thunderbird ##############

######################## Fim WorkSpace 4 ######################################


####################### Inicia WorkSpace 5 ####################################

wmctrl -s 5

############# Inicia procs com Firefox #############

WID=""
firefox "youtube.com" "trello.com" &>/dev/null &
while [ "$WID" == "" ]; do
    WID=$( wmctrl -lp | sort -k2 | grep -i "Mozilla Firefox" | awk '{print $1, $2}' | grep -P "^\d{1}x(\d|[a-fA-F])+\s5" | awk '{print $1}' )
done
echo $WID
wmctrl -i -r $WID -e 0,1376,109,960,1016
sleep 2

############## Fim Firefox ##############

######################## Fim WorkSpace 5 ######################################


####################### Inicia WorkSpace 6 ####################################

wmctrl -s 6

############# Inicia procs com Terminator #############

terminator --geometry=1920x1016+1367+102 -l terminator_webserver
sleep 2

############## Fim Terminator ##############

######################## Fim WorkSpace 6 ######################################


####################### Inicia WorkSpace 7 ####################################

wmctrl -s 7

############# Inicia procs com Spotify #############

WID=""
spotify &>/dev/null &
while [ "$WID" == "" ]; do
    WID=$( wmctrl -lp | sort -k2 | grep -i "Spotify" | awk '{print $1, $2}' | grep -P "^\d{1}x(\d|[a-fA-F])+\s7" | awk '{print $1}' )
done
echo $WID
wmctrl -i -r $WID -e 0,1367,102,1920,1016

############## Fim Spotify ##############

######################## Fim WorkSpace 7 ######################################

wmctrl -s 0 # Volta para o primeiro workspace

######################### Fim inicialização de telas ##########################
