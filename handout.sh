#!/bin/bash

USER=csj

if [ -d tmp ]
then
    echo "tmp directory already exists. Please remove it"
    exit 1
fi

mkdir tmp
scp $USER@unix.andrew.cmu.edu:/afs/andrew.cmu.edu/course/15/354/handout/$USER/* ./tmp
for f in tmp/*
do
    cat $f
done
rm -r tmp
