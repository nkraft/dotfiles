#!/bin/bash

if [ "Linux" == "$UNAME" ]
then
    TEXBIN='/usr/share/texmf/bin'
    TEXMF='/usr/share/texmf'
elif [ "Darwin" == "$UNAME" ]
then
    TEXBIN='/usr/texbin'
    TEXMF='/usr/local/texlive/2014/texmf-dist'
    TEXMF_LOCAL='/usr/local/texlive/texmf-local'
fi

TEXINPUTS=".:./latex:$TEXMF/tex//:$TEXMF_LOCAL/tex//"
BIBINPUTS=".:./bibtex/bib:$TEXMF/bibtex/bib//:$TEXMF_LOCAL/bibtex/bib//"
BSTINPUTS=".:./bibtex/bst:$TEXMF/bibtex/bst//:$TEXMF_LOCAL/bibtex/bst//"

TEXMF_TEXLIVE='/usr/share/texmf-texlive'
if [ -d $TEXMF_TEXLIVE ]; then
   TEXINPUTS="$TEXINPUTS:$TEXMF_TEXLIVE/tex//"
   BIBINPUTS="$BIBINPUTS:$TEXMF_TEXLIVE/bibtex/bib//"
   BSTINPUTS="$BSTINPUTS:$TEXMF_TEXLIVE/bibtex/bst//"
fi
export TEXINPUTS BIBINPUTS BSTINPUTS

export MANPATH="$TEXMF/man:$TEXMF_LOCAL/man:$MANPATH"
export PATH="$TEXBIN:$PATH"