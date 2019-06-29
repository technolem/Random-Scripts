 
#Burns through harvest stock, assume harvest is bound to 5, and the book is bound to 6

WID=`xdotool search "oomSE southtyris" | head -1`
xdotool windowactivate $WID

sleep .2 #kills time till window is focused 

charges=$1

for (( i = 0; i < charges; i++)) do

    #read charges
    xdotool key --delay 100 '6'
    
    sleep .5
    
    #cast harvest
    xdotool keydown '5'
    sleep 20
    xdotool keyup '5'
    
    echo "harvest cycle $(( 1 + $i )) of $charges"
done
