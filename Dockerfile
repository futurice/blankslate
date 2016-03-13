FROM debian:jessie
MAINTAINER Jussi Vaihia <jussi.vaihia@futurice.com>
WORKDIR /opt/app
RUN useradd -m app

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y \
	build-essential vim wget curl apt-utils locales \
	python python-pip python-dev

ENV TERM xterm

# Development against https://github.com/futurice/blankslate
RUN pip install procboy

COPY . /opt/blankslate/
RUN ln -s /opt/blankslate/blankslate blankslate

RUN mkdir -p slates
RUN mkdir -p envs

RUN mkdir -p bin
RUN echo '#!/usr/bin/env bash'>>bin/slate
RUN echo 'python -mblankslate.cli "$@"'>>bin/slate
RUN chmod +x bin/slate
ENV PATH $PATH:/opt/app/bin
# /Development

# Production
# RUN pip install blankslate

RUN slate install bootstrap
RUN slate install example

EXPOSE 9000

USER root
CMD ["slate", "run"]
