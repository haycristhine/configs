#!/bin/sh

# Send the header so that i3bar knows we want to use JSON:
echo '{"version":1}'

# Begin the endless array.
echo '['

# We send an empty first array of blocks to make the loop simpler:
echo '[],'

# Now send blocks with information forever:
# use this if i3-status bar produces parsing error
#if [ ! -f /tmp/conky-i3bar ]; then
#   #sleep 16 
#   touch /tmp/conky-i3bar
#fi

exec conky -c $HOME/.conky/conky-i3bar

##################
# ChangeLog/TODO #
##################
# 1.0.0 2014-03-16 Added changelog/todo section
# 1.0.1 2014-04-13 Commented out obsolete section
##################

