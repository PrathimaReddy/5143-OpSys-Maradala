#!/bin/bash
# read dictonary intlo a variable
DICTONARY="/usr/share/dict/words"

RANDOM=$$;
# to get number of lines in a dictonary
No_Lines=$(cat $DICTONARY | wc -l);
# to get a random
ran=$((RANDOM*RANDOM%$No_Lines+1));
sed -n "$ran p" $DICTONARY;
