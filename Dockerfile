FROM continuumio/miniconda3:latest
MAINTAINER jaSS <kostrubiec@gmail.com>

RUN conda update -n base -c defaults conda

RUN conda create --name mkdocs --yes python 

SHELL ["conda", "run", "-n", "mkdocs", "/bin/bash", "-c"]

RUN conda install -c conda-forge mkdocs-material mkdocs-git-revision-date-localized-plugin 

RUN pip install git+https://github.com/bobek/mkdocs-dashomatic.git mkdocs-glightbox

