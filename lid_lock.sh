#! /bin/bash
  while true
  do
    value=`cat  /proc/acpi/button/lid/LID/state |cut -f2 -d:`
    if [ $value = closed ]; then
       blurlock
    fi
  done	
