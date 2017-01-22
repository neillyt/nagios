#!/bin/bash

ERROR_COUNT=`tail -1000 /var/log/messages | grep -v "Total errors: 0" | grep -i "error" | wc -l`

if [ "$ERROR_COUNT" -ge 1 ]; then
 echo "Error count: $ERROR_COUNT"
 exit 0
else
 echo "Error DERP count: $ERROR_COUNT"
 exit 2
fi
