#!/bin/bash
# Usage: ./handin.sh ##, where hw##.pdf is the name of the file to handin.
USER=icw
cp hw$1.pdf /afs/andrew.cmu.edu/course/15/354/handin/HW$1/$USER/hw$1.pdf
