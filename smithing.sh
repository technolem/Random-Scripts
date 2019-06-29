
#smiths skins, assumes hammer and skin are bound to 3, swarm is bound to 1, and an absorb stamina weapon is equiped.

WID=`xdotool search "oomSE southtyris" | head -1`
xdotool windowactivate $WID

sleep .2 #kills time till window is focused 

skins=$1

if [ ! $skins ]
then 
    echo "Needs number of skins"
fi

for ((l =0; l < $skins; l++))
do

    #recover stamina
    if (( 0 == $l % 99 ))           
    then 
        xdotool key     "Shift" #exit menus
        xdotool key     "Shift"
        xdotool key     "Shift"
        xdotool key     "Shift"
        xdotool keydown "Home" #attack mobs to ensure enough sp to swarm
        sleep .7
        xdotool keyup   "Home"
        xdotool keydown '1'    
        sleep 2
        xdotool keyup   '1'
        sleep .3
    fi
    
    
    #make skin
    xdotool type -delay 100 "333h"

    echo "skin $(( 1 + $l )) of $skins"
done
