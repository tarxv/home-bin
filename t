#!/bin/sh

T=30
spm=60
case $1 in
    "")
        ;;
    [[:digit:]] | [[:digit:]][[:digit:]])
    #{1..2} #not working  [1-60] not working
        T=$1;;
    *h*)
        echo "\$t 20 10\n20m, 10s/m"; exit;;
    *)
        echo "Illegal input."; exit;;
esac

# second per minite. testing
if [ -n "$2" ]; then spm=$2; fi

m=0
s=0
while [ "$m" -lt "$T" ]; do
    while [ "$s" -lt "$spm" ]; do
        #carrige return + no line feed = overwrite the previous line
        #echo -e -n " $m $s\r"  # not posix compliant
        printf " $m $s\r"
        sleep 1
        s=$((s+1))  # ((s++)) bash
    done
    s=0
    m=$((m+1))
done

espeak -a 40 -v f3 "It's time to stop."
feh -F --zoom fill ~/Pictures/oo.jpg
