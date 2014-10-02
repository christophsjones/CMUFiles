#!/bin/bash

USER=csj
USAGE="usage: handout <hw_num>"

if [ $# -eq 0 ]
    then
        echo $USAGE
        exit 1
fi

scp $USER@unix.andrew.cmu.edu:/afs/andrew.cmu.edu/course/15/354/handout/$USER/hw$1 ./hw$1_grades
cat ./hw$1_grades
rm ./hw$1_grades
