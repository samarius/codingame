# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# LX: the X position of the light of power
# LY: the Y position of the light of power
# TX: Thor's starting X position
# TY: Thor's starting Y position
read LX LY TX TY

# game loop
while true; do
    # E: The level of Thor's remaining energy, representing the number of moves he can still make.
    read E

    # Write an action using echo
    # To debug: echo "Debug messages..." >&2

if [ "${TX}" -lt "${LX}" ]; 
    then
        x='E'
        TX=$((TX+1))
elif [ "${TX}" -gt "${LX}" ];
    then
        x='W'
        TX=$((TX-1))
else
        x=' '
fi

if [ "${TY}" -lt "${LY}" ];
    then
        y='S' 
        TY=$((TY+1))
elif [ "${TY}" -gt "${LY}" ];
    then 
        y='N'
        TY=$((TY-1))
else
        y=' '
fi

echo $y$x
done
