#!/bin/bash

host="192.168.128.24"
community="HELMpAllUser9465CmA"

while true; do
  for i in $(snmpwalk -Oqv -v2c -c "$community" "$host" 1.3.6.1.2.1.25.4.2.1.1); do
    service_name=$(snmpget -Oqv -v2c -c "$community" "$host" .1.3.6.1.2.1.25.4.2.1.2.$i)
    consumption=$(snmpget -Oqv -v2c -c "$community" "$host" .1.3.6.1.2.1.25.5.1.1.2.$i)
  
    echo "${service_name};${consumption}" >> "top10_ram.csv"
  done
  sleep 3600
done

