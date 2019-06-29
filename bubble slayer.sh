 
#kills bubbles good. Set up autopick.txt for great effectiveness. Bind swarm to 1, and have an absorb stamina weapon, plus either nether damage, or damage null.

WID=`xdotool search "oomSE southtyris" | head -1`
xdotool windowactivate $WID

sleep .2 #kills time till window is focused 

maxCycles=$1  #each cylce is ~66 seconds.

for ((t = 0; t< $maxCycles; t++)) do

    echo "starting cycle: $(( 1 + $t )) of $maxCycles"
    
    for ((i = 0; i < 1; i++)) do # kill bubbles
        xdotool keydown '1'
        sleep 60
        xdotool keyup   '1'
    done

        sleep 1

    moveList='Page_Up Page_Up End Home End Home Page_Down End Page_Down End Page_Up Page_Down Page_Up Page_Down Home Page_Up End Home'

    for i in $moveList; do   #collect bubbles skins
        xdotool key --delay 100 $i  
        sleep .25
    done
done
