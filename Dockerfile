# GPLv3
FROM svlentink/texlive-full:latest
MAINTAINER njanetos <nejanetos@gmail.com>
LABEL Description="Personal latex build environment"

RUN apt-get update && \
    apt-get install -y git pdftk poppler-utils wget gfortran liblapack-dev libfreetype6-dev pkg-config libpng-dev libpng-dev python3 python3-pip r-base && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/texmf/bibtex/bib && \
    mkdir -p /root/texmf/tex/latex && \
    mkdir .scripts && mkdir .fonts && \
    echo "export PATH="~/.scripts:$PATH"" >> ~/.bashrc

COPY packages /root/texmf/tex/latex/

COPY citations.bib /root/texmf/bibtex/bib/

COPY .scripts /root/.scripts/

COPY fonts /root/.fonts

RUN fc-cache -f -v

RUN pip3 install matplotlib

RUN pip3 install numpy

RUN pip3 install scipy

RUN pip3 install statsmodels

RUN pip3 install pandas
