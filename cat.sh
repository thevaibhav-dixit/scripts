#!/bin/bash

# simple script to mock cat  

set -e 

input=$1
while read line
  do
    echo  $line
  done < $input
 
