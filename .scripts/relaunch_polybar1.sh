#!/bin/sh


# if pgrep -f "polybar.*bar2";
# then
#     echo "polybar bar1 was found"
# else
#     echo "it was not found"
# fi



if pgrep -f "polybar.*bar1";
then
    sleep 5 && pkill -f "polybar.*bar1" && polybar bar1 -r &
else
    polybar bar1 -r &
fi
