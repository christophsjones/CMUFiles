#!/bin/bash

USER=csj
USAGE="usage: handin <hw_num>"

if [ $# -eq 0 ]
then
    echo $USAGE
    exit 1
fi

cp hw$1/hw$1.pdf /afs/andrew.cmu.edu/course/15/354/handin/HW$1/$USER/hw$1.pdf
