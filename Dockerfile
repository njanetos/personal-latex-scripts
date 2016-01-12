# GPLv3
FROM svlentink/texlive-full:latest
MAINTAINER njanetos <nejanetos@gmail.com>
LABEL Description="Personal latex build environment"

COPY packages /usr/share/texmf/tex/latex/

RUN mkdir /usr/share/texmf/bibtex/bib

COPY citations.bib /usr/share/texmf/bibtex/bib/

RUN mkdir ~/.scripts

COPY .scripts/ /root/.scripts/

