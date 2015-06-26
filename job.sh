#!/bin/bash
start=`date +%T`

env > ${1}.e.txt

sleep 30

if ! [ "$2" == "" ] ; then
  cat $2 > ${1}.txt
else
  rm -f ${1}.txt
fi

finish=`date +%T`

echo "$1 $start $finish" >> info.txt
echo "$1 $start $finish" >> ${1}.txt



