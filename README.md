CMUFiles
========

Files for managing your files.


Copy `cmumath.sty` into the directory `$TEXMFHOME/tex/latex/cmumath/`. You'll probably have to make some of these subdirectories.
You can find the value of `$TEXMFHOME` using TeX's kpsewhich:

    kpsewhich -var-value TEXMFHOME

Then you can just put the line `\usepackage{cmumath}` and it will just work!

Check out `template.tex` for a juicy example.
(Make sure to change the `/myname` and `/myandrew` command to reflect your name and AndrewID!)
