alias rainbow='clear;x=$(($COLUMNS/2));y=$(($LINES/2));c=0;n=1;a=90;while :;do bgc=$(($c%232 + 16));case "$a" in 0)xd=0;yd=-1;n=$(($n+1));; 90)xd=1;yd=0;; 180)xd=0;yd=1;n=$(($n+1));; 270)xd=-1;yd=0 ;; *) break ;; esac; for ((i=0;i < $n;i++));do if [[ $x -ge $COLUMNS || $x -le 0 || $y -ge $LINES || $y -le 0 ]]; then x=$(($COLUMNS/2));y=$(($LINES/2));n=1;a=0; continue ; fi ; printf "\033[%s;%sH\033[48;5;%sm \033[0m" $y $x $bgc ; x=$(( $x + $xd )); y=$(( $y + $yd )); done ; c=$(( $c + 1 )); a=$(( $(( $a + 90 )) % 360 )) ; sleep 0.001; done'
alias pony='while true; do fortune | ponysay; sleep 30; done'
alias world='oneworld=$( curl -Ls http://bit\.ly/globe_vt );while sleep .1;do pv -L4220 -q <<<"$oneworld";done'
alias kill-all-branches='for b in "git branch --merged | grep -v \*"; do git branch -D $b; done'
alias movie='telnet towel.blinkenlights.nl'
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh
export OAUTHLIB_INSECURE_TRANSPORT=0

