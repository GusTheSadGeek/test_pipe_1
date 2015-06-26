#!/bin/bash
start=`date +%T`
N="/tmp/Z${GO_PIPELINE_LABEL}_${GO_STAGE_NAME}_${GO_JOB_NAME}"



env > ${N}.e.txt


sleep 5

if ! [ "$1" == "" ] ; then
  cat $1 > ${GO_JOB_NAME}.txt
else
  rm -f ${GO_JOB_NAME}.txt
fi

finish=`date +%T`

echo "$GO_JOB_NAME $start $finish" >> ${N}.txt
echo "$GO_JOB_NAME $start $finish" >> ${GO_JOB_NAME}.txt



