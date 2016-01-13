# GPLv3
FROM svlentink/texlive-full:latest
MAINTAINER njanetos <nejanetos@gmail.com>
LABEL Description="Personal latex build environment"

RUN mkdir -p /root/texmf/bibtex/bib && mkdir -p /root/texmf/tex/latex && mkdir .scripts

COPY packages /root/texmf/tex/latex/

COPY citations.bib /root/texmf/bibtex/bib/

COPY .scripts /root/.scripts/
