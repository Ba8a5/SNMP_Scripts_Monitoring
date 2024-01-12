#!/bin/bash

host="192.168.128.24"
community="HELMpAllUser9465CmA"

while true; do
  for i in $(snmpwalk -Oqv -v2c -c "$community" "$host" .1.3.6.1.2.1.25.4.2.1.1); do
    process_name=$(snmpget -Oqv -v2c -c "$community" "$host" .1.3.6.1.2.1.25.4.2.1.2.$i)
    consumption=$(snmpget -Oqv -v2c -c "$community" "$host" .1.3.6.1.2.1.25.5.1.1.1.$i)
  
    echo "${process_name};${consumption}" >> "top10_cpu.csv"
  done
  sleep 3600
done

