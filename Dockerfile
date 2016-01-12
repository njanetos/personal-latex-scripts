# GPLv3
FROM svlentink/texlive-full:latest
MAINTAINER njanetos <nejanetos@gmail.com>
LABEL Description="Personal latex build environment"

ADD mhandouttheme /usr/share/texmf/tex/latex/

ADD mtheme /usr/share/texmf/tex/latex/

ADD nickpaper /usr/share/texmf/tex/latex/

ADD nickpresentation /usr/share/texmf/tex/latex/

ADD nickpresentationhandout /usr/share/texmf/tex/latex/

ADD citations.bib /usr/share/texmf/tex/latex/

RUN mkdir /usr/share/texmf/bibtex/bib

ADD citations.bib /usr/share/texmf/bibtex/bib/

RUN mkdir ~/.scripts

ADD .scripts/ ~/.scripts
