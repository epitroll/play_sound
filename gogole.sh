#!/bin/bash

make re
VAR=$(make re $1 2>&1 | grep "Error" | wc -l)
if [ ${VAR} -gt 0 ]
then
	$(aplay -q ~/.troll/son.wav)
fi
