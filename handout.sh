#!/bin/bash

USER="csj"
USAGE="usage: handout <hw_num>"

if [ $# -eq 0 ]
then
    echo $USAGE
    exit 1
fi

if [ -d tmp ]
then
    echo "tmp directory already exists. Please remove it"
    exit 1
fi

mkdir tmp
scp $USER@unix.andrew.cmu.edu:/afs/andrew.cmu.edu/course/15/354/handout/$USER/hw0$1 ./tmp/me
echo "Your score:"
cat tmp/me
scp $USER@unix.andrew.cmu.edu:/afs/andrew.cmu.edu/course/15/354/handout/mean/hw0$1 ./tmp/mean
echo "Mean:"
cat tmp/mean
scp $USER@unix.andrew.cmu.edu:/afs/andrew.cmu.edu/course/15/354/handout/median/hw0$1 ./tmp/med
echo "Median:"
cat tmp/med
scp $USER@unix.andrew.cmu.edu:/afs/andrew.cmu.edu/course/15/354/handout/stddev/hw0$1 ./tmp/dev
echo "Std deviation:"
cat tmp/dev

rm -r tmp
