#!/bin/bash

USER=csj

mkdir tmp
scp $USER@unix.andrew.cmu.edu:/afs/andrew.cmu.edu/course/15/354/handout/$USER/* ./tmp
for f in tmp/*
do
    cat $f
done
rm tmp/*
rmdir tmp
