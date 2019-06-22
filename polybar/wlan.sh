#!/bin/bash

l="="
nameDevice="$(nmcli d show wlp2s0 | grep 'GENERAL.CONNECTION' | awk '{ print $3 }')"
levelSignal="$(iwconfig wlp2s0 | grep Qual | awk '{ print $2 }')"

# echo $nameDevice\=$levelSignal | awk -F $l '{print $1" "$3}'
echo $nameDevice\=$levelSignal | awk -F $l '{print $3}'
