FROM python:3-alpine
MAINTAINER jaSS <kostrubiec@gmail.com>

RUN apk add --no-cache git

RUN pip install --no-cache-dir --upgrade pip

RUN pip install mkdocs mkdocs-material mkdocs-git-revision-date-localized-plugin

RUN pip install --no-cache-dir git+https://github.com/bobek/mkdocs-dashomatic.git mkdocs-glightbox

WORKDIR /workdir

CMD [ "/bin/sh" ]

